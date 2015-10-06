CURAPTH = $(shell pwd)

obj-m += gpio_ts.o


KDIR ="~/kw_study/TI-Android-ICS-4.0.3_AM335x_3.0.1/kernel/"

all:
	make -C ${KDIR} M=${CURAPTH}  modules
clean:
	make -C ${KDIR} M=${CURAPTH}  modules  clean
	rm -rf modules.order




