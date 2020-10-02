.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global OSUTF8to32
OSUTF8to32:
/* 80272E6C 0026EACC  88 C3 00 00 */	lbz r6, 0(r3)
/* 80272E70 0026EAD0  2C 06 00 00 */	cmpwi r6, 0
/* 80272E74 0026EAD4  41 82 00 08 */	beq lbl_80272E7C
/* 80272E78 0026EAD8  38 63 00 01 */	addi r3, r3, 1
lbl_80272E7C:
/* 80272E7C 0026EADC  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 80272E80 0026EAE0  40 82 00 0C */	bne lbl_80272E8C
/* 80272E84 0026EAE4  38 E0 00 00 */	li r7, 0
/* 80272E88 0026EAE8  48 00 00 54 */	b lbl_80272EDC
lbl_80272E8C:
/* 80272E8C 0026EAEC  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 80272E90 0026EAF0  28 00 00 C0 */	cmplwi r0, 0xc0
/* 80272E94 0026EAF4  40 82 00 10 */	bne lbl_80272EA4
/* 80272E98 0026EAF8  54 C6 06 FE */	clrlwi r6, r6, 0x1b
/* 80272E9C 0026EAFC  38 E0 00 01 */	li r7, 1
/* 80272EA0 0026EB00  48 00 00 3C */	b lbl_80272EDC
lbl_80272EA4:
/* 80272EA4 0026EB04  54 C0 06 36 */	rlwinm r0, r6, 0, 0x18, 0x1b
/* 80272EA8 0026EB08  28 00 00 E0 */	cmplwi r0, 0xe0
/* 80272EAC 0026EB0C  40 82 00 10 */	bne lbl_80272EBC
/* 80272EB0 0026EB10  54 C6 07 3E */	clrlwi r6, r6, 0x1c
/* 80272EB4 0026EB14  38 E0 00 02 */	li r7, 2
/* 80272EB8 0026EB18  48 00 00 24 */	b lbl_80272EDC
lbl_80272EBC:
/* 80272EBC 0026EB1C  54 C0 06 38 */	rlwinm r0, r6, 0, 0x18, 0x1c
/* 80272EC0 0026EB20  28 00 00 F0 */	cmplwi r0, 0xf0
/* 80272EC4 0026EB24  40 82 00 10 */	bne lbl_80272ED4
/* 80272EC8 0026EB28  54 C6 07 7E */	clrlwi r6, r6, 0x1d
/* 80272ECC 0026EB2C  38 E0 00 03 */	li r7, 3
/* 80272ED0 0026EB30  48 00 00 0C */	b lbl_80272EDC
lbl_80272ED4:
/* 80272ED4 0026EB34  38 60 00 00 */	li r3, 0
/* 80272ED8 0026EB38  4E 80 00 20 */	blr
lbl_80272EDC:
/* 80272EDC 0026EB3C  7C E9 03 A6 */	mtctr r7
/* 80272EE0 0026EB40  28 07 00 00 */	cmplwi r7, 0
/* 80272EE4 0026EB44  40 81 00 30 */	ble lbl_80272F14
lbl_80272EE8:
/* 80272EE8 0026EB48  88 A3 00 00 */	lbz r5, 0(r3)
/* 80272EEC 0026EB4C  54 C6 30 32 */	slwi r6, r6, 6
/* 80272EF0 0026EB50  38 63 00 01 */	addi r3, r3, 1
/* 80272EF4 0026EB54  54 A0 06 32 */	rlwinm r0, r5, 0, 0x18, 0x19
/* 80272EF8 0026EB58  28 00 00 80 */	cmplwi r0, 0x80
/* 80272EFC 0026EB5C  41 82 00 0C */	beq lbl_80272F08
/* 80272F00 0026EB60  38 60 00 00 */	li r3, 0
/* 80272F04 0026EB64  4E 80 00 20 */	blr
lbl_80272F08:
/* 80272F08 0026EB68  54 A0 06 BE */	clrlwi r0, r5, 0x1a
/* 80272F0C 0026EB6C  7C C6 03 78 */	or r6, r6, r0
/* 80272F10 0026EB70  42 00 FF D8 */	bdnz lbl_80272EE8
lbl_80272F14:
/* 80272F14 0026EB74  28 06 00 7F */	cmplwi r6, 0x7f
/* 80272F18 0026EB78  41 81 00 14 */	bgt lbl_80272F2C
/* 80272F1C 0026EB7C  2C 07 00 00 */	cmpwi r7, 0
/* 80272F20 0026EB80  41 82 00 3C */	beq lbl_80272F5C
/* 80272F24 0026EB84  38 60 00 00 */	li r3, 0
/* 80272F28 0026EB88  4E 80 00 20 */	blr
lbl_80272F2C:
/* 80272F2C 0026EB8C  28 06 07 FF */	cmplwi r6, 0x7ff
/* 80272F30 0026EB90  41 81 00 14 */	bgt lbl_80272F44
/* 80272F34 0026EB94  28 07 00 01 */	cmplwi r7, 1
/* 80272F38 0026EB98  41 82 00 24 */	beq lbl_80272F5C
/* 80272F3C 0026EB9C  38 60 00 00 */	li r3, 0
/* 80272F40 0026EBA0  4E 80 00 20 */	blr
lbl_80272F44:
/* 80272F44 0026EBA4  28 06 FF FF */	cmplwi r6, 0xffff
/* 80272F48 0026EBA8  41 81 00 14 */	bgt lbl_80272F5C
/* 80272F4C 0026EBAC  28 07 00 02 */	cmplwi r7, 2
/* 80272F50 0026EBB0  41 82 00 0C */	beq lbl_80272F5C
/* 80272F54 0026EBB4  38 60 00 00 */	li r3, 0
/* 80272F58 0026EBB8  4E 80 00 20 */	blr
lbl_80272F5C:
/* 80272F5C 0026EBBC  28 06 D8 00 */	cmplwi r6, 0xd800
/* 80272F60 0026EBC0  41 80 00 14 */	blt lbl_80272F74
/* 80272F64 0026EBC4  28 06 DF FF */	cmplwi r6, 0xdfff
/* 80272F68 0026EBC8  41 81 00 0C */	bgt lbl_80272F74
/* 80272F6C 0026EBCC  38 60 00 00 */	li r3, 0
/* 80272F70 0026EBD0  4E 80 00 20 */	blr
lbl_80272F74:
/* 80272F74 0026EBD4  90 C4 00 00 */	stw r6, 0(r4)
/* 80272F78 0026EBD8  4E 80 00 20 */	blr

