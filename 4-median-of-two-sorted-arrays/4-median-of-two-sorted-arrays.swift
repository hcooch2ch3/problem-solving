class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let m = nums1.count
        let n = nums2.count
        var i = 0
        var j = 0
        var nums3 = Array(repeating: 0, count: (m + n))
        while i < m && j < n && i + j < (m + n){
            if nums1[i] < nums2[j] {
                nums3[i + j] = nums1[i]
                i += 1
            } else {
                nums3[i + j] = nums2[j]
                j += 1
            }
        }
        for k in i..<m {
            nums3[j + k] = nums1[k]
        }
        for l in j..<n {
            nums3[i + l] = nums2[l]
        }
        if (m + n) % 2 == 0 {
            return Double((nums3[(m + n) / 2] + nums3[(m + n) / 2 - 1])) / 2
        } else {
            return Double(nums3[(m + n) / 2])
        }
    }
}