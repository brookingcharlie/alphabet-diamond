import Shokunin

test args expected = putStrLn $ outcome ++ ": " ++ (show args)
  where outcome = if outputLines args == expected then "SUCCESS" else "FAILURE"

main = do
  test [] ["INVALID INPUT"]
  test ["1"] ["INVALID INPUT"]
  test ["Aa"] ["INVALID INPUT"]
  test ["a1"] ["INVALID INPUT"]
  test ["A", "Z"] ["INVALID INPUT"]
  test ["A"] ["A"]
  test ["C"] ["  A  ", "", " B B ", "", "C   C", "", " B B ", "", "  A  "]
