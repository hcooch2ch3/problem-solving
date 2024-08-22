class Solution:
    def hammingWeight(self, n: int) -> int:
        result = 0
        temp_n = n
        while temp_n > 0:
            result += temp_n % 2
            temp_n = int(temp_n / 2)
        return result