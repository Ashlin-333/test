echo "Enter the name of folder:"
read folder
cd $folder
ls -1 | while read folders
do
	files=`ls $folders |wc -l`
	if [ $files -eq 0 ]
	then
		rmdir $folders
		echo "$folders with $files subfiles deleted"
	fi
done
