import kotlin.random.Random
import kotlin.math.min
import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking



fun main() = runBlocking {
    var progress = 0
    
    while (progress < 100) {
        val maxLimit = min(progress + 20, 100)
        progress = Random.nextInt(progress + 1, maxLimit + 1)
        
        println("Pentagon hack progress: $progress%")
        
        delay(1000)
    }
    
    if (Random.nextInt(1, 31) > 20) {
        println("Pentagon hack: Completed successfully.")
        
    } else {
        println("Pentagon hack: Failed.")
    }
}
