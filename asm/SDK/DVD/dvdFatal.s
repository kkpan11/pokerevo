.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

__DVDShowFatalMessage:
/* 8028CFDC 00288C3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028CFE0 00288C40  7C 08 02 A6 */	mflr r0
/* 8028CFE4 00288C44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028CFE8 00288C48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028CFEC 00288C4C  3B E0 00 00 */	li r31, 0
/* 8028CFF0 00288C50  88 A2 A2 10 */	lbz r5, lbl_80642810-_SDA2_BASE_(r2)
/* 8028CFF4 00288C54  88 82 A2 11 */	lbz r4, lbl_80642811-_SDA2_BASE_(r2)
/* 8028CFF8 00288C58  88 62 A2 12 */	lbz r3, lbl_80642812-_SDA2_BASE_(r2)
/* 8028CFFC 00288C5C  88 02 A2 13 */	lbz r0, lbl_80642813-_SDA2_BASE_(r2)
/* 8028D000 00288C60  98 A1 00 10 */	stb r5, 0x10(r1)
/* 8028D004 00288C64  98 81 00 11 */	stb r4, 0x11(r1)
/* 8028D008 00288C68  98 61 00 12 */	stb r3, 0x12(r1)
/* 8028D00C 00288C6C  98 01 00 13 */	stb r0, 0x13(r1)
/* 8028D010 00288C70  48 05 F4 39 */	bl func_802EC448
/* 8028D014 00288C74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028D018 00288C78  40 82 00 10 */	bne lbl_8028D028
/* 8028D01C 00288C7C  38 60 00 01 */	li r3, 1
/* 8028D020 00288C80  4B FE 0D 4D */	bl OSSetFontEncode
/* 8028D024 00288C84  48 00 00 0C */	b lbl_8028D030
lbl_8028D028:
/* 8028D028 00288C88  38 60 00 00 */	li r3, 0
/* 8028D02C 00288C8C  4B FE 0D 41 */	bl OSSetFontEncode
lbl_8028D030:
/* 8028D030 00288C90  48 05 F4 19 */	bl func_802EC448
/* 8028D034 00288C94  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8028D038 00288C98  28 00 00 06 */	cmplwi r0, 6
/* 8028D03C 00288C9C  40 81 00 14 */	ble lbl_8028D050
/* 8028D040 00288CA0  3C 60 80 40 */	lis r3, lbl_803FD9B8@ha
/* 8028D044 00288CA4  38 63 D9 B8 */	addi r3, r3, lbl_803FD9B8@l
/* 8028D048 00288CA8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8028D04C 00288CAC  48 00 00 18 */	b lbl_8028D064
lbl_8028D050:
/* 8028D050 00288CB0  48 05 F3 F9 */	bl func_802EC448
/* 8028D054 00288CB4  3C 80 80 40 */	lis r4, lbl_803FD9B8@ha
/* 8028D058 00288CB8  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 8028D05C 00288CBC  38 84 D9 B8 */	addi r4, r4, lbl_803FD9B8@l
/* 8028D060 00288CC0  7C A4 00 2E */	lwzx r5, r4, r0
lbl_8028D064:
/* 8028D064 00288CC4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8028D068 00288CC8  38 61 00 0C */	addi r3, r1, 0xc
/* 8028D06C 00288CCC  93 E1 00 08 */	stw r31, 8(r1)
/* 8028D070 00288CD0  38 81 00 08 */	addi r4, r1, 8
/* 8028D074 00288CD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028D078 00288CD8  4B FE 02 19 */	bl OSFatal
/* 8028D07C 00288CDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028D080 00288CE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028D084 00288CE4  7C 08 03 A6 */	mtlr r0
/* 8028D088 00288CE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8028D08C 00288CEC  4E 80 00 20 */	blr

.global DVDSetAutoFatalMessaging
DVDSetAutoFatalMessaging:
/* 8028D090 00288CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D094 00288CF4  7C 08 02 A6 */	mflr r0
/* 8028D098 00288CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D09C 00288CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028D0A0 00288D00  7C 7F 1B 78 */	mr r31, r3
/* 8028D0A4 00288D04  4B FE 16 B9 */	bl OSDisableInterrupts
/* 8028D0A8 00288D08  80 AD AA A0 */	lwz r5, lbl_8063FD60-_SDA_BASE_(r13)
/* 8028D0AC 00288D0C  2C 1F 00 00 */	cmpwi r31, 0
/* 8028D0B0 00288D10  38 80 00 00 */	li r4, 0
/* 8028D0B4 00288D14  7C 05 00 D0 */	neg r0, r5
/* 8028D0B8 00288D18  7C 00 2B 78 */	or r0, r0, r5
/* 8028D0BC 00288D1C  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 8028D0C0 00288D20  41 82 00 0C */	beq lbl_8028D0CC
/* 8028D0C4 00288D24  3C 80 80 29 */	lis r4, __DVDShowFatalMessage@ha
/* 8028D0C8 00288D28  38 84 CF DC */	addi r4, r4, __DVDShowFatalMessage@l
lbl_8028D0CC:
/* 8028D0CC 00288D2C  90 8D AA A0 */	stw r4, lbl_8063FD60-_SDA_BASE_(r13)
/* 8028D0D0 00288D30  4B FE 16 B5 */	bl OSRestoreInterrupts
/* 8028D0D4 00288D34  7F E3 FB 78 */	mr r3, r31
/* 8028D0D8 00288D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028D0DC 00288D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D0E0 00288D40  7C 08 03 A6 */	mtlr r0
/* 8028D0E4 00288D44  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D0E8 00288D48  4E 80 00 20 */	blr

.global __DVDGetAutoFatalMessaging
__DVDGetAutoFatalMessaging:
/* 8028D0EC 00288D4C  80 6D AA A0 */	lwz r3, lbl_8063FD60-_SDA_BASE_(r13)
/* 8028D0F0 00288D50  7C 03 00 D0 */	neg r0, r3
/* 8028D0F4 00288D54  7C 00 1B 78 */	or r0, r0, r3
/* 8028D0F8 00288D58  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8028D0FC 00288D5C  4E 80 00 20 */	blr

.global __DVDPrintFatalMessage
__DVDPrintFatalMessage:
/* 8028D100 00288D60  81 8D AA A0 */	lwz r12, lbl_8063FD60-_SDA_BASE_(r13)
/* 8028D104 00288D64  2C 0C 00 00 */	cmpwi r12, 0
/* 8028D108 00288D68  4D 82 00 20 */	beqlr
/* 8028D10C 00288D6C  7D 89 03 A6 */	mtctr r12
/* 8028D110 00288D70  4E 80 04 20 */	bctr
/* 8028D114 00288D74  4E 80 00 20 */	blr
