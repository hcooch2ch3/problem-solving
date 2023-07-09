class Solution {
    func solveNQueens(_ n: Int) -> [[String]] {
        var board = Array(repeating: Array(repeating: ".", count: n), count: n)
        var tempResult: [[[String]]] = []
        var result: [[String]] = []

        go(&tempResult, &board, n, 0, 0)
        for tr in tempResult {
            var tempA: [String] = []
            for t in tr {
                let r = t.joined(separator: "")
                tempA.append(r)
            }
            result.append(tempA)
        }
        return result
    }

    func go(_ result: inout [[[String]]], _ board: inout [[String]], _ n: Int, _ r: Int, _ c: Int) {
        if r == n {
            result.append(board)
            return
        }

        if c < n {
            for i in c..<n {
                board[r][i] = "Q"
                if checkValidity(&board, n, r, i) {
                    go(&result, &board, n, r+1, 0)
                }
                board[r][i] = "."
            }
        } else {
            go(&result, &board, n, r+1, 0)
        }
    }

    func checkValidity(_ board: inout [[String]], _ n: Int, _ r: Int, _ c: Int)  -> Bool {
        // check upside
        for i in 1...n {
            if r-i < 0 {
                break
            }
            if board[r-i][c] == "Q" {
                return false
            }
        }

        // check left-upside
        for i in 1...n {
            if c-i < 0 || r-i < 0{
                break
            }
            if board[r-i][c-i] == "Q" {
                return false
            }
        }

        // check right-upside
        for i in 1...n {
            if c+i >= n || r-i < 0 {
                break
            }
            if board[r-i][c+i] == "Q" {
                return false
            }
        }

        return true
    }


}