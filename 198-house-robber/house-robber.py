class Solution(object):
    def rob(self, nums):
        dp = [0] * len(nums)

        for i in range(len(nums)):
            prev = dp[i-1] if i-1 >= 0 else 0
            prev_prev = dp[i-2] if i-2 >= 0 else 0
            dp[i] = max(prev, prev_prev + nums[i])
        
        return dp[-1]
        