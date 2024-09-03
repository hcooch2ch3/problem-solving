# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    rangeSum = 0
    def rangeSumBST(self, root: Optional[TreeNode], low: int, high: int) -> int:
        self.go(root, low, high)
        return self.rangeSum

    def go(self, node, low, high):
        if node == None:
            return

        if node.val >= low and node.val <= high:
            self.rangeSum += node.val
        
        self.go(node.left, low, high)
        self.go(node.right, low, high)