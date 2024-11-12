class Solution:
    def isPowerOfThree(self, n: int) -> bool:
        if n == 1:
            return True
        elif n <= 0 or n % 3 != 0:
            return False
        
        temp = n
        while temp > 0:
            if temp == 1:
                break

            if temp % 3 != 0:
                return False
            else:
                temp = temp / 3
        return True