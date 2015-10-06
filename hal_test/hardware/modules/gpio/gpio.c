/*************************************************************************
	> File Name: gpio.c
	> Author: yinwei
	> Mail: 
	> Created Time: Mon 28 Sep 2015 01:50:10 PM CST
 ************************************************************************/

#include<stdio.h>
#define     LOG_TAG "GPIO_STUB"

#include  <gpio.h>

//gpio读写功能
int gpio_set_val(struct gpio_device_t *dev,int32_t value)
{

    LOGI("给针脚赋值%d",value);
    if( !dev )
    {
        LOGE("NULL dev PT");
        return -EFAULT;
    }

    write(dev->fd,&value,sizeof(value));
    return 0;

}

int gpio_get_val(struct gpio_device_t *dev,int32_t *val)
{
    if( !dev )
    {
        LOGE("NULL DEV PT");
        return -EFAULT;
    }
    if( !val )
    {
        LOGE("NULL val PT");
        return -EFAULT;
    }
    read(dev->fd,val,sizeof(*val));          //设备文件操作    read功能由设备驱动程序提供
    LOGE("get the value %d from device file",*val);
    return 0;

}

//设备文件开启和关闭
static int gpio_device_open(const struct hw_module_t* module,const char* name,struct hw_device_t** device)
{
    
    struct gpio_device_t *dev;
    dev->common.tag = HARDWARE_DEVICE_TAG;
    dev->common.version = 0;
    dev->common.module = module;
    dev->common.close = gpio_device_close;
    dev->set_val=gpio_set_val;     //实例化
    *device = &dev->common;  

    dev->fd = open(GPIO_DEVICE_PATH,O_RDWR);
    if(dev->fd == -1)
    {
        LOGE("Fail to open the gpio_ts device ---- %s",strerror(errno));
        free(dev)
        return -EFAULT;
    }
    LOGI("open the  gpio_ts  device successful");
    return 0;
    
}

int gpio_device_close(struct hw_device_t *device)
{
    struct gpio_device_t *ctx=(struct gpio_device_t *) device;
    if( !ctx )
    {
        close(ctx->fd);
        free(ctx);

    }
    return 0;
}

//为
static struct hw_module_methods_t gpio_module_methods={
    open: gpio_device_open;
}

const struct gpio_module_t HAL_MODULE_INFO_SYM = {
    //定义此对象相当于向系统注册了一个ID为 GPIO_HARDWARE_MODULE_ID的stub
    common:{
    tag: HARDWARE_MODULE_TAG,
    version_major:1,
    version_minor:0,
    id: GPIO_HARDWARE_MODULE_ID,
    name: "sample gpio stub",
    author: "yinwei 's test project'",
    methods: &gpio_module_methods,              //实现一个open的方法供jni调用
    }
}

