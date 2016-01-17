import Data.Char
import Data.List
import System.Environment

topLeft maxLetter = zipWith3 (\x y z -> x ++ [y] ++ z) (reverse spaces) letters spaces
  where letters = ['A'..toUpper maxLetter]
        spaces = [replicate n ' ' | n <- [0..length letters]]

diamond = mirrorRight . mirrorDown . topLeft
  where mirror xs = xs ++ tail (reverse xs)
        mirrorDown = mirror
        mirrorRight = map mirror

errorMessage = "INVALID INPUT"

main = do
  args <- getArgs
  case args of
    [[c]] -> if c `elem` (['a'..'z'] ++ ['A'..'Z'])
                then putStrLn $ intercalate "\n\n" (diamond c)
                else putStrLn errorMessage
    _     ->         putStrLn errorMessage
