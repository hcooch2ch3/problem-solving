class Solution:
    def uniquePaths(self, m: int, n: int) -> int:
        dp = [[0] * n for _ in range(m)]
        for i in range(m):
            for j in range(n):
                if i-1 < 0 or j-1 < 0:
                    dp[i][j] = 1
                    continue
                up = dp[i-1][j]
                left = dp[i][j-1]
                dp[i][j] = up + left

        return dp[m-1][n-1]