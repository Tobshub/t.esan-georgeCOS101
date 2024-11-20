use std::io;

#[derive(Debug)]
struct Order {
    item: Item,
    quantity: u32,
}

#[derive(Debug)]
enum Item {
    PoundedYam,
    FriedRice,
    Amala,
    Eba,
    WhiteRice,
}

impl Item {
    pub fn new(code: String) -> Option<Item> {
        match code.to_lowercase().as_str() {
            "p" => Some(Item::PoundedYam),
            "f" => Some(Item::FriedRice),
            "a" => Some(Item::Amala),
            "e" => Some(Item::Eba),
            "w" => Some(Item::WhiteRice),
            _ => None,
        }
    }

    pub fn price(&self) -> f32 {
        match self {
            Item::PoundedYam => 3_200.0,
            Item::FriedRice => 3_000.0,
            Item::Amala => 2_500.0,
            Item::Eba => 2_000.0,
            Item::WhiteRice => 2_500.0,
        }
    }

    pub fn name(&self) -> &str {
        match self {
            Item::PoundedYam => "Pounded Yam/Edinkaiko Soup",
            Item::FriedRice => "Fried Rice & Chicken",
            Item::Amala => "Amala & Ewedu Soup",
            Item::Eba => "Eba & Egusi Soup",
            Item::WhiteRice => "White Rice & Stew",
        }
    }
}

#[derive(Debug)]
struct OrderError {
    code: OrderErrorCode,
}

#[derive(Debug)]
enum OrderErrorCode {
    OrderDone = 0,
    InvalidItemCode = 1,
}

fn main() {
    let mut orders: Vec<Order> = vec![];

    loop {
        match handle_user_order() {
            Ok(order) => {
                println!("Added {} order(s) of {}", order.quantity, order.item.name());
                orders.push(order);
            }
            Err(err) => match err.code {
                OrderErrorCode::OrderDone => break,
                OrderErrorCode::InvalidItemCode => {
                    println!(
                        "You entered a code not on the menu.
Please choose a code that appears on the menu."
                    );
                }
            },
        }
    }

    println!("  Order Summary:");
    let total: f32 = orders
        .iter()
        .map(|order| {
            let order_price = order.item.price() * order.quantity as f32;
            println!(
                "    {} x {} = N{}",
                order.item.name(),
                order.quantity,
                order_price
            );
            order_price
        })
        .sum();
    println!("  Total: N{}", total);
    if total > 10_000.0 {
        println!("  You qualify for a 5% discount");
        println!("  Discounted Total: N{}", total * 0.95);
    }
}

fn handle_user_order() -> Result<Order, OrderError> {
    println!("------------------- Menu -------------------");
    println!("Code - Item (Price)");
    println!("P    - Pounded Yam/Edinkaiko Soup (N3,200)");
    println!("F    - Fried Rice & Chicken (N3,000)");
    println!("A    - Amala & Ewedu (N2,500)");
    println!("E    - Eba & Egusi Soup (N2,000)");
    println!("W    - White Rice & Stew (N2,500)");
    println!("\nEnter a letter code to pick an item from the menu (enter \"DONE\" to end order):");
    let mut code = String::new();
    io::stdin()
        .read_line(&mut code)
        .expect("Failed to read line");
    let code = code.trim().to_string();
    if code.to_lowercase() == "done" {
        return Err(OrderError {
            code: OrderErrorCode::OrderDone,
        });
    };
    let item = Item::new(code);
    if item.is_none() {
        return Err(OrderError {
            code: OrderErrorCode::InvalidItemCode,
        });
    }
    let item = item.unwrap();
    println!("What quantity of {} would you like?", item.name());
    let mut quantity = String::new();
    io::stdin()
        .read_line(&mut quantity)
        .expect("Failed to read line");
    let quantity: u32 = quantity.trim().parse().unwrap_or(0);
    Ok(Order { item, quantity })
}
