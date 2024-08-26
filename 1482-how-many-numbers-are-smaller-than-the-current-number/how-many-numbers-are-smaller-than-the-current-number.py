class Solution:
    def smallerNumbersThanCurrent(self, nums: List[int]) -> List[int]:
        result = []
        for i, num1 in enumerate(nums):
            r = 0
            for j, num2 in enumerate(nums):
                if i == j:
                    continue
                if num2 < num1:
                    r += 1
            result.append(r)
        return result