class Solution:
    def isHappy(self, n: int) -> bool:
        temp = n
        check = set()
        while temp not in check:
            check.add(temp)
            t = temp
            temp = 0
            while t >= 10:
                temp += (t % 10) ** 2
                t = int(t / 10)
            temp += (t % 10) ** 2
        return temp == 1