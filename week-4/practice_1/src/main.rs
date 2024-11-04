use std::io;

fn main() {
    println!("\nStudent information Management System!");

    // input name
    println!("\nPlease Enter your name: ");
    let mut name = String::new();
    io::stdin().read_line(&mut name).expect("Failed to real input");
    println!("Your name is: {}", name);

    // input age
    println!("\nEnter your age");
    let mut age = String::new();
    io::stdin().read_line(&mut age).expect("Failed to real input");
    let age: i32 = age.trim().parse().expect("Input not an integer");
    println!("Your age is: {}", age);
}
