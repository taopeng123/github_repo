Note:
- If not specified, all the code are written by Tao.
- C++ code uses C++ 2011, Python code uses Python 3.
  So C++ code needs to be compiled using: std=c++11,
  and Python code needs to be run using: python3 filename.py

************************************************
Summary:

- For questions like List, Tree, array, after completed the code, the easiest way to avoid being lazy and escaping checking is to walk through some simplest case (like a three node List, a three node Tree, and a three element array).

- For questions in List, how to determine what xxx to wrote in the while(xxx) {...}, like while(!cur) {...} ?
  the way is to look into the yyy in while(...){yyy} or while(!cur && yyy) {...}. If yyy used cur->val, then should add !cur in the condition. Similarly, if yyy used cur->next->val, then should add !cur->next in the condition.

************************************************
category_list

************************
pr_xx

Question:

==
Key:

==
C++ code:

==
Python code:

************************
pr_21, Merge Two Sorted Lists, Easy

Question: 

Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

Example:

Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4

tao: splice means combine.

==
Key: This is essentially insertion sort. Add the nodes of l2 into l1. Use a pointer pre to scan in l1 from begin to end. Use a pointer called l2 to denote the current node in list l2. For every node in l2 (its pointer is called l2), scan pre in l2 from its beginning, if pre.next is greater than l2, then add l2 to the right of pre.

==
Code Ganker: this algorithm has time complexity O(m + n)
(tao: note that each list will only be traversed once), where m and n are
the lengths of the two lists. Space complexity is O(1).

==
C++ code:

class Solution {
public:
    ListNode* mergeTwoLists(ListNode* l1, ListNode* l2) {
        if(!l1) return l2;
        if(!l2) return l1;

        ListNode* fake_head = new ListNode(0);
        fake_head->next = l1;

        ListNode* p = fake_head;

        while(p->next && l2) {
            if(p->next->val >= l2->val) {
                ListNode* l2Next = l2->next;
                l2->next = p->next;
                p->next = l2;
                l2 = l2Next;
            }

            p = p->next;
        }

        // This is the case when we visited all nodes in l1, but there are still nodes left in l2.
        if(l2) p->next = l2;
        
        return fake_head->next;
    }
};

==
Python code:

class Solution:
    def mergeTwoLists(self, l1, l2):
        if not l1: 
            return l2
        if not l2:
            return l1

        fake_head = ListNode(0)
        fake_head.next = l1
        p = fake_head

        while l2 and p.next:
            if l2.val <= p.next.val:
                l2_next = l2.next
                l2.next = p.next
                p.next = l2
                l2 = l2_next

            p = p.next

        if l2:
            p.next = l2

        return fake_head.next


************************

pr_148, Sort List, Medium

Question:

Sort a linked list in O(n log n) time using constant space complexity.

Example 1:

Input: 4->2->1->3
Output: 1->2->3->4
Example 2:

Input: -1->5->3->4->0
Output: -1->0->3->4->5

==
Key: Use merge sort. Use walker and runner to find the middle node of the list. The runner runs twice faster than walker. The middle node does not need to be precise. After found middle node, split the list into two halves, and call sortList on each half. Then merge the two lists by calling the code in problem 21. Merge Two Sorted Lists.

==
C++ code:

class Solution {
private:
    ListNode* mergeTwoLists(ListNode* l1, ListNode* l2) {
        (Copy the code of problem 21. Merge Two Sorted Lists)
    }

public:
    ListNode* sortList(ListNode* head) {
        if(!head || !head->next) return head;
        
        //Find middle node:

        ListNode* walker = head;
        ListNode* runner = head;
        
        while(runner->next && runner->next->next) {
            walker = walker->next;
            runner = runner->next->next;
        }

        //Break up the list. Use walker as end of the first list.

        ListNode* l1_head = head;
        ListNode* l2_head = walker->next;
        walker->next = NULL;

        ListNode* l1_sorted_head = sortList(l1_head);
        ListNode* l2_sorted_head = sortList(l2_head);

        ListNode* mergedHead = mergeTwoLists(l1_sorted_head, l2_sorted_head);

        return mergedHead;
    }

};

==
Python code:

class Solution:
    def mergeTwoLists(self, l1, l2):
        (Copy the code of problem 21. Merge Two Sorted Lists)

    def sortList(self, head):
        if not head or not head.next:
            return head

        walker = head
        runner = head

        while runner.next and runner.next.next:
            walker = walker.next
            runner = runner.next.next
            # 12345 

        l1_head = head
        l2_head = walker.next

        walker.next = None

        l1_sorted_head = self.sortList(l1_head)
        l2_sorted_head = self.sortList(l2_head)

        merged_head = self.mergeTwoLists(l1_sorted_head, l2_sorted_head)

        return merged_head

