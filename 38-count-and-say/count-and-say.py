class Solution:
    def countAndSay(self, n: int) -> str:
        if n == 1:
            return "1"
        elif n == 2:
            return "11"
        elif n == 3:
            return "21"
            
        prev_result = self.countAndSay(n-1)
        result = ""
        current_char = prev_result[0]
        current_count = 1
        for index in range(1, len(prev_result)):
            if prev_result[index] == current_char:
                current_count += 1
            else:
                result += str(current_count)
                result += current_char
                current_char = prev_result[index]
                current_count = 1
            if index == len(prev_result)-1:
                result += str(current_count)
                result += current_char

        return result