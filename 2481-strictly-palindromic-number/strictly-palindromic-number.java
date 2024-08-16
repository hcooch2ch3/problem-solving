class Solution {
    public boolean isStrictlyPalindromic(int n) {
        for (int i = 2; i <= n-2; i++) {
            String baseNumberString = makeString(i, n);
            if (isPalindromic(baseNumberString) == false) {
                return false;
            }
        }
        return true;
    }

    public String makeString(int base, int n) {
        String result = "";
        int dividend = n;
        int i = 0;
        while (dividend > 0) {
            int remainder = dividend % base;
            result = Integer.toString(remainder) + result;
            dividend = dividend / base;
            i++;
        }
        return result;
    }

    public boolean isPalindromic(String n) {
        for (int i = 0; i < n.length(); i++) {
            char leftChar = n.charAt(i);
            char rightChar = n.charAt(n.length() - 1 - i);
            if (leftChar != rightChar) {
                return false;
            }
        }
        return true;
    }
}