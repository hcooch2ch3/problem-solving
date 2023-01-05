
class NumMatrix {
    var prefixSumMatrix: [[Int]] = []

    init(_ matrix: [[Int]]) {
        for row in matrix {
            var sum = 0
            var rowSums: [Int] = []
            for r in row {
                sum += r
                rowSums.append(sum)
            }
            prefixSumMatrix.append(rowSums)
        }
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var sum = 0
        for r in row1...row2 {
            let leftSum = col1 == 0 ? 0 : prefixSumMatrix[r][col1-1]
            let rightSum = prefixSumMatrix[r][col2]
            sum += rightSum - leftSum
        }
        return sum
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */