// Sum of even valued fibonacci terms below four million
fn main() {
    let max = 4000000;
    let total = sum_even_fib(0, 1, max, 0);

    println!("total: {}", total)
}

fn sum_even_fib(last: u32, current: u32, max: u32, total: u32) -> u32 {
    if current >= max {
        return total;
    }
    
    let new_total = if current % 2 == 0 {
        total + current
    } else {
        total
    };

    return sum_even_fib(current, last + current, max, new_total);
}
