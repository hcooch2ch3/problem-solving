class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var result: [[Int]] = []
        for i in 0..<nums.count {
            var j = i - 1
            var k = i + 1
            while j >= 0 && k < nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                if sum == 0 {
                    result.append([nums[i], nums[j], nums[k]])
                    k += 1
                    j -= 1
                } else if sum < 0 {
                    k += 1
                } else {
                    j -= 1
                }
            }
        }
        return Array(Set(result))
    }
}