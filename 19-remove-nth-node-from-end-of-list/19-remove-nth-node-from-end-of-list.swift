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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let length = getLength(head, 0)
        if length == 0 { return nil }
        if length == n-1 { return head?.next}
        let target = find(head, length - n)
        target?.next = target?.next?.next
        return head
    }
    
    func getLength(_ head: ListNode?, _ n: Int) -> Int {
        if head?.next == nil {
            return n
        }
        return getLength(head?.next, n+1)
    }
    
    func find(_ head: ListNode?, _ n: Int) -> ListNode? {
        if n == 0 {
            return head
        }
        return find(head?.next, n-1)
    }
}