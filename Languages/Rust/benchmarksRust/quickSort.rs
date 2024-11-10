use std::fs::File;
use std::io::{self, BufRead};

// Quick Sort function
fn quick_sort<T, F>(v: &mut [T], f: &F)
where
    F: Fn(&T, &T) -> bool,
{
    let len = v.len();
    if len >= 2 {
        let pivot_index = partition(v, f);
        quick_sort(&mut v[0..pivot_index], f);
        quick_sort(&mut v[pivot_index + 1..len], f);
    }
}

fn partition<T, F>(v: &mut [T], f: &F) -> usize
where
    F: Fn(&T, &T) -> bool,
{
    let len = v.len();
    let pivot_index = len / 2;
    let last_index = len - 1;

    v.swap(pivot_index, last_index);

    let mut store_index = 0;
    for i in 0..last_index {
        if f(&v[i], &v[last_index]) {
            v.swap(i, store_index);
            store_index += 1;
        }
    }

    v.swap(store_index, len - 1);
    store_index
}

// Function to read numbers from a file into a Vec<i32>
fn read_numbers_from_file(filename: &str) -> io::Result<Vec<i32>> {
    let mut numbers = Vec::new();
    let file = File::open(filename)?;
    let reader = io::BufReader::new(file);

    for line in reader.lines() {
        let line = line?;
        if let Ok(num) = line.trim().parse::<i32>() {
            numbers.push(num);
        }
    }
    Ok(numbers)
}

fn main() {
    let filename = "numeros.txt";

    match read_numbers_from_file(filename) {
        Ok(mut numbers) => {
            println!("Sort numbers in descending order");
            println!("Before: {:?}", numbers);

            quick_sort(&mut numbers, &|x, y| x > y);
            println!("After:  {:?}", numbers);
        }
        Err(e) => {
            println!("Error reading file: {}", e);
        }
    }
}
