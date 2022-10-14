#! /bin/sh
file=Shell_Userlist.csv
IFS=','
cat $file
while read id nm lnm pw role
do
echo "$id-$lnm"
if [ $id != "Id" ]
then
pass=$(perl -e 'print crypt($ARGV[0], "password")' $pw)
sudo useradd -m -p "$pass" "$lnm-$id"
else echo "Start here"
fi
if [ $role = Admin ]
then
sudo adduser "$lnm-$id" sudo
else echo "this user is not an Admin"
fi
done < $file
