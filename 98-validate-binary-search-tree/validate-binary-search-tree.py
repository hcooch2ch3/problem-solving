# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution(object):
    def isValidBST(self, root):
        def validate(node, low=-2147483648, high=2147483647):
            if not node:
                return True

            if node.val <= low or node.val >= high:
                print(node.val)
                return False
            
            return ((validate(node.left, low, node.val) and validate(node.right, node.val, high)))
        
        if root.left is None and root.right is None:
            return True
        return validate(root, -3000000000, 3000000000)