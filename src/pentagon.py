import random
import time



progress = 0


while progress < 100:
    limit = min(progress + 20, 100)
    progress = random.randint(progress + 1, limit)

    print(f"Pentagon hack progress: {progress}%")

    time.sleep(1)

if random.randint(1, 30) > 20:
    print("Pentagon hack: Completed successfully.")
    
else:
    print("Pentagon hack: Failed.")
