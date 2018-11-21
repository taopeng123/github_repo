Note:
- If not specified, all the code are written by Tao.
- C++ code uses C++ 2011, Python code uses Python 3.
  So C++ code needs to be compiled using: std=c++11,
  and Python code needs to be run using: python3 filename.py
- When recording my code here, do not paste the include statements.

************************************************
Summary:

- For questions like List, Tree, array, after completed the code, the easiest way to avoid being lazy and escaping checking is to walk through some simplest case (like a three node List, a three node Tree, and a three element array).

- For questions in List, how to determine what xxx to wrote in the while(xxx) {...}, like while(!cur) {...} ?
  the way is to look into the yyy in while(...){yyy} or while(!cur && yyy) {...}. If yyy used cur->val, then should add !cur in the condition. Similarly, if yyy used cur->next->val, then should add !cur->next in the condition.

=================================================
category_list

************************
pr_xx

Question:

==
Key:

==
C++ code:

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

=================================================
category_tree

************************
pr_94. Binary Tree Inorder Traversal, Medium 

Question:

Given a binary tree, return the inorder traversal of its nodes' values.

Example:

Input: [1,null,2,3]
   1
    \
     2
    /
   3

Output: [1,3,2]
Follow up: Recursive solution is trivial, could you do it iteratively?

==
Key:

Recursive: write a "void helper(TreeNode* node, vector<int>& res)", whose functionality is to in-order traversal the subtree having "node" as its root, and put the result in res. Then in this helper function, call itself on node->left, then add node to res, then call itself on node->right.

Iterative: put all nodes on the left edge of the tree into a stack. Each time get a node from the stack, if the right child of this node exisits, then in the subtree which has this node as root, put all nodes on the left edge of this substree into this stack.

==
C++ code (recursive):

//This code was originally from leetcode discussion, and modified by Tao.

class Solution {
public:
	vector<int> inorderTraversal(TreeNode* root) {
		vector<int> res;
		helper(root, res);
		return res; //Returns a copy of the vector
	}

private:
	void helper(TreeNode* node, vector<int>& res) {
		if(!node) return;

		helper(node->left, res);
		res.push_back(node->val);
		helper(node->right, res);
	}
};

==
C++ code (iterative):

//The code in Leetcode solution is simpler, but here I still use tao's code because it is easier to understand and remember.

class Solution {
public:
	vector<int> inorderTraversal(TreeNode* root) {
    	vector<int> res;
    	if(!root) return res;

        stack<TreeNode*> stack;
        TreeNode* cur = root;

        while(cur) {
            stack.push(cur);
            cur = cur->left;
        }

        while(!stack.empty()) {
            TreeNode* top = stack.top();
            stack.pop();

            res.push_back(top->val);

            if(top->right) {
                TreeNode* n = top->right;
                while(n) {
                    stack.push(n);
                    n = n->left;
                }
            }
        }

    	return res;
	}
};

************************
pr_102. Binary Tree Level Order Traversal, Easy

Question:

Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

For example:
Given binary tree [3,9,20,null,null,15,7],
    3
   / \
  9  20
    /  \
   15   7
return its level order traversal as:
[
  [3],
  [9,20],
  [15,7]
]

==
Key: Use a queue. Use two numbers: cur_num (number of nodes left in the current level), next_num (number of nodes left in the next level). First add root to the queue. Then in the loop, in each iteration, take a node from the queue, add it to the result vector, if this node has left child then add it to the queue, if this node has right child then add it to the queue.

==
C++ code:

Used CodeGanker style code. The leetcode discusison code is simpler, but still use CodeGanker style code because it is easier to understanad and remember.

class Solution {
public:
    vector<vector<int>> levelOrder(TreeNode* root) {
		vector<vector<int>> res;
		if(!root) return res;

		vector<int> item;

		queue<TreeNode*> q;
		q.push(root);
		int cur_num = 1, next_num = 0;

		while(!q.empty()) {
			TreeNode* cur = q.front();
			item.push_back(cur->val);
			q.pop();
			--cur_num;

			if(cur->left) {
				q.push(cur->left);
				++next_num;
			}

			if(cur->right) {
				q.push(cur->right);
				++next_num;
			}

			if(cur_num == 0) {
				cur_num = next_num;
				next_num = 0;
				res.push_back(item); //Pass by value (pass a copy of item)
				item.clear();
			}
		}

		return res;
    }
};

