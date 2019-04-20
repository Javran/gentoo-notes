[Intel microcode](https://wiki.gentoo.org/wiki/Intel_microcode)

In short, backup `early_ucode.cpio` and do:


```shell
iucode_tool -S --write-earlyfw=/boot/early_ucode.cpio /lib/firmware/intel-ucode/*
```

Alternatively see [New method without initram-fs/disk](https://wiki.gentoo.org/wiki/Intel_microcode#New_method_without_initram-fs.2Fdisk) to build microcode into kernel,
therefore eliminating the need of an initrd.
