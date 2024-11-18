class Solution:
    def reverseBits(self, n: int) -> int:
        bin_n = bin(n)
        bin_n = bin_n[2:]
        
        temp_two = 1
        result = 0
        while len(bin_n) < 32:
            bin_n = "0" + bin_n
        for i in range(0, 32):
            if len(bin_n) <= i:
                break
            if bin_n[i] == "1":
                result += temp_two * 1
            temp_two *= 2

        return result