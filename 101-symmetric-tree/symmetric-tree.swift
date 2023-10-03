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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        var queue: [TreeNode?] = []
        if let left = root?.left, let right = root?.right {
            queue.append(left)
            queue.append(right)
        } else if root?.left == nil && root?.right == nil{
            return true
        } else {
            return false
        }
        
        while !queue.isEmpty {
            var currentCount = queue.count
            if currentCount % 2 != 0 {
                return false
            }
            
            for i in 0..<currentCount/2 {
                if queue[i]?.val != queue[currentCount-(i+1)]?.val {
                    return false
                } else if let _ = queue[i], queue[currentCount-(i+1)] == nil {
                    return false
                } else if let r = queue[currentCount-(i+1)], queue[i] == nil {
                    return false
                } 
            }
            while currentCount > 0 {
                let poppedElement = queue.removeFirst()
                if let left = poppedElement?.left {
                    queue.append(left)
                } else if poppedElement != nil && poppedElement?.left == nil {
                    queue.append(nil)
                }
                if let right = poppedElement?.right {
                    queue.append(right)
                } else if poppedElement != nil && poppedElement?.right == nil {
                    queue.append(nil)
                }
               
                currentCount -= 1
            }
        }
        return true
    }
}