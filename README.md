# work_prog
工作代码、记录

这里演示的是android从应用程序框架深入内核底层的全过程，以gpio中断机制为例子，实现中断响应、设备文件创建、硬件抽象层、
java本地接口（JNI)、应用程序框架等各层级功能。
gpio_kernel_modules       这里是内核模块的实现   即gpio的驱动模块

hal_test   是用户空间的整个框架，包括硬件抽象层、java本地接口、应用程序框架。

这里的代码还不全，将分多次进行更新。