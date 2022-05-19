class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        // row
        for i in 0..<board.count {
            let arr = board[i].filter { $0 != "." }
            let set = Set(arr)
            if arr.count != set.count {
                return false
            }
        }
        
        // col
        for i in 0..<board.count {
            var arr: [Character] = []
            for j in 0..<board.count {
                if board[j][i] != "." {
                    arr.append(board[j][i])
                }
            }
            let set = Set(arr)
            if arr.count != set.count {
                return false
            }
        }
        
        // 3x3
        for a in 0...2 {
            for b in 0...2 {
                var arr: [Character] = []
                for i in 0...2 {
                    for j in 0...2 {
                        if board[j + 3*a][i + 3*b] != "." {
                            arr.append(board[j + 3*a][i + 3*b])
                        }
                    }
                }
                let set = Set(arr)
                if arr.count != set.count {
                    return false
                }
            }
        }    
    
        return true
    }
}