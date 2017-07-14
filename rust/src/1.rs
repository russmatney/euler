// Sum of the multiples of 3 and 5 below 1000
fn main() {
    let max = 1000;
    let total = sum(max - 1, 0);
        

    println!("total: {}", total)
}

fn sum(remaining: u32, total: u32) -> u32 {
    if remaining == 0 {
        return total;
    }

    if remaining % 3 == 0 || remaining % 5 == 0 {
        return sum(remaining - 1, total + remaining);
    } else {
        return sum(remaining - 1, total);
    }
}
