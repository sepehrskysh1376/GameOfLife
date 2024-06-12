# A 2D world with GoL Rules

    # Initializations
K = [1 1 1 
     1 0 1
     1 1 1] # The weight distribution of the neighbors

    # The function for initializing a world as an Array
worldIni(nx::Int64, ny::Int64) = zeros(Int64, nx, ny)

# A = worldIni(10, 10) # The world!
A = [0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 1 0 
     0 0 1 1 1 0 0 0 0
     0 0 1 1 1 0 0 0 0
     0 0 0 1 0 0 0 0 0
     0 0 1 1 1 0 0 0 0 
     0 0 0 1 0 0 0 0 0
     0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0]# The world! 

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

worldPrint(A, "2.txt")

    # The Update function
function rule(A::Array, K::Array)
    """
    Input:
        A: is the world Array.
    Output:
        K: is the weight distribution of the neighbors
    """
    G = zeros(size(A)[1], size(A)[2])

    for i in 2:size(A)[1] - 1
        for j in 2:size(A)[2] - 1

            S = sum(A[i-1:i+1, j-1:j+1] .* K)

            Gij = 0 
            if S < 2 || S > 3
                Gij = -1
            elseif S == 2 
                Gij = 0
            elseif S ∈ [3]
                Gij = 1
            end
            
            # Catching Exception about G value
            if G == 2
                throw("Something about the G value has gone wrong!!!")
            end
            G[i, j] = Gij
        end
    end
    
    return [floor(Int64, x) for x in G]
end

G = rule(A, K)

ANext = A + G

for i in 1:size(ANext)[1]
    for j in 1:size(ANext)[2]
        if ANext[i, j] == -1
            ANext[i, j] = 0
        elseif ANext[i, j] == 2
            ANext[i, j] = 1
        end
    end
end


worldPrint(ANext, "2.txt")












