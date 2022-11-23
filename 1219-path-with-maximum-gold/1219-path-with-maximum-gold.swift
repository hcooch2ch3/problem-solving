class Solution {
    func getMaximumGold(_ grid: [[Int]]) -> Int {
        var check: [[Bool]] = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count) 
        var max = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] > 0 {
                    check[i][j] = true
                    if grid[i][j] > max {
                        max = grid[i][j]
                    }
                    go(i, j, grid[i][j], grid, &max, &check)
                    check[i][j] = false
                }
            }
        }
        return max
    }
    
    func go(_ i: Int, _ j: Int, _ currentGold: Int, _ grid: [[Int]], _ max: inout Int, _ check: inout [[Bool]]) {
        if i-1 >= 0 && grid[i-1][j] > 0 && check[i-1][j] == false {
            check[i-1][j] = true
            if currentGold + grid[i-1][j] > max {
                max = currentGold + grid[i-1][j]
            }
            go(i-1, j, currentGold + grid[i-1][j], grid, &max, &check)
            check[i-1][j] = false
        } 
        if j+1 < grid[0].count && grid[i][j+1] > 0 && check[i][j+1] == false {
            check[i][j+1] = true
            if currentGold + grid[i][j+1] > max {
                max = currentGold + grid[i][j+1]
            }
            go(i, j+1, currentGold + grid[i][j+1], grid, &max, &check)
            check[i][j+1] = false
        } 
        if i+1 < grid.count && grid[i+1][j] > 0 && check[i+1][j] == false {
            check[i+1][j] = true
            if currentGold + grid[i+1][j] > max {
                max = currentGold + grid[i+1][j]
            }
            go(i+1, j, currentGold + grid[i+1][j], grid, &max, &check)
            check[i+1][j] = false
        } 
        if j-1 >= 0 && grid[i][j-1] > 0 && check[i][j-1] == false {
            check[i][j-1] = true
            if currentGold + grid[i][j-1] > max {
                max = currentGold + grid[i][j-1]
            }
            go(i, j-1, currentGold + grid[i][j-1], grid, &max, &check)
            check[i][j-1] = false
        }
    }
}