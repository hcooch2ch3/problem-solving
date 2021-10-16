class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        
        func findPermutation(_ currentIndex: Int, _ permutation: [Int]) {
            if permutation.count == nums.count {
                result.append(permutation)
                return 
            }
            
            var i = 1
            var j = 1
            while j <= (nums.count-permutation.count) {
                var newPermutation = permutation
                var nextIndex = currentIndex + i
                if nextIndex >= nums.count {
                    nextIndex -= nums.count
                }
                if newPermutation.contains(nums[nextIndex]) {
                    i += 1
                    continue
                } 
                newPermutation.append(nums[nextIndex])
                findPermutation(nextIndex, newPermutation)
                i += 1
                j += 1
            }
        }
        
        for i in 0..<nums.count {
            findPermutation(i, [nums[i]])
        }
        
        return result
    }
}