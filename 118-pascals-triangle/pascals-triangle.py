class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        result =[]
        for i in range(numRows):
            if i == 0:
                result.append([1])
            elif i == 1:
                result.append([1, 1])
            else:
                r = [0 for _ in range(i+1)]
                r[0] = 1
                r[-1] = 1
                last = result[-1]
                for j in range(1, i):
                    r[j] = last[j-1] + last[j]
                result.append(r)
        return result