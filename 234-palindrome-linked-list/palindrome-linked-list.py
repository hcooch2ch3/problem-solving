# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def isPalindrome(self, head):
        val_list = []
        current_node = head
        while current_node.next != None:
            val_list.append(current_node.val)
            current_node = current_node.next
        val_list.append(current_node.val)

        for i in range(len(val_list)):
            start = val_list[i]
            end = val_list[len(val_list) - 1 - i]
            if start != end:
                return False
        return True
