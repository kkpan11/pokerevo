.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80244904
func_80244904:
/* 80244904 00240564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80244908 00240568  38 80 00 00 */	li r4, 0
/* 8024490C 0024056C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80244910 00240570  98 83 00 05 */	stb r4, 5(r3)
/* 80244914 00240574  2C 00 00 00 */	cmpwi r0, 0
/* 80244918 00240578  41 82 00 D8 */	beq lbl_802449F0
/* 8024491C 0024057C  C0 43 00 00 */	lfs f2, 0(r3)
/* 80244920 00240580  C0 02 9E C0 */	lfs f0, lbl_806424C0-_SDA2_BASE_(r2)
/* 80244924 00240584  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80244928 00240588  40 81 00 0C */	ble lbl_80244934
/* 8024492C 0024058C  EC 02 08 28 */	fsubs f0, f2, f1
/* 80244930 00240590  D0 03 00 00 */	stfs f0, 0(r3)
lbl_80244934:
/* 80244934 00240594  C0 23 00 00 */	lfs f1, 0(r3)
/* 80244938 00240598  C0 02 9E C0 */	lfs f0, lbl_806424C0-_SDA2_BASE_(r2)
/* 8024493C 0024059C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80244940 002405A0  4C 40 13 82 */	cror 2, 0, 2
/* 80244944 002405A4  40 82 00 AC */	bne lbl_802449F0
/* 80244948 002405A8  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8024494C 002405AC  88 85 00 00 */	lbz r4, 0(r5)
/* 80244950 002405B0  54 80 06 36 */	rlwinm r0, r4, 0, 0x18, 0x1b
/* 80244954 002405B4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80244958 002405B8  41 82 00 68 */	beq lbl_802449C0
/* 8024495C 002405BC  40 80 00 10 */	bge lbl_8024496C
/* 80244960 002405C0  2C 00 00 00 */	cmpwi r0, 0
/* 80244964 002405C4  41 82 00 14 */	beq lbl_80244978
/* 80244968 002405C8  48 00 00 74 */	b lbl_802449DC
lbl_8024496C:
/* 8024496C 002405CC  2C 00 00 20 */	cmpwi r0, 0x20
/* 80244970 002405D0  41 82 00 5C */	beq lbl_802449CC
/* 80244974 002405D4  48 00 00 68 */	b lbl_802449DC
lbl_80244978:
/* 80244978 002405D8  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 8024497C 002405DC  3C 80 43 30 */	lis r4, 0x4330
/* 80244980 002405E0  98 03 00 04 */	stb r0, 4(r3)
/* 80244984 002405E4  38 05 00 03 */	addi r0, r5, 3
/* 80244988 002405E8  C8 42 9E C8 */	lfd f2, lbl_806424C8-_SDA2_BASE_(r2)
/* 8024498C 002405EC  88 C5 00 01 */	lbz r6, 1(r5)
/* 80244990 002405F0  88 A5 00 02 */	lbz r5, 2(r5)
/* 80244994 002405F4  50 C5 44 2E */	rlwimi r5, r6, 8, 0x10, 0x17
/* 80244998 002405F8  90 81 00 08 */	stw r4, 8(r1)
/* 8024499C 002405FC  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 802449A0 00240600  C0 02 9E C4 */	lfs f0, lbl_806424C4-_SDA2_BASE_(r2)
/* 802449A4 00240604  90 81 00 0C */	stw r4, 0xc(r1)
/* 802449A8 00240608  C8 21 00 08 */	lfd f1, 8(r1)
/* 802449AC 0024060C  90 03 00 0C */	stw r0, 0xc(r3)
/* 802449B0 00240610  EC 21 10 28 */	fsubs f1, f1, f2
/* 802449B4 00240614  EC 01 00 24 */	fdivs f0, f1, f0
/* 802449B8 00240618  D0 03 00 00 */	stfs f0, 0(r3)
/* 802449BC 0024061C  48 00 00 2C */	b lbl_802449E8
lbl_802449C0:
/* 802449C0 00240620  80 03 00 08 */	lwz r0, 8(r3)
/* 802449C4 00240624  90 03 00 0C */	stw r0, 0xc(r3)
/* 802449C8 00240628  48 00 00 20 */	b lbl_802449E8
lbl_802449CC:
/* 802449CC 0024062C  38 00 00 00 */	li r0, 0
/* 802449D0 00240630  98 03 00 04 */	stb r0, 4(r3)
/* 802449D4 00240634  90 03 00 0C */	stw r0, 0xc(r3)
/* 802449D8 00240638  48 00 00 10 */	b lbl_802449E8
lbl_802449DC:
/* 802449DC 0024063C  38 00 00 00 */	li r0, 0
/* 802449E0 00240640  98 03 00 04 */	stb r0, 4(r3)
/* 802449E4 00240644  90 03 00 0C */	stw r0, 0xc(r3)
lbl_802449E8:
/* 802449E8 00240648  38 00 00 01 */	li r0, 1
/* 802449EC 0024064C  98 03 00 05 */	stb r0, 5(r3)
lbl_802449F0:
/* 802449F0 00240650  38 21 00 10 */	addi r1, r1, 0x10
/* 802449F4 00240654  4E 80 00 20 */	blr

.global func_802449F8
func_802449F8:
/* 802449F8 00240658  38 A0 00 01 */	li r5, 1
/* 802449FC 0024065C  38 6D A4 F8 */	addi r3, r13, lbl_8063F7B8-_SDA_BASE_
/* 80244A00 00240660  38 80 00 04 */	li r4, 4
/* 80244A04 00240664  38 00 00 00 */	li r0, 0
/* 80244A08 00240668  98 AD A4 F8 */	stb r5, lbl_8063F7B8-_SDA_BASE_(r13)
/* 80244A0C 0024066C  B0 83 00 02 */	sth r4, 2(r3)
/* 80244A10 00240670  98 03 00 04 */	stb r0, 4(r3)
/* 80244A14 00240674  4E 80 00 20 */	blr
