class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var n = Set<Int>()
        nums.sort()
        nums.indices.reversed().forEach {
            if n.contains(nums[$0]) {
                nums.remove(at:$0)
            } else {
                n.insert(nums[$0])
            }
        }
        return nums.count
    }
}