************************
pr_100. Same Tree, Easy.

Question:

Given two binary trees, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical and the nodes have the same value.

Example 1:

Input:     1         1
          / \       / \
         2   3     2   3

        [1,2,3],   [1,2,3]

Output: true

Example 2:

Input:     1         1
          /           \
         2             2

        [1,2],     [1,null,2]

Output: false

Example 3:

Input:     1         1
          / \       / \
         2   1     1   2

        [1,2,1],   [1,1,2]

Output: false


==
Key: Recursively call isSameTree() on the left and right subtree.

==
C++ code:

class Solution {
public:
    bool isSameTree(TreeNode* p, TreeNode* q) {
    	if(!p && !q) return true;
        if(!p || !q) return false;

        if(p->val != q->val) return false; 

        return isSameTree(p->left, q->left) && isSameTree(p->right, q->right);
    }
};

=================================================
category_binary_search_tree

************************
pr_230. Kth Smallest Element in a BST, Medium 

Question:

Given a binary search tree, write a function kthSmallest to find the kth smallest element in it.

Note: 
You may assume k is always valid, 1 ≤ k ≤ BST's total elements.

Example 1:

Input: root = [3,1,4,null,2], k = 1
   3
  / \
 1   4
  \
   2
Output: 1

Example 2:

Input: root = [5,3,6,2,4,null,null,1], k = 3
       5
      / \
     3   6
    / \
   2   4
  /
 1
Output: 3

Follow up:
What if the BST is modified (insert/delete operations) often and you need to find the kth smallest frequently? How would you optimize the kthSmallest routine?

==
Key: Write a function to find the size of a tree recursively. Then do a binary search to find the k-th smallest node. Note that in the binary search, we only need to find the size of the left subtree of root, no need to find the size of the right subtree of the root.

Note: this method looks preliminary and slow, especially finding the size of a subtree. But it actually looks OK, because this is what William's code is like, and my C++ code ran faster than 99.16% of C++ online submissions.

==
C++ code:

class Solution {
public:
    int kthSmallest(TreeNode* root, int k) {
     	if(!root) return 0;
     	if(!root->left && !root->right) return root->val;

     	int left_size = tree_size(root->left);

     	if(k <= left_size) return kthSmallest(root->left, k);
     	else if(k == left_size + 1) return root->val;
     	else return kthSmallest(root->right, k - left_size - 1);
    }

private:
	int tree_size(TreeNode* root) {
		if(!root) return 0;
		return tree_size(root->left) + tree_size(root->right) + 1;
	}
};

Solution for the follow up in the question (from online, another solution from online also did the same):

If we can change the BST node structure, We can add a new Integer to mark the number of element in the left sub-tree.
when the node is not null.
1. If k == node.leftNum + 1, return node
2. if k > node.leftNum + 1, make k -= node.leftNum + 1, and then node = node.right
3. otherwise, node = node.left

The time complexity of algorithm above will be O(h), h is the height of the input tree. Tao: because h = O(log n),  and binary search's time complexity is also O(log n).

=================================================
category_array

************************
pr_35. Search Insert Position, Medium.

Question:

Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Example 1:

Input: [1,3,5,6], 5
Output: 2

Example 2:

Input: [1,3,5,6], 2
Output: 1

Example 3:

Input: [1,3,5,6], 7
Output: 4

Example 4:

Input: [1,3,5,6], 0
Output: 0


==
Key: Binary search. This problem can be used as a formula for binary search. Tao's code uses the Chiu Chang template: always use while(l < r - 1), which means that after the while, l and r are two neighboring numbers.

==
C++ code:

class Solution {
public:
    int searchInsert(vector<int>& nums, int target) {
    	int n = nums.size();
        if(n == 0) return 0;

        int l = 0, r = n - 1;

        while(l < r - 1) {
        	int m = (l + r) / 2;

        	if(target == nums[m]) return m;
        	else if(target < nums[m]) r = m;
        	else l = m;
        }

        if(target <= nums[l]) return l;
        if(target <= nums[r]) return r;
        if(target > nums[r]) return r + 1;

        return 0;
    }
};

