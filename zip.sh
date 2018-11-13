dir='/media/zyh/新加卷/zyh/aisinei/'
filelist=`ls $dir`
#echo $filelist
for file in $filelist
do 
	#echo $file
	if [ -d $dir$file ];then
		echo $file
		zip -r $dir$file.zip $dir$file
		rm -rf $dir$file	
	fi
done

