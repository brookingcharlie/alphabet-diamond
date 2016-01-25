import Shokunin
import System.Environment

main = do
  args <- getArgs
  mapM putStrLn (outputLines args)
