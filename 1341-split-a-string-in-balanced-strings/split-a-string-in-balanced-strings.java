class Solution {
    public int balancedStringSplit(String s) {
        int result = 0;
        int rCount = 0;
        int lCount = 0;
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == 'R') {
                rCount++;
            } else {
                lCount++;
            }
            if (rCount == lCount) {
                result++;
                rCount = 0;
                lCount = 0;
            } 
        }
        if (rCount > 0 && lCount > 0 && rCount == lCount) {
            result++;
        }
        return result;
    }
}