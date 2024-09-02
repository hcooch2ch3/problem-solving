class Solution:
    def countPairs(self, nums: List[int], target: int) -> int:
        result = 0
        for i, n1 in enumerate(nums):
            for j, n2 in enumerate(nums):
                if i == j:
                    continue
                if n1 + n2 < target:
                    result += 1
        result = int(result/2)
        return result
        