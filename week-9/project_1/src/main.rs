use std::io::{self, Write};

fn main() {
    let mut lager_vec: Vec<String> = Vec::new();
    let mut stout_vec: Vec<String> = Vec::new();
    let mut non_alcoholic_vec: Vec<String> = Vec::new();

    loop {
        println!(
            "
Select option to continue (1-4):
1. Add Lager Drink
2. Add Stout Drink
3. Add Non-Alcoholic Drink
4. List Drinks
5. Done
"
        );
        let mut option: String = String::new();
        io::stdin().read_line(&mut option).expect("Failed to read line");
        let option: u32 = option.trim().parse().expect("Failed to parse option");

        match option {
            1 => add_drink(&mut lager_vec),
            2 => add_drink(&mut stout_vec),
            3 => add_drink(&mut non_alcoholic_vec),
            4 => {
                list_drinks("Lager", &lager_vec);
                list_drinks("Stout", &stout_vec);
                list_drinks("Non-alcoholic", &non_alcoholic_vec);
            },
            5 => break,
            _ => println!("Invalid option"),
        };
    }

    save_vec("lager.txt", &lager_vec);
    save_vec("stout.txt", &stout_vec);
    save_vec("non_alcoholic.txt", &non_alcoholic_vec);
}

fn add_drink(vec: &mut Vec<String>) {
    println!("Enter drink name: ");
    let mut drink: String = String::new();
    io::stdin().read_line(&mut drink).expect("Failed to read line");
    vec.push(drink.trim().to_string());
    println!("Added drink");
}

fn list_drinks(label: &str, vec: &Vec<String>) {
    println!("{}:", label);
    println!("{}", vec.join("\n"));
}

fn save_vec(name: &str, vec: &Vec<String>) {
    let mut file = std::fs::File::create(name).unwrap();
    file.write_all(format!("{}\n", vec.join("\n")).as_bytes()).unwrap();
    println!("Saved {}", name);
}
