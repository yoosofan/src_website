#!/bin/sh
#nikola theme -i bootstrap
#nikola theme -i reveal
#nikola theme -i foundation6
nikola build --quiet
#nikola build
echo 'After build for kashanu'
rsync -av --delete --exclude=".*" output/ ../output__kashanu/  --quiet


python3 run.before.build.py

nikola build --quiet
#nikola build 
echo 'After build for github'
rsync -av --delete --exclude=".*" output/ ../output__github/  --quiet
python3 run.before.build.py

#echo 'before sh clean.all.sh'
#sh clean.all.sh

cd  output/
nikola serve -b

