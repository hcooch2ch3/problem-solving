class Solution:
    def isPalindrome(self, s: str) -> bool:
        only_alpha_s = ''.join([char.lower() for char in s if char.isalpha() or char.isdigit()])
        
        for i in range(len(only_alpha_s)):
            start = i
            end = len(only_alpha_s) - 1 - i
            if only_alpha_s[start] != only_alpha_s[end]:
                return False

        return True

        