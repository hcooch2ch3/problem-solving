class Solution:
    def getSum(self, a: int, b: int) -> int:
        MASK = 0xFFFFFFFF
        INT_MAX = 0x7FFFFFFF
        
        while b != 0:
            sum_without_carry = (a ^ b) & MASK
            carry = ((a & b) << 1) & MASK
            a, b = sum_without_carry, carry  
        
        return a if a <= INT_MAX else ~(a ^ MASK)