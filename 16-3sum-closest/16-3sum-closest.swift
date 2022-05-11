class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var minimumDifference = Int.max
        var result = 0
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                for k in j+1..<nums.count {
                    let threeSum = nums[i] + nums[j] + nums[k]
                    let difference = abs(threeSum - target)
                    if difference < minimumDifference {
                        minimumDifference = difference
                        result = threeSum
                    }
                }    
            }
        }
        return result
    }
}