class Solution {
    func findMiddleIndex(_ nums: [Int]) -> Int {
        for i in 0..<nums.count {
            let leftSum = getRangeSum(0..<i, nums)
            let rightSum = getRangeSum(i+1..<nums.count, nums)
            if leftSum == rightSum {
                return i
            }
        }
        return -1
    }
    
    func getRangeSum(_ range: Range<Int>, _ nums: [Int]) -> Int {
        var sum = 0
        for i in range {
            sum += nums[i]
        }
        return sum
    }
}