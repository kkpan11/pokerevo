.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_801DC5FC
func_801DC5FC:
/* 801DC5FC 001D825C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC600 001D8260  7C 08 02 A6 */	mflr r0
/* 801DC604 001D8264  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC608 001D8268  39 61 00 20 */	addi r11, r1, 0x20
/* 801DC60C 001D826C  4B FE AB 1D */	bl _savegpr_27
/* 801DC610 001D8270  88 0D A0 5E */	lbz r0, lbl_8063F31E-_SDA_BASE_(r13)
/* 801DC614 001D8274  7C 7B 1B 78 */	mr r27, r3
/* 801DC618 001D8278  7C 9C 23 78 */	mr r28, r4
/* 801DC61C 001D827C  7C BD 2B 78 */	mr r29, r5
/* 801DC620 001D8280  2C 00 00 00 */	cmpwi r0, 0
/* 801DC624 001D8284  7C DE 33 78 */	mr r30, r6
/* 801DC628 001D8288  7C FF 3B 78 */	mr r31, r7
/* 801DC62C 001D828C  40 82 00 0C */	bne lbl_801DC638
/* 801DC630 001D8290  38 60 FF FF */	li r3, -1
/* 801DC634 001D8294  48 00 00 78 */	b lbl_801DC6AC
lbl_801DC638:
/* 801DC638 001D8298  4B FF FC 2D */	bl func_801DC264
/* 801DC63C 001D829C  2C 1B 00 00 */	cmpwi r27, 0
/* 801DC640 001D82A0  40 82 00 0C */	bne lbl_801DC64C
/* 801DC644 001D82A4  38 60 FF FF */	li r3, -1
/* 801DC648 001D82A8  48 00 00 64 */	b lbl_801DC6AC
lbl_801DC64C:
/* 801DC64C 001D82AC  57 80 06 FF */	clrlwi. r0, r28, 0x1b
/* 801DC650 001D82B0  41 82 00 0C */	beq lbl_801DC65C
/* 801DC654 001D82B4  38 60 FF FF */	li r3, -1
/* 801DC658 001D82B8  48 00 00 54 */	b lbl_801DC6AC
lbl_801DC65C:
/* 801DC65C 001D82BC  57 A0 06 FF */	clrlwi. r0, r29, 0x1b
/* 801DC660 001D82C0  41 82 00 0C */	beq lbl_801DC66C
/* 801DC664 001D82C4  38 60 FF FF */	li r3, -1
/* 801DC668 001D82C8  48 00 00 44 */	b lbl_801DC6AC
lbl_801DC66C:
/* 801DC66C 001D82CC  57 C0 07 BF */	clrlwi. r0, r30, 0x1e
/* 801DC670 001D82D0  41 82 00 0C */	beq lbl_801DC67C
/* 801DC674 001D82D4  38 60 FF FF */	li r3, -1
/* 801DC678 001D82D8  48 00 00 34 */	b lbl_801DC6AC
lbl_801DC67C:
/* 801DC67C 001D82DC  2C 1F 00 00 */	cmpwi r31, 0
/* 801DC680 001D82E0  41 80 00 0C */	blt lbl_801DC68C
/* 801DC684 001D82E4  2C 1F 00 03 */	cmpwi r31, 3
/* 801DC688 001D82E8  40 81 00 0C */	ble lbl_801DC694
lbl_801DC68C:
/* 801DC68C 001D82EC  38 60 FF FF */	li r3, -1
/* 801DC690 001D82F0  48 00 00 1C */	b lbl_801DC6AC
lbl_801DC694:
/* 801DC694 001D82F4  7F 84 E3 78 */	mr r4, r28
/* 801DC698 001D82F8  7F A5 EB 78 */	mr r5, r29
/* 801DC69C 001D82FC  7F C6 F3 78 */	mr r6, r30
/* 801DC6A0 001D8300  7F E7 FB 78 */	mr r7, r31
/* 801DC6A4 001D8304  38 7B 00 04 */	addi r3, r27, 4
/* 801DC6A8 001D8308  48 0A B8 FD */	bl DVDReadPrio
lbl_801DC6AC:
/* 801DC6AC 001D830C  39 61 00 20 */	addi r11, r1, 0x20
/* 801DC6B0 001D8310  4B FE AA C5 */	bl _restgpr_27
/* 801DC6B4 001D8314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC6B8 001D8318  7C 08 03 A6 */	mtlr r0
/* 801DC6BC 001D831C  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC6C0 001D8320  4E 80 00 20 */	blr

