# The isBadVersion API is already defined for you.
# @param version, an integer
# @return a bool
# def isBadVersion(version):

class Solution(object):
    def firstBadVersion(self, n):
        if n == 1:
            return 1
        return self.find(n//2, n)

    def find(self, n, right):
        is_bad = isBadVersion(n)
        if (n == right or (n+right)//2 == n) and is_bad:
            return n
        
        if is_bad:
            return self.find(n//2, n)
        else:
            if (n+right)//2 == n:
                return self.find(n+1, right)    
            return self.find((n+right)//2, right)