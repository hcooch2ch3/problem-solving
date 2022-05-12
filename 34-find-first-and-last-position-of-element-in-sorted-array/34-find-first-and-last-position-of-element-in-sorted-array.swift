class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count == 1 && nums[0] == target { return [0, 0] }
        var firstPosition = -1
        var lastPosition = -1
        find(nums, target, 0, nums.count - 1, &firstPosition, &lastPosition)
        return [firstPosition, lastPosition]
    }
    
    func find(_ nums: [Int], _ target: Int, _ i: Int, _ j: Int, _ firstPosition: inout Int, _ lastPosition: inout Int) {
        if i >= j { return }
        let h = (i + j) / 2
        if h == i || h == j { 
            if nums[h] == target {
                if firstPosition == -1 || h < firstPosition {
                    firstPosition = h
                } 
                if lastPosition == -1 || h > lastPosition {
                    lastPosition = h
                } 
            }
            if nums[i] == target {
                if firstPosition == -1 || i < firstPosition {
                    firstPosition = i
                } 
                if lastPosition == -1 || i > lastPosition {
                    lastPosition = i
                } 
            }
            if nums[j] == target {
                if firstPosition == -1 || j < firstPosition {
                    firstPosition = j
                } 
                if lastPosition == -1 || j > lastPosition {
                    lastPosition = j
                } 
            }
            return
        }
        if nums[h] > target {
            find(nums, target, i, h, &firstPosition, &lastPosition)
        } else if nums[h] < target {
            find(nums, target, h, j, &firstPosition, &lastPosition)
        } else {
            if firstPosition == -1 || h < firstPosition {
                firstPosition = h
            } 
            if lastPosition == -1 || h > lastPosition {
                lastPosition = h
            } 
            find(nums, target, h, j, &firstPosition, &lastPosition)
            find(nums, target, i, h, &firstPosition, &lastPosition)
        }
    }
}