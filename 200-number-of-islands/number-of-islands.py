class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        check = [[False] * len(grid[0]) for _ in range(len(grid))]
        result = 0

        def find(i, j):
            if check[i][j] == True or grid[i][j] == "0":
                return
            check[i][j] = True

            if i+1 < len(grid) and grid[i+1][j] == "1":
                find(i+1, j)
            if j+1 < len(grid[0]) and grid[i][j+1] == "1":
                find(i, j+1)
            if i-1 >= 0 and grid[i-1][j] == "1":
                find(i-1, j)
            if j-1 >= 0 and grid[i][j-1] == "1": 
                find(i, j-1)

        for i in range(len(grid)):
            for j in range(len(grid[0])):
                if grid[i][j] == "1" and check[i][j] is False:
                    find(i, j)
                    result += 1

        return result
        