.global OSUTF16to32
OSUTF16to32:
/* 80272F7C 0026EBDC  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80272F80 0026EBE0  2C 05 00 00 */	cmpwi r5, 0
/* 80272F84 0026EBE4  41 82 00 08 */	beq lbl_80272F8C
/* 80272F88 0026EBE8  38 63 00 02 */	addi r3, r3, 2
lbl_80272F8C:
/* 80272F8C 0026EBEC  28 05 D8 00 */	cmplwi r5, 0xd800
/* 80272F90 0026EBF0  41 80 00 0C */	blt lbl_80272F9C
/* 80272F94 0026EBF4  28 05 DF FF */	cmplwi r5, 0xdfff
/* 80272F98 0026EBF8  40 81 00 0C */	ble lbl_80272FA4
lbl_80272F9C:
/* 80272F9C 0026EBFC  7C A6 2B 78 */	mr r6, r5
/* 80272FA0 0026EC00  48 00 00 44 */	b lbl_80272FE4
lbl_80272FA4:
/* 80272FA4 0026EC04  28 05 DB FF */	cmplwi r5, 0xdbff
/* 80272FA8 0026EC08  41 81 00 34 */	bgt lbl_80272FDC
/* 80272FAC 0026EC0C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80272FB0 0026EC10  38 63 00 02 */	addi r3, r3, 2
/* 80272FB4 0026EC14  28 00 DC 00 */	cmplwi r0, 0xdc00
/* 80272FB8 0026EC18  41 80 00 1C */	blt lbl_80272FD4
/* 80272FBC 0026EC1C  28 00 DF FF */	cmplwi r0, 0xdfff
/* 80272FC0 0026EC20  41 81 00 14 */	bgt lbl_80272FD4
/* 80272FC4 0026EC24  54 06 05 BE */	clrlwi r6, r0, 0x16
/* 80272FC8 0026EC28  50 A6 53 2A */	rlwimi r6, r5, 0xa, 0xc, 0x15
/* 80272FCC 0026EC2C  3C C6 00 01 */	addis r6, r6, 1
/* 80272FD0 0026EC30  48 00 00 14 */	b lbl_80272FE4
lbl_80272FD4:
/* 80272FD4 0026EC34  38 60 00 00 */	li r3, 0
/* 80272FD8 0026EC38  4E 80 00 20 */	blr
lbl_80272FDC:
/* 80272FDC 0026EC3C  38 60 00 00 */	li r3, 0
/* 80272FE0 0026EC40  4E 80 00 20 */	blr
lbl_80272FE4:
/* 80272FE4 0026EC44  90 C4 00 00 */	stw r6, 0(r4)
/* 80272FE8 0026EC48  4E 80 00 20 */	blr

