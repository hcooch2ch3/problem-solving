class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        let a = sortedNums[sortedNums.count-1]
        let b = sortedNums[sortedNums.count-2]
        let c = sortedNums[0]
        let d = sortedNums[1]
        return (a*b)-(c*d)
    }
}