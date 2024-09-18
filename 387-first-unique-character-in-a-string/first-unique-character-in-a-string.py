class Solution:
    def firstUniqChar(self, s: str) -> int:
        count_dict = {}
        for c in s:
            if c in count_dict:
                count_dict[c] += 1
            else:
                count_dict[c] = 1
        for index, c in enumerate(s):
            if count_dict[c] == 1:
                return index
        return -1