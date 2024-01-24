class Solution {
    public int addDigits(int num) {
        if (num/10 == 0) {
            return num;
        }
        int result = 0;
        while (num/10 > 0) {
            result += num % 10;
            num = num/10;
        }
        result += num;
        return addDigits(result);
    }
}