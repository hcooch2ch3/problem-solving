import heapq

class Solution:
    def findKthLargest(self, nums: List[int], k: int) -> int:
        heapq.heapify(nums)
        i = 0
        small_k = len(nums)-k+1
        while i < small_k:
            result = heapq.heappop(nums)
            i += 1
        return result