.global func_801DC6C4
func_801DC6C4:
/* 801DC6C4 001D8324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC6C8 001D8328  7C 08 02 A6 */	mflr r0
/* 801DC6CC 001D832C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC6D0 001D8330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DC6D4 001D8334  93 C1 00 08 */	stw r30, 8(r1)
/* 801DC6D8 001D8338  7C 7E 1B 78 */	mr r30, r3
/* 801DC6DC 001D833C  88 0D A0 5E */	lbz r0, lbl_8063F31E-_SDA_BASE_(r13)
/* 801DC6E0 001D8340  2C 00 00 00 */	cmpwi r0, 0
/* 801DC6E4 001D8344  40 82 00 0C */	bne lbl_801DC6F0
/* 801DC6E8 001D8348  38 60 00 00 */	li r3, 0
/* 801DC6EC 001D834C  48 00 00 5C */	b lbl_801DC748
lbl_801DC6F0:
/* 801DC6F0 001D8350  4B FF FB 75 */	bl func_801DC264
/* 801DC6F4 001D8354  2C 1E 00 00 */	cmpwi r30, 0
/* 801DC6F8 001D8358  40 82 00 0C */	bne lbl_801DC704
/* 801DC6FC 001D835C  38 60 00 00 */	li r3, 0
/* 801DC700 001D8360  48 00 00 48 */	b lbl_801DC748
lbl_801DC704:
/* 801DC704 001D8364  80 6D A0 78 */	lwz r3, lbl_8063F338-_SDA_BASE_(r13)
/* 801DC708 001D8368  2C 03 00 00 */	cmpwi r3, 0
/* 801DC70C 001D836C  41 82 00 24 */	beq lbl_801DC730
/* 801DC710 001D8370  7F C4 F3 78 */	mr r4, r30
/* 801DC714 001D8374  48 00 08 D1 */	bl func_801DCFE4
/* 801DC718 001D8378  2C 03 00 00 */	cmpwi r3, 0
/* 801DC71C 001D837C  41 82 00 14 */	beq lbl_801DC730
/* 801DC720 001D8380  7F C3 F3 78 */	mr r3, r30
/* 801DC724 001D8384  4B FF F8 3D */	bl func_801DBF60
/* 801DC728 001D8388  38 60 00 01 */	li r3, 1
/* 801DC72C 001D838C  48 00 00 1C */	b lbl_801DC748
lbl_801DC730:
/* 801DC730 001D8390  38 7E 00 04 */	addi r3, r30, 4
/* 801DC734 001D8394  48 0A B5 A5 */	bl DVDClose
/* 801DC738 001D8398  7C 7F 1B 78 */	mr r31, r3
/* 801DC73C 001D839C  7F C3 F3 78 */	mr r3, r30
/* 801DC740 001D83A0  4B FF F8 21 */	bl func_801DBF60
/* 801DC744 001D83A4  7F E3 FB 78 */	mr r3, r31
lbl_801DC748:
/* 801DC748 001D83A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC74C 001D83AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DC750 001D83B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DC754 001D83B4  7C 08 03 A6 */	mtlr r0
/* 801DC758 001D83B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC75C 001D83BC  4E 80 00 20 */	blr

.global func_801DC760
func_801DC760:
/* 801DC760 001D83C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC764 001D83C4  7C 08 02 A6 */	mflr r0
/* 801DC768 001D83C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC76C 001D83CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DC770 001D83D0  7C 7F 1B 78 */	mr r31, r3
/* 801DC774 001D83D4  88 0D A0 5E */	lbz r0, lbl_8063F31E-_SDA_BASE_(r13)
/* 801DC778 001D83D8  2C 00 00 00 */	cmpwi r0, 0
/* 801DC77C 001D83DC  40 82 00 0C */	bne lbl_801DC788
/* 801DC780 001D83E0  38 60 00 00 */	li r3, 0
/* 801DC784 001D83E4  48 00 00 44 */	b lbl_801DC7C8
lbl_801DC788:
/* 801DC788 001D83E8  4B FF FA DD */	bl func_801DC264
/* 801DC78C 001D83EC  2C 1F 00 00 */	cmpwi r31, 0
/* 801DC790 001D83F0  40 82 00 0C */	bne lbl_801DC79C
/* 801DC794 001D83F4  38 60 00 00 */	li r3, 0
/* 801DC798 001D83F8  48 00 00 30 */	b lbl_801DC7C8
lbl_801DC79C:
/* 801DC79C 001D83FC  80 6D A0 78 */	lwz r3, lbl_8063F338-_SDA_BASE_(r13)
/* 801DC7A0 001D8400  2C 03 00 00 */	cmpwi r3, 0
/* 801DC7A4 001D8404  41 82 00 20 */	beq lbl_801DC7C4
/* 801DC7A8 001D8408  7F E4 FB 78 */	mr r4, r31
/* 801DC7AC 001D840C  38 A1 00 08 */	addi r5, r1, 8
/* 801DC7B0 001D8410  48 00 08 8D */	bl func_801DD03C
/* 801DC7B4 001D8414  2C 03 00 00 */	cmpwi r3, 0
/* 801DC7B8 001D8418  41 82 00 0C */	beq lbl_801DC7C4
/* 801DC7BC 001D841C  80 61 00 08 */	lwz r3, 8(r1)
/* 801DC7C0 001D8420  48 00 00 08 */	b lbl_801DC7C8
lbl_801DC7C4:
/* 801DC7C4 001D8424  80 7F 00 38 */	lwz r3, 0x38(r31)
lbl_801DC7C8:
/* 801DC7C8 001D8428  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC7CC 001D842C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DC7D0 001D8430  7C 08 03 A6 */	mtlr r0
/* 801DC7D4 001D8434  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC7D8 001D8438  4E 80 00 20 */	blr

.global func_801DC7DC
func_801DC7DC:
/* 801DC7DC 001D843C  88 0D A0 5E */	lbz r0, lbl_8063F31E-_SDA_BASE_(r13)
/* 801DC7E0 001D8440  2C 00 00 00 */	cmpwi r0, 0
/* 801DC7E4 001D8444  40 82 00 0C */	bne lbl_801DC7F0
/* 801DC7E8 001D8448  38 60 FF FF */	li r3, -1
/* 801DC7EC 001D844C  4E 80 00 20 */	blr
lbl_801DC7F0:
/* 801DC7F0 001D8450  48 0A F6 DC */	b DVDGetDriveStatus
/* 801DC7F4 001D8454  4E 80 00 20 */	blr

