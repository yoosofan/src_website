nikola clean
nikola check --clean-files
rm output/ cache/ __pycache__/ -rf
rm .doit.db
#http://unix.stackexchange.com/questions/116389/recursively-delete-all-files-with-a-given-extension
#http://askubuntu.com/questions/377438/how-can-i-recursively-delete-all-files-of-a-specific-extension-in-the-current-di
find . -type f -name '*.*~' -delete
#nikola build
