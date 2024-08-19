class Solution {
    private int[] numbers = new int[31];

    public int fib(int n) {
        if (n == 0) {
            return 0;
        } else if (n == 1) {
            return 1;
        }

        if (numbers[n] == 0) {
            numbers[n] = fib(n - 1) + fib(n - 2);
        }
        return numbers[n];
    }
}