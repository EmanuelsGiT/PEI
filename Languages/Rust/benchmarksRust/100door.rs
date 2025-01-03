fn main() {
    let mut door_open = [false; 100];
    for pass in 1..101 {
        let mut door = pass;
        while door <= 100 {
            door_open[door - 1] = !door_open[door - 1];
            door += pass;
        }
    }
    for (i, &is_open) in door_open.iter().enumerate() {
        println!(
            "Door {} is {}.",
            i + 1,
            if is_open { "open" } else { "closed" }
        );
    }
}