class Solution:
    def divide(self, dividend: int, divisor: int) -> int:
        INT_MIN, INT_MAX = -2147483648, 2147483647

        if dividend == INT_MIN and divisor == -1:
            return INT_MAX
        
        is_minus = (dividend < 0) ^ (divisor < 0)

        dividend, divisor = abs(dividend), abs(divisor)
        
        quotient = 0
        while dividend >= divisor:
            current_divisor, num_divisors = divisor, 1
            while dividend >= current_divisor:
                dividend -= current_divisor
                quotient += num_divisors

                current_divisor <<= 1
                num_divisors <<= 1
        
        if is_minus:
            quotient *= -1

        return max(INT_MIN, min(INT_MAX, quotient))

        