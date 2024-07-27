class Solution {
    public int scoreOfString(String s) {
        int result = 0;
         
        for (int i = 1; i < s.length(); i++) {
            if (i == s.length() - 1) {
                char c1 = s.charAt(i-1);
                char c2 = s.charAt(i);
                result += Math.abs(c1-c2);
            } else {
                char c1 = s.charAt(i-1);
                char c2 = s.charAt(i);
                result += Math.abs(c1-c2);
            }
        }

        return result;
    }
}