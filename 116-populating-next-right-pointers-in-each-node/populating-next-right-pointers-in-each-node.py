"""
# Definition for a Node.
class Node:
    def __init__(self, val: int = 0, left: 'Node' = None, right: 'Node' = None, next: 'Node' = None):
        self.val = val
        self.left = left
        self.right = right
        self.next = next
"""

class Solution:
    def connect(self, root: 'Optional[Node]') -> 'Optional[Node]':
        if root is None:
            return
        queue = [(root, 0)]
        while len(queue) > 0:
            temp = queue.pop(0)
            temp_node = temp[0]
            temp_depth = temp[1]
            if len(queue) > 0 and queue[0][1] == temp_depth:
                temp_node.next = queue[0][0]
            if temp_node.left is not None:
                queue.append((temp_node.left, temp_depth+1))
            if temp_node.right is not None:
                queue.append((temp_node.right, temp_depth+1))

        
        return root