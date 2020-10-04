.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global MEMInitList
MEMInitList:
/* 8029777C 002933DC  38 00 00 00 */	li r0, 0
/* 80297780 002933E0  B0 83 00 0A */	sth r4, 0xa(r3)
/* 80297784 002933E4  90 03 00 00 */	stw r0, 0(r3)
/* 80297788 002933E8  90 03 00 04 */	stw r0, 4(r3)
/* 8029778C 002933EC  B0 03 00 08 */	sth r0, 8(r3)
/* 80297790 002933F0  4E 80 00 20 */	blr

.global MEMAppendListObject
MEMAppendListObject:
/* 80297794 002933F4  80 03 00 00 */	lwz r0, 0(r3)
/* 80297798 002933F8  2C 00 00 00 */	cmpwi r0, 0
/* 8029779C 002933FC  40 82 00 30 */	bne lbl_802977CC
/* 802977A0 00293400  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 802977A4 00293404  38 00 00 00 */	li r0, 0
/* 802977A8 00293408  7C A4 2A 14 */	add r5, r4, r5
/* 802977AC 0029340C  90 05 00 04 */	stw r0, 4(r5)
/* 802977B0 00293410  90 05 00 00 */	stw r0, 0(r5)
/* 802977B4 00293414  A0 A3 00 08 */	lhz r5, 8(r3)
/* 802977B8 00293418  90 83 00 00 */	stw r4, 0(r3)
/* 802977BC 0029341C  38 05 00 01 */	addi r0, r5, 1
/* 802977C0 00293420  90 83 00 04 */	stw r4, 4(r3)
/* 802977C4 00293424  B0 03 00 08 */	sth r0, 8(r3)
/* 802977C8 00293428  4E 80 00 20 */	blr
lbl_802977CC:
/* 802977CC 0029342C  A0 C3 00 0A */	lhz r6, 0xa(r3)
/* 802977D0 00293430  38 00 00 00 */	li r0, 0
/* 802977D4 00293434  80 A3 00 04 */	lwz r5, 4(r3)
/* 802977D8 00293438  7C A6 21 6E */	stwux r5, r6, r4
/* 802977DC 0029343C  90 06 00 04 */	stw r0, 4(r6)
/* 802977E0 00293440  80 A3 00 04 */	lwz r5, 4(r3)
/* 802977E4 00293444  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 802977E8 00293448  7C A5 02 14 */	add r5, r5, r0
/* 802977EC 0029344C  90 85 00 04 */	stw r4, 4(r5)
/* 802977F0 00293450  A0 A3 00 08 */	lhz r5, 8(r3)
/* 802977F4 00293454  90 83 00 04 */	stw r4, 4(r3)
/* 802977F8 00293458  38 05 00 01 */	addi r0, r5, 1
/* 802977FC 0029345C  B0 03 00 08 */	sth r0, 8(r3)
/* 80297800 00293460  4E 80 00 20 */	blr

.global MEMRemoveListObject
MEMRemoveListObject:
/* 80297804 00293464  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 80297808 00293468  7C C4 2A 14 */	add r6, r4, r5
/* 8029780C 0029346C  7C 84 28 2E */	lwzx r4, r4, r5
/* 80297810 00293470  2C 04 00 00 */	cmpwi r4, 0
/* 80297814 00293474  40 82 00 10 */	bne lbl_80297824
/* 80297818 00293478  80 06 00 04 */	lwz r0, 4(r6)
/* 8029781C 0029347C  90 03 00 00 */	stw r0, 0(r3)
/* 80297820 00293480  48 00 00 10 */	b lbl_80297830
lbl_80297824:
/* 80297824 00293484  80 06 00 04 */	lwz r0, 4(r6)
/* 80297828 00293488  7C 84 2A 14 */	add r4, r4, r5
/* 8029782C 0029348C  90 04 00 04 */	stw r0, 4(r4)
lbl_80297830:
/* 80297830 00293490  80 A6 00 04 */	lwz r5, 4(r6)
/* 80297834 00293494  2C 05 00 00 */	cmpwi r5, 0
/* 80297838 00293498  40 82 00 10 */	bne lbl_80297848
/* 8029783C 0029349C  80 06 00 00 */	lwz r0, 0(r6)
/* 80297840 002934A0  90 03 00 04 */	stw r0, 4(r3)
/* 80297844 002934A4  48 00 00 10 */	b lbl_80297854
lbl_80297848:
/* 80297848 002934A8  80 86 00 00 */	lwz r4, 0(r6)
/* 8029784C 002934AC  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80297850 002934B0  7C 85 01 2E */	stwx r4, r5, r0
lbl_80297854:
/* 80297854 002934B4  38 00 00 00 */	li r0, 0
/* 80297858 002934B8  90 06 00 00 */	stw r0, 0(r6)
/* 8029785C 002934BC  90 06 00 04 */	stw r0, 4(r6)
/* 80297860 002934C0  A0 83 00 08 */	lhz r4, 8(r3)
/* 80297864 002934C4  38 04 FF FF */	addi r0, r4, -1
/* 80297868 002934C8  B0 03 00 08 */	sth r0, 8(r3)
/* 8029786C 002934CC  4E 80 00 20 */	blr

.global MEMGetNextListObject
MEMGetNextListObject:
/* 80297870 002934D0  2C 04 00 00 */	cmpwi r4, 0
/* 80297874 002934D4  40 82 00 0C */	bne lbl_80297880
/* 80297878 002934D8  80 63 00 00 */	lwz r3, 0(r3)
/* 8029787C 002934DC  4E 80 00 20 */	blr
lbl_80297880:
/* 80297880 002934E0  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80297884 002934E4  7C 64 02 14 */	add r3, r4, r0
/* 80297888 002934E8  80 63 00 04 */	lwz r3, 4(r3)
/* 8029788C 002934EC  4E 80 00 20 */	blr
