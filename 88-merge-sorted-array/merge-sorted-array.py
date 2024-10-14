class Solution(object):
    def merge(self, nums1, m, nums2, n):
        i = m
        while i < len(nums1):
            del nums1[i]
        for n2 in nums2:
            nums1.append(n2)
        nums1.sort()
        