=================================================
category_trie

************************
pr_208. Implement Trie (Prefix Tree), Medium 

Question:

Implement a trie with insert, search, and startsWith methods.

Example:

Trie trie = new Trie();

trie.insert("apple");
trie.search("apple");   // returns true
trie.search("app");     // returns false
trie.startsWith("app"); // returns true
trie.insert("app");   
trie.search("app");     // returns true

Note:
- You may assume that all inputs are consist of lowercase letters a-z.
- All inputs are guaranteed to be non-empty strings.

==
Key: 

Let the trie Node class have the following members:

char label; //Value of the character in this node
bool end_of_word; //Whether this node is the end of a word
Node* next[26]; //Child nodes

Write two helper functions:

void insert_at_node(Node* node, string word): insert word in a subtrie whose root is node. Recursively call itself.

Node* get_last(Node* node, string prefix): get the node which corresponds to the last character in prefix. If prefix does not exist in the trie, then return null. Recursively call itself.

==
The following is an example of a trie, which contains the word "cbd":

                                 root
                                  |
 ------------------------------------------------------------------
 |     |                          |                               |
null  null                        c                              null
                                  |
              -------------------------------------------
              |              |                   |      |  
             null            b                  null   null
                             |
                 ----------------------
                 |     |     |    |   |      
                null  null  null  d  null


Tao's conclusion about trie:

1. The root does not have a character.
2. Every node has 26 children. If a character exists, this child node is not null. Otherwise this child node is null.

==
C++ code:

The code in leetcode discussion is simpler than tao's code below, but tao's code is easier to understand and remember.

#include <string>
#include <cstring> //This is to use memset below
#include <iostream>
using namespace std;

class Node {
public:
    char label;
    bool end_of_word;
    Node* next[26];
    
    Node() = default;
    Node(char label_): label(label_), end_of_word(false) {memset(next, 0, sizeof(next));} //Have to use memset, otherwise LeetCode online judge reports error.
};

class Trie {
private:
    Node* root;

    void insert_at_node(Node* node, string word) {
        if(word.size() == 0) {
            node->end_of_word = true;
            return;
        }

        char label = word[0];
        int index = label - 'a';
        if(!node->next[index]) node->next[index] = new Node(label); 
        insert_at_node(node->next[index], word.substr(1, word.size() - 1));
    }

    Node* get_last(Node* node, string prefix) {
        if(prefix.size() == 0) return node;

        char label = prefix[0];
        int index = label - 'a';
        Node* child = node->next[index];
        if(!child || child->label != label) return NULL;

        return get_last(child, prefix.substr(1, prefix.size() - 1));        
    }

public:   
    Trie() {
        root = new Node('#');
    }
    
    void insert(string word) {
        insert_at_node(root, word);
    }
    
    bool search(string word) {
        Node* last = get_last(root, word);
        return last && last->end_of_word;
    }
    
    bool startsWith(string prefix) {
        return get_last(root, prefix);
    }
};

=================================================
category_graph

************************
pr_133. Clone Graph, Medium.

Question:

Given the head of a graph, return a deep copy (clone) of the graph. Each node in the graph contains a label (int) and a list (List[UndirectedGraphNode]) of its neighbors. There is an edge between the given node and each of the nodes in its neighbors.

Tao: from leetcode discussion, many people say that the question is actually a directed graph.

==
Key: Both BFS and DFS use a map to save the mapping from the original node and its copy.

==
C++ code:

