class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        for i in 0..<matrix.count {
            var top = 0
            var bottom = matrix.count - 1
            while bottom > top {
                let temp = matrix[top][i]
                matrix[top][i] = matrix[bottom][i]
                matrix[bottom][i] = temp
                top += 1
                bottom -= 1
            }
        }
        for i in 0..<matrix.count {
            for j in i..<matrix.count {
                let temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
            }
        }
    }
}