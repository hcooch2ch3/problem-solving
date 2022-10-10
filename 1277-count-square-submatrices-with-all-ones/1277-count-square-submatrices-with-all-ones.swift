class Solution {
    func countSquares(_ matrix: [[Int]]) -> Int {
        var matrix = matrix
        var result = 0
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                if matrix[i][j] > 0 && i > 0 && j > 0 {
                    matrix[i][j] = min(matrix[i-1][j], matrix[i][j-1], matrix[i-1][j-1]) + 1
                }
                result += matrix[i][j]
            }
        }
        return result
    }
}