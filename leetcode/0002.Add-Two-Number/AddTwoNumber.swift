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
func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let res: ListNode = ListNode(0)
    var carry: Int = 0
    var head = res
    var p = l1
    var q = l2
    
    while (p != nil) || (q != nil) {
        let sum = (p?.val ?? 0) + (q?.val ?? 0) + carry
        carry = sum/10
        head.next = ListNode(sum % 10)
        head = head.next!
        p = p?.next
        q = q?.next
    }
    
    if carry > 0 {
        head.next = ListNode(carry)
    }
    return res.next;
}