/*************************************************************************
	> File Name: gpio_ts.c
	> Author: 
	> Mail: 
	> Created Time: Tue 29 Sep 2015 08:08:48 AM CST
 ************************************************************************/

#include  <linux/module.h>          //提供模块创建所需的所有函数
#include  <linux/init.h>           //提供__init,__exit
#include  <linux/kernel.h>      //提供
#include  <linux/gpio.h>      //gpio驱动头文件
#include  <linux/interrupt.h>   //中断头
#include  <linux/irq.h>

#include  <asm/gpio.h>    //包含了mach/gpio.h           mach/gpio.h又包含了plat/gpio.h
#include  <plat/am33xx.h>      //包含了架构的针脚基地址    暂时没用

#define     DEVICE_NAME  "gpio_ts"

#define     GPIO_NUM(gpio,offset)   (gpio*32+offset)

unsigned gpio_out_num;   //用于中断响应

static irqreturn_t gpio_handler(int irq,void* dev_id) { 
    int  value;
    value = gpio_get_value(gpio_out_num);
    if( !value )
    {
        gpio_set_value(gpio_out_num,1); 
    }else{
        gpio_set_value(gpio_out_num,0);
    }

    printk(KERN_INFO "gpio%d引脚的值为%d",gpio_out_num,gpio_get_value(gpio_out_num));
    
    return  IRQ_HANDLED;
}


/* 模块退出的时候执行 */
static void  __exit gpio_ts_exit(void)
{
    printk(KERN_INFO "the module exits");
}

/* 载入模块时，创建设备文件，并初始化引脚，检测中断信号 */
static int __init gpio_ts_init(void)
{
    int rq_status,out_status;
    unsigned gpio_num;  
    unsigned irq_num;

    gpio_num=GPIO_NUM(1,17);     
    gpio_out_num = GPIO_NUM(1,16);   

    rq_status = gpio_request(gpio_num,"中断触发口"); 
    out_status = gpio_request(gpio_out_num,"中断响应口");


    if( rq_status || out_status )
    {
        printk(KERN_INFO"申请gpio失败..");
        return -EFAULT;
    }

    rq_status = gpio_direction_input(gpio_num);  
    out_status = gpio_direction_output(gpio_out_num,1); 
    if( rq_status || out_status )
    {
        printk(KERN_INFO"设置方向失败..");
        return -EFAULT;
    }
    
    irq_num = gpio_to_irq(gpio_num);

    if( !irq_num )   
    {
        printk(KERN_INFO"gpio转irq失败...");
        return -EFAULT;
    }else{
        irq_set_irq_type(irq_num,IRQ_TYPE_EDGE_FALLING); 
    }



    printk(KERN_INFO "下面开始中断申请%d,引脚值%d",irq_num,gpio_get_value(gpio_out_num));

     enable_irq(irq_num);   

    rq_status=request_irq(irq_num,gpio_handler,IRQF_TRIGGER_FALLING,DEVICE_NAME,NULL);

    if( rq_status )
    {
        printk(KERN_INFO"中断申请失败...");
        return -EFAULT;
    }
    printk(KERN_INFO "中断申请成功！");
    return 0;
}



module_init(gpio_ts_init);
module_exit(gpio_ts_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("yinwei");
MODULE_DESCRIPTION("gpio irq test");


