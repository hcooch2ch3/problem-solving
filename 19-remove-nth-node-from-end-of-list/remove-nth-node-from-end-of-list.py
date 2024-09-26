# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def removeNthFromEnd(self, head: Optional[ListNode], n: int) -> Optional[ListNode]:
        length_list = 1
        temp = head
        while temp.next != None:
            length_list += 1
            temp = temp.next
        if length_list == 1 and n == 1:
            return
        goal = length_list - n
        if goal == 0:
            return head.next
        m = 0
        current = head
        next = current.next
        while m < goal-1:
            current = current.next
            next = current.next if current != None else None
            m += 1
        if next != None:
            current.next = next.next
        return head
        
        