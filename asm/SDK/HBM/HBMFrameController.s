.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global init__Q210homebutton15FrameControllerFifff
init__Q210homebutton15FrameControllerFifff:
/* 803A37C4 0039F424  38 00 00 00 */	li r0, 0
/* 803A37C8 0039F428  2C 04 00 01 */	cmpwi r4, 1
/* 803A37CC 0039F42C  90 83 00 18 */	stw r4, 0x18(r3)
/* 803A37D0 0039F430  D0 23 00 04 */	stfs f1, 4(r3)
/* 803A37D4 0039F434  D0 43 00 08 */	stfs f2, 8(r3)
/* 803A37D8 0039F438  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 803A37DC 0039F43C  90 03 00 14 */	stw r0, 0x14(r3)
/* 803A37E0 0039F440  98 03 00 1C */	stb r0, 0x1c(r3)
/* 803A37E4 0039F444  40 82 00 0C */	bne lbl_803A37F0
/* 803A37E8 0039F448  FC 00 08 18 */	frsp f0, f1
/* 803A37EC 0039F44C  48 00 00 08 */	b lbl_803A37F4
lbl_803A37F0:
/* 803A37F0 0039F450  FC 00 10 18 */	frsp f0, f2
lbl_803A37F4:
/* 803A37F4 0039F454  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803A37F8 0039F458  4E 80 00 20 */	blr 

.global initFrame__Q210homebutton15FrameControllerFv
initFrame__Q210homebutton15FrameControllerFv:
/* 803A37FC 0039F45C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803A3800 0039F460  2C 00 00 01 */	cmpwi r0, 1
/* 803A3804 0039F464  40 82 00 0C */	bne lbl_803A3810
/* 803A3808 0039F468  C0 03 00 04 */	lfs f0, 4(r3)
/* 803A380C 0039F46C  48 00 00 08 */	b lbl_803A3814
lbl_803A3810:
/* 803A3810 0039F470  C0 03 00 08 */	lfs f0, 8(r3)
lbl_803A3814:
/* 803A3814 0039F474  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803A3818 0039F478  4E 80 00 20 */	blr 

