#/bin/sh
inputfile=./20

#If you have GNU sed, you could use the n~m (n skip m) address notation
#sed '1~3d' file
#which deletes every third line, starting at the first.

sed -i '1~3d' $inputfile 
sed -i '2~2d' $inputfile 

#sed 'N d' FILE.txt
#This will remove 'N'th line in the FILE.txt.

#若要將所有行都合併為一行, 可在vim中shift+J
