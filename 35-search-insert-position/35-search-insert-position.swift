class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var check: [Bool] = Array(repeating: false, count: nums.count)
        var minDifference = Int.max
        var minDifferenceIndex = -1
        find(0, nums.count, nums, target, &check, &minDifference, &minDifferenceIndex)
        var result = -1
        if minDifference == 0 {
            result = minDifferenceIndex
        } else {
            if nums[minDifferenceIndex] > target {
                result = minDifferenceIndex
            } else {
                result = minDifferenceIndex + 1
            }
        }
        return result
    }
    
    func find(_ left: Int, _ right: Int, _ nums: [Int], _ target: Int, _ check: inout [Bool], _ minDifference: inout Int, _ minDifferenceIndex: inout Int) {
        let half = (left + right) / 2
        if check[half] { return }
        if abs(nums[half] - target) < minDifference { 
            minDifference = abs(nums[half] - target) 
            minDifferenceIndex = half
        }
        check[half] = true
        if nums[half] == target {
            return
        } else if nums[half] < target {
            find(half, right, nums, target, &check, &minDifference, &minDifferenceIndex)
        } else {
            find(left, half, nums, target, &check, &minDifference, &minDifferenceIndex)
        }
    }
}