fn main() {
    let record = vec![
        (2, 450_000.0),
        (1, 1_500_000.0),
        (3, 750_000.0),
        (3, 2_850_000.0),
        (1, 250_000.0),
    ];

    let mut sum = 0.0;
    let mut total = 0;

    for sale in record.iter() {
        sum += (sale.0 as f64) * sale.1;
        total += sale.0;
    }

    println!("Sum: {}", sum);

    let avg = sum / (total as f64);
    println!("Average: {}", avg);
}
