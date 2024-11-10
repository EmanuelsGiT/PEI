use std::fs::File;
use std::io::{self, BufRead};

fn remove_duplicate_elements_sorting<T: Ord>(elements: &mut Vec<T>) {
    elements.sort_unstable(); // Sort to bring duplicates together
    elements.dedup();         // Remove consecutive duplicates
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
    let filename = "numeros2.txt";

    // Read numbers from the file
    match read_numbers_from_file(filename) {
        Ok(mut numbers) => {
            println!("Before removal of duplicates: {:?}", numbers.len()); // print the initial count
            remove_duplicate_elements_sorting(&mut numbers);
            println!("After removal of duplicates: {:?}", numbers.len());  // print the count after deduplication
        }
        Err(e) => {
            println!("Error reading file: {}", e);
        }
    }
}
