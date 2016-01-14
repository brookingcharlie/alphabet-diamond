import Data.Char
import Data.List

topLeft maxLetter =
  zipWith3 (\x y z -> x ++ [y] ++ z) (reverse spaces) letters spaces
  where letters = ['A'..toUpper maxLetter]
        spaces = [replicate n ' ' | n <- [0..length letters]]

mirrorDown top = top ++ (tail $ reverse top)
mirrorRight left = [x ++ tail (reverse x) | x <- left]
diamond maxLetter = mirrorRight $ mirrorDown $ topLeft maxLetter

main = do
  maxLetter <- getChar
  if elem maxLetter (['a'..'z'] ++ ['A'..'Z'])
    then mapM_ putStrLn $ intersperse "" (diamond maxLetter)
    else putStrLn "INVALID INPUT"
