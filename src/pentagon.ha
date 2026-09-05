use fmt;
use crypto::random;
use time;
use endian;



fn random_range(min: i64, max: i64) i64 = {
	let buf: [8]u8 = [0...];
	random::buffer(buf);
    	
	const value = endian::legetu64(buf);
	
	return min + (value % ((max - min + 1): u64)): i64;
};


export fn main() void = {
	let progress: u8 = 0;

	for (progress < 100) {
		let limit: u8 = progress + 20;
		
		if (limit > 100) {
			limit = 100;
		};
		
		progress = random_range((progress + 1): i64, limit: i64): u8;
		
		fmt::printfln("Pentagon hack progress: {}%", progress)!;
		
		time::sleep(1 * time::SECOND);
	};
	
	if (random_range(1, 30) > 20) {
		fmt::println("Pentagon hack: Completed successfully.")!;
		
	} else {
		fmt::println("Pentagon hack: Failed.")!;
	};
};
