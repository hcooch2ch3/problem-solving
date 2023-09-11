class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var shuffledNums: [Int] = []
        for i in 0..<n {
            shuffledNums.append(nums[i])
            shuffledNums.append(nums[n+i])
        }
        return shuffledNums
    }
}