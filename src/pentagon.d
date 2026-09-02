import std.stdio;
import std.random;
import core.thread;
import std.algorithm : min;



void main() {
    int progress = 0;
    
    while (progress < 100) {
        int limit = min(progress + 20, 100);
        progress = uniform!"[]"(progress + 1, limit);
        
        writefln("Pentagon hack progress: %d%%", progress);
        
        Thread.sleep(1.seconds);
    }
    
    if (uniform!"[]"(1, 30) > 20) {
        writeln("Pentagon hack: Completed successfully.");
        
    } else {
        writeln("Pentagon hack: Failed.");
    }
}
