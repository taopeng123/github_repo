#include <sstream>
#include <queue>
using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(): val(-10000000), left(NULL), right(NULL) {}
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

class TreeStr {
public:
	vector<string> split(const string &s, char delim) {
	    stringstream ss(s);
	    string item;
	    vector<string> tokens;
	    while (getline(ss, item, delim)) {
	        tokens.push_back(item);
	    }
	    return tokens;
	}

	/*
	Converts the tree to a string, using BFS. 
	The order of nodes in the string is the same as BFS traverse.
	'*' denotes NULL node, and '^' denotes end of layer
	For example:
	   
	    0
	   / \ 
	  1  2  
	    / 
	   3

	Will be converted to: "0^12^**3*"
	*/
	string serialize(TreeNode* root) {
		string res = "";
		if(!root) return res;

		queue<TreeNode* > queue;
		queue.push(root);
		int cur_num = 1, next_num  = 0;
		bool is_bottom = true;

		while(!queue.empty()) {
			TreeNode* cur = queue.front();
			queue.pop();
			--cur_num;

			res += cur ? to_string(cur->val) : "*";

			TreeNode* left = cur ? cur->left : NULL;
			TreeNode* right = cur ? cur->right : NULL;

			is_bottom = is_bottom && (!left && !right);

			queue.push(left);
			queue.push(right);
			next_num += 2;

			if(cur_num == 0) {
				if(is_bottom) break;
				cur_num = next_num;
				next_num = 0;
				res += "^";
				is_bottom = true;
			}
		}

		return res;
	}

	/*
	Converts string into a tree, returns the root of the tree.
	'*' denotes NULL node, and '^' denotes end of layer

	For example:
	"0^12^**3*"
	will be converted to:

	    0
	   / \ 
	  1  2  
	    / 
	   3

	*/

	TreeNode* deserialize(string str) {
		if(str.empty()) return NULL;
		vector<string> layers = split(str, '^');
		int num_nodes = 0;

		for(int k = 0; k < str.size(); ++k) {
			char str_char = str[k];
			if(str_char != '^') ++num_nodes;
		}
		
		TreeNode* nodes = new TreeNode[num_nodes];
		int twoToIth = 1;

		for(int i = 0; i < layers.size(); ++i) {
			string cur_layer = layers[i];
			string next_layer = i + 1 < layers.size() ? layers[i + 1] : "";

			for(int j = 0; j < cur_layer.size(); ++j) {
				string cur_node_val = cur_layer.substr(j, 1);
				string left_child_val = next_layer.empty() ? "*" : next_layer.substr(2 * j, 1);
				string right_child_val = next_layer.empty() ? "*" : next_layer.substr(2 * j + 1, 1);
				int n = twoToIth + j -1;
				if(cur_node_val != "*") (nodes + n)->val = stoi(cur_node_val);
				if(left_child_val != "*") (nodes + (2 * n + 1))->val = stoi(left_child_val);
				if(right_child_val != "*") (nodes + (2 * n + 2))->val = stoi(right_child_val);

				if(cur_node_val != "*") {
					TreeNode* left_pointer = nodes + (2 * n + 1);
					TreeNode* right_pointer = nodes + (2 * n + 2);
					if(2 * n + 1 < num_nodes) (nodes + n)->left = left_pointer->val == -10000000 ? NULL: left_pointer;
					if(2 * n + 2 < num_nodes) (nodes + n)->right = right_pointer->val == -10000000 ? NULL: right_pointer;
				} 
			}

			twoToIth *= 2;
		}

		TreeNode* root = nodes;
		return root;
	}
};

