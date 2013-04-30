wget $1
sed -f sed `ls *.html` | sed -n '/mp4/p' | sort | uniq > url.txt
for i in `cat url.txt`
do
  echo $i
  wget $i
done  