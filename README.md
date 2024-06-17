# Conway's game of life

![](https://github.com/sepehrskysh1376/GameOfLife/blob/master/Gospers_glider_gun.gif)
- The Conway's game of life Wikipedia         : https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life
- The online version of Conway's game of life : https://playgameoflife.com/

## Description
- The Game of Life (Life) is a cellular automaton created by John Horton Conway.
- A Zero-player game
- It is Turing complete and can simulate a universal constructor or any other Turing machine.

## Files & Folders
- There is no Folders yet!!!
- The files are:
   | Files | Description |
   | ----- | ----------- |
   | 1.txt, 2.txt, 3.txt | text files that contain the Unicode characters for each types of cells (Alive or Dead) which are like this |
    ```
    1 <the Alive character> 
    0 <the Dead character>
    ```
    | Files | Description |
    | ----- | ----------- |
    | 2005.03742.pdf | which is the Article (From Bert Wang-Chak Chan) that inspire me to implement this unique kind of algorithm for Game of Life simulation. |
    | Gospers_glider_gun.gif | Just a gif file for visualization purposes in my GitHub page. |
    | GoL_CV.jl | The first main program which contain the pre-Compiled version of the Game of Life simulation |
    | GoL_IV.jl | The second main program which contain the Integrated version of the Game of Life simulation
    | GoL.gif, InProgram.gif, ini.txt.gif | The examples of output Gif files which the GoL_CV.jl can give us |
    | final.txt, glider.txt, input.txt, input2.txt | The input examples which works for both GoL_CV.jl and GoL.IV.jl |
    | README.md | The MarkDown file for explaining all these things. |

## Rules
- It is Arbitrary, however, there is an standard set of rules:
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
- There are two types of *GoL* programs:
    1. **GoL_IV.jl** ===========> Integrated Version of the Game of Life program  (Calculate a frame and Show the result of that frame afterward)
    2. **GoL_CV.jl** ===========> Compiled  Version  of  Game  of  Life  program  (Calculate the whole simulation and then Show the results)

#### GoL_IV.jl: (The Integrated Version)
- Run it like this:
    ```
    $ julia GoL_IV.jl
    ```
- The following passage comes up:
    ```
    Hello and Welcome to my little GoL.jl program.
    There are three main ways to make initialize your first world's configuration (By world I mean an array consisting of alive, 1, and dead, 0, cells.)
    	1. You change the configuration inside the file which the variable name is 'A' (1) 
    	2. Initialize a NxM array consisting of zeros and change the numbers manually (2) 
    	3. You have a file from the before and want to implement it as initial configuration (3)
    
    * The number of time-steps and K, are in the source file, change them in the GoL.jl file.

    Which one do you want to perform? 
    (1/2/3)> 
    ```

- Between three options, select one of them (For test you can run the first one).
- Set your frame rate here:
    ```
    How much time do you prefer between each frames? (Recommendation: 0.1, how lower you set, faster it get!!!)
    > 
    ```
- The second and third options want names too. So give them the name of your saving file or the file the program wants to read from.
- The second option also create an empty (full of zeros) array for you which when asked you to fill it up, do not enter anything in the terminal. Go and change your configuration file and then press *ENTER*.
- You can see the **Simulation**.
- At the end, it will ask you if you want to save the final configuration.
    ```
    Do you want to save The Last Configuration? <br>
    (y/n)>
    ```
- Enjoy!!!

#### GoL_CV.jl: (The Compiler Version)
- Run it like this:
    ```
    $ julia GoL_CV.jl
    ```
- The following passage comes up:
    ```
    Hello and Welcome to my little GoL.jl program.
    There are three main ways to make initialize your first world's configuration (By world I mean an array consisting of alive, 1, and dead, 0, cells.)
        1. You change the configuration inside the file which the variable name is 'A' (1)
    	2. Initialize a NxM array consisting of zeros and change the numbers manually (2)
    	3. You have a file from the before and want to implement it as initial configuration (3)
    
    * The number of time-steps and K, are in the source file, change them in the GoL.jl file.

    Which one do you want to perform? 
    (1/2/3)> 
    ```
    - Between three options, select one of them (For test you can run the first one).
- Set your frame rate here:
    ```
    How much time do you prefer between each frames? (Recommendation: 0.1, how lower you set, faster it get!!!)
    > 
    ```
- The second and third options want names too. So give them the name of your saving file or the file the program wants to read from.
- The second option also create an empty (full of zeros) array for you which when asked you to fill it up, do not enter anything in the terminal. Go and change your configuration file and then press *ENTER*.
- **Compile the simulation** of the Game of Life.
- Ask you if you want to save the final configuration.
    ```
    Do you want to save The Last Configuration?
    (y/n)>
    ```
    
- Ask you if you want to Animate the configurations in the **Terminal** or in **Heatmap** from Plots.jl package.
    ``` 
    Terminal Animation or Heatmap Animation:
    (t/h)> 
    ```
- If you choose 't', it Shows the simulation in the *Terminal* and if you choose 'h', it save the *namefile.gif* file in the current directory.
- Enjoy!!!




# *The End*
