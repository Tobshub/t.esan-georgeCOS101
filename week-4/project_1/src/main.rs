use std::io;

fn main() {
    let mut a = String::new();
    let mut b = String::new();
    let mut c = String::new();

    println!("Enter the value of a: ");
    io::stdin().read_line(&mut a).expect("Failed to read line");
    let a: f32 = a.trim().parse().unwrap();

    println!("Enter the value of b: ");
    io::stdin().read_line(&mut b).expect("Failed to read line");
    let b: f32 = b.trim().parse().unwrap();

    println!("Enter the value of c: ");
    io::stdin().read_line(&mut c).expect("Failed to read line");
    let c: f32 = c.trim().parse().unwrap();

    let d: f32 = (b * b) - (4.0 * a * c);

    if d > 0.0 {
        let x1 = (-b + (d.sqrt())) / (2.0 * a);
        let x2 = (-b - (d.sqrt())) / (2.0 * a);
        println!("The roots are {} and {}", x1, x2);
    } else if d == 0.0 {
        let x = -b / (2.0 * a);
        println!("The root is {}", x);
    } else {
        println!("The equation has no real roots");
    }
}
