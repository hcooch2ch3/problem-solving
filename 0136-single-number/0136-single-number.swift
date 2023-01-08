class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        for i in 0..<sortedNums.count {
            let prev = i-1 >= 0 ? sortedNums[i-1] : -30001
            let current = sortedNums[i]
            let next = i+1 < sortedNums.count ? sortedNums[i+1] : 30001
            if prev != current && current != next {
                return current
            }
        }
        return 1
    }
}