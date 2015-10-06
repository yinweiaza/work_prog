/*************************************************************************
	> File Name: ../gpio/gpio.h
	> Author: 
	> Mail: 
	> Created Time: Mon 28 Sep 2015 01:54:36 PM CST
 ************************************************************************/

#ifndef _../GPIO/GPIO_H
#define _../GPIO/GPIO_H
#include  <hardware/hardware.h>
#include  <fcntl.h>
#include  <error.h>
#include  <cutils/cutils.h>
#include  <cutils/atomic.h>

#define     GPIO_DEVICE_PATH "/dev/gpio_ts"      //设备文件

struct gpio_module_t{
    struct hw_module_t common;
};
struct gpio_device_t{
    struct hw_device_t common;
    int fd;    //设备文件
    int (*set_val)(struct gpio_device_t *dev,int32_t value);  //对设备进行操作
    int (*get_val)(struct gpio_device_t *dev,int32_t *val);
};

#define     GPIO_HARDWARE_MODULE_ID "gpio"



#endif
