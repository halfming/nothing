LSDIR=`ls ../|sed "s/source//g"|sed "s/doc//g"`

for i in $LSDIR
do 
  rm -rf ../$i 
done

cp css.css  head.php footer.php index.xml log.html ../
cp default.php ../index.php



