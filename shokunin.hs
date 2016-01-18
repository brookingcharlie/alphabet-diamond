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

validInput [[letter]]
  | elem letter (['a'..'z'] ++ ['A'..'Z']) = Just letter
  | otherwise = Nothing
validInput _ = Nothing

main = do
  args <- getArgs
  case validInput args of
    Just letter -> putStrLn $ intercalate "\n\n" (diamond letter)
    Nothing -> putStrLn "INVALID INPUT"
