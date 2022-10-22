class Solution {
    func numberOfPairs(_ nums: [Int]) -> [Int] {
        var nums = nums
        var numberOfPairs = 0
        var i = 0
        while nums.count > 0 && i < nums.count {
            var start = nums[i]
            for j in i+1..<nums.count {
                if nums[j] == start {
                    if i < j {
                        nums.remove(at: j)    
                        nums.remove(at: i)
                    } else {
                        nums.remove(at: i)
                        nums.remove(at: j)
                    }
                    i -= 1
                    numberOfPairs += 1
                    break
                }
            }
            i += 1
        }
        let numberOfLeftover = nums.count
        return [numberOfPairs, numberOfLeftover]
    }
}