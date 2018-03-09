# Theory of Algortithms

This repository contains CA Problem Sheets and Exercises for Theory of Algorithms Module (4th Year, Bsc (Hons) in Software Development).

```
The following exercises should be completed in the Racket programming language.
Note that “from scratch” means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed, but please 
confirm their use with the lecturer.

```

## Functional programming

```In computer science, functional programming is a programming paradigm—a style of building the structure and elements of computer programs—that treats computation as the evaluation of mathematical functions and avoids changing-state and mutable data. It is a declarative programming paradigm, which means programming is done with expressions or declarations instead of statements. In functional code, the output value of a function depends only on the arguments that are passed to the function, so calling a function f twice with the same value for an argument x produces the same result f(x) each time; this is in contrast to procedures depending on a local or global state, which may produce different results at different times when called with the same arguments but a different program state. Eliminating side effects, i.e., changes in state that do not depend on the function inputs, can make it much easier to understand and predict the behavior of a program, which is one of the key motivations for the development of functional programming.```

```Functional programming has its origins in lambda calculus, a formal system developed in the 1930s to investigate computability, the Entscheidungsproblem, function definition, function application, and recursion. Many functional programming languages can be viewed as elaborations on the lambda calculus. Another well-known declarative programming paradigm, logic programming, is based on relations.```

```In contrast, imperative programming changes state with commands in the source code, the simplest example being assignment. Imperative programming does have subroutine functions, but these are not functions in the mathematical sense. They can have side effects that may change the value of program state. Functions without return values therefore make sense. Because of this, they lack referential transparency, i.e., the same language expression can result in different values at different times depending on the state of the executing program.```

<p align="right" bold>
<i>Source: <a href="https://en.wikipedia.org/wiki/Functional_programming">Wikipedia</a></i>
</p>

## DrRacket

Racket is a general-purpose programming language as well as the world’s first ecosystem for developing and deploying new languages. [DrRacket](https://racket-lang.org/) is a graphical IDE that’s integrated with Racket’s vast documentation.

## Excercise List

The following is the list of exercises contained in this repository:
 
* Prime numbers
* Collatz List
* Cycle a List (either right or left)
* Sum of sublist
* Hamming Weight
* Hamming Distance


## Installation & Running the code

In order to run the exercises Racket must be installed. It can be download from [here](http://racket-lang.org/download/). To run any of the exercises symple type in the command line (*If you areusing windows make sure racket is in the path!*) the following:
 ```
    $: racket exercise-name.rkt
 ```
Where exercise name corresponds to the file name of the excercise.

## Authors

* **Albert Rando** - *Coding* - [rndmized](https://github.com/rndmized)

## License

This project is licensed under the MIT License - see the [LICENSE.md](https://github.com/rndmized/functional_programming/blob/master/LICENSE) file for details

## Acknowledgments and References

* DrRacket Documentation: [docs](https://docs.racket-lang.org/).