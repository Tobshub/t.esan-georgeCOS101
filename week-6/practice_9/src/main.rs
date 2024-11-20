fn main() {
    let A: i32 = 10;
    let B: i32 = 10;

    println!("Value of A: {}", A);
    println!("Value of B: {}", B);

    let mut res = A > B;
    println!("A greater than B: {}", res);

    res = A < B;
    println!("A less than B: {}", res);

    res = A >= B;
    println!("A greater than or equal to B: {}", res);

    res = A <= B;
    println!("A less than or equal to B: {}", res);

    res = A == B;
    println!("A equal to B: {}", res);

    res = A != B;
    println!("A equal to B: {}", res);
}
