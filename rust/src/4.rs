// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.
fn main() {
    let result = find_palindrome_with_factors(999999, 3);
    println!("Largest palindrome from the product of two 2-digit numbers: {}", result);
}

fn find_palindrome_with_factors(number: u32, digits: u32) -> u32 {
    if number == 1000 {
        // panic or error or something?
        return 0;
    }
    
    if is_palindrome(number) && has_factors_with_length(number, digits) {
        return number;
    }
    
    return find_palindrome_with_factors(number - 1, digits);
}

fn is_palindrome(number: u32) -> bool {
    let as_string = number.to_string();
    let rev = reverse(as_string.clone());

    return as_string == rev;
}

fn reverse(st: String) -> String {
    return do_reverse(st, String::new());
}

fn do_reverse(mut st: String, mut rev: String) -> String {
    match st.pop() {
        None => { return rev; }
        Some(ch) => {
            rev.push(ch);
            return do_reverse(st, rev);
        }
    }
}

fn has_factors_with_length(number: u32, length: u32) -> bool {
    let first_factor = match length {
        1 => 9,
        2 => 99,
        3 => 999,
        _ => panic!("unhandled length passed")
    };

    let min = match length {
        1 => 1,
        2 => 90,
        3 => 900,
        _ => panic!("unhandled length passed")
    };
    
    return has_factors_from(number, min, first_factor, first_factor);
}

fn has_factors_from(number: u32, min: u32, a: u32, b: u32) -> bool {
    if a < min {
        return false;
    }

    if number % a == 0 {
        if a * b == number {
            println!("{} * {} == {}", a, b, number);
            return true;
        } else if b < min {
            return has_factors_from(number, min, a - 1, a - 1);
        } else {
            return has_factors_from(number, min, a, b - 1);
        }
    } else {
        return has_factors_from(number, min, a - 1, b - 1);
    }

}

