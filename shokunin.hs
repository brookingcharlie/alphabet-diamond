-- The Challenge
--
-- Write a program which draws a diamond of the form illustrated below.
-- The letter which is to appear at the widest point of the figure (E in the
-- example) is to be specified as input data (CLI arg, keyboard read-in, etc).
--
--                      A
--
--                     B B
--
--                    C   C
--
--                   D     D
--
--                  E       E
--
--                   D     D
--
--                    C   C
--
--                     B B
--
--                      A
--
-- Inputs are [a-zA-Z] (e.g. letters only, upper or lower case).
-- Output is upper case only.
--
-- Edge cases:
--
--   * If you input "a" or "A", then he output is simply "A".
--
--   * If the input is invalid, then the output is "INVALID INPUT". If you read
--     from keyboard input you may ask the user for a new input.
--
-- The Criteria
--
-- The winner will be decided by the judges, but you might want to think about...
--
--   * including a GO script to run it
--   * execution time
--   * human readability
--   * elegance of the solution

main = do
  let letters = ['A'..'E']
  let spaces = [replicate n ' ' | n <- [0..length letters]]
  let topLeft = zipWith3 (\x y z -> x ++ [y] ++ z) (reverse spaces) letters spaces
  let left = topLeft ++ (tail $ reverse topLeft)
  let diamond = [x ++ tail (reverse x) | x <- left]
  let stretchedDiamond = init $ concat $ zipWith (\x y -> [x, y]) diamond (repeat "")
  print $ letters
  print $ spaces
  mapM_ print topLeft
  mapM_ print left
  mapM_ print diamond
  mapM_ print stretchedDiamond
  mapM_ putStrLn stretchedDiamond
