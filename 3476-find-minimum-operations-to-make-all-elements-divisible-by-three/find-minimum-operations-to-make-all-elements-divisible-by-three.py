class Solution:
    def minimumOperations(self, nums: List[int]) -> int:
        result = 0
        for n in nums:
            add_operation_number = 0
            subtract_operation_number = 0
            temp_n = n
            while (temp_n % 3 != 0):
                temp_n += 1
                add_operation_number += 1
            temp_n = n
            while (temp_n % 3 != 0):
                temp_n -= 1
                subtract_operation_number += 1
            result +=  min(add_operation_number, subtract_operation_number)
        return result