echo "Enter the file name"
read fl
text=`cat $fl`
echo "String in file is:"
echo $text
word=`echo $text | wc -w`
echo "No of words in entered string:$word"
len=`echo $text | wc -c`
len=`expr $len - 1`
char=0
space=0
num=0
n=1
while [ $n -le $len ]
do
	ch=`echo $text | cut -c $n`
	if [ "$ch" =  " " ]
	then
		space=`expr $space + 1`
	fi
	case $ch in
	a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z)
		char=`expr $char + 1`
	esac
	case $ch in
	1|2|3|4|5|6|7|8|9|0)
		num=`expr $num + 1`
	esac
	n=`expr $n + 1`
done
echo "Character in entered string is:$char"
echo "Space in entered string is:$space"
spl=`expr $len - $space - $char - $num`
echo "Special characters in entered string is:$spl"		
