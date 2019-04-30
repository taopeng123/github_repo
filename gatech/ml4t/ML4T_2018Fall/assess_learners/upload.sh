#!/usr/bin/expect -f
set local_path "/Users/tpeng/aatao/general/gatech/ml4t/ML4T_2018Fall/assess_learners/download_submitted_files/"

#set local_file "DTLearner.py"
#set local_file "RTLearner.py"
#set local_file "BagLearner.py"
#set local_file "InsaneLearner.py"
set local_file "testlearner.py"

set remote_path "tpeng38@buffet03.cc.gatech.edu:/home/tpeng38/ML4T_2018Fall/assess_learners/"

spawn scp "$local_path$local_file" "$remote_path" 

expect "assword:"
send "oat;gnep09gta\r"
interact

