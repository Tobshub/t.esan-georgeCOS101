use std::io;

fn main() {
    let mut exp = String::new();
    let mut age = String::new();

    println!("Are you experienced? (y/n): ");
    io::stdin()
        .read_line(&mut exp)
        .expect("Failed to read line");
    let exp = match exp.trim() {
        "y" => true,
        "n" => false,
        _ => panic!("Invalid input, please answer y or n"),
    };

    println!("How old are you?: ");
    io::stdin()
        .read_line(&mut age)
        .expect("Failed to read line");
    let age: u32 = age.trim().parse().expect("Failed to parse age");

    // NOTE: if statements are not exhaustive (only did what the question said).
    let mut incentive = 100_000;

    if exp {
        if age >= 40 {
            incentive = 1_560_000;
        } else if age >= 30 {
            incentive = 1_480_000;
        } else if age < 28 {
            incentive = 1_300_000;
        }
    }

    println!("Your incentive is {}.", incentive);
}
