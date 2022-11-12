obj-m += arm/pcie-bcm963xx.o common/pcie_common.o

EXTRA_CLFAGS += -Iinclude/bcmdrivers_opensource
EXTRA_CLFAGS += -Iinclude/shared_opensource
KDIR ?= /lib/modules/$(shell uname -r)/build

modules:
	$(MAKE) -C $(KDIR) M=$$PWD modules

modules_install:
	$(MAKE) -C $(KDIR) M=$$PWD modules_install

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean

