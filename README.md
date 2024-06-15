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
    2. G: An Dictionary or function for validating by rules.
    3. K: The weight distribution of neighbors.
    4. S: The summation of the neighbors alive cells.

## Usage (Install-ish)
- Installing Julia (obviously!!!).
- (Optional) Put your files inside one directory (For now, you cannot address your files to the program.)
- Run it like this:
    > \$ julia GoL.jl
- The following passage comes up:
    > Hello and Welcome to my little GoL.jl program. <br>
    > There are three main ways to make initialize your first world's configuration (By world I mean an array consisting of alive, 1, and dead, 0, cells.) <br>
	>	1. You change the configuration inside the file which the variable name is 'A' (1) <br>
    >	2. Initialize a NxM array consisting of zeros and change the numbers manually (2) <br>
    >	3. You have a file from the before and want to implement it as initial configuration (3) <br>
    > <br>
    > * The number of time-steps and K, are in the source file, change them in the GoL.jl file. <br>

    > Which one do you want to perform? <br>
    >(1/2/3)\> <br> 

- Between three options, select one of them (For test you can run the first one).
- Set your frame rate here:
    > How much time do you prefer between each frames? (Recommendation: 0.1, how lower you set, faster it get!!!)<br>
    >\> <br> 
- The second and third options want names too. So give them the name of your saving file or the file the program wants to read from.
- The second option also create an empty (full of zeros) array for you which when asked you to fill it up, do not enter anything in the terminal. Go and change your configuration file and then press *ENTER*.
- You can see the **Simulation**.
- At the end, it will ask you if you want to save the final configuration.
- *The End*
