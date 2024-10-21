fn main() {
    let p = 210_000.0;
    let r = 5.0;
    let t = 3.0;

    let a = p * ((1.0 - (r / 100.0)) as f64).powf(t);

    println!("Amount: {}", a);

    let dep = p - a;
    println!("Depreciation: {}", dep);
}
