# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeNodes(self, head: Optional[ListNode]) -> Optional[ListNode]:
        result_head = None
        result_current = None
        current = head.next
        temp_sum = 0
        while current != None:
            if current.val != 0:
                temp_sum += current.val
            else:
                if result_head is None:
                    result_current = ListNode(temp_sum)
                    result_head = result_current
                else:
                    result_current.next = ListNode(temp_sum)
                    result_current = result_current.next
                temp_sum = 0
            current = current.next
        return result_head