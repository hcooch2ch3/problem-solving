class Solution {
    public String reverseWords(String s) {
        String result = "";
        int startIndex = 0;
        int endIndex = 0;
        for(int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == ' ') {
                endIndex = i;
                result += reverse(startIndex, endIndex, s);
                result += " ";
                startIndex = i+1;
            } else if (i == s.length() - 1) {
                result += reverse(startIndex, s.length(), s);
            }
        }
        return result;
    }

    public String reverse(int startIndex, int endIndex, String s) {
        String reversedString = "";
        for(int i = endIndex-1; i >= startIndex; i--) {
            char c = s.charAt(i);
            reversedString += c;
        }
        return reversedString;
    }
}