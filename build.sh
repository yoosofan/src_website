export myPath00=..
nikola build
rsync -av --delete --exclude=".*" output/ $myPath00/output__kashanu/
python3 run.before.build.py
nikola build
rsync -av --delete --exclude=".*" output/ $myPath00/output__github/
python3 run.before.build.py
