class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var perimeter = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 0 {
                    continue
                }

                if i-1 >= 0 && grid[i-1][j] == 0 {
                    perimeter += 1
                } else if i-1 < 0 {
                    perimeter += 1
                }

                if i+1 < grid.count && grid[i+1][j] == 0 {
                    perimeter += 1
                } else if i+1 >= grid.count {
                    perimeter += 1
                }

                if j-1 >= 0 && grid[i][j-1] == 0 {
                    perimeter += 1
                } else if j-1 < 0 {
                    perimeter += 1
                }

                if j+1 < grid[i].count && grid[i][j+1] == 0 {
                    perimeter += 1
                } else if j+1 >= grid[i].count {
                    perimeter += 1
                }
            }
        }
        return perimeter
    }
}