// g++ -std=c++11 solution.cc

// Should check the correctness of this code by running some test cases 

#include <iostream>
using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

class Solution {
public: 
	TreeNode* upsideDown(TreeNode* root) {
		if(!root) return root;
		TreeNode *cur = root, *cur_left = cur->left;

		while(cur && cur_left) {
			TreeNode* cur_left_left = cur->left->left;
			if(cur->right) cur_left->left = cur->right;
			cur_left->right = cur;
			
			cur = cur_left;
			cur_left = cur_left_left;
		}

		root->left = NULL;
		root->right = NULL;

		return cur;
	}
};

int main() {
	return 0;
}

/*
    1
   / \
  2   3
 / \
4   5

return the root of the binary tree [4,5,2,#,#,3,1].

  4
 / \
5   2
   / \
  3   1

*/

















