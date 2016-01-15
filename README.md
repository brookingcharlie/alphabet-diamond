# Alphabet Diamond

Charlie Brooking (@brookingcharlie) and Matt Newman (@mdjnewman)

## Implementation

Representing the ThoughtWorks Brisbane Functional Programming Study Group,
we've implemented the Alphabet Diamond coding challenge using Haskell.

Use the supplied `go` script to build and the run the solution as follows:

    $ ./go build
    [1 of 1] Compiling Main             ( shokunin.hs, shokunin.o )
    Linking shokunin ...
    
    $ ./go run C
       A   
    
      B B  
    
     C   C 
    
      B B  
    
       A   
    
    real	0m0.004s
    user	0m0.001s
    sys	0m0.002s

## Dependencies

The provided `go` script builds the app using [GHC](https://www.haskell.org/ghc/).
If `ghc` isn't found on the path, it will be installed using `brew`. On non-Mac
systems, you should install GHC using instructions on its website.

As an alternative to compiling `shokunin.hs` to an executable, you can run it
directly using `runghc shokunin.hs`.

## The Challenge

Write a program which draws a diamond of the form illustrated below.
The letter which is to appear at the widest point of the figure (E in the
example) is to be specified as input data (CLI arg, keyboard read-in, etc).

        A
    
       B B
    
      C   C
    
     D     D
    
    E       E
    
     D     D
    
      C   C
    
       B B
    
        A

Inputs are \[a-zA-Z\] (e.g. letters only, upper or lower case).

Output is upper case only.

Edge cases:

  * If you input "a" or "A", then he output is simply "A".
  * If the input is invalid, then the output is "INVALID INPUT". If you read
    from keyboard input you may ask the user for a new input.

## The Criteria

The winner will be decided by the judges, but you might want to think about...

  * including a GO script to run it
  * execution time
  * human readability
  * elegance of the solution
