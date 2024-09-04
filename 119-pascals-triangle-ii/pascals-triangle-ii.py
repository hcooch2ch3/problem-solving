class Solution:
    def getRow(self, rowIndex: int) -> List[int]:
        triangle = []
        for i in range(rowIndex+1):
            row = []
            if i == 0:
                row.append(1)
            elif i == 1:
                row.append(1)
                row.append(1)
            else:
                for j in range(i):
                    if j-1 >= 0 and j < len(triangle[i-1]):
                        row.append(triangle[i-1][j-1] + triangle[i-1][j])
                    else:
                        row.append(1)
                row.append(1)
            triangle.append(row)
        return triangle[rowIndex]