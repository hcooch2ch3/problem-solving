class Solution {
    public int[][] generateMatrix(int n) {
        int[][] matrix = new int[n][n];
        matrix[0][0] = 1;
        go(matrix, 0, 0, 0, 2);
        return matrix;
    }

    // 0: Rgt, 1: Dwn, 2: Lft, 3: Up 
    public void go(int[][] matrix, int i, int j, int direction, int number) {
        int n = matrix.length;
        switch (direction) {
            case 0: // Rgt
                if (j+1 < n && matrix[i][j+1] == 0) {
                    matrix[i][j+1] = number;
                    go(matrix, i, j+1, 0, number+1);
                } else if (i+1 < n && matrix[i+1][j] == 0) {
                    matrix[i+1][j] = number;
                    go(matrix, i+1, j, 1, number+1);
                }
                break;
            case 1: // Dwn
                if (i+1 < n && matrix[i+1][j] == 0) {
                    matrix[i+1][j] = number;
                    go(matrix, i+1, j, 1, number+1);
                } else if (j-1 >= 0 && matrix[i][j-1] == 0) {
                    matrix[i][j-1] = number;
                    go(matrix, i, j-1, 2, number+1);
                }
                break;
            case 2: // Lft
                if (j-1 >= 0 && matrix[i][j-1] == 0) {
                    matrix[i][j-1] = number;
                    go(matrix, i, j-1, 2, number+1);
                } else if (i-1 >= 0 && matrix[i-1][j] == 0){
                    matrix[i-1][j] = number;
                    go(matrix, i-1, j, 3, number+1);
                }
                break;
            case 3: // up
                if (i-1 >= 0 && matrix[i-1][j] == 0) {
                    matrix[i-1][j] = number;
                    go(matrix, i-1, j, 3, number+1);
                } else if (j+1 < n && matrix[i][j+1] == 0) {
                    matrix[i][j+1] = number;
                    go(matrix, i, j+1, 0, number+1);
                }
                break;
            default:
                break;
        }
    }
}