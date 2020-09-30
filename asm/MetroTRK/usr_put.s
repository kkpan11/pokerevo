.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global usr_put_initialize
usr_put_initialize:
/* 801D56F0 001D1350  4E 80 00 20 */	blr

.global usr_puts_serial
usr_puts_serial:
/* 801D56F4 001D1354  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D56F8 001D1358  7C 08 02 A6 */	mflr r0
/* 801D56FC 001D135C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D5700 001D1360  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D5704 001D1364  3B E0 00 00 */	li r31, 0
/* 801D5708 001D1368  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D570C 001D136C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D5710 001D1370  7C 7D 1B 78 */	mr r29, r3
/* 801D5714 001D1374  38 60 00 00 */	li r3, 0
/* 801D5718 001D1378  48 00 00 30 */	b lbl_801D5748
lbl_801D571C:
/* 801D571C 001D137C  48 00 12 75 */	bl GetTRKConnected
/* 801D5720 001D1380  9B C1 00 08 */	stb r30, 8(r1)
/* 801D5724 001D1384  7C 7E 1B 78 */	mr r30, r3
/* 801D5728 001D1388  38 60 00 00 */	li r3, 0
/* 801D572C 001D138C  9B E1 00 09 */	stb r31, 9(r1)
/* 801D5730 001D1390  48 00 12 55 */	bl SetTRKConnected
/* 801D5734 001D1394  38 61 00 08 */	addi r3, r1, 8
/* 801D5738 001D1398  4B E3 23 8D */	bl func_80007AC4
/* 801D573C 001D139C  7F C3 F3 78 */	mr r3, r30
/* 801D5740 001D13A0  48 00 12 45 */	bl SetTRKConnected
/* 801D5744 001D13A4  38 60 00 00 */	li r3, 0
lbl_801D5748:
/* 801D5748 001D13A8  2C 03 00 00 */	cmpwi r3, 0
/* 801D574C 001D13AC  40 82 00 14 */	bne lbl_801D5760
/* 801D5750 001D13B0  88 1D 00 00 */	lbz r0, 0(r29)
/* 801D5754 001D13B4  3B BD 00 01 */	addi r29, r29, 1
/* 801D5758 001D13B8  7C 1E 07 75 */	extsb. r30, r0
/* 801D575C 001D13BC  40 82 FF C0 */	bne lbl_801D571C
lbl_801D5760:
/* 801D5760 001D13C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D5764 001D13C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D5768 001D13C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D576C 001D13CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D5770 001D13D0  7C 08 03 A6 */	mtlr r0
/* 801D5774 001D13D4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D5778 001D13D8  4E 80 00 20 */	blr