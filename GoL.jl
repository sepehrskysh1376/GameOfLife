# A 2D world with GoL Rules

    # The function for initializing a world as an Array
worldIni(nx::Int64, ny::Int64) = zeros(Int64, nx, ny)

# A = worldIni(10, 10) # The world!
A = [0 0 0 0 0 0 0 0 0
     0 1 0 0 0 0 0 1 0 
     0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0
     0 0 1 1 1 0 0 0 0 
     0 0 0 0 1 0 1 0 0
     0 0 0 0 0 0 0 0 0
     1 0 0 0 0 0 0 0 1]# The world! 

    # The function for printing the world status
function worldPrint(world::Array, shape = "1.txt")
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
            print("$(shapes[world[row, col]])")
        end

        print("\n")
    end
end

worldPrint(A)


A0 = [1 1 0 
      0 0 0
      0 0 1] # starting array
K = [1 1 1 
     1 0 1
     1 1 1] # The (k)orrection array

# G = 0 # the function for evolving
S = sum(A0 .* K) 
G = 2
if S < 3 || S > 5
    G = -1
elseif S == 3
    G = 0
elseif S ∈ [4, 5]
    G = 1
end

# Catching Exception about G value
if G == 2
    throw("Something about the G value has gone wrong!!!")
end

println(A0 .* K)
println(G)














