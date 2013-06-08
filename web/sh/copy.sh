function cphtml(){
	LINK="../$2/$1"
	THEME=`sed '1s/<[^<]*>//g' ../upload/$1|head -1`
	CONTENT=`sed '2s/<[^<]*>//g' ../upload/$1|head -2|tail -1`
	DATE=`date`
	
	sed -i "3i</data>" ../$2/$2.xml
	sed -i "3i<content>$CONTENT</content>" ../$2/$2.xml
	sed -i "3i<theme>$THEME</theme>" ../$2/$2.xml
	sed -i "3i<link>$LINK</link>" ../$2/$2.xml
	sed -i "3i<data>" ../$2/$2.xml

	sed -i "1i<?php include \"../head.php\" ?>" ../upload/$1
	sed -i '$a<?php include \"../footer.php\" ?>' ../upload/$1

	mv ../upload/$1 ../$2 
}

for i in `ls ../upload`
do
	cphtml $i $1
	echo "$i -> $1"
	sed -i "16i<p>$DATE $i -> $1</p>" ../log.html
done
