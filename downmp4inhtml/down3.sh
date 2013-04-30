wget $1
mkdir $1
sed -f sed `echo "$1"| cut -d/ -f6` | sed -n '/mp4/p' | sort | uniq > url.txt
wget -i url.txt -P $1
