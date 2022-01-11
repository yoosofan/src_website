echo 'start clean.all.sh'
nikola clean -a  > /dev/null
nikola check --clean-files > /dev/null
rm output/ cache/ __pycache__/ -rf  > /dev/null
rm .doit.db  -f  > /dev/null
rm *.pyc   -f  > /dev/null
#http://unix.stackexchange.com/questions/116389/recursively-delete-all-files-with-a-given-extension
#http://askubuntu.com/questions/377438/how-can-i-recursively-delete-all-files-of-a-specific-extension-in-the-current-di
cd ..
#rm output__* -rf
find . -type f -name '*.*~' -delete > /dev/null
