#! /bin/sh
#Simply wrapper for generating unified format patches from patch rejects, for
# systems with a crappy userland or versions of GNU patch that don't support
# --reject-format

if [ -z "${1}" ]
then
    echo "${0} <patchname>"
    exit 255
else
    patch=$1
fi
[ -f ${patch} ] && echo "Remove existing patch" && exit 1
for i in $(find -name \*.rej)
do
    echo -e "*** ${i/.rej/}\n--- ${i/.rej/}"
    cat $i
done | filterdiff -v --format=unified > ${patch}
