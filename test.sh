#!/bin/sh
#for s in `ls -l`
#do 
#	echo $s
#done
#
#for s in a b c d
#do
#	echo $s
#done
#声明变量,直接赋值，3种方式
#first_variable=sunny
#first_variable1='sunny_single_quotes'
#first_variable2="sunny_double_quotes"

#使用变量
#echo ${first_variable}
#echo $first_variable1
#echo $first_variable$first_variable1$first_variable2
#字符串长度
#echo ${#first_variable}
#expr length $first_variable
#截取字符串(开始索引:截取长度)
#echo ${first_variable1:0:5}
#查找子串位置
#echo `expr index "$first_variable2" qu`
#动态赋值
#for file in `ls /etc`
#do
#echo $file
#done
#数组
#firstArray=(a b c d ef jhijk)
##访问数组
#echo ${firstArray[0]}
##获取所有元素
#echo ${firstArray[@]}
##获取数组长度
#length=${#firstArray[*]}
#echo length
#echo firstArray数组的长度为：${#firstArray[@]}
##修改
#firstArray[0]=aaa
#echo ${firstArray[0]}
##遍历数组
#echo "开始长度为$length的数组"
#for item in ${firstArray[@]}
#do
#	echo $item
#done

#文件参数
#echo "脚本文件名:$0"
#echo "第一个参数:$1"
#echo "第二个参数:$2"
#echo "参数个数:$#"
#echo "所有参数:$*"
#echo "所有参数:$@"
#echo "当前进程号:$$"
#echo "运行此脚本sh选项:$-"
#echo "脚本退出状态(0表示没有错误):$?"
#for item in "$@"
#do
#	echo $item
#done
#for item in "$*"
#do
#	echo $item
#done
##运算符
#n1=25
#n2=10
#echo "数值:n1=$n1,n2=$n2"
#val=`expr $n1 + $n2`
#echo "n1+n2=$val"
#val=`expr $n1 - $n2`
#echo "n1-n2=$val"
#val=`expr $n1 \* $n2`
#echo "n1*n2=$val"
#val=`expr $n1 / $n2`
#echo "n1/n2=$val"
#val=`expr $n1 % $n2`
#echo "n1%n2=$val"
##条件表达式
#echo "n1==n2:$[ $n1 == $n2]"
#echo "n1!=n2:$[ $n1 != $n2]"
#if [ $n1 == $n2 ]
#then
#	echo "n1等于n2"
#fi
#if [ $n1 != $n2 ]
#then
#	echo "n1不等于n2"
#fi
##关系运算符 -eq 等于 -ne 不等于 -gt 大于 -lt 小于 -ge 大于等于  -le 小于等于
##n1=1
##n2=10
#echo "数值:n1=$n1,n2=$n2"
#if [ $n1 -eq $n2 ]
#then
#	echo "$n1 -eq $n2:n1等于n2"
#fi
#if [ $n1 -ne $n2 ]
#then
#	echo "$n1 -ne $n2:n1不等于n2"
#fi
#if [ $n1 -gt $n2 ]
#then
#	echo "$n1 -gt $n2:n1大于n2"
#fi
#if [ $n1 -lt $n2 ]
#then
#	echo "$n1 -lt $n2:n1小于n2"
#fi
#if [ $n1 -ge $n2 ]
#then
#	echo "$n1 -ge $n2:n1大于等于n2"
#fi
#if [ $n1 -le $n2 ]
#then
#	echo "$n1 -le $n2:n1小于等于n2"
#fi
##布尔运算符/逻辑运算符 ! 非 -o 或 -a 与  && 与 || 或
#echo '布尔运算符 ! 非 -o 或 -a 与'
#echo "数值:n1=$n1,n2=$n2"
##非
#if [ $n1 != $n2 ]
#then 
#	echo "[ $n1 != $n2]: n1 不等于 n2"
#else
#	echo "[ $n1 != $n2]: n1 等于 n2"
#fi
##与
#if [ $n1 -lt 100 -a $n2 -gt 0 ]
#then
#	echo "[ $n1 -lt 100 -a $n2 -gt 0 ]: 返回true"
#else
#	echo "[ $n1 -lt 100 -a $n2 -gt 0 ]: 返回false"
#fi
##或
#if [ $n1 -lt 10 -o $n2 -gt 0 ]
#then
#	echo "[ $n1 -lt 10 -o $n2 -gt 0 ]: 返回true"
#else
#	echo "[ $n1 -lt 10 -o $n2 -gt 0 ]: 返回false"
#fi
## && 与  || 或
#if [[ $n1 -lt 100 && $n2 -gt 0 ]]
#then
#	echo "[[ $n1 -lt 100 && $n2 -gt 0 ]]: 返回true"
#else
#	echo "[[ $n1 -lt 100 && $n2 -gt 0 ]]: 返回false"
#fi
##或
#if [[ $n1 -lt 10 || $n2 -gt 0 ]]
#then
#	echo "[[ $n1 -lt 10 || $n2 -gt 0 ]]: 返回true"
#else
#	echo "[[ $n1 -lt 10 || $n2 -gt 0 ]]: 返回false"
#fi
#
##字符串运算符 = 相等 != 不相等  -z 判断长度是否为0 -n 判断长度是否不为0 [ string ]判断是否为空
#s1="abc"
#s2="defg"
#echo "s1=$s1,s2=$s2"
##相等
#if [ $s1 = $s2 ]
#then
#	echo "$s1 = $s2: s1 等于 s2"
#else
#	echo "$s1 = $s2: s1 不等于 s2"
#fi
##不相等
#if [ $s1 != $s2 ]
#then
#	echo "$s1 = $s2: s1 不等于 s2"
#else
#	echo "$s1 = $s2: s1 等于 s2"
#fi
##检测长度是否为0
#if [ -z $a ]
#then
#	echo "-z $a: 长度为0"
#else
#	echo "-z $a: 长度不为0"
#fi
##检测长度是否不为0
#if [ -n $s1 ]
#then
#	echo "-n $a: 不长度为0"
#else
#	echo "-n $a: 长度为0"
#fi
##检测是否不为空
#s3="  "
#echo "s3=$s3"
#if [ $s3 ]
#then
#	echo "$s3: 不为空"
#else
#	echo '$s3: 为空'
#fi
##文件检测操作符,检测文件的各种属性
#file="/root/shellP/test.sh"
##检测文件是否是块设备文件
#if [ -b $file ]
#then
#	echo '是块设备文件'
#else
#	echo '不是块设备文件'
#fi
##检测文件是否是字符设备文件
#if [ -c $file ]
#then
#	echo '是字符设备文件'
#else
#	echo '不是字符设备文件'
#fi
##检测文件是否是普通文件（除目录，设备文件外）
#if [ -f $file ]
#then
#	echo '是普通文件'
#else
#	echo '不是普通文件'
#fi	
##检测文件是否是目录
#if [ -d $file ]
#then
#	echo '是目录'
#else
#	echo '不是目录'
#fi
##检测文件是否设置SGID位
#if [ -g $file ]
#then
#	echo '设置了SGID位'
#else
#	echo '没有设置SGID位'
#fi
##检测文件是否设置粘着位
#if [ -k $file ]
#then
#	echo '设置了粘着位'
#else
#	echo '没有设置粘着位'
#fi	
##检测文件是否是有名管道
#if [ -p $file ]
#then
#	echo '是有名管道'
#else
#	echo '不是有名管道'
#fi	
##检测文件是否设置了SUID位
#if [ -u $file ]
#then
#	echo '设置了SUID位'
#else
#	echo '没有设置SUID位'
#fi
##检测文件是否可读
#if [ -r $file ]
#then
#	echo '可读文件'
#else
#	echo '不可读文件'
#fi
##检测文件是否可写
#if [ -w $file ]
#then
#	echo '可写文件'
#else
#	echo '不可写文件'
#fi
##检测是否是可执行文件
#if [ -x $file ]
#then
#	echo '可执行文件'
#else
#	echo '不可执行文件'
#fi
##检测文件是否不为空（文件大小大于0）
#if [ -s "/dev/null" ]
#then
#	echo '非空文件'
#else
#	echo '/dev/null文件是空文件'
#fi
##检测文件是否存在
#if [ -e $file ]
#then
#	echo '文件存在'
#else
#	echo '文件不存在'
#fi

