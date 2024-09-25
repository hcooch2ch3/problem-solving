# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def deleteNode(self, node):
        current = node
        while current.next != None:
            current.val = current.next.val
            if current.next.next == None:
                current.next = None
            else:
                current = current.next
            
        
        