.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global ReadNextCharUTF8__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharUTF8__Q34nw4r2ut14CharStrmReaderFv:
/* 80362D18 0035E978  80 E3 00 00 */	lwz r7, 0(r3)
/* 80362D1C 0035E97C  88 C7 00 00 */	lbz r6, 0(r7)
/* 80362D20 0035E980  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 80362D24 0035E984  40 82 00 14 */	bne lbl_80362D38
/* 80362D28 0035E988  80 83 00 00 */	lwz r4, 0(r3)
/* 80362D2C 0035E98C  38 04 00 01 */	addi r0, r4, 1
/* 80362D30 0035E990  90 03 00 00 */	stw r0, 0(r3)
/* 80362D34 0035E994  48 00 00 54 */	b lbl_80362D88
lbl_80362D38:
/* 80362D38 0035E998  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 80362D3C 0035E99C  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 80362D40 0035E9A0  40 82 00 24 */	bne lbl_80362D64
/* 80362D44 0035E9A4  80 83 00 00 */	lwz r4, 0(r3)
/* 80362D48 0035E9A8  88 A7 00 01 */	lbz r5, 1(r7)
/* 80362D4C 0035E9AC  38 04 00 02 */	addi r0, r4, 2
/* 80362D50 0035E9B0  54 A4 06 BE */	clrlwi r4, r5, 0x1a
/* 80362D54 0035E9B4  90 03 00 00 */	stw r0, 0(r3)
/* 80362D58 0035E9B8  50 C4 35 72 */	rlwimi r4, r6, 6, 0x15, 0x19
/* 80362D5C 0035E9BC  7C 86 23 78 */	mr r6, r4
/* 80362D60 0035E9C0  48 00 00 28 */	b lbl_80362D88
lbl_80362D64:
/* 80362D64 0035E9C4  80 83 00 00 */	lwz r4, 0(r3)
/* 80362D68 0035E9C8  54 C5 63 E6 */	rlwinm r5, r6, 0xc, 0xf, 0x13
/* 80362D6C 0035E9CC  88 C7 00 01 */	lbz r6, 1(r7)
/* 80362D70 0035E9D0  88 E7 00 02 */	lbz r7, 2(r7)
/* 80362D74 0035E9D4  38 04 00 03 */	addi r0, r4, 3
/* 80362D78 0035E9D8  50 C5 35 32 */	rlwimi r5, r6, 6, 0x14, 0x19
/* 80362D7C 0035E9DC  50 E5 06 BE */	rlwimi r5, r7, 0, 0x1a, 0x1f
/* 80362D80 0035E9E0  90 03 00 00 */	stw r0, 0(r3)
/* 80362D84 0035E9E4  54 A6 04 3E */	clrlwi r6, r5, 0x10
lbl_80362D88:
/* 80362D88 0035E9E8  7C C3 33 78 */	mr r3, r6
/* 80362D8C 0035E9EC  4E 80 00 20 */	blr

.global ReadNextCharUTF16__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharUTF16__Q34nw4r2ut14CharStrmReaderFv:
/* 80362D90 0035E9F0  7C 65 1B 78 */	mr r5, r3
/* 80362D94 0035E9F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80362D98 0035E9F8  80 85 00 00 */	lwz r4, 0(r5)
/* 80362D9C 0035E9FC  A0 63 00 00 */	lhz r3, 0(r3)
/* 80362DA0 0035EA00  38 04 00 02 */	addi r0, r4, 2
/* 80362DA4 0035EA04  90 05 00 00 */	stw r0, 0(r5)
/* 80362DA8 0035EA08  4E 80 00 20 */	blr

.global ReadNextCharCP1252__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharCP1252__Q34nw4r2ut14CharStrmReaderFv:
/* 80362DAC 0035EA0C  7C 65 1B 78 */	mr r5, r3
/* 80362DB0 0035EA10  80 63 00 00 */	lwz r3, 0(r3)
/* 80362DB4 0035EA14  80 85 00 00 */	lwz r4, 0(r5)
/* 80362DB8 0035EA18  88 63 00 00 */	lbz r3, 0(r3)
/* 80362DBC 0035EA1C  38 04 00 01 */	addi r0, r4, 1
/* 80362DC0 0035EA20  90 05 00 00 */	stw r0, 0(r5)
/* 80362DC4 0035EA24  4E 80 00 20 */	blr

.global ReadNextCharSJIS__Q34nw4r2ut14CharStrmReaderFv
ReadNextCharSJIS__Q34nw4r2ut14CharStrmReaderFv:
/* 80362DC8 0035EA28  80 C3 00 00 */	lwz r6, 0(r3)
/* 80362DCC 0035EA2C  38 00 00 00 */	li r0, 0
/* 80362DD0 0035EA30  88 A6 00 00 */	lbz r5, 0(r6)
/* 80362DD4 0035EA34  28 05 00 81 */	cmplwi r5, 0x81
/* 80362DD8 0035EA38  41 80 00 0C */	blt lbl_80362DE4
/* 80362DDC 0035EA3C  28 05 00 A0 */	cmplwi r5, 0xa0
/* 80362DE0 0035EA40  41 80 00 0C */	blt lbl_80362DEC
lbl_80362DE4:
/* 80362DE4 0035EA44  28 05 00 E0 */	cmplwi r5, 0xe0
/* 80362DE8 0035EA48  41 80 00 08 */	blt lbl_80362DF0
lbl_80362DEC:
/* 80362DEC 0035EA4C  38 00 00 01 */	li r0, 1
lbl_80362DF0:
/* 80362DF0 0035EA50  2C 00 00 00 */	cmpwi r0, 0
/* 80362DF4 0035EA54  41 82 00 1C */	beq lbl_80362E10
/* 80362DF8 0035EA58  80 83 00 00 */	lwz r4, 0(r3)
/* 80362DFC 0035EA5C  88 C6 00 01 */	lbz r6, 1(r6)
/* 80362E00 0035EA60  50 A6 44 2E */	rlwimi r6, r5, 8, 0x10, 0x17
/* 80362E04 0035EA64  38 04 00 02 */	addi r0, r4, 2
/* 80362E08 0035EA68  90 03 00 00 */	stw r0, 0(r3)
/* 80362E0C 0035EA6C  48 00 00 14 */	b lbl_80362E20
lbl_80362E10:
/* 80362E10 0035EA70  80 83 00 00 */	lwz r4, 0(r3)
/* 80362E14 0035EA74  7C A6 2B 78 */	mr r6, r5
/* 80362E18 0035EA78  38 04 00 01 */	addi r0, r4, 1
/* 80362E1C 0035EA7C  90 03 00 00 */	stw r0, 0(r3)
lbl_80362E20:
/* 80362E20 0035EA80  7C C3 33 78 */	mr r3, r6
/* 80362E24 0035EA84  4E 80 00 20 */	blr