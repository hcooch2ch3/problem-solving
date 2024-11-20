class Solution:
    def setZeroes(self, matrix: List[List[int]]) -> None:
        origin_matrix = copy.deepcopy(matrix)
        is_zero_column_index = [False] * len(matrix[0])

        for i in range(len(origin_matrix)):
            is_zero_in_row = 0 in origin_matrix[i]
            for j in range(len(origin_matrix[i])):
                if origin_matrix[i][j] == 0:
                    is_zero_column_index[j] = True
                if origin_matrix[i][j] is True or is_zero_in_row:
                    matrix[i][j] = 0

        for i in range(len(origin_matrix)):
            for j in range(len(origin_matrix[i])):
                if is_zero_column_index[j] is True:
                    matrix[i][j] = 0
        