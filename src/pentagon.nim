import std/random
import std/os



randomize()

var progress = 0


while progress < 100:
    let limit = min(progress + 20, 100)
    progress = rand(progress + 1 .. limit)
  
    echo "Pentagon test hack tool progress: ", progress, "%"
  
    sleep(1000)

if rand(1..30) > 20:
    echo "Pentagon hack roll: Completed successfully."
else:
    echo "Pentagon hack roll: Failed."
