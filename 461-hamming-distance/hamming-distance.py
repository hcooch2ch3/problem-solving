class Solution:
    def hammingDistance(self, x: int, y: int) -> int:
        xor_result = x ^ y
        count = 0
        temp = xor_result
        while temp:
            if temp % 2 == 1:
                count += 1
            temp = temp // 2
        return count