.global func_801DC7F8
func_801DC7F8:
/* 801DC7F8 001D8458  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC7FC 001D845C  7C 08 02 A6 */	mflr r0
/* 801DC800 001D8460  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC804 001D8464  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DC808 001D8468  7C BF 2B 78 */	mr r31, r5
/* 801DC80C 001D846C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DC810 001D8470  7C 9E 23 78 */	mr r30, r4
/* 801DC814 001D8474  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DC818 001D8478  7C 7D 1B 78 */	mr r29, r3
/* 801DC81C 001D847C  88 0D A0 5E */	lbz r0, lbl_8063F31E-_SDA_BASE_(r13)
/* 801DC820 001D8480  2C 00 00 00 */	cmpwi r0, 0
/* 801DC824 001D8484  40 82 00 0C */	bne lbl_801DC830
/* 801DC828 001D8488  38 60 00 00 */	li r3, 0
/* 801DC82C 001D848C  48 00 00 40 */	b lbl_801DC86C
lbl_801DC830:
/* 801DC830 001D8490  4B FF FA 35 */	bl func_801DC264
/* 801DC834 001D8494  2C 1D 00 00 */	cmpwi r29, 0
/* 801DC838 001D8498  40 82 00 0C */	bne lbl_801DC844
/* 801DC83C 001D849C  38 60 00 00 */	li r3, 0
/* 801DC840 001D84A0  48 00 00 2C */	b lbl_801DC86C
lbl_801DC844:
/* 801DC844 001D84A4  3C A0 80 1E */	lis r5, lbl_801DC068@ha
/* 801DC848 001D84A8  93 FD 00 44 */	stw r31, 0x44(r29)
/* 801DC84C 001D84AC  7F C4 F3 78 */	mr r4, r30
/* 801DC850 001D84B0  38 7D 00 04 */	addi r3, r29, 4
/* 801DC854 001D84B4  38 A5 C0 68 */	addi r5, r5, lbl_801DC068@l
/* 801DC858 001D84B8  38 C0 00 02 */	li r6, 2
/* 801DC85C 001D84BC  48 0A B8 79 */	bl DVDSeekAsyncPrio
/* 801DC860 001D84C0  7C 03 00 D0 */	neg r0, r3
/* 801DC864 001D84C4  7C 00 1B 78 */	or r0, r0, r3
/* 801DC868 001D84C8  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801DC86C:
/* 801DC86C 001D84CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC870 001D84D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DC874 001D84D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DC878 001D84D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DC87C 001D84DC  7C 08 03 A6 */	mtlr r0
/* 801DC880 001D84E0  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC884 001D84E4  4E 80 00 20 */	blr

.global func_801DC888
func_801DC888:
/* 801DC888 001D84E8  38 03 00 01 */	addi r0, r3, 1
/* 801DC88C 001D84EC  28 00 00 0C */	cmplwi r0, 0xc
/* 801DC890 001D84F0  4D 81 00 20 */	bgtlr
/* 801DC894 001D84F4  3C 60 80 42 */	lis r3, lbl_804232D8@ha
/* 801DC898 001D84F8  54 00 10 3A */	slwi r0, r0, 2
/* 801DC89C 001D84FC  38 63 32 D8 */	addi r3, r3, lbl_804232D8@l
/* 801DC8A0 001D8500  7C 63 00 2E */	lwzx r3, r3, r0
/* 801DC8A4 001D8504  7C 69 03 A6 */	mtctr r3
/* 801DC8A8 001D8508  4E 80 04 20 */	bctr
/* 801DC8AC 001D850C  38 00 00 09 */	li r0, 9
/* 801DC8B0 001D8510  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DC8B4 001D8514  4E 80 00 20 */	blr
/* 801DC8B8 001D8518  38 00 00 01 */	li r0, 1
/* 801DC8BC 001D851C  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DC8C0 001D8520  4E 80 00 20 */	blr
/* 801DC8C4 001D8524  38 00 00 03 */	li r0, 3
/* 801DC8C8 001D8528  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DC8CC 001D852C  4E 80 00 20 */	blr
/* 801DC8D0 001D8530  38 00 00 05 */	li r0, 5
/* 801DC8D4 001D8534  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DC8D8 001D8538  4E 80 00 20 */	blr
/* 801DC8DC 001D853C  38 00 00 07 */	li r0, 7
/* 801DC8E0 001D8540  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DC8E4 001D8544  4E 80 00 20 */	blr

.global func_801DC8E8
func_801DC8E8:
/* 801DC8E8 001D8548  81 8D A0 70 */	lwz r12, lbl_8063F330-_SDA_BASE_(r13)
/* 801DC8EC 001D854C  2C 0C 00 00 */	cmpwi r12, 0
/* 801DC8F0 001D8550  4D 82 00 20 */	beqlr
/* 801DC8F4 001D8554  7D 89 03 A6 */	mtctr r12
/* 801DC8F8 001D8558  4E 80 04 20 */	bctr
/* 801DC8FC 001D855C  4E 80 00 20 */	blr

.global func_801DC900
func_801DC900:
/* 801DC900 001D8560  81 8D A0 74 */	lwz r12, lbl_8063F334-_SDA_BASE_(r13)
/* 801DC904 001D8564  2C 0C 00 00 */	cmpwi r12, 0
/* 801DC908 001D8568  4D 82 00 20 */	beqlr
/* 801DC90C 001D856C  7D 89 03 A6 */	mtctr r12
/* 801DC910 001D8570  4E 80 04 20 */	bctr
/* 801DC914 001D8574  4E 80 00 20 */	blr
lbl_801DC918:
/* 801DC918 001D8578  90 6D 84 34 */	stw r3, lbl_8063D6F4-_SDA_BASE_(r13)
/* 801DC91C 001D857C  3C 60 80 49 */	lis r3, lbl_80491830@ha
/* 801DC920 001D8580  38 63 18 30 */	addi r3, r3, lbl_80491830@l
/* 801DC924 001D8584  48 09 46 5C */	b OSSignalSemaphore

