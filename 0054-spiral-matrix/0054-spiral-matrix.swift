class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        let height = matrix.count
        let width = matrix[0].count
        let maxCount = height * width
        var checkMatrix = Array(repeating: Array(repeating: false, count: width), count: height)
        let dxs = [1, 0, -1, 0]
        let dys = [0, 1, 0, -1]
        var result: [Int] = [matrix[0][0]]
        checkMatrix[0][0] = true
        var x = 0
        var y = 0
        
        while result.count < maxCount {    
            for i in 0..<4 {
                let dx = dxs[i]
                let dy = dys[i]
                while x + dx >= 0 && x + dx < width && y + dy >= 0 && y + dy < height && checkMatrix[y + dy][x + dx] == false {
                    y += dy
                    x += dx
                    checkMatrix[y][x] = true
                    result.append(matrix[y][x])
                }
            }
        }
        return result
    }
}