#输出命令
#echo命令
#输出普通字符串
#echo "It is good"
#可以省略引号
#echo It is good
#输出转义字符
#echo "\"It is good\""
#输出变量,read标准输入
#read name
#echo "$name it is good"
#输出换行,-e 开启转义
#echo -e "你好吗？\n"
#echo 我很好
#输出不换行,-e 开启转义
#echo -e "你好吗？ \c"
#echo 我很好!
#输出到文件
#echo "It is good" > echofile
#原样输出字符串，不进行转义和取变量值
#echo '$name\"'
#输出命令结果
#echo `date`

#printf 命令
#echo "Hello,Shell"
#printf "Hello,Shell\n"
#printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg
#printf "%-10s %-8s %-4s\n" a 女 50
#printf "%-10s %-8s %-4s\n" b 男 65
#printf "%-10s %-8s %-4s\n" c 男 65

#流程控制
#if
#echo 'if语句'
#a=10
#b=20
#if [ $a == $b ]
#then
#	echo 'a和b相等'
#elif [ $a -lt $b ]
#then
#	echo 'a小于b'
#else
#	echo 'a大于b'
#fi
	
#for循环
#echo 'for语句'
#for item in 1 2 3 4 5
#do
#	echo -ne $item\\t 
#done
#命令写在一行中
#for item in 1 2 3 4 5;do echo -ne $item\\t ;done;
#
#echo
#while循环
#echo 'while语句'
#i=1
#while(( $i<=5))
#do
#	echo -ne $i\\t
#	let "i++"
#done
#echo
#读取键盘信息
#echo '按下 <ctrl+D> 退出'
#echo -n '输入你最喜欢的事情：'
#while read hobby
#do
#	echo '你喜欢做的事情是'$hobby
#	echo -n '输入你最喜欢的事情：'
#done
#无限循环
#while :
#do
#	echo '我一直在循环-one'
#done
#while true
#do
#	echo '我一直在循环-two'
#done

