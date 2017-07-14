// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

fn main() {
    let result = lcm_of_all_below(10);
    println!("smallest positive number evenly divisible by all numbers from 1 to 20: {}", result);
}

fn lcm_of_all_below(max: u32) -> u32 {
    let min = max / 2;

    return acc_min_factors(factor_map.init(), max, min);
}

fn acc_min_factors(factor_map: FactorMap, next: u32, min: u32) {
    if next <= min {
        return factor_map.total();
    }

    let next_fm = factor_map.from(next);

    let factor_map = factor_map.merge(next_fm);

    return acc_min_factors(factor_map, next - 1, min);
}
