class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var leftPointer = 0
        var rightPointer = height.count - 1
        var maxArea = 0
        while leftPointer < rightPointer {
            let h = min(height[leftPointer], height[rightPointer])
            let w = rightPointer - leftPointer
            let area = h * w
            maxArea = max(maxArea, area)
            if height[leftPointer] < height[rightPointer] {
                leftPointer += 1
            } else {
                rightPointer -= 1
            }
        }
        return maxArea
    }
}