#until循环-与while相反，条件为真时停止循环
#echo 'until语句'
#i=5;
#until [ $i -lt 0 ]
#do
#	echo $i
#	let "i--"
#done

#case语句
#echo 'case语句'
#echo '输入 1 到 5之间的数字：'
#echo '请输入数字：'
#read num
#case $num in
#	1) echo '你选择了 1'
#	;;
#	2) echo '你选择了 2'
#	;;
#	3) echo '你选择了 3'
#	;;
#	4) echo '你选择了 4'
#	;;
#	5) echo '你选择了 5'
#	;;
#	*) echo '请输入 1 到 5之间的数字'
#	;;
#esac

#终止循环
#echo 'break 终止循环'
#while : 
#do
#	echo '输入 1 到 5之间的数字：'
#	echo '请输入数字：'
#	read num
#	case $num in
#		1|2|3|4|5) 
#		echo '你输入的数字为：'$num
#		;;
#		*)
#		echo '你输入数字不在 1 到 5之间，终止循环'
#		break
#		;;
#	esac
#done

#跳过本次循环
#echo continue跳过本次循环
#while : 
#do
#	echo '输入 1 到 5之间的数字(输入q停止循环)：'
#	echo '请输入数字：'
#	read num
#	case $num in
#		1|2|3|4|5) 
#		echo '你输入的数字为：'$num
#		;;
#		q)
#		break
#		;;
#		*)
#		echo '你输入数字不在 1 到 5之间，跳过循环'
#		continue
#		
#		;;
#	esac
#done

#函数

demoFun(){
		echo '我是一个shell函数'	
}
echo 'demoFun函数开始执行'
demoFun
echo 'demoFun函数执行结束'

#return 返回值
echo ---有返回值的函数---
funWithReturn(){
	echo '两数相加'
	echo '请输入第一个数：'
	read n1	
	echo '请输入第二个数：'
	read n2
	echo "两个数分别为$n1和$n2"
	return $(($n1+$n2))
}
funWithReturn
#通过$?获取函数返回值
echo "输入的两数之和为$?"

#参数
echo ---有带参数的函数---
funWithParam(){
	echo "第1个参数为：$1"	
	echo "第2个参数为：$2"	
	echo "第3个参数为：$3"	
	echo "第4个参数为：$4"	
	echo "第5个参数为：$5"	
	echo "第6个参数为：$6"	
	echo "第15个参数为：${15}"	
	echo "参数总个数为：$# 个"
	echo "以字符串的形式输出所有参数：$*"
}
funWithParam 1 2 3 4 5 6 7 8 9 10 11 12 13 14 good
