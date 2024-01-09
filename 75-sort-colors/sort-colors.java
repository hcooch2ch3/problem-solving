class Solution {
    public void sortColors(int[] nums) {
         quickSort(nums, 0, nums.length-1);
         quickSort(nums, 0, nums.length-1);
    }

    public void quickSort(int[] nums, int startIndex, int endIndex) {
        if(endIndex - startIndex == 0) {
            return;
        }
        int pivot = nums[startIndex];
        int pivotIndex = startIndex;
        for (int i = startIndex + 1; i <= endIndex; i++) {
            if (nums[i] < pivot) {
                int temp = nums[i];
                nums[i] = pivot;
                nums[pivotIndex] = temp;
                pivotIndex = i;
            }
        }
        if (startIndex+1 < pivotIndex) {
            quickSort(nums, startIndex+1, pivotIndex);
        }
        if (pivotIndex+1 < endIndex) {
            quickSort(nums, pivotIndex+1, endIndex);
        }        
    }
}