.global calc__Q210homebutton15FrameControllerFv
calc__Q210homebutton15FrameControllerFv:
/* 803A381C 0039F47C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803A3820 0039F480  2C 00 00 01 */	cmpwi r0, 1
/* 803A3824 0039F484  4C 82 00 20 */	bnelr 
/* 803A3828 0039F488  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803A382C 0039F48C  2C 00 00 02 */	cmpwi r0, 2
/* 803A3830 0039F490  41 82 00 8C */	beq lbl_803A38BC
/* 803A3834 0039F494  40 80 00 14 */	bge lbl_803A3848
/* 803A3838 0039F498  2C 00 00 00 */	cmpwi r0, 0
/* 803A383C 0039F49C  41 82 00 18 */	beq lbl_803A3854
/* 803A3840 0039F4A0  40 80 00 4C */	bge lbl_803A388C
/* 803A3844 0039F4A4  4E 80 00 20 */	blr 
lbl_803A3848:
/* 803A3848 0039F4A8  2C 00 00 04 */	cmpwi r0, 4
/* 803A384C 0039F4AC  4C 80 00 20 */	bgelr 
/* 803A3850 0039F4B0  48 00 00 A0 */	b lbl_803A38F0
lbl_803A3854:
/* 803A3854 0039F4B4  C0 63 00 04 */	lfs f3, 4(r3)
/* 803A3858 0039F4B8  C0 42 A9 A8 */	lfs f2, lbl_80642FA8-_SDA2_BASE_(r2)
/* 803A385C 0039F4BC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 803A3860 0039F4C0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 803A3864 0039F4C4  EC 43 10 28 */	fsubs f2, f3, f2
/* 803A3868 0039F4C8  EC 01 00 2A */	fadds f0, f1, f0
/* 803A386C 0039F4CC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 803A3870 0039F4D0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803A3874 0039F4D4  4C 41 13 82 */	cror 2, 1, 2
/* 803A3878 0039F4D8  4C 82 00 20 */	bnelr 
/* 803A387C 0039F4DC  38 00 00 00 */	li r0, 0
/* 803A3880 0039F4E0  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 803A3884 0039F4E4  90 03 00 14 */	stw r0, 0x14(r3)
/* 803A3888 0039F4E8  4E 80 00 20 */	blr 
lbl_803A388C:
/* 803A388C 0039F4EC  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 803A3890 0039F4F0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 803A3894 0039F4F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 803A3898 0039F4F8  EC 22 08 28 */	fsubs f1, f2, f1
/* 803A389C 0039F4FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803A38A0 0039F500  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 803A38A4 0039F504  4C 40 13 82 */	cror 2, 0, 2
/* 803A38A8 0039F508  4C 82 00 20 */	bnelr 
/* 803A38AC 0039F50C  38 00 00 00 */	li r0, 0
/* 803A38B0 0039F510  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803A38B4 0039F514  90 03 00 14 */	stw r0, 0x14(r3)
/* 803A38B8 0039F518  4E 80 00 20 */	blr 
lbl_803A38BC:
/* 803A38BC 0039F51C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 803A38C0 0039F520  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 803A38C4 0039F524  C0 23 00 04 */	lfs f1, 4(r3)
/* 803A38C8 0039F528  EC 42 00 2A */	fadds f2, f2, f0
/* 803A38CC 0039F52C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 803A38D0 0039F530  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 803A38D4 0039F534  4C 41 13 82 */	cror 2, 1, 2
/* 803A38D8 0039F538  4C 82 00 20 */	bnelr 
/* 803A38DC 0039F53C  C0 03 00 08 */	lfs f0, 8(r3)
/* 803A38E0 0039F540  EC 01 00 28 */	fsubs f0, f1, f0
/* 803A38E4 0039F544  EC 02 00 28 */	fsubs f0, f2, f0
/* 803A38E8 0039F548  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803A38EC 0039F54C  4E 80 00 20 */	blr 
lbl_803A38F0:
/* 803A38F0 0039F550  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 803A38F4 0039F554  2C 00 00 00 */	cmpwi r0, 0
/* 803A38F8 0039F558  40 82 00 3C */	bne lbl_803A3934
/* 803A38FC 0039F55C  C0 63 00 04 */	lfs f3, 4(r3)
/* 803A3900 0039F560  C0 42 A9 A8 */	lfs f2, lbl_80642FA8-_SDA2_BASE_(r2)
/* 803A3904 0039F564  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 803A3908 0039F568  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 803A390C 0039F56C  EC 43 10 28 */	fsubs f2, f3, f2
/* 803A3910 0039F570  EC 01 00 2A */	fadds f0, f1, f0
/* 803A3914 0039F574  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 803A3918 0039F578  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803A391C 0039F57C  4C 41 13 82 */	cror 2, 1, 2
/* 803A3920 0039F580  4C 82 00 20 */	bnelr 
/* 803A3924 0039F584  38 00 00 01 */	li r0, 1
/* 803A3928 0039F588  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 803A392C 0039F58C  98 03 00 1C */	stb r0, 0x1c(r3)
/* 803A3930 0039F590  4E 80 00 20 */	blr 
lbl_803A3934:
/* 803A3934 0039F594  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 803A3938 0039F598  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 803A393C 0039F59C  C0 03 00 08 */	lfs f0, 8(r3)
/* 803A3940 0039F5A0  EC 22 08 28 */	fsubs f1, f2, f1
/* 803A3944 0039F5A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803A3948 0039F5A8  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 803A394C 0039F5AC  4C 40 13 82 */	cror 2, 0, 2
/* 803A3950 0039F5B0  4C 82 00 20 */	bnelr 
/* 803A3954 0039F5B4  38 00 00 00 */	li r0, 0
/* 803A3958 0039F5B8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803A395C 0039F5BC  98 03 00 1C */	stb r0, 0x1c(r3)
/* 803A3960 0039F5C0  4E 80 00 20 */	blr 