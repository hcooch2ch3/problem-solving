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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result: ListNode? = nil
        var resultLast: ListNode? = nil
        var next1 = l1
        var next2 = l2
        while next1 != nil || next2 != nil {
            if next1 != nil && next2 != nil {
                if next1!.val < next2!.val {
                    if result == nil {
                        result = ListNode(next1!.val)
                        resultLast = result
                    } else {
                        resultLast!.next = ListNode(next1!.val)
                        resultLast = resultLast!.next
                    }
                    next1 = next1!.next
                } else {
                    if result == nil {
                        result = ListNode(next2!.val)
                        resultLast = result
                    } else {
                        resultLast!.next = ListNode(next2!.val)
                        resultLast = resultLast!.next
                    }
                    next2 = next2!.next
                }
            } else if next1 == nil {
                if result == nil {
                    result = ListNode(next2!.val)
                    resultLast = result
                } else {
                    resultLast!.next = ListNode(next2!.val)
                    resultLast = resultLast!.next
                }
                next2 = next2!.next
            } else {
                if result == nil {
                    result = ListNode(next1!.val)
                    resultLast = result
                } else {
                    resultLast!.next = ListNode(next1!.val)
                    resultLast = resultLast!.next
                }
                next1 = next1!.next
            }
            
        }
        return result
    }
}