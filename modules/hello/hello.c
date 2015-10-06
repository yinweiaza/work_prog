/*************************************************************************
	> File Name: hello.c
	> Author: 
	> Mail: 
	> Created Time: Thu 17 Sep 2015 08:46:48 PM CST
 ************************************************************************/

#include  <linux/module.h>
#include  <linux/kernel.h>
#include  <linux/init.h>    //包含宏__init和__exit



/* 模块初始化程序 */
static int __init test_init(void)
{

    printk("<1>hello word!!");    //<1>是输出级别，表示立即在终端输出   因为printk可以输出到终端或系统日志文件
    return 0;

}

/* 模块退出时运行程序 */
static void __exit test_exit(void)
{

    printk("<1>exit the  hello!!");

}

module_init(test_init);
module_exit(test_exit);


