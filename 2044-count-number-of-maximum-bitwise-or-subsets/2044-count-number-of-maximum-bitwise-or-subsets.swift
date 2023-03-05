class Solution {
    var max = 0
    var count = 1
    
    func countMaxOrSubsets(_ nums: [Int]) -> Int {
        max = nums.reduce(0, |)
        for (index, num) in nums.enumerated() {
            go(nums, [num], index)
        }
        return count    
    }
    
    func go(_ nums: [Int], _ selectedNums: [Int], _ currentIndex: Int) {
        if selectedNums.count >= nums.count {
            return
        }

        if selectedNums.reduce(0, |) == max {
            count += 1
        }
        
        for index in currentIndex+1..<nums.count {
            let num = nums[index]
            go(nums, selectedNums + [num], index)
        }
    }
}