************************
pr_147. Insertion Sort List, Medium

Question:

Sort a linked list using insertion sort.

Algorithm of Insertion Sort:

Insertion sort iterates, consuming one input element each repetition, and growing a sorted output list.
At each iteration, insertion sort removes one element from the input data, finds the location it belongs within the sorted list, and inserts it there.
It repeats until no input elements remain.

Example 1:

Input: 4->2->1->3
Output: 1->2->3->4
Example 2:

Input: -1->5->3->4->0
Output: -1->0->3->4->5

==
Key: Create a fakeHead as a the head of a separate List, which initially has only one node (fakeHead). Use a pointer pre to intially point to fakeHead. Use another pointer cur (initialized to head). cur traverses the head List. If cur is smaller than pre->next, then move cur the the left of pre->next, then let pre scan from fakeHead to the right again, until another cur is smaller than pre.

==
C++ Code:

class Solution {
public:
    ListNode* insertionSortList(ListNode* head) {
        if(!head || !head->next) return head;

        ListNode* fake_head = new ListNode(0);
        ListNode* pre = fake_head;
        ListNode* cur = head;

        while(cur) {
            if(!pre->next || (cur->val <= pre->next->val)) {
                ListNode* cur_next = cur->next;
                cur->next = pre->next;
                pre->next = cur;
                cur = cur_next;
                pre = fake_head;
            } else {
                pre = pre->next;
            }
        }

        return fake_head->next;
    }
};

==
Python code:

class Solution:
    def insertionSortList(self, head):
    	if not head or not head.next:
    		return head

    	fake_head = ListNode(0)	
    	pre = fake_head
    	cur = head

    	while cur:
    		if not pre.next or cur.val <= pre.next.val:
    			cur_next = cur.next
    			cur.next = pre.next
    			pre.next = cur
    			cur = cur_next
    			pre = fake_head
    		else:
    			pre = pre.next	

    	return fake_head.next

************************
pr_206. Reverse Linked List, Easy 

Question:

Reverse a singly linked list.

Example:

Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL
Follow up:

A linked list can be reversed either iteratively or recursively. Could you implement both?

==
Key:

Iterative: Create a single node called pre. Each time move a node from the list to the right of pre.

Recursive: Call reverseList(head -> next) to reverse all the nodes after head, and then add head to it appropriately.

==
C++ Code (iterative):

class Solution {
public:
    ListNode* reverseList(ListNode* head) {
        if(!head || !head->next) return head;

        ListNode* pre = new ListNode(0);
        ListNode* cur = head;

        while(cur) {
            ListNode* curNext = cur->next;
            cur->next = pre->next;
            pre->next = cur;
            cur = curNext;
        }        

        return pre->next;
    }
};

==
Python code (iterative):

class Solution:
    def reverseList(self, head):
    	if not head or not head.next:
    		return head

    	pre = ListNode(0)
    	cur = head

    	while cur:
    		cur_next = cur.next
    		cur.next = pre.next
    		pre.next = cur
    		cur = cur_next

    	return pre.next	


==
C++ code (recursive):

//Originally from leetcode solution, modified by Tao:

class Solution {
public:
    ListNode* reverseList(ListNode* head) {
        if(!head || !head->next) return head;
        
        ListNode* new_head = reverseList(head->next);
        head->next->next = head;
        head->next = NULL;
        
        return new_head;
    }
};

==
Python code (recursive):

class Solution:
    def reverseList(self, head):
    	if not head or not head.next:
    		return head

    	new_head = self.reverseList(head.next)
    	head.next.next = head
    	head.next = None

    	return new_head

************************
stopa

pr_92. Reverse Linked List II, Medium 

Question:

Reverse a linked list from position m to n. Do it in one-pass.

Note: 1 ≤ m ≤ n ≤ length of list.

Example:

Input: 1->2->3->4->5->NULL, m = 2, n = 4
Output: 1->4->3->2->5->NULL

==
Key: Use a pointer pre to point to the node on the left of node m. Use another pointer cur which is intialized to be the node on the right of node m. Each time move cur to the right of pre, then cur = cur->next. Need a fakeHead.

==
Code:

class Solution {
public:
    ListNode* reverseBetween(ListNode* head, int m, int n) {
        if(!head || !head->next || n == 1) return head; 
        
        ListNode* fakeHead = new ListNode(0);
        fakeHead->next = head;
        ListNode* pre = fakeHead;
        
        for(int i = 1; i <= m - 1; ++i) pre = pre->next;
        
        ListNode* nodeM = pre->next;
        ListNode* cur = nodeM->next;

        for(int i = 1; i <= n - m; ++i) {
            ListNode* curNext = cur->next;
            cur->next = pre->next;
            pre->next = cur;
            cur = curNext;
        }

        nodeM->next = cur;

        return fakeHead->next;
    }
};