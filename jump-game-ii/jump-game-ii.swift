class Solution {
    func jump(_ nums: [Int]) -> Int {
        var dp = Array(repeating: 0, count: nums.count)
        for i in 0..<nums.count {
            for j in 0..<nums[i] {
                if i+j+1 >= nums.count {
                    continue
                }
                if dp[i+j+1] == 0 {
                    dp[i+j+1] = dp[i] + 1
                } else if dp[i] + 1 < dp[i+j+1] {
                    dp[i+j+1] = dp[i] + 1
                }
            }
        }
        return dp[nums.count-1]
    }
}