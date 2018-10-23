Note:
- If not specified, all the code are written by Tao.

************************************************
Summary:

- For questions like List, Tree, array, after completed the code, the easiest way to avoid being lazy and escaping checking is to walk through some simplest case (like a three node List, a three node Tree, and a three element array).

- For questions in List, how to determine what xxx to wrote in the while(xxx) {...}, like while(!cur) {...} ?
  the way is to look into the yyy in while(...){yyy} or while(!cur && yyy) {...}. If yyy used cur->val, then should add !cur in the condition. Similarly, if yyy used cur->next->val, then should add !cur->next in the condition.

************************************************
category_list

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
History:
E4 passed in the first trial.

Code Ganker: this algorithm has time complexity O(m + n)
(tao: note that each list will only be traversed once), where m and n are
the lengths of the two lists. Space complexity is O(1).

==
Code:

class Solution {
public:
    ListNode* mergeTwoLists(ListNode* l1, ListNode* l2) {
        if(!l1) return l2;
        if(!l2) return l1;

        ListNode* l1FakeHead = new ListNode(0);
        l1FakeHead->next = l1;

        ListNode* p = l1FakeHead;

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
        
        return l1FakeHead->next;
    }

};


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
History: 
E4 tried several times before pass, because I did not write the if condition of the walker and runner correctly.

==
Code:

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

        ListNode* l1Head = head;
        ListNode* l2Head = walker->next;
        walker->next = NULL; //Leetcode discussion also uses NULL (instead of nullptr)

        ListNode* l1SortedHead = sortList(l1Head);
        ListNode* l2SortedHead = sortList(l2Head);

        ListNode* mergedHead = mergeTwoLists(l1SortedHead, l2SortedHead);

        return mergedHead;
    }

};

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
History:
E4 tried many times before passing.

==
Code:

class Solution {
public:
    ListNode* insertionSortList(ListNode* head) {
        if(!head || !head->next) return head;

        ListNode* fakeHead = new ListNode(0);
        ListNode* pre = fakeHead;
        ListNode* cur = head;

        while(cur) {
            if(!pre->next || (cur->val <= pre->next->val)) {
                ListNode* curNext = cur->next;
                cur->next = pre->next;
                pre->next = cur;
                cur = curNext;
                pre = fakeHead;
            } else {
                pre = pre->next;
            }
        }

        if(cur) pre->next = cur;
        
        return fakeHead->next;
    }
};




