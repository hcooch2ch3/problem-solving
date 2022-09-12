class Solution {
    func canPartitionKSubsets(_ nums: [Int], _ k: Int) -> Bool {
        let sum = nums.reduce(0, +)
        if nums.count < k || sum % k > 0 {
            return false
        }
        var visited = Array(repeating: false, count: nums.count)
        let target = sum / k
        
        return backtrack(nums, &visited, target, 0, 0, k)
    }
    
    func backtrack(_ nums: [Int], _ visited: inout [Bool], _ target: Int, _ currentSum: Int, _ i: Int, _ k: Int) -> Bool {
        if k == 1 { return true }
        if currentSum == target { return backtrack(nums, &visited, target, 0, 0, k-1) }
        for j in i..<nums.count {
            if visited[j] || currentSum + nums[j] > target { continue }
            
            visited[j] = true
            if backtrack(nums, &visited, target, currentSum + nums[j], j+1, k) { return true }
            visited[j] = false
        }
        
        return false
    }
    
}