.global func_801DC928
func_801DC928:
/* 801DC928 001D8588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC92C 001D858C  7C 08 02 A6 */	mflr r0
/* 801DC930 001D8590  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC934 001D8594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DC938 001D8598  48 09 1E 25 */	bl OSDisableInterrupts
/* 801DC93C 001D859C  7C 7F 1B 78 */	mr r31, r3
/* 801DC940 001D85A0  48 09 1E 45 */	bl OSRestoreInterrupts
/* 801DC944 001D85A4  2C 1F 00 00 */	cmpwi r31, 0
/* 801DC948 001D85A8  40 82 00 0C */	bne lbl_801DC954
/* 801DC94C 001D85AC  38 60 00 01 */	li r3, 1
/* 801DC950 001D85B0  48 00 00 68 */	b lbl_801DC9B8
lbl_801DC954:
/* 801DC954 001D85B4  3C 60 80 49 */	lis r3, lbl_80491830@ha
/* 801DC958 001D85B8  38 80 00 00 */	li r4, 0
/* 801DC95C 001D85BC  38 63 18 30 */	addi r3, r3, lbl_80491830@l
/* 801DC960 001D85C0  48 09 45 09 */	bl OSInitSemaphore
/* 801DC964 001D85C4  38 00 FF FF */	li r0, -1
/* 801DC968 001D85C8  3C 60 80 49 */	lis r3, lbl_80491840@ha
/* 801DC96C 001D85CC  3C 80 80 1E */	lis r4, lbl_801DC918@ha
/* 801DC970 001D85D0  90 0D 84 34 */	stw r0, lbl_8063D6F4-_SDA_BASE_(r13)
/* 801DC974 001D85D4  38 63 18 40 */	addi r3, r3, lbl_80491840@l
/* 801DC978 001D85D8  38 84 C9 18 */	addi r4, r4, lbl_801DC918@l
/* 801DC97C 001D85DC  48 0A FB 4D */	bl DVDCheckDiskAsync
/* 801DC980 001D85E0  2C 03 00 00 */	cmpwi r3, 0
/* 801DC984 001D85E4  40 82 00 0C */	bne lbl_801DC990
/* 801DC988 001D85E8  38 00 00 00 */	li r0, 0
/* 801DC98C 001D85EC  90 0D 84 34 */	stw r0, lbl_8063D6F4-_SDA_BASE_(r13)
lbl_801DC990:
/* 801DC990 001D85F0  80 0D 84 34 */	lwz r0, lbl_8063D6F4-_SDA_BASE_(r13)
/* 801DC994 001D85F4  2C 00 00 00 */	cmpwi r0, 0
/* 801DC998 001D85F8  40 80 00 10 */	bge lbl_801DC9A8
/* 801DC99C 001D85FC  3C 60 80 49 */	lis r3, lbl_80491830@ha
/* 801DC9A0 001D8600  38 63 18 30 */	addi r3, r3, lbl_80491830@l
/* 801DC9A4 001D8604  48 09 45 1D */	bl OSWaitSemaphore
lbl_801DC9A8:
/* 801DC9A8 001D8608  80 6D 84 34 */	lwz r3, lbl_8063D6F4-_SDA_BASE_(r13)
/* 801DC9AC 001D860C  7C 03 00 D0 */	neg r0, r3
/* 801DC9B0 001D8610  7C 00 1B 78 */	or r0, r0, r3
/* 801DC9B4 001D8614  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_801DC9B8:
/* 801DC9B8 001D8618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC9BC 001D861C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DC9C0 001D8620  7C 08 03 A6 */	mtlr r0
/* 801DC9C4 001D8624  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC9C8 001D8628  4E 80 00 20 */	blr

