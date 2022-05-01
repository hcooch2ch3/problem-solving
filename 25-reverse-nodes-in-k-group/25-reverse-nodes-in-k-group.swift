/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        var windowStart = head
        while windowStart != nil {
            guard let trace = getTrace(k, windowStart) else { break }
            for i in 0..<k {
                windowStart?.val = trace[i]
                windowStart = windowStart?.next
            }
        }
        return head
    }
    
    func getTrace(_ i: Int, _ startNode: ListNode?) -> [Int]? {
        var trace: [Int] = []
        var temp = startNode
        for j in 0..<i {
            guard let t = temp else { return nil }
            trace.append(t.val)
            temp = t.next
        }
        return trace.reversed()
    }
}