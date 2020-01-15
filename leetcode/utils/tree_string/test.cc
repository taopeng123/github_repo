// g++ -std=c++11 test.cc

#include <iostream>
#include "./tree_str.h"
using namespace std;

int main() {
	cout << "*** Test 1 ***" << endl;

	TreeNode* n0 = new TreeNode(0);
	TreeNode* n1 = new TreeNode(1);
	TreeNode* n2 = new TreeNode(2);
	TreeNode* n3 = new TreeNode(3);
	TreeNode* n4 = new TreeNode(4);
	TreeNode* n5 = new TreeNode(5);
	TreeNode* n6 = new TreeNode(6);
	TreeNode* n7 = new TreeNode(7);
	TreeNode* n8 = new TreeNode(8);
	TreeNode* n9 = new TreeNode(9);

	n0->left  = NULL;
	n0->right = n1;

	n1->left  = n2;
	n1->right = n3;

	n2->left  = n4;
	n2->right = NULL;

	n3->left  = n5;
	n3->right = n6;

	n4->left  = NULL;
	n4->right = NULL;

	n5->left  = n7;
	n5->right = NULL;

	n6->left  = NULL;
	n6->right = NULL;

	n7->left  = n8;
	n7->right = n9;

	TreeStr tree_str;

	string tree_string = tree_str.serialize(n0);
	cout << "Serialize: " << endl;
	cout << tree_string << endl;
	//Expected: 0^*1^**23^****4*56^************7***^************************89******

	string str = "0^*1^**23^****4*56^************7***^************************89******";
	TreeNode* root = tree_str.deserialize(str);
	string tree_serialized_back = tree_str.serialize(root);
	cout << "Deserialize: " << endl;
	cout << tree_serialized_back << endl;

	delete(n0);
	delete(n1);
	delete(n2);
	delete(n3);
	delete(n4);
	delete(n5);
	delete(n6);
	delete(n7);
	delete(n8);
	delete(n9);

	cout << "*** Test 2 ***" << endl;

	string tree_str2 = "0^12^**3*";
	cout << "tree_str2:" << tree_str2 << endl;
	TreeNode * root2 = tree_str.deserialize(tree_str2);
	string tree_str_serialized2 = tree_str.serialize(root2);
	cout << "tree_str_serialized2:" << tree_str_serialized2 << endl;

	cout << "*** Test 3 ***" << endl;
	cout << tree_str.serialize(tree_str.deserialize("0")) << endl;

	cout << "*** Test 4 ***" << endl;
	cout << tree_str.serialize(new TreeNode(0)) << endl;

	cout << "*** Test 5 ***" << endl;
	cout << tree_str.serialize(NULL) << endl;

	cout << "*** Test 6 ***" << endl;
	cout << tree_str.serialize(tree_str.deserialize("")) << endl;
}