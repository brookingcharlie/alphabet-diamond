module Shokunin where

import Data.Char
import Data.List

topLeft maxLetter = zipWith3 (\x y z -> x ++ [y] ++ z) (reverse spaces) letters spaces
  where letters = ['A'..toUpper maxLetter]
        spaces = [replicate n ' ' | n <- [0..length letters - 1]]

diamond = mirrorRight . mirrorDown . topLeft
  where mirror xs = xs ++ tail (reverse xs)
        mirrorDown = mirror
        mirrorRight = map mirror

validInput [[letter]] = [letter | elem letter (['a'..'z'] ++ ['A'..'Z'])]
validInput _ = []

outputLines args = case validInput args of
  [letter] -> intersperse "" (diamond letter)
  [] -> ["INVALID INPUT"]
