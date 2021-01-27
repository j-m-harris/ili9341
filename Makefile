obj-m += ili9341.o
EXTRA_CFLAGS=-Wno-error=incompatible-pointer-types

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
