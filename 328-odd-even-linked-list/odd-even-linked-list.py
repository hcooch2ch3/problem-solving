# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def oddEvenList(self, head: Optional[ListNode]) -> Optional[ListNode]:
        if head is None:
            return
        list_length = 1
        last = head
        while last.next != None:
            last = last.next
            list_length += 1
        prev_last = last
        
        first_temp = head
        second_temp = head.next
        while first_temp != prev_last and second_temp != prev_last:
            first_temp.next = second_temp.next
            last.next = second_temp
            second_temp.next = None
            last = last.next
            first_temp = first_temp.next
            if first_temp is None:
                break
            second_temp = first_temp.next
        if list_length > 2 and list_length % 2 == 0:
            first_temp.next = second_temp.next
            last.next = second_temp
            second_temp.next = None
        return head



        