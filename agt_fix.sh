#!/bin/bash

PATH=/data/axis_debug3
PATH=$PATH:/data/csexec
PATH=$PATH:/data/axis_debug3/lib810_1a
PATH=$PATH:/usr/cqcs/server8.10_1a
PATH=$PATH:/usr/cqcs/license
PATH=$PATH:/software/shells
PATH=$PATH:/software/source/scips/version810_1a/dm
PATH=$PATH:.
PATH=$PATH:/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/etc/bin
PATH=$PATH:/etc
PATH=$PATH:/usr/local/bin
PATH=$PATH:/sbin
PATH=$PATH:/software/source/scips/version7/includes/axis

cd /software/source/cvs_projects/davep/axis/version7_agt

for file in agtmt*.sd
do
   sed -i 's/hide if/hide when/g' $file
   sed -i 's/Hide If/hide when/g' $file
   sed -i 's/HIDE IF/hide when/g' $file
done

for file in agtmt*.sd
do
   sed -i 's/skip if/skip when/g' $file
   sed -i 's/Skip If/skip when/g' $file
   sed -i 's/SKIP IF/skip when/g' $file
done

for file in agtmt*.sd
do
   sed -i 's/exit if/exit when/g' $file
   sed -i 's/Exit If/exit when/g' $file
   sed -i 's/EXIT IF/exit when/g' $file
done

for file in agtmt*.sd
do
   sed -i 's/agqapplication:answer\[/agqapplication:answer1\[/g' $file
done

for file in agtmt*.sd
do 
   sed -i 's/Error 1222 If/error 1222 when/g' $file
   sed -i 's/Error 1222 if/error 1222 when/g' $file
done

