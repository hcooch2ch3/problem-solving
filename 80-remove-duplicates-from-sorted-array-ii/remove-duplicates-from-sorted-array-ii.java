class Solution {
    public int removeDuplicates(int[] nums) {
        int result = 1;
        int lastNum = nums[0];
        int lastNumCount = 1;
        for (int i = 1; i < nums.length; i++) {
            if (nums[i] == lastNum) {
                lastNumCount++;
                if (lastNumCount <= 2) {
                    result++;
                } else {
                    nums[i] = 99999;
                }
            } else {
                lastNum = nums[i];
                lastNumCount = 1;
                result++;
            }
        }
        Arrays.sort(nums);
        return result;
    }
}