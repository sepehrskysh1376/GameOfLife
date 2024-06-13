# A 2D world with GoL Rules

    # Initializations
K = [1 1 1 
     1 0 1
     1 1 1] # The weight distribution of the neighbors

A0 = [0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 1 0 
      0 0 1 1 1 0 0 0 0
      0 0 1 1 1 0 0 0 0
      0 0 0 1 0 0 0 0 0
      0 0 1 1 1 0 0 0 0 
      0 0 0 1 0 0 0 0 0
      0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0]# The world!

Nt = 10 # The number of time-steps

    # The function for initializing a world as an Array
worldIni(nx::Int64, ny::Int64) = zeros(Int64, nx, ny)

# A = worldIni(10, 10) # The world!
 

    # The function for printing the world status
function worldPrint(world::Array, shape = "3.txt")
    """
    input:
        world: 
            | An array which consist of 1 for full cell and 0 for empty cell
        shape:
            | An argument which is a file consisting of the shapes using for printing them.
    output:
        
    """
    aliveCells = floor(Int64, sum(world))
    deadCells  = floor(Int64, size(world)[1] * size(world)[2] - aliveCells)
    print("Alive: $aliveCells \t\tDead: $deadCells\n")
    print("--------------------------------------\n")

    shapeFile = readlines(shape)
    shapes = Dict(0 => "ERROR", 1 => "ERROR")
    for i in shapeFile
        state, char = split(i, " ")
        if parse(Int64, state) in keys(shapes)
            shapes[parse(Int64, state)] = char
        end
    end


    for row in 1:size(world)[1]

        for col in 1:size(world)[2]
            print("$(shapes[world[row, col]]) ")
        end

        print("\n")
    end
end

    # The Update function
function worldRule(A::Array, K::Array)
    """
    Input:
        | A: is the world Array.
    Output:
        | K: is the weight distribution of the neighbors
    """
    G = zeros(size(A)[1], size(A)[2])

    for i in 2:size(A)[1] - 1
        for j in 2:size(A)[2] - 1

            S = sum(A[i-1:i+1, j-1:j+1] .* K)

            Gij = Dict(0 => -1, 1 => -1, 2 => 0, 3 => 1, 4 => -1, 5 => -1, 6 => -1, 7 => -1, 8 => -1) # The Dictionary for G value (Like a discrete function) 
            G[i, j] = Gij[S]
        end
    end
    
    return [floor(Int64, x) for x in G]
end

    # The correction function
function worldCorrection(A::Array)
    """
    Input:
        | The World which consist of numbers other than 0 or 1
    Output:
        | Set the numbers bigger than 1 => 1, and Set the number less than 0 => 0
    * This set up is just for descrete Game of Life cellular Automaton
    """
    for i in 1:size(A)[1]
        for j in 1:size(A)[2]
            if A[i, j] < 0
                A[i, j] = 0
            elseif A[i, j] > 1
                A[i, j] = 1
            end
        end
    end
    return A
end


    # A function for evolving the world
function worldSimulation(A0::Array, K::Array, Nt::Int64, mode::String)
    """
    Input:
        | A0  : The Initial world (configuration)
        | K   : The Neighbor's distribution
        | Nt  : The number of time-steps
    Output:
        | The worldPrint, showing the evolution of configurations 
    """
        # Printing the initial world
    worldPrint(A0, mode)
        # Initialization
    G = worldRule(A0, K)
    Ai = worldCorrection(A0 + G)
    worldPrint(Ai, mode)
    
        # Updating
    for i in 2:Nt
        G   = worldRule(Ai, K)
        Ai  = worldCorrection(Ai + G)
        worldPrint(Ai, mode)
    end
end


worldSimulation(A0, K, Nt, "2.txt")



