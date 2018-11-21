// g++ -std=c++11 -o stats stats.cc

#include<iostream>
#include<string>
#include<unordered_map>
#include<fstream>
using namespace std;

struct Problem {
	int problem_id;
	string title;
	string history;

	Problem() = default;
	Problem(int problem_id_, string title_, string history_): problem_id(problem_id_), title(title_), history(history_) {}
};

class Stats {
private:
	const string sol_file;
	unordered_map<int, Problem*> problem_map;
	int num_problems;

	void obtain_problem_map() {
		ifstream ifs(sol_file);
		string line;

		while(getline(ifs, line)) {
			//Skip irrelevant lines
			if(line == "category_end") break;
			if(line.find("|") == string::npos) continue;

			//Find history_str
			int bar_position = line.find("|");
			string history_str = line.substr(0, bar_position - 1);
			
			//Find problem_id_int
			line.erase(0, bar_position + 2); //Now line = "191. Number of 1 Bits, Easy. n可為負數."
			int dot_position = line.find(".");
			int problem_id_int = stoi(line.substr(0, dot_position));

			//Find problem_title_str
			line.erase(0, dot_position + 2);//Now line = "Number of 1 Bits, Easy. n可為負數."
			string problem_title_str;
			if(line.find(".") == string::npos) problem_title_str = line;
			else problem_title_str = line.substr(0, line.find("."));

			//Fill in problem_map
			problem_map[problem_id_int] = new Problem(problem_id_int, problem_title_str, history_str);
		}

		ifs.close();
	}	

public:
	Stats() = default;

	Stats(string sol_file_): sol_file(sol_file_) {
		obtain_problem_map();
		num_problems = problem_map.size();
	}

	unordered_map<int, Problem*> get_problem_map() {
		return problem_map;
	}

	int get_num_problems() {
		return num_problems;
	}
};

int main() {
	string solution_file_name = "sol";
	Stats* stats = new Stats(solution_file_name);
	
	unordered_map<int, Problem*> problems = stats->get_problem_map();
	
	cout << "Number of problems: " << stats->get_num_problems() << endl;

	//Find number of problems I did in round_4:
	
	int num_round_4 = 0;

	for(auto it = problems.begin(); it != problems.end(); ++it) {
		Problem* p = it->second;
		string hist = p->history;
		if(hist.size() == 4) ++num_round_4;
	}

	cout << "Number of problems I did in round_4: " << num_round_4 << endl;

	return 0;
}



















