# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def zigzagLevelOrder(self, root: Optional[TreeNode]) -> List[List[int]]:
        result = []
        if root is None:
            return result
        result.append([root.val])

        queue = []
        if root.left is not None:
            queue.append((root.left, 1))
        if root.right is not None:
            queue.append((root.right, 1))

        temp_val_list = []
        current_depth = 1
        is_right_first = True
        while len(queue) > 0:
            temp = queue.pop(0)

            if temp[1] > current_depth:
                if is_right_first:
                    result.append(temp_val_list[::-1])
                else:
                    result.append(temp_val_list)
                temp_val_list = []
                current_depth = temp[1]
                is_right_first = not is_right_first
            temp_val_list.append(temp[0].val)
            if temp[0].left is not None:
                queue.append((temp[0].left, current_depth+1))
            if temp[0].right is not None:
                queue.append((temp[0].right, current_depth+1))
        
        if len(temp_val_list) > 0:
            if is_right_first:
                result.append(temp_val_list[::-1])
            else:
                result.append(temp_val_list)
        return result


        