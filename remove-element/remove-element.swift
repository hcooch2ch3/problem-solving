class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        for i in (0..<nums.count).reversed() {
            if nums[i] == val {
                nums.remove(at: i)
            }
        }
        return nums.count
    }
}