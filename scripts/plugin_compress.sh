#!/bin/bash

###
### 插件压缩
###
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
LANG=en_US.UTF-8
is64bit=`getconf LONG_BIT`
curPath=`pwd`
rootPath=$(dirname "$curPath")

startTime=`date +%s`
PLUGIN_NAME='readme'

#echo $rootPath/plugins/$PLUGIN_NAME
cd $rootPath/plugins/$PLUGIN_NAME && zip  $rootPath/plugins/$PLUGIN_NAME/readme_${startTime}.zip -r ./* > /tmp/t.log + 2>&1

endTime=`date +%s`
((outTime=($endTime-$startTime)/60))
echo -e "Time consumed:\033[32m $outTime \033[0mMinute!"