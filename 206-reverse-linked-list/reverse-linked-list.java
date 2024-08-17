/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode reverseList(ListNode head) {
        if (head == null) {
            return head;
        }
        ListNode endPrev = head;
        ListNode end = head.next;
        ListNode newHead = head;
        while (newHead.next != null) {
            newHead = newHead.next;
        }
        while (head.next != null) {
            while (endPrev.next != null && endPrev.next.next != null) {
                end = endPrev.next.next;
                endPrev = endPrev.next;
            }
            end.next = endPrev;
            endPrev.next = null;
            endPrev = head;
            end = head.next;
        }
        
        return newHead;
    }
}