#!/bin/sh

#echo 'before sh clean.all.sh'
#sh clean.all.sh

#echo '========================================================='
#echo 'Before kashanu update'
#echo '========================================================='

#cd ..
#sh kashanu.upload.sh
#lftp usename:password@yourFTPwebsite  -e  "set ftp:ssl-allow no; mirror -R `pwd`/output__kashanu /yourFTPwebsiteLocation ; quit"

echo '========================================================='
echo 'Before github website update'
echo '========================================================='

cd  ../output__github
echo `pwd`
git add .
git commit -am "version `date`"
#torsocks git push -u origin master
git remote -v
git push -u origin master

echo '========================================================='
echo 'Before giithub source update'
echo '========================================================='

cd ../website
git add .
git commit -am "version `date`"
#torsocks git push -u origin master
git push -u origin master

