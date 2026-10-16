### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
properties() { '
kernel.string=5.4.254 OPLUS | ColorOS 17 port kernel | @ozyern
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=lemonade
device.name2=lemonadep
device.name3=lemonades
device.name4=lemonadev
device.name5=OnePlus9
device.name6=OnePlus9Pro
device.name7=OnePlus 9
device.name8=OnePlus 9 Pro
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install

## boot: kernel only
## This tree is OnePlus's own 5.4.254 source, the same base as the stock
## OxygenOS 14 kernel, so the stock dtb in vendor_boot and the stock dtbo
## stay as they are. Nothing else is touched.
BLOCK=boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

. tools/ak3-core.sh;

ui_print " ";
ui_print "Installing 5.4.254 OPLUS kernel to boot...";
dump_boot;
write_boot;

ui_print " ";
ui_print "-----------------------------------------";
ui_print "  5.4.254 OPLUS (ColorOS 17 port)";
ui_print "  close_range | CAP_CHECKPOINT_RESTORE";
ui_print "  BPF 5.10 + netbpfload compat";
ui_print "  kernel -> boot (stock dtb/dtbo kept)";
ui_print "-----------------------------------------";
ui_print " ";
