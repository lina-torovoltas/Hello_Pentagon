module main;

import std::io;
import std::math;
import std::math::random;
import std::thread;



fn void main() {
    int progress = 0;

    while (progress < 100) {
        int limit = math::min(progress + 20, 100);
        progress = rand_in_range(progress + 1, limit);
        
        io::printfn("Pentagon hack progress: %d%%", progress);
        
        thread::sleep_ms(1000);
    }

    if (rand_in_range(1, 30) > 20) {
        io::printn("Pentagon hack: Completed successfully.");
        
    } else {
        io::printn("Pentagon hack: Failed.");
    }
}
