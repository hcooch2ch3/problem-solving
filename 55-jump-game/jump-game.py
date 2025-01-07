class Solution:
    def canJump(self, nums: List[int]) -> bool:
        if nums[0] == 0 and len(nums) > 1:
            return False
        check_nums = [False] * len(nums)
        check_nums[0] = True
        current = 0
        can_go = False
        
        while current < len(nums):
            for i in range(1, nums[current]+1):
                can_go = True
                if current + i >= len(nums):
                    current = len(nums)
                    break
                if check_nums[current + i] == False:
                    check_nums[current + i] = True
            if True in check_nums[current+1:]:
                can_go = True
            else:
                break
            current += 1
        return check_nums[-1]