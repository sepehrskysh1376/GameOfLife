# Conway's game of life

![](https://github.com/sepehrskysh1376/GameOfLife/blob/master/Gospers_glider_gun.gif)
- The online version of Conway's game of life: https://playgameoflife.com/

## Description
- The Game of Life (Life) is a cellular automaton created by John Horton Conway.
- A Zero-player game
- It is Turing complete and can simulate a universal constructor or any other Turing machine.

## Rules
- Arbitrary
1. Any live cell with fewer than two live neighbors dies, as if by underpopulation.
2. Any live cell with two or three live neighbors lives on to the next generation.
3. Any live cell with more than three live neighbors dies, as if by overpopulation.
4. Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

## Explaination of underlying functions
- There are three entities:
    1. A: An array containing the world.
    2. G: An Dictionary or function for validating by rules
    3. K: The weight distribution of neighbors

## Usage (Install-ish)
* (Wait)
