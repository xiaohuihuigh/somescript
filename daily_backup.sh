#!/bin/bash
# system backup
# Sun Feb 19 00:34:42 CST 2012
# by lesca
BACKUO_PATH='/media/zyh/_backup/'
# Read db file and config
DB=$BACKUO_PATH'bkdb'
echo $DB
if [ -f $DB ]; then
echo $DB
eval `grep VER $DB`
eval `grep NAME $DB`
OLD=$VER
NEW=$((OLD+1))
else
NEW=0
fi

DATE=`date +%Y%m%d-%H%M%S`
BKFILE=$BACKUO_PATH$DATE-$NEW.tar.gz
NEWSNAP=$BACKUO_PATH$DATE-$NEW.snar
OLDSNAP=$BACKUO_PATH$NAME.snar
echo oldsnap$OLDSNAP
# Create new snapshot
if [ -e $OLDSNAP ]; then
cp $OLDSNAP $NEWSNAP
echo iadfasdfa$OLDSNAP
fi

#tar -czvpf /media/zyh/_backup/$BKFILE -g /media/zyh/_backup/$NEWSNAP –exclude=/backup –exclude=/proc –exclude=/lost+found –exclude=/sys –exclude=/mnt –exclude=/media –exclude=/dev –exclude=/tmp /

tar -czvpf $BKFILE -g $NEWSNAP --exclude=/proc --exclude=/lost+found --exclude=/sys --exclude=/cdrom --exclude=/mnt --exclude=/media --exclude=/dev --exclude=/tmp --exclude=/home /

echo VER=$NEW > $DB
echo NAME=$DATE-$NEW >> $DB
echo Archived $BKFILE with snapshot $NEWSNAP

