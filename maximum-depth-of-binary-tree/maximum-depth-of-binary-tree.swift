/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    var max = 0

    func maxDepth(_ root: TreeNode?) -> Int {
        go(1, root)
        return max
    }

    func go(_ depth: Int, _ node: TreeNode?) {
        guard let node = node else {
            return
        }
        if depth > max {
            max = depth
        }
        go(depth+1, node.left)
        go(depth+1, node.right)
    }
}