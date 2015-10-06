obj-m += hello.o
KDIR="/home/yinwei/kw_study/TI-Android-ICS-4.0.3_AM335x_3.0.1/kernel"

all:
	make -C ${KDIR} M=$(shell pwd)  modules

clean:
	make -C ${KDIR} M=$(shell pwd)  modules   clean

	
