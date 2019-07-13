// g++ -std=c++11 -o convert convert.cc

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
using namespace std;

string process_one_file(string input_file) { 
    ifstream input(input_file);

    string line;
    string output_str = "";

    while(getline(input, line)) {
    	int n = line.size();

    	// Skip empty lines:
    	if(n == 0) continue;

    	// Skip number lines:

    	bool is_all_digits = true;
    	
    	for(int i = 0; i < n; ++i) {
    		if(!isdigit(line[i])) is_all_digits = false;
    	}

    	if(is_all_digits) continue;

    	// Skip time lines:

    	if(line.find("-->") != string::npos) continue;

        output_str += (line + " ");
    }

    input.close();
    return output_str;
}

int main() {
	int n_files = 165;
	string output = "";

	for(int i = 1; i <= n_files; ++i) {
		output += (to_string(i) + ". ");
		string file_name = ("./" + to_string(i) + ".srt");
		output += (process_one_file(file_name) + "\n" + "\n");
	}

	cout << output << endl;

	return 0;
}











