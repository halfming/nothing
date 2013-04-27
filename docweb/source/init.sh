LSDIR=`ls ../|sed "s/source//g"|sed "s/doc//g"`

for i in $LSDIR
do 
  rm -rf ../$i 
done

cp css.css index.php head.php footer.php index.xml log.html ../

sed -i "6s/..\/css.css/.\/css/g" ../head.php
sed -i "5s/..\/head.php/.\/head.php/g" ../index.php
sed -i "23s/..\/footer.php/.\/footer.php/g" ../index.php