.global func_801DC9CC
func_801DC9CC:
/* 801DC9CC 001D862C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC9D0 001D8630  7C 08 02 A6 */	mflr r0
/* 801DC9D4 001D8634  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC9D8 001D8638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DC9DC 001D863C  4B FF FE 01 */	bl func_801DC7DC
/* 801DC9E0 001D8640  80 0D A0 68 */	lwz r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DC9E4 001D8644  7C 7F 1B 78 */	mr r31, r3
/* 801DC9E8 001D8648  28 00 00 0A */	cmplwi r0, 0xa
/* 801DC9EC 001D864C  41 81 01 C0 */	bgt lbl_801DCBAC
/* 801DC9F0 001D8650  3C 80 80 42 */	lis r4, lbl_8042330C@ha
/* 801DC9F4 001D8654  54 00 10 3A */	slwi r0, r0, 2
/* 801DC9F8 001D8658  38 84 33 0C */	addi r4, r4, lbl_8042330C@l
/* 801DC9FC 001D865C  7C 84 00 2E */	lwzx r4, r4, r0
/* 801DCA00 001D8660  7C 89 03 A6 */	mtctr r4
/* 801DCA04 001D8664  4E 80 04 20 */	bctr
/* 801DCA08 001D8668  4B FF FE 81 */	bl func_801DC888
/* 801DCA0C 001D866C  48 00 01 A0 */	b lbl_801DCBAC
/* 801DCA10 001D8670  38 60 00 01 */	li r3, 1
/* 801DCA14 001D8674  4B FF FE D5 */	bl func_801DC8E8
/* 801DCA18 001D8678  38 00 00 02 */	li r0, 2
/* 801DCA1C 001D867C  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCA20 001D8680  48 00 01 8C */	b lbl_801DCBAC
/* 801DCA24 001D8684  2C 03 00 0B */	cmpwi r3, 0xb
/* 801DCA28 001D8688  40 82 00 1C */	bne lbl_801DCA44
/* 801DCA2C 001D868C  4B FF FE D5 */	bl func_801DC900
/* 801DCA30 001D8690  38 60 00 04 */	li r3, 4
/* 801DCA34 001D8694  4B FF FE B5 */	bl func_801DC8E8
/* 801DCA38 001D8698  38 00 00 08 */	li r0, 8
/* 801DCA3C 001D869C  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCA40 001D86A0  48 00 01 6C */	b lbl_801DCBAC
lbl_801DCA44:
/* 801DCA44 001D86A4  2C 03 00 05 */	cmpwi r3, 5
/* 801DCA48 001D86A8  41 82 01 64 */	beq lbl_801DCBAC
/* 801DCA4C 001D86AC  4B FF FE DD */	bl func_801DC928
/* 801DCA50 001D86B0  2C 03 00 00 */	cmpwi r3, 0
/* 801DCA54 001D86B4  41 82 01 58 */	beq lbl_801DCBAC
/* 801DCA58 001D86B8  4B FF FE A9 */	bl func_801DC900
/* 801DCA5C 001D86BC  38 00 00 00 */	li r0, 0
/* 801DCA60 001D86C0  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCA64 001D86C4  48 00 01 48 */	b lbl_801DCBAC
/* 801DCA68 001D86C8  38 60 00 02 */	li r3, 2
/* 801DCA6C 001D86CC  4B FF FE 7D */	bl func_801DC8E8
/* 801DCA70 001D86D0  38 00 00 04 */	li r0, 4
/* 801DCA74 001D86D4  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCA78 001D86D8  48 00 01 34 */	b lbl_801DCBAC
/* 801DCA7C 001D86DC  2C 03 00 0B */	cmpwi r3, 0xb
/* 801DCA80 001D86E0  40 82 00 1C */	bne lbl_801DCA9C
/* 801DCA84 001D86E4  4B FF FE 7D */	bl func_801DC900
/* 801DCA88 001D86E8  38 60 00 04 */	li r3, 4
/* 801DCA8C 001D86EC  4B FF FE 5D */	bl func_801DC8E8
/* 801DCA90 001D86F0  38 00 00 08 */	li r0, 8
/* 801DCA94 001D86F4  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCA98 001D86F8  48 00 01 14 */	b lbl_801DCBAC
lbl_801DCA9C:
/* 801DCA9C 001D86FC  2C 03 00 04 */	cmpwi r3, 4
/* 801DCAA0 001D8700  41 82 01 0C */	beq lbl_801DCBAC
/* 801DCAA4 001D8704  4B FF FE 85 */	bl func_801DC928
/* 801DCAA8 001D8708  2C 03 00 00 */	cmpwi r3, 0
/* 801DCAAC 001D870C  41 82 01 00 */	beq lbl_801DCBAC
/* 801DCAB0 001D8710  4B FF FE 51 */	bl func_801DC900
/* 801DCAB4 001D8714  38 00 00 00 */	li r0, 0
/* 801DCAB8 001D8718  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCABC 001D871C  48 00 00 F0 */	b lbl_801DCBAC
/* 801DCAC0 001D8720  38 60 00 03 */	li r3, 3
/* 801DCAC4 001D8724  4B FF FE 25 */	bl func_801DC8E8
/* 801DCAC8 001D8728  38 00 00 06 */	li r0, 6
/* 801DCACC 001D872C  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCAD0 001D8730  48 00 00 DC */	b lbl_801DCBAC
/* 801DCAD4 001D8734  2C 03 00 0B */	cmpwi r3, 0xb
/* 801DCAD8 001D8738  40 82 00 1C */	bne lbl_801DCAF4
/* 801DCADC 001D873C  4B FF FE 25 */	bl func_801DC900
/* 801DCAE0 001D8740  38 60 00 04 */	li r3, 4
/* 801DCAE4 001D8744  4B FF FE 05 */	bl func_801DC8E8
/* 801DCAE8 001D8748  38 00 00 08 */	li r0, 8
/* 801DCAEC 001D874C  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCAF0 001D8750  48 00 00 BC */	b lbl_801DCBAC
lbl_801DCAF4:
/* 801DCAF4 001D8754  2C 03 00 06 */	cmpwi r3, 6
/* 801DCAF8 001D8758  41 82 00 B4 */	beq lbl_801DCBAC
/* 801DCAFC 001D875C  4B FF FE 2D */	bl func_801DC928
/* 801DCB00 001D8760  2C 03 00 00 */	cmpwi r3, 0
/* 801DCB04 001D8764  41 82 00 A8 */	beq lbl_801DCBAC
/* 801DCB08 001D8768  4B FF FD F9 */	bl func_801DC900
/* 801DCB0C 001D876C  38 00 00 00 */	li r0, 0
/* 801DCB10 001D8770  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCB14 001D8774  48 00 00 98 */	b lbl_801DCBAC
/* 801DCB18 001D8778  38 60 00 04 */	li r3, 4
/* 801DCB1C 001D877C  4B FF FD CD */	bl func_801DC8E8
/* 801DCB20 001D8780  38 00 00 08 */	li r0, 8
/* 801DCB24 001D8784  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCB28 001D8788  48 00 00 84 */	b lbl_801DCBAC
/* 801DCB2C 001D878C  2C 03 00 05 */	cmpwi r3, 5
/* 801DCB30 001D8790  40 82 00 1C */	bne lbl_801DCB4C
/* 801DCB34 001D8794  4B FF FD CD */	bl func_801DC900
/* 801DCB38 001D8798  38 60 00 01 */	li r3, 1
/* 801DCB3C 001D879C  4B FF FD AD */	bl func_801DC8E8
/* 801DCB40 001D87A0  38 00 00 02 */	li r0, 2
/* 801DCB44 001D87A4  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCB48 001D87A8  48 00 00 64 */	b lbl_801DCBAC
lbl_801DCB4C:
/* 801DCB4C 001D87AC  2C 03 00 04 */	cmpwi r3, 4
/* 801DCB50 001D87B0  40 82 00 1C */	bne lbl_801DCB6C
/* 801DCB54 001D87B4  4B FF FD AD */	bl func_801DC900
/* 801DCB58 001D87B8  38 60 00 02 */	li r3, 2
/* 801DCB5C 001D87BC  4B FF FD 8D */	bl func_801DC8E8
/* 801DCB60 001D87C0  38 00 00 04 */	li r0, 4
/* 801DCB64 001D87C4  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCB68 001D87C8  48 00 00 44 */	b lbl_801DCBAC
lbl_801DCB6C:
/* 801DCB6C 001D87CC  2C 03 00 0B */	cmpwi r3, 0xb
/* 801DCB70 001D87D0  41 82 00 10 */	beq lbl_801DCB80
/* 801DCB74 001D87D4  4B FF FD B5 */	bl func_801DC928
/* 801DCB78 001D87D8  2C 03 00 00 */	cmpwi r3, 0
/* 801DCB7C 001D87DC  40 82 00 10 */	bne lbl_801DCB8C
lbl_801DCB80:
/* 801DCB80 001D87E0  38 1F FF FC */	addi r0, r31, -4
/* 801DCB84 001D87E4  28 00 00 01 */	cmplwi r0, 1
/* 801DCB88 001D87E8  41 81 00 24 */	bgt lbl_801DCBAC
lbl_801DCB8C:
/* 801DCB8C 001D87EC  4B FF FD 75 */	bl func_801DC900
/* 801DCB90 001D87F0  38 00 00 00 */	li r0, 0
/* 801DCB94 001D87F4  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCB98 001D87F8  48 00 00 14 */	b lbl_801DCBAC
/* 801DCB9C 001D87FC  38 60 00 05 */	li r3, 5
/* 801DCBA0 001D8800  4B FF FD 49 */	bl func_801DC8E8
/* 801DCBA4 001D8804  38 00 00 0A */	li r0, 0xa
/* 801DCBA8 001D8808  90 0D A0 68 */	stw r0, lbl_8063F328-_SDA_BASE_(r13)
lbl_801DCBAC:
/* 801DCBAC 001D880C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DCBB0 001D8810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DCBB4 001D8814  7C 08 03 A6 */	mtlr r0
/* 801DCBB8 001D8818  38 21 00 10 */	addi r1, r1, 0x10
/* 801DCBBC 001D881C  4E 80 00 20 */	blr

