import Data.Char
import Data.List

main = do
  widestLetter <- getChar
  if elem widestLetter (['a'..'z'] ++ ['A'..'Z'])
    then
      let letters = ['A'..toUpper widestLetter]
          spaces = [replicate n ' ' | n <- [0..length letters]]
          topLeft = zipWith3 (\x y z -> x ++ [y] ++ z) (reverse spaces) letters spaces
          left = topLeft ++ (tail $ reverse topLeft)
          diamond = intersperse "" [x ++ tail (reverse x) | x <- left]
      in mapM_ putStrLn diamond
    else
      putStrLn "INVALID INPUT"
