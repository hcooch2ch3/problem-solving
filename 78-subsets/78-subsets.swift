class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = [[]]
        func find(_ index: Int, _ subset: [Int]) {
            guard subset.count <= nums.count else { return }
            for i in index..<nums.count {
                var newSubset = subset
                newSubset.append(nums[i])
                result.append(newSubset)
                find(i+1, newSubset)
            }
        }
        find(0, [])
        return result
    }
}