import Control.Concurrent(threadDelay)
import System.Random(randomRIO)



hack_loop :: Int -> IO ()
hack_loop progress
    | progress >= 100 = pure ()

    | otherwise = do
        let limit = min (progress + 20) 100

        new_progress <- randomRIO (progress + 1, limit)
        putStrLn ("Pentagon hack progress: " ++ show new_progress ++ "%")

        threadDelay 1000000
        hack_loop new_progress


main :: IO ()
main = do
    hack_loop 0

    roll <- randomRIO (1, 30 :: Int)

    if roll > 20
        then putStrLn "Pentagon hack: Completed successfully."
        else putStrLn "Pentagon hack: Failed."
