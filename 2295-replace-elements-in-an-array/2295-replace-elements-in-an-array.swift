class Solution {
    func arrayChange(_ nums: [Int], _ operations: [[Int]]) -> [Int] {
        var nums = nums 
        var indexes: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            indexes[value] = index
        }
        for operation in operations {
            let index = indexes[operation[0]]!
            nums[index] = operation[1]
            indexes[operation[1]] = index
        }
        return nums
    }
}