[Intel microcode](https://wiki.gentoo.org/wiki/Intel_microcode)

In short, backup `early_ucode.cpio` and do:


```shell
iucode_tool -S --write-earlyfw=/boot/early_ucode.cpio /lib/firmware/intel-ucode/*
```
