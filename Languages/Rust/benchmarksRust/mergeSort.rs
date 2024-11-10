use std::fs::File;
use std::io::{self, BufRead};

// Merge Sort function
fn merge_sort<T: Ord + Clone + Copy>(arr: &mut [T]) {
    let len = arr.len();
    if len < 2 {
        return; // Base case: array is already sorted
    }

    let mid = len / 2;
    merge_sort(&mut arr[0..mid]); // Sort the left half
    merge_sort(&mut arr[mid..]);  // Sort the right half

    let mut temp = arr.to_vec();  // Temporary vector to hold merged result
    let (left, right) = arr.split_at_mut(mid); // Split the array into two halves

    let (mut i, mut j, mut k) = (0, 0, 0);

    while i < left.len() && j < right.len() {
        if left[i] <= right[j] {
            temp[k] = left[i];
            i += 1;
        } else {
            temp[k] = right[j];
            j += 1;
        }
        k += 1;
    }

    while i < left.len() {
        temp[k] = left[i];
        i += 1;
        k += 1;
    }

    while j < right.len() {
        temp[k] = right[j];
        j += 1;
        k += 1;
    }

    arr.copy_from_slice(&temp);  // Copy the sorted result back into the original array
}

// Function to read numbers from a file into a Vec<i32>
fn read_numbers_from_file(filename: &str) -> io::Result<Vec<i32>> {
    let mut numbers = Vec::new();
    let file = File::open(filename)?;
    let reader = io::BufReader::new(file);

    for line in reader.lines() {
        let line = line?;
        // Parse each line as an i32 and add to the vector
        if let Ok(num) = line.trim().parse::<i32>() {
            numbers.push(num);
        }
    }
    Ok(numbers)
}

fn main() {
    let filename = "numeros.txt"; // Name of the file containing numbers

    // Read numbers from the file
    match read_numbers_from_file(filename) {
        Ok(mut arr) => {
            println!("Original array: {:?}", arr);
            merge_sort(&mut arr);
            println!("Sorted array: {:?}", arr);
        }
        Err(e) => {
            println!("Error reading file: {}", e);
        }
    }
}
