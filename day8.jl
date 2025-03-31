

julia> zeros(Int8,2,3)
2×3 Matrix{Int8}:
 0  0  0
 0  0  0

julia> zeros(Int8,(2,3))
2×3 Matrix{Int8}:
 0  0  0
 0  0  0

julia> zeros((2,3))
2×3 Matrix{Float64}:
 0.0  0.0  0.0
 0.0  0.0  0.0

julia> [1, 2, 3]
3-element Vector{Int64}:
 1
 2
 3

julia> promote(1, 2.3, 4//5)
(1.0, 2.3, 0.8)

julia> [1,2.3, 4//5]
3-element Vector{Float64}:
 1.0
 2.3
 0.8

julia> Float32[2,2.5,4//6]
3-element Vector{Float32}:
 2.0
 2.5
 0.6666667

julia> []
Any[]

julia> [1:2, 4:5]
2-element Vector{UnitRange{Int64}}:
 1:2
 4:5

julia> [1:4; 4:5]
6-element Vector{Int64}:
 1
 2
 3
 4
 4
 5

julia> [1:2
       4:5
       6]
5-element Vector{Int64}:
 1
 2
 4
 5
 6

julia> [1 2 3]
1×3 Matrix{Int64}:
 1  2  3

julia> [1;; 2;; 3;; 4]
1×4 Matrix{Int64}:
 1  2  3  4



julia> [zeros(Int,2,2) [1;2]
       [3 4]             5]
3×3 Matrix{Int64}:
 0  0  1
 0  0  2
 3  4  5

julia> [[1 1]; 2 3; [4 4]]
3×2 Matrix{Int64}:
 1  1
 2  3
 4  4


julia> [1; 2;; 3; 4;; 5; 6;;;
       7; 8;; 9; 10;; 11; 12]
2×3×2 Array{Int64, 3}:
[:, :, 1] =
 1  3  5
 2  4  6

[:, :, 2] =
 7   9  11
 8  10  12

julia> [ 1 2 3
       2 4 6;;;
       7 9 11
       8 10 12]
2×3×2 Array{Int64, 3}:
[:, :, 1] =
 1  2  3
 2  4  6

[:, :, 2] =
 7   9  11
 8  10  12

julia> [1 2 ; 3 4]
2×2 Matrix{Int64}:
 1  2
 3  4

julia> [1;;]
1×1 Matrix{Int64}:
 1

julia> [2;; 3;; 4]
1×3 Matrix{Int64}:
 2  3  4

julia> [2; 3;;;]
2×1×1 Array{Int64, 3}:
[:, :, 1] =
 2
 3

julia> [[1 2] [3 4]]
1×4 Matrix{Int64}:
 1  2  3  4

julia> Int8[[1 2] [3 4]]
1×4 Matrix{Int8}:
 1  2  3  4

julia> sum(1/n^2 for n=1:1000)
1.6439345666815615

julia> map(tuple, (1/(i+j) for i=1:2, j=1:2), [1 3; 2 4])
2×2 Matrix{Tuple{Float64, Int64}}:
 (0.5, 1)       (0.333333, 3)
 (0.333333, 2)  (0.25, 4)

julia> [(i,j) for i=1:3 for j=1:i]
6-element Vector{Tuple{Int64, Int64}}:
 (1, 1)
 (2, 1)
 (2, 2)
 (3, 1)
 (3, 2)
 (3, 3)

julia> A = reshape(collect(1:16), (2,2,2,2))
2×2×2×2 Array{Int64, 4}:
[:, :, 1, 1] =
 1  3
 2  4

[:, :, 2, 1] =
 5  7
 6  8

[:, :, 1, 2] =
  9  11
 10  12

[:, :, 2, 2] =
 13  15
 14  16

julia> A[1, 2, 1, 1]
3

julia> A = reshape(collect(1:16), (2,2,2,2));

julia> A[[1 2; 1 2]]
2×2 Matrix{Int64}:
 1  2
 1  2

julia> A[[1 2; 1 2], 1, 2, 1]
2×2 Matrix{Int64}:
 5  6
 5  6


julia> x = collect(reshape(1:9, 3, 3))
3×3 Matrix{Int64}:
 1  4  7
 2  5  8
 3  6  9

julia> x[3, 3] = -9
-9

julia> A = reshape(collect(1:2:18), (3, 3))
3×3 Matrix{Int64}:
 1   7  13
 3   9  15
 5  11  17

julia> A[7]
13

julia> A[[2,5,8]]
3-element Vector{Int64}:
  3
  9
 15

julia> A[[1 4 ; 3 8]]
2×2 Matrix{Int64}:
 1   7
 5  15

julia> A[[]]
Int64[]

julia> A[1:2:5]
3-element Vector{Int64}:
 1
 5
 9

julia> A[2, :]
3-element Vector{Int64}:
  3
  9
 15

julia> A[:, 3]
3-element Vector{Int64}:
 13
 15
 17

julia> A[:, 3:3]
3×1 Matrix{Int64}:
 13
 15
 17
