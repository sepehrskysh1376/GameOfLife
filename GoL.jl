A = [0 0 0 0 0 0 0 0 0
     0 1 0 0 0 0 0 1 0 
     0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0 
     0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0
     0 0 0 0 0 0 0 0 0]# The world! 

for row in 2:size(A)[1]-1
    for col in 2:size(A)[2]-1
        println(A[row, col])
    end
end

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
    throw("Something about the G valuation is gone wrong!!!")
end

println(A0 .* K)
println(G)














