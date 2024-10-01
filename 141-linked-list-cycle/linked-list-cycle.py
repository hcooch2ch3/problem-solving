# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def hasCycle(self, head):
        if head == None or head.next == None:
            return False
        node_set = set()
        node_set.add(head)
        current = head.next
        while current.next != None:
            if current in node_set:
                return True
            node_set.add(current)
            current = current.next
        return False
        