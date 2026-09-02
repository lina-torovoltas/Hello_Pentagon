package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())
	progress := 0

	for progress < 100 {
		maxLimit := progress + 20
		if maxLimit > 100 {
			maxLimit = 100
		}
		progress = rand.Intn(maxLimit-progress) + progress + 1
		fmt.Printf("Pentagon hack progress: %d%%\n", progress)

		time.Sleep(1 * time.Second)
	}

	if rand.Intn(30)+1 > 20 {
		fmt.Println("Pentagon hack: Completed successfully.")
	} else {
		fmt.Println("Pentagon hack: Failed.")
	}
}