.global func_801DCBC0
func_801DCBC0:
/* 801DCBC0 001D8820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DCBC4 001D8824  7C 08 02 A6 */	mflr r0
/* 801DCBC8 001D8828  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DCBCC 001D882C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DCBD0 001D8830  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DCBD4 001D8834  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DCBD8 001D8838  7C 7D 1B 78 */	mr r29, r3
/* 801DCBDC 001D883C  93 81 00 10 */	stw r28, 0x10(r1)
/* 801DCBE0 001D8840  7C 9C 23 78 */	mr r28, r4
/* 801DCBE4 001D8844  4B FF F7 9D */	bl func_801DC380
/* 801DCBE8 001D8848  2C 03 00 00 */	cmpwi r3, 0
/* 801DCBEC 001D884C  40 82 00 0C */	bne lbl_801DCBF8
/* 801DCBF0 001D8850  38 60 00 00 */	li r3, 0
/* 801DCBF4 001D8854  48 00 00 98 */	b lbl_801DCC8C
lbl_801DCBF8:
/* 801DCBF8 001D8858  7F A3 EB 78 */	mr r3, r29
/* 801DCBFC 001D885C  4B FF F6 D5 */	bl func_801DC2D0
/* 801DCC00 001D8860  2C 03 00 00 */	cmpwi r3, 0
/* 801DCC04 001D8864  7C 7F 1B 78 */	mr r31, r3
/* 801DCC08 001D8868  40 82 00 0C */	bne lbl_801DCC14
/* 801DCC0C 001D886C  38 60 00 00 */	li r3, 0
/* 801DCC10 001D8870  48 00 00 7C */	b lbl_801DCC8C
lbl_801DCC14:
/* 801DCC14 001D8874  4B FF FB 4D */	bl func_801DC760
/* 801DCC18 001D8878  38 03 00 1F */	addi r0, r3, 0x1f
/* 801DCC1C 001D887C  54 1E 00 35 */	rlwinm. r30, r0, 0, 0, 0x1a
/* 801DCC20 001D8880  40 82 00 0C */	bne lbl_801DCC2C
/* 801DCC24 001D8884  38 60 00 00 */	li r3, 0
/* 801DCC28 001D8888  48 00 00 64 */	b lbl_801DCC8C
lbl_801DCC2C:
/* 801DCC2C 001D888C  7F C3 F3 78 */	mr r3, r30
/* 801DCC30 001D8890  4B FF E1 35 */	bl func_801DAD64
/* 801DCC34 001D8894  2C 03 00 00 */	cmpwi r3, 0
/* 801DCC38 001D8898  7C 7D 1B 78 */	mr r29, r3
/* 801DCC3C 001D889C  40 82 00 0C */	bne lbl_801DCC48
/* 801DCC40 001D88A0  38 60 00 00 */	li r3, 0
/* 801DCC44 001D88A4  48 00 00 48 */	b lbl_801DCC8C
lbl_801DCC48:
/* 801DCC48 001D88A8  7F E3 FB 78 */	mr r3, r31
/* 801DCC4C 001D88AC  7F A4 EB 78 */	mr r4, r29
/* 801DCC50 001D88B0  7F C5 F3 78 */	mr r5, r30
/* 801DCC54 001D88B4  38 C0 00 00 */	li r6, 0
/* 801DCC58 001D88B8  4B FF F7 A5 */	bl func_801DC3FC
/* 801DCC5C 001D88BC  7C 03 F0 40 */	cmplw r3, r30
/* 801DCC60 001D88C0  41 82 00 14 */	beq lbl_801DCC74
/* 801DCC64 001D88C4  7F A3 EB 78 */	mr r3, r29
/* 801DCC68 001D88C8  4B FF E2 3D */	bl func_801DAEA4
/* 801DCC6C 001D88CC  38 60 00 00 */	li r3, 0
/* 801DCC70 001D88D0  48 00 00 1C */	b lbl_801DCC8C
lbl_801DCC74:
/* 801DCC74 001D88D4  7F E3 FB 78 */	mr r3, r31
/* 801DCC78 001D88D8  4B FF FA 4D */	bl func_801DC6C4
/* 801DCC7C 001D88DC  2C 1C 00 00 */	cmpwi r28, 0
/* 801DCC80 001D88E0  41 82 00 08 */	beq lbl_801DCC88
/* 801DCC84 001D88E4  93 DC 00 00 */	stw r30, 0(r28)
lbl_801DCC88:
/* 801DCC88 001D88E8  7F A3 EB 78 */	mr r3, r29
lbl_801DCC8C:
/* 801DCC8C 001D88EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DCC90 001D88F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DCC94 001D88F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DCC98 001D88F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801DCC9C 001D88FC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801DCCA0 001D8900  7C 08 03 A6 */	mtlr r0
/* 801DCCA4 001D8904  38 21 00 20 */	addi r1, r1, 0x20
/* 801DCCA8 001D8908  4E 80 00 20 */	blr

