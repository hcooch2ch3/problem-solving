class Solution {
    public int titleToNumber(String columnTitle) {
        int result = 0;
        for (int i = 0; i < columnTitle.length(); i++) {
            int j = columnTitle.length() - 1 - i;
            char ch = columnTitle.charAt(i);
            int asciiValue = (int) ch;
            result += (ch - 64) * Math.pow(26, j);
        }
        return result;
    }
}