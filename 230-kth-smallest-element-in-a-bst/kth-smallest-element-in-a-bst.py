# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def kthSmallest(self, root: Optional[TreeNode], k: int) -> int:
        val_list = []
        
        def find(root: Optional[TreeNode]):
            if root is None:
                return
            val_list.append(root.val)
            find(root.left)
            find(root.right)
        
        find(root)
        val_list.sort()
        return val_list[k-1]