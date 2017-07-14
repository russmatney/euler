// The largest prime factor of the number 600851475143
fn main() {
    let number = 600851475143;
    let factor = largest_prime_factor_direct(number, 2);

    println!("largest prime factor of: {}: {}", number, factor)
}

fn largest_prime_factor_direct(number: u64, current: u64) -> u64 {
    if number == current {
        return number;
    } else if number % current == 0 {
        return largest_prime_factor_direct(number / current, current);
    } else {
        return largest_prime_factor_direct(number, current + 1);
    }
}

// fn largest_prime_factor_via_acc(number: u32) -> u32 {
//     let primes = Vec::new();
//     let factors = prime_factors_of(number, 2, primes);
//     println!("Factors of {} are:", number);
//     for x in &factors {
//         println!("{}", x);
//     }
//     return number;
// }

// fn prime_factors_of(number: u32, current: u32, mut primes: Vec<u32>) -> Vec<u32> {
//     if number % current == 0 {
//         primes.push(current);
//         if number == current {
//             return primes;
//         } else {
//             return prime_factors_of(number / current, current, primes);
//         }
//     } else {
//         return prime_factors_of(number, current + 1, primes);
//     }
// }
