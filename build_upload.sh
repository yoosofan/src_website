#!/bin/sh

nikola build --quiet
echo 'After build for kashanu'
rsync -av --delete --exclude=".*" output/ ../output__kashanu/  --quiet
python3 run.before.build.py
nikola build --quiet
echo 'After build for github'
rsync -av --delete --exclude=".*" output/ ../output__github/  --quiet
python3 run.before.build.py

echo 'before sh clean.all.sh'
sh clean.all.sh


echo '========================================================='
echo 'Before kashanu update'
echo '========================================================='

cd ..
#sh kashanu.upload.sh
#lftp usename:password@yourFTPwebsite  -e  "set ftp:ssl-allow no; mirror -R `pwd`/output__kashanu /yourFTPwebsiteLocation ; quit"

echo '========================================================='
echo 'Before github website update'
echo '========================================================='

cd  output__github
git add .
git commit -am "version `date`"
git push -u origin master

echo '========================================================='
echo 'Before giithub source update'
echo '========================================================='

cd ../website
git add .
git commit -am "version `date`"
git push -u origin master

