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
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.count == 0 {
            return nil
        } 
        var vals: [Int] = []
        for l in lists {
            if let l = l {
                vals.append(l.val)
                var next = l.next
                while next != nil {
                    vals.append(next!.val)
                    next = next!.next
                }
            }
        }
        if vals.count > 0 {
            vals.sort()
            var list: ListNode = ListNode(vals[0])
            var last: ListNode = list
            for i in 1..<vals.count {
                last.next = ListNode(vals[i])
                if let next = last.next {
                    last = next
                }
            }
            return list
        }
        return nil
    }
}