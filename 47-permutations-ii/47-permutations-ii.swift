class Solution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var results = Set<[Int]>()
        func find(_ indices: [Int]) {
            if indices.count == nums.count {
                let result = indices.map { nums[$0] }
                results.insert(result)
                return
            }
            for i in 0..<nums.count {
                if indices.contains(i) {
                    continue
                }
                find(indices + [i])
            }
        }
        find([])
        return Array(results)
    }
}