// g++ -std=c++11 solution.cc

#include <iostream>
#include "tree_str.h"
using namespace std;

class Solution {
public: 
	TreeNode* upsideDown(TreeNode* root) {
		if(!root) return root;
		TreeNode *cur = root, *cur_left = cur->left, *cur_right = cur->right;
		TreeNode* cur_left_left = cur->left ? cur->left->left : NULL;

		while(cur && cur_left) {
			cur_left->left = cur_right;
			cur_right = cur_left->right;
			cur_left->right = cur;
			
			cur = cur_left;
			cur_left = cur_left_left;
			if(cur_left_left) cur_left_left = cur_left_left->left;
		}

		root->left = NULL;
		root->right = NULL;

		return cur;
	}
};

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

int main() {
	TreeStr tree_str;
	Solution sol;

	vector<string> input = {
		"1^23^45**", "1", "1^23", "1^2*", "",
		"1^23^45**^67******", "1^2*^3***",
		"1^23^4***^5*******^67**************",
		"1^2*^34**", "1^23^4***",
		"1^23^4***^56******"
	};

	vector<string> output_expected = {
		"4^52^**31", "1", "2^31", "2^*1", "",
		"6^74^**52^******31", "3^*2^***1",
		"6^75^***4^*******2^**************31",
		"3^42^***1", "4^*2^**31",
		"5^64^***2^******31"
	};


	for(int i = 0; i < input.size(); ++i) {
		string str = input[i];
		TreeNode* root = tree_str.deserialize(str);
		TreeNode* root_turned = sol.upsideDown(root);
		string root_turned_str = tree_str.serialize(root_turned);
		string test_status = root_turned_str == output_expected[i] ? "PASSED" : "FAILED";
		cout << "Test " << i << " " << test_status << ": " << str << " => " << root_turned_str << endl;
	}

	return 0;
}


