BFS 
(tao's code simplied according to leetcode discussion):

class Solution {
private:
    unordered_map<UndirectedGraphNode*, UndirectedGraphNode*> node_map;

public:
    UndirectedGraphNode *cloneGraph(UndirectedGraphNode *node) {
        if(!node) return node;
        
        queue<UndirectedGraphNode*> q;
        q.push(node);

        UndirectedGraphNode* node_copy = new UndirectedGraphNode(node->label);
        node_map[node] = node_copy;

        while(!q.empty()) {
            UndirectedGraphNode* front = q.front();
            q.pop();
            
            UndirectedGraphNode* front_copy = node_map[front];

            for(UndirectedGraphNode* nb: front->neighbors) {
                if(node_map.find(nb) == node_map.end()) {
                    UndirectedGraphNode* nb_copy = new UndirectedGraphNode(nb->label);
                    node_map[nb] = nb_copy;    
                    q.push(nb);              
                } 

                front_copy->neighbors.push_back(node_map[nb]);
            }

        }

        return node_copy;
    }
};

--
DFS:

class Solution {
private:
    unordered_map<UndirectedGraphNode*, UndirectedGraphNode*> node_map;

public:
    UndirectedGraphNode *cloneGraph(UndirectedGraphNode *node) {
        if(!node) return node;
        UndirectedGraphNode* node_copy = new UndirectedGraphNode(node->label);
        node_map[node] = node_copy;
                
        for(UndirectedGraphNode* nb: node->neighbors) {

            if(node_map.find(nb) == node_map.end()) {
                UndirectedGraphNode* nb_copy = cloneGraph(nb);
                node_map[nb] = nb_copy;
                node_copy->neighbors.push_back(nb_copy);
            } else {
                node_copy->neighbors.push_back(node_map[nb]);
            }
            
        }

        return node_copy;
    }
};

=================================================
category_string

************************
pr_8. String to Integer (atoi), Easy 

Question:

Implement atoi which converts a string to an integer.

The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character, takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.

The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.

If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.

If no valid conversion could be performed, a zero value is returned.

Note:

Only the space character ' ' is considered as whitespace character.
Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−2^31,  2^31 − 1]. If the numerical value is out of the range of representable values, INT_MAX (2^31 − 1) or INT_MIN (−2^31) is returned.

Example 1:

Input: "42"
Output: 42

Example 2:

Input: "   -42"
Output: -42
Explanation: The first non-whitespace character is '-', which is the minus sign.
             Then take as many numerical digits as possible, which gets 42.

Example 3:

Input: "4193 with words"
Output: 4193
Explanation: Conversion stops at digit '3' as the next character is not a numerical digit.

Example 4:

Input: "words and 987"
Output: 0
Explanation: The first non-whitespace character is 'w', which is not a numerical 
             digit or a +/- sign. Therefore no valid conversion could be performed.
Example 5:

Input: "-91283472332"
Output: -2147483648
Explanation: The number "-91283472332" is out of the range of a 32-bit signed integer.
             Thefore INT_MIN (−231) is returned.

==
Key: Just remember the corner cases: 
"+1": positive sign
"-000000000000001": leading 0
overflow.

Remember: Tao once proved that "value * 10 + d > 2147483647" is equivalent to "value > (2147483647 - d) / 10)". Do not waste time to prove it again, just remember it.

==
C++ code:
(Tao's code simplified according to Tao's earlier Java code):

class Solution {
public:
    int myAtoi(string str) {
        if(str.size() == 0) return 0;

        //trim
        str.erase(0, str.find_first_not_of(' '));
        str.erase(str.find_last_not_of(' ') + 1);

        int sign = 1, res = 0;

        if(str[0] == '-' || str[0] == '+') {
            if(str[0] == '-') sign = -1;
            str.erase(0, 1);
        }

        if(!isdigit(str[0])) return 0;

        //Remove leading 0
        while(str[0] == '0') str.erase(0, 1);

        for(char c: str) {
            if(!isdigit(c)) break;
            int digit = c - '0';

            //The following is from res * 10 + digit > INT_MAX
            if(sign > 0 && res > (INT_MAX - digit) / 10) return INT_MAX;

            //The following is from res * 10 + digit > -INT_MIN
            //Note it can not be written as res > (-INT_MIN - digit) / 10, 
            //because -INT_MIN is 1 bigger than INT_MAX, so -INT_MIN overflows,
            //so we need to multiply both sides by -1 to avoid writting -INT_MIN: 
            //-res < (INT_MIN + digit) / 10 

            if(sign < 0 && -res < (INT_MIN + digit) / 10) return INT_MIN;

            res = res * 10 + digit;
        }

        return sign * res;
    }
};














