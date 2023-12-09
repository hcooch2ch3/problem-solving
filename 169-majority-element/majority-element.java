class Solution {
    public int majorityElement(int[] nums) {
        Arrays.sort(nums);
        int lastNum = nums[0];
        int lastNumCount = 1;
        int maxCount = 1;
        int maxElement = nums[0];
        for (int i = 1; i < nums.length; i++) {
            if (lastNum != nums[i]) {
                lastNum = nums[i];
                lastNumCount = 1;
            } else {
                lastNumCount++;
                if (lastNumCount > maxCount) {
                    maxCount = lastNumCount;
                    maxElement = nums[i];
                }
            }
        }
        return maxElement;
    }
}