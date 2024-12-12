class Solution:
    def convertDateToBinary(self, date: str) -> str:
        splited = date.split("-")
        result = ""
        for s in splited:
            temp_int = int(s)
            temp_bin = bin(temp_int)[2:]
            result += temp_bin
            result += "-"
        result = result[:-1]
        return result