.global func_801DCCAC
func_801DCCAC:
/* 801DCCAC 001D890C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DCCB0 001D8910  7C 08 02 A6 */	mflr r0
/* 801DCCB4 001D8914  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DCCB8 001D8918  39 61 00 20 */	addi r11, r1, 0x20
/* 801DCCBC 001D891C  4B FE A4 6D */	bl _savegpr_27
/* 801DCCC0 001D8920  7C 7D 1B 78 */	mr r29, r3
/* 801DCCC4 001D8924  7C 9B 23 78 */	mr r27, r4
/* 801DCCC8 001D8928  7C BC 2B 78 */	mr r28, r5
/* 801DCCCC 001D892C  4B FF F6 B5 */	bl func_801DC380
/* 801DCCD0 001D8930  2C 03 00 00 */	cmpwi r3, 0
/* 801DCCD4 001D8934  40 82 00 0C */	bne lbl_801DCCE0
/* 801DCCD8 001D8938  38 60 00 00 */	li r3, 0
/* 801DCCDC 001D893C  48 00 00 A0 */	b lbl_801DCD7C
lbl_801DCCE0:
/* 801DCCE0 001D8940  7F A3 EB 78 */	mr r3, r29
/* 801DCCE4 001D8944  4B FF F5 ED */	bl func_801DC2D0
/* 801DCCE8 001D8948  2C 03 00 00 */	cmpwi r3, 0
/* 801DCCEC 001D894C  7C 7F 1B 78 */	mr r31, r3
/* 801DCCF0 001D8950  40 82 00 0C */	bne lbl_801DCCFC
/* 801DCCF4 001D8954  38 60 00 00 */	li r3, 0
/* 801DCCF8 001D8958  48 00 00 84 */	b lbl_801DCD7C
lbl_801DCCFC:
/* 801DCCFC 001D895C  4B FF FA 65 */	bl func_801DC760
/* 801DCD00 001D8960  38 03 00 1F */	addi r0, r3, 0x1f
/* 801DCD04 001D8964  54 1E 00 35 */	rlwinm. r30, r0, 0, 0, 0x1a
/* 801DCD08 001D8968  40 82 00 0C */	bne lbl_801DCD14
/* 801DCD0C 001D896C  38 60 00 00 */	li r3, 0
/* 801DCD10 001D8970  48 00 00 6C */	b lbl_801DCD7C
lbl_801DCD14:
/* 801DCD14 001D8974  7F 63 DB 78 */	mr r3, r27
/* 801DCD18 001D8978  7F C4 F3 78 */	mr r4, r30
/* 801DCD1C 001D897C  4B FF DF 79 */	bl func_801DAC94
/* 801DCD20 001D8980  2C 03 00 00 */	cmpwi r3, 0
/* 801DCD24 001D8984  7C 7D 1B 78 */	mr r29, r3
/* 801DCD28 001D8988  40 82 00 0C */	bne lbl_801DCD34
/* 801DCD2C 001D898C  38 60 00 00 */	li r3, 0
/* 801DCD30 001D8990  48 00 00 4C */	b lbl_801DCD7C
lbl_801DCD34:
/* 801DCD34 001D8994  7F E3 FB 78 */	mr r3, r31
/* 801DCD38 001D8998  7F A4 EB 78 */	mr r4, r29
/* 801DCD3C 001D899C  7F C5 F3 78 */	mr r5, r30
/* 801DCD40 001D89A0  38 C0 00 00 */	li r6, 0
/* 801DCD44 001D89A4  4B FF F6 B9 */	bl func_801DC3FC
/* 801DCD48 001D89A8  7C 03 F0 40 */	cmplw r3, r30
/* 801DCD4C 001D89AC  41 82 00 18 */	beq lbl_801DCD64
/* 801DCD50 001D89B0  7F 63 DB 78 */	mr r3, r27
/* 801DCD54 001D89B4  7F A4 EB 78 */	mr r4, r29
/* 801DCD58 001D89B8  4B FF DF F1 */	bl func_801DAD48
/* 801DCD5C 001D89BC  38 60 00 00 */	li r3, 0
/* 801DCD60 001D89C0  48 00 00 1C */	b lbl_801DCD7C
lbl_801DCD64:
/* 801DCD64 001D89C4  7F E3 FB 78 */	mr r3, r31
/* 801DCD68 001D89C8  4B FF F9 5D */	bl func_801DC6C4
/* 801DCD6C 001D89CC  2C 1C 00 00 */	cmpwi r28, 0
/* 801DCD70 001D89D0  41 82 00 08 */	beq lbl_801DCD78
/* 801DCD74 001D89D4  93 DC 00 00 */	stw r30, 0(r28)
lbl_801DCD78:
/* 801DCD78 001D89D8  7F A3 EB 78 */	mr r3, r29
lbl_801DCD7C:
/* 801DCD7C 001D89DC  39 61 00 20 */	addi r11, r1, 0x20
/* 801DCD80 001D89E0  4B FE A3 F5 */	bl _restgpr_27
/* 801DCD84 001D89E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DCD88 001D89E8  7C 08 03 A6 */	mtlr r0
/* 801DCD8C 001D89EC  38 21 00 20 */	addi r1, r1, 0x20
/* 801DCD90 001D89F0  4E 80 00 20 */	blr

