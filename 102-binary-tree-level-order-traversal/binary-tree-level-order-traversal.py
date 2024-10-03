# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution(object):
    def levelOrder(self, root):
        result = []
        if root is None:
            return result
        queue = [(root, 0)]
        while len(queue) > 0:
            item = queue.pop(0)
            node = item[0]
            level = item[1]
            if len(result) <= level:
                result.append([node.val])
            else:
                result[-1].append(node.val)
            if node.left is not None:
                queue.append((node.left, level+1))
            if node.right is not None:
                queue.append((node.right, level+1))
        print(result)
        return result