class NumArray {
    var prefixSumNums: [Int] = []

    init(_ nums: [Int]) {
        var sum = 0
        for n in nums {
            sum += n
            prefixSumNums.append(sum)
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        let leftSum = left == 0 ? 0 : prefixSumNums[left-1]
        let rightSum = prefixSumNums[right]
        return rightSum - leftSum
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */