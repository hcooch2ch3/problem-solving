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
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var result: [Double] = []
        var queue: [TreeNode] = []
        if let root = root {
            queue.append(root)
        }
        
        while(queue.count > 0) {
            var sum = 0
            var count = 0
            var qSize = queue.count
            
            for _ in 0..<qSize {
                let node = queue.removeFirst()
                sum += node.val
                count += 1
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            result.append(Double(sum)/Double(count))
        }
        return result
    }
}