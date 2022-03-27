class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var i: Int = 0
        let newNums: [Int] = nums.map {
            i += $0
            return i
        }
        return newNums
    }
}