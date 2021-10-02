class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var dp = Array(repeating: 0, count: nums.count)
        dp[0] = nums[0]
        if nums.count == 1 {
            return dp[0]
        }
        var max = nums[0]
        for i in 1..<nums.count {
            dp[i] = dp[i-1] + nums[i] > nums[i] ? dp[i-1] + nums[i] : nums[i]
            if dp[i] > max {
                max = dp[i]
            }
        }
        return max
    }
}