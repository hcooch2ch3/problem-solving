class Solution:
    def exist(self, board: List[List[str]], word: str) -> bool:
        rows = len(board)
        cols = len(board[0])
        if rows * cols < len(word):
            return False
        check = [[0 for _ in range(cols)] for _ in range(rows)]
        def go(i, j, c):
            if c == len(word)-1 and word[c] == board[i][j]:
                return True
            if word[c] != board[i][j]:
                return False
            
            if i-1 >= 0 and check[i-1][j] == 0:
                check[i-1][j] = 1
                r = go(i-1, j, c+1)
                if r is True:
                    return True
                check[i-1][j] = 0
            if j+1 < cols and check[i][j+1] == 0:
                check[i][j+1] = 1
                r = go(i, j+1, c+1)
                if r is True:
                    return True
                check[i][j+1] = 0
            if i+1 < rows and check[i+1][j] == 0:
                check[i+1][j] = 1
                r = go(i+1, j, c+1)
                if r is True:
                    return True
                check[i+1][j] = 0
            if j-1 >= 0 and check[i][j-1] == 0:
                check[i][j-1] = 1
                r = go(i, j-1, c+1)
                if r is True:
                    return True
                check[i][j-1] = 0
        
        result = False
        for i in range(rows):
            for j in range(cols):
                check[i][j] = 1
                result = result or go(i, j, 0)
                check[i][j] = 0
        if result is None:
            return False
        return result