.global func_801DCD94
func_801DCD94:
/* 801DCD94 001D89F4  80 0D A0 78 */	lwz r0, lbl_8063F338-_SDA_BASE_(r13)
/* 801DCD98 001D89F8  7C 64 1B 78 */	mr r4, r3
/* 801DCD9C 001D89FC  2C 00 00 00 */	cmpwi r0, 0
/* 801DCDA0 001D8A00  41 82 00 10 */	beq lbl_801DCDB0
/* 801DCDA4 001D8A04  7C 03 03 78 */	mr r3, r0
/* 801DCDA8 001D8A08  38 A0 00 00 */	li r5, 0
/* 801DCDAC 001D8A0C  48 00 04 E8 */	b lbl_801DD294
lbl_801DCDB0:
/* 801DCDB0 001D8A10  38 60 00 00 */	li r3, 0
/* 801DCDB4 001D8A14  4E 80 00 20 */	blr

.global func_801DCDB8
func_801DCDB8:
/* 801DCDB8 001D8A18  90 6D A0 70 */	stw r3, lbl_8063F330-_SDA_BASE_(r13)
/* 801DCDBC 001D8A1C  90 8D A0 74 */	stw r4, lbl_8063F334-_SDA_BASE_(r13)
/* 801DCDC0 001D8A20  4E 80 00 20 */	blr

.global func_801DCDC4
func_801DCDC4:
/* 801DCDC4 001D8A24  80 0D A0 68 */	lwz r0, lbl_8063F328-_SDA_BASE_(r13)
/* 801DCDC8 001D8A28  2C 00 00 05 */	cmpwi r0, 5
/* 801DCDCC 001D8A2C  40 80 00 1C */	bge lbl_801DCDE8
/* 801DCDD0 001D8A30  2C 00 00 00 */	cmpwi r0, 0
/* 801DCDD4 001D8A34  41 82 00 5C */	beq lbl_801DCE30
/* 801DCDD8 001D8A38  41 80 00 58 */	blt lbl_801DCE30
/* 801DCDDC 001D8A3C  2C 00 00 03 */	cmpwi r0, 3
/* 801DCDE0 001D8A40  40 80 00 30 */	bge lbl_801DCE10
/* 801DCDE4 001D8A44  48 00 00 24 */	b lbl_801DCE08
lbl_801DCDE8:
/* 801DCDE8 001D8A48  2C 00 00 09 */	cmpwi r0, 9
/* 801DCDEC 001D8A4C  40 80 00 10 */	bge lbl_801DCDFC
/* 801DCDF0 001D8A50  2C 00 00 07 */	cmpwi r0, 7
/* 801DCDF4 001D8A54  40 80 00 2C */	bge lbl_801DCE20
/* 801DCDF8 001D8A58  48 00 00 20 */	b lbl_801DCE18
lbl_801DCDFC:
/* 801DCDFC 001D8A5C  2C 00 00 0B */	cmpwi r0, 0xb
/* 801DCE00 001D8A60  40 80 00 30 */	bge lbl_801DCE30
/* 801DCE04 001D8A64  48 00 00 24 */	b lbl_801DCE28
lbl_801DCE08:
/* 801DCE08 001D8A68  38 60 00 01 */	li r3, 1
/* 801DCE0C 001D8A6C  4E 80 00 20 */	blr
lbl_801DCE10:
/* 801DCE10 001D8A70  38 60 00 02 */	li r3, 2
/* 801DCE14 001D8A74  4E 80 00 20 */	blr
lbl_801DCE18:
/* 801DCE18 001D8A78  38 60 00 03 */	li r3, 3
/* 801DCE1C 001D8A7C  4E 80 00 20 */	blr
lbl_801DCE20:
/* 801DCE20 001D8A80  38 60 00 04 */	li r3, 4
/* 801DCE24 001D8A84  4E 80 00 20 */	blr
lbl_801DCE28:
/* 801DCE28 001D8A88  38 60 00 05 */	li r3, 5
/* 801DCE2C 001D8A8C  4E 80 00 20 */	blr
lbl_801DCE30:
/* 801DCE30 001D8A90  38 60 00 00 */	li r3, 0
/* 801DCE34 001D8A94  4E 80 00 20 */	blr

.global func_801DCE38
func_801DCE38:
/* 801DCE38 001D8A98  38 00 00 01 */	li r0, 1
/* 801DCE3C 001D8A9C  98 0D A0 5F */	stb r0, lbl_8063F31F-_SDA_BASE_(r13)
/* 801DCE40 001D8AA0  4E 80 00 20 */	blr

.global func_801DCE44
func_801DCE44:
/* 801DCE44 001D8AA4  88 6D A0 5F */	lbz r3, lbl_8063F31F-_SDA_BASE_(r13)
/* 801DCE48 001D8AA8  4E 80 00 20 */	blr

.global func_801DCE4C
func_801DCE4C:
/* 801DCE4C 001D8AAC  38 A0 00 01 */	li r5, 1
/* 801DCE50 001D8AB0  38 6D A0 58 */	addi r3, r13, lbl_8063F318-_SDA_BASE_
/* 801DCE54 001D8AB4  38 80 00 04 */	li r4, 4
/* 801DCE58 001D8AB8  38 00 00 00 */	li r0, 0
/* 801DCE5C 001D8ABC  98 AD A0 58 */	stb r5, lbl_8063F318-_SDA_BASE_(r13)
/* 801DCE60 001D8AC0  B0 83 00 02 */	sth r4, 2(r3)
/* 801DCE64 001D8AC4  98 03 00 04 */	stb r0, 4(r3)
/* 801DCE68 001D8AC8  4E 80 00 20 */	blr
