class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        var zigzag = Array(repeating: "", count:numRows)
        var y = 0
        var isZ = false
        for c in s {
            zigzag[y] += String(c)
            if isZ {
                y -= 1
            } else {
                y += 1
            }
            if y >= numRows-1 {
                isZ = true
            } else if y == 0 {
                isZ = false
            }
        }
        var result = zigzag.reduce("") {
            $0 + $1
        }
        return result
    }
}