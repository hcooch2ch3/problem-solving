class Solution {
    func countBattleships(_ board: [[Character]]) -> Int {
        var count = 0
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if board[i][j] == "X" {
                    if (i > 0 && board[i-1][j] == "X") || (j > 0 && board[i][j-1] == "X") {
                        continue
                    } else {
                        count += 1
                    }
                }
            }
        }
        return count
    }
}