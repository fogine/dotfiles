#!/bin/sh
if [ ! -t 0 ]; then
x-terminal-emulator -e "$0"
exit 0
fi
basedir=`dirname "$(readlink -f "${0}")"`
cd ${basedir}
git add .
#MESSAGE=$(yad --title="Commit MSG" --no-buttons --geometry=400 --entry)
read MESSAGE
git commit -m "$MESSAGE"
git push origin master
echo "done"
sleep 5
exit
