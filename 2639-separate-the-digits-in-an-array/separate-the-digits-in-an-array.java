class Solution {
    public int[] separateDigits(int[] nums) {
        ArrayList<Integer> result = new ArrayList<>();
        for (int i = nums.length-1; i >= 0; i--) {
            int temp = nums[i];
            while (temp >= 10) {
                result.add(temp % 10);
                temp = temp / 10;
            }
            result.add(temp);
        }
        Collections.reverse(result);
        int[] array = result.stream().mapToInt(i -> i).toArray();
        return array;
    }
}