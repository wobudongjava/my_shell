#!/bin/sh
echo '-----开始部署-----'
#待发布包
#包目录
dir=/home/wangdai/war/
#包名
fn_trade=trade-app.war
fn_batch=batch-app.war
#tomcat目录
tomcatDir=/opt/apache-tomcat-7.0.78
binDir=$tomcatDir/bin
appsDir=$tomcatDir/webapps
#获取进程id
pid=`ps -ef | grep tomcat | awk -v reg="$tomcatDir" '$9 ~ reg {print $2}'`
#必需条件检测
#文件是否存在检测
echo $dir$fn_trade
echo $dir$fn_batch
if [ ! -e $dir$fn_trade ]
then
	echo **待发布包不存在**
	echo **请将待发布包上传到此目录下[$dir],包名为[$fn_trade]**
	exit
fi
if [ ! -e $dir$fn_batch ]
then
	echo **待发布包不存在**
	echo **请将待发布包上传到此目录下[$dir],包名为[$fn_batch]**
	exit
fi
#tomcat进程id检测
if [ -z $pid ]
then
	echo **tomcat进程id找不到**
	exit
fi
echo kill-pid=${pid}
echo "-----kill掉pid=$pid-----"
#kill掉进程id
kill -9 $pid
#备份旧包
cd $appsDir
if [ -e $fn_trade ]
then
	#获取文件最后修改日期
	trade_modify_dt_s=`stat -c %Y $fn_trade`
	trade_modify_dt=`date +%Y%m%d -d  @$trade_modify_dt_s`
	#备份
	mv $fn_trade /home/`whoami`/war_backup/$fn_trade-$trade_modify_dt
fi
if [ -e $fn_batch ]
then
	#获取文件最后修改日期
	batch_modify_dt_s=`stat -c %Y $fn_batch`
	batch_modify_dt=`date +%Y%m%d -d  @$batch_modify_dt_s`
	#备份
	mv $fn_batch /home/`whoami`/war_backup/$fn_batch-$batch_modify_dt
fi
#删除目录
rm -rf trade-app* batch-app*
#移动新包
mv $dir$fn_trade $dir$fn_batch $appsDir
echo '-----开始启动-----'
#启动
cd $binDir
./startup.sh & tail -f ../logs/catalina.out