.global OSUTF32toANSI
OSUTF32toANSI:
/* 80272FEC 0026EC4C  28 03 00 FF */	cmplwi r3, 0xff
/* 80272FF0 0026EC50  40 81 00 0C */	ble lbl_80272FFC
/* 80272FF4 0026EC54  38 60 00 00 */	li r3, 0
/* 80272FF8 0026EC58  4E 80 00 20 */	blr
lbl_80272FFC:
/* 80272FFC 0026EC5C  28 03 00 80 */	cmplwi r3, 0x80
/* 80273000 0026EC60  41 80 00 0C */	blt lbl_8027300C
/* 80273004 0026EC64  28 03 00 9F */	cmplwi r3, 0x9f
/* 80273008 0026EC68  40 81 00 0C */	ble lbl_80273014
lbl_8027300C:
/* 8027300C 0026EC6C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80273010 0026EC70  4E 80 00 20 */	blr
lbl_80273014:
/* 80273014 0026EC74  28 03 01 52 */	cmplwi r3, 0x152
/* 80273018 0026EC78  41 80 00 44 */	blt lbl_8027305C
/* 8027301C 0026EC7C  28 03 21 22 */	cmplwi r3, 0x2122
/* 80273020 0026EC80  41 81 00 3C */	bgt lbl_8027305C
/* 80273024 0026EC84  3C 80 80 42 */	lis r4, lbl_80427E28@ha
/* 80273028 0026EC88  38 00 00 20 */	li r0, 0x20
/* 8027302C 0026EC8C  38 84 7E 28 */	addi r4, r4, lbl_80427E28@l
/* 80273030 0026EC90  38 A0 00 00 */	li r5, 0
/* 80273034 0026EC94  7C 09 03 A6 */	mtctr r0
lbl_80273038:
/* 80273038 0026EC98  A0 04 00 00 */	lhz r0, 0(r4)
/* 8027303C 0026EC9C  7C 03 00 40 */	cmplw r3, r0
/* 80273040 0026ECA0  40 82 00 10 */	bne lbl_80273050
/* 80273044 0026ECA4  38 05 00 80 */	addi r0, r5, 0x80
/* 80273048 0026ECA8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8027304C 0026ECAC  4E 80 00 20 */	blr
lbl_80273050:
/* 80273050 0026ECB0  38 84 00 02 */	addi r4, r4, 2
/* 80273054 0026ECB4  38 A5 00 01 */	addi r5, r5, 1
/* 80273058 0026ECB8  42 00 FF E0 */	bdnz lbl_80273038
lbl_8027305C:
/* 8027305C 0026ECBC  38 60 00 00 */	li r3, 0
/* 80273060 0026ECC0  4E 80 00 20 */	blr

.global OSUTF32toSJIS
OSUTF32toSJIS:
/* 80273064 0026ECC4  3C 00 00 01 */	lis r0, 1
/* 80273068 0026ECC8  7C 03 00 40 */	cmplw r3, r0
/* 8027306C 0026ECCC  41 80 00 0C */	blt lbl_80273078
/* 80273070 0026ECD0  38 60 00 00 */	li r3, 0
/* 80273074 0026ECD4  4E 80 00 20 */	blr
lbl_80273078:
/* 80273078 0026ECD8  3C 80 80 43 */	lis r4, lbl_80433868@ha
/* 8027307C 0026ECDC  54 60 D5 BA */	rlwinm r0, r3, 0x1a, 0x16, 0x1d
/* 80273080 0026ECE0  38 84 38 68 */	addi r4, r4, lbl_80433868@l
/* 80273084 0026ECE4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80273088 0026ECE8  2C 04 00 00 */	cmpwi r4, 0
/* 8027308C 0026ECEC  41 82 00 10 */	beq lbl_8027309C
/* 80273090 0026ECF0  54 60 0D FC */	rlwinm r0, r3, 1, 0x17, 0x1e
/* 80273094 0026ECF4  7C 64 02 2E */	lhzx r3, r4, r0
/* 80273098 0026ECF8  4E 80 00 20 */	blr
lbl_8027309C:
/* 8027309C 0026ECFC  38 60 00 00 */	li r3, 0
/* 802730A0 0026ED00  4E 80 00 20 */	blr