.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80246CCC
func_80246CCC:
/* 80246CCC 0024292C  80 0D A5 18 */	lwz r0, lbl_8063F7D8-_SDA_BASE_(r13)
/* 80246CD0 00242930  54 03 18 38 */	slwi r3, r0, 3
/* 80246CD4 00242934  4E 80 00 20 */	blr

.global func_80246CD8
func_80246CD8:
/* 80246CD8 00242938  80 0D A5 18 */	lwz r0, lbl_8063F7D8-_SDA_BASE_(r13)
/* 80246CDC 0024293C  54 03 10 3A */	slwi r3, r0, 2
/* 80246CE0 00242940  4E 80 00 20 */	blr

.global func_80246CE4
func_80246CE4:
/* 80246CE4 00242944  80 6D A5 18 */	lwz r3, lbl_8063F7D8-_SDA_BASE_(r13)
/* 80246CE8 00242948  4E 80 00 20 */	blr

.global func_80246CEC
func_80246CEC:
/* 80246CEC 0024294C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80246CF0 00242950  7C 08 02 A6 */	mflr r0
/* 80246CF4 00242954  90 01 00 24 */	stw r0, 0x24(r1)
/* 80246CF8 00242958  39 61 00 20 */	addi r11, r1, 0x20
/* 80246CFC 0024295C  4B F8 04 29 */	bl _savegpr_26
/* 80246D00 00242960  2C 03 00 00 */	cmpwi r3, 0
/* 80246D04 00242964  7C 7A 1B 78 */	mr r26, r3
/* 80246D08 00242968  41 82 00 7C */	beq lbl_80246D84
/* 80246D0C 0024296C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80246D10 00242970  2C 00 00 04 */	cmpwi r0, 4
/* 80246D14 00242974  40 82 00 70 */	bne lbl_80246D84
/* 80246D18 00242978  48 02 7A 45 */	bl OSDisableInterrupts
/* 80246D1C 0024297C  7C 7C 1B 78 */	mr r28, r3
/* 80246D20 00242980  7F 43 D3 78 */	mr r3, r26
/* 80246D24 00242984  4B FF F1 8D */	bl func_80245EB0
/* 80246D28 00242988  2C 03 00 00 */	cmpwi r3, 0
/* 80246D2C 0024298C  7C 7D 1B 78 */	mr r29, r3
/* 80246D30 00242990  41 82 00 4C */	beq lbl_80246D7C
/* 80246D34 00242994  3B 60 00 00 */	li r27, 0
/* 80246D38 00242998  3B E0 00 00 */	li r31, 0
/* 80246D3C 0024299C  48 00 00 34 */	b lbl_80246D70
lbl_80246D40:
/* 80246D40 002429A0  7F 43 D3 78 */	mr r3, r26
/* 80246D44 002429A4  7F 64 DB 78 */	mr r4, r27
/* 80246D48 002429A8  4B FF F1 99 */	bl func_80245EE0
/* 80246D4C 002429AC  2C 03 00 00 */	cmpwi r3, 0
/* 80246D50 002429B0  7C 7E 1B 78 */	mr r30, r3
/* 80246D54 002429B4  41 82 00 18 */	beq lbl_80246D6C
/* 80246D58 002429B8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80246D5C 002429BC  2C 03 00 00 */	cmpwi r3, 0
/* 80246D60 002429C0  41 82 00 0C */	beq lbl_80246D6C
/* 80246D64 002429C4  4B FF E1 0D */	bl func_80244E70
/* 80246D68 002429C8  93 FE 00 2C */	stw r31, 0x2c(r30)
lbl_80246D6C:
/* 80246D6C 002429CC  3B 7B 00 01 */	addi r27, r27, 1
lbl_80246D70:
/* 80246D70 002429D0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80246D74 002429D4  7C 1B 00 40 */	cmplw r27, r0
/* 80246D78 002429D8  41 80 FF C8 */	blt lbl_80246D40
lbl_80246D7C:
/* 80246D7C 002429DC  7F 83 E3 78 */	mr r3, r28
/* 80246D80 002429E0  48 02 7A 05 */	bl OSRestoreInterrupts
lbl_80246D84:
/* 80246D84 002429E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80246D88 002429E8  4B F8 03 E9 */	bl _restgpr_26
/* 80246D8C 002429EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80246D90 002429F0  7C 08 03 A6 */	mtlr r0
/* 80246D94 002429F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80246D98 002429F8  4E 80 00 20 */	blr
/* 80246D9C 002429FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80246DA0 00242A00  7C 08 02 A6 */	mflr r0
/* 80246DA4 00242A04  2C 03 00 00 */	cmpwi r3, 0
/* 80246DA8 00242A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80246DAC 00242A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80246DB0 00242A10  7C 7F 1B 78 */	mr r31, r3
/* 80246DB4 00242A14  40 82 00 0C */	bne lbl_80246DC0
/* 80246DB8 00242A18  41 82 00 44 */	beq lbl_80246DFC
/* 80246DBC 00242A1C  48 00 00 40 */	b lbl_80246DFC
lbl_80246DC0:
/* 80246DC0 00242A20  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80246DC4 00242A24  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 80246DC8 00242A28  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80246DCC 00242A2C  64 00 08 00 */	oris r0, r0, 0x800
/* 80246DD0 00242A30  90 04 00 0C */	stw r0, 0xc(r4)
/* 80246DD4 00242A34  81 83 00 18 */	lwz r12, 0x18(r3)
/* 80246DD8 00242A38  2C 0C 00 00 */	cmpwi r12, 0
/* 80246DDC 00242A3C  41 82 00 18 */	beq lbl_80246DF4
/* 80246DE0 00242A40  80 65 00 10 */	lwz r3, 0x10(r5)
/* 80246DE4 00242A44  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80246DE8 00242A48  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 80246DEC 00242A4C  7D 89 03 A6 */	mtctr r12
/* 80246DF0 00242A50  4E 80 04 21 */	bctrl
lbl_80246DF4:
/* 80246DF4 00242A54  38 00 00 00 */	li r0, 0
/* 80246DF8 00242A58  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80246DFC:
/* 80246DFC 00242A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80246E00 00242A60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80246E04 00242A64  7C 08 03 A6 */	mtlr r0
/* 80246E08 00242A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80246E0C 00242A6C  4E 80 00 20 */	blr

.global func_80246E10
func_80246E10:
/* 80246E10 00242A70  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80246E14 00242A74  7C 08 02 A6 */	mflr r0
/* 80246E18 00242A78  90 01 00 54 */	stw r0, 0x54(r1)
/* 80246E1C 00242A7C  39 61 00 50 */	addi r11, r1, 0x50
/* 80246E20 00242A80  4B F8 02 E1 */	bl _savegpr_17
/* 80246E24 00242A84  7C 73 1B 78 */	mr r19, r3
/* 80246E28 00242A88  7C 91 23 78 */	mr r17, r4
/* 80246E2C 00242A8C  7C B4 2B 78 */	mr r20, r5
/* 80246E30 00242A90  7C D5 33 78 */	mr r21, r6
/* 80246E34 00242A94  7C F6 3B 78 */	mr r22, r7
/* 80246E38 00242A98  7D 17 43 78 */	mr r23, r8
/* 80246E3C 00242A9C  7D 38 4B 78 */	mr r24, r9
/* 80246E40 00242AA0  7D 59 53 78 */	mr r25, r10
/* 80246E44 00242AA4  48 02 79 19 */	bl OSDisableInterrupts
/* 80246E48 00242AA8  2C 11 00 00 */	cmpwi r17, 0
/* 80246E4C 00242AAC  7C 7D 1B 78 */	mr r29, r3
/* 80246E50 00242AB0  40 82 00 18 */	bne lbl_80246E68
/* 80246E54 00242AB4  7E 63 9B 78 */	mr r3, r19
/* 80246E58 00242AB8  38 80 00 01 */	li r4, 1
/* 80246E5C 00242ABC  4B FF F0 85 */	bl func_80245EE0
/* 80246E60 00242AC0  7C 7C 1B 78 */	mr r28, r3
/* 80246E64 00242AC4  48 00 00 20 */	b lbl_80246E84
lbl_80246E68:
/* 80246E68 00242AC8  7E 63 9B 78 */	mr r3, r19
/* 80246E6C 00242ACC  7E 24 8B 78 */	mr r4, r17
/* 80246E70 00242AD0  48 00 0D ED */	bl func_80247C5C
/* 80246E74 00242AD4  7C 64 1B 78 */	mr r4, r3
/* 80246E78 00242AD8  7E 63 9B 78 */	mr r3, r19
/* 80246E7C 00242ADC  4B FF F0 65 */	bl func_80245EE0
/* 80246E80 00242AE0  7C 7C 1B 78 */	mr r28, r3
lbl_80246E84:
/* 80246E84 00242AE4  2C 1C 00 00 */	cmpwi r28, 0
/* 80246E88 00242AE8  41 82 01 48 */	beq lbl_80246FD0
/* 80246E8C 00242AEC  7E BB AB 78 */	mr r27, r21
/* 80246E90 00242AF0  3B 40 00 00 */	li r26, 0
/* 80246E94 00242AF4  4B FF FE 39 */	bl func_80246CCC
/* 80246E98 00242AF8  7C 16 1B 96 */	divwu r0, r22, r3
/* 80246E9C 00242AFC  3A 20 00 00 */	li r17, 0
/* 80246EA0 00242B00  3E 40 80 24 */	lis r18, 0x8024
/* 80246EA4 00242B04  7C 00 19 D6 */	mullw r0, r0, r3
/* 80246EA8 00242B08  7E C0 B0 50 */	subf r22, r0, r22
/* 80246EAC 00242B0C  48 00 00 DC */	b lbl_80246F88
lbl_80246EB0:
/* 80246EB0 00242B10  80 0D A5 18 */	lwz r0, lbl_8063F7D8-_SDA_BASE_(r13)
/* 80246EB4 00242B14  7F 7E DB 78 */	mr r30, r27
/* 80246EB8 00242B18  7C 1B 00 40 */	cmplw r27, r0
/* 80246EBC 00242B1C  41 80 00 08 */	blt lbl_80246EC4
/* 80246EC0 00242B20  7C 1E 03 78 */	mr r30, r0
lbl_80246EC4:
/* 80246EC4 00242B24  7E C3 B3 78 */	mr r3, r22
/* 80246EC8 00242B28  7F 7E D8 50 */	subf r27, r30, r27
/* 80246ECC 00242B2C  48 00 01 39 */	bl func_80247004
/* 80246ED0 00242B30  80 1C 00 4C */	lwz r0, 0x4c(r28)
/* 80246ED4 00242B34  7C 7F 1B 78 */	mr r31, r3
/* 80246ED8 00242B38  7C 00 18 39 */	and. r0, r0, r3
/* 80246EDC 00242B3C  40 82 00 0C */	bne lbl_80246EE8
/* 80246EE0 00242B40  38 60 00 00 */	li r3, 0
/* 80246EE4 00242B44  48 00 01 08 */	b lbl_80246FEC
lbl_80246EE8:
/* 80246EE8 00242B48  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80246EEC 00242B4C  2C 1B 00 00 */	cmpwi r27, 0
/* 80246EF0 00242B50  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80246EF4 00242B54  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80246EF8 00242B58  41 82 00 3C */	beq lbl_80246F34
/* 80246EFC 00242B5C  92 21 00 08 */	stw r17, 8(r1)
/* 80246F00 00242B60  7E 63 9B 78 */	mr r3, r19
/* 80246F04 00242B64  7F 84 E3 78 */	mr r4, r28
/* 80246F08 00242B68  7E 85 A3 78 */	mr r5, r20
/* 80246F0C 00242B6C  7F C6 F3 78 */	mr r6, r30
/* 80246F10 00242B70  7E C7 B3 78 */	mr r7, r22
/* 80246F14 00242B74  39 00 00 00 */	li r8, 0
/* 80246F18 00242B78  39 20 00 00 */	li r9, 0
/* 80246F1C 00242B7C  39 40 00 00 */	li r10, 0
/* 80246F20 00242B80  4B FF EC 5D */	bl func_80245B7C
/* 80246F24 00242B84  2C 03 00 00 */	cmpwi r3, 0
/* 80246F28 00242B88  40 82 00 44 */	bne lbl_80246F6C
/* 80246F2C 00242B8C  38 60 00 00 */	li r3, 0
/* 80246F30 00242B90  48 00 00 BC */	b lbl_80246FEC
lbl_80246F34:
/* 80246F34 00242B94  93 21 00 08 */	stw r25, 8(r1)
/* 80246F38 00242B98  7E 63 9B 78 */	mr r3, r19
/* 80246F3C 00242B9C  7F 84 E3 78 */	mr r4, r28
/* 80246F40 00242BA0  7E 85 A3 78 */	mr r5, r20
/* 80246F44 00242BA4  7F C6 F3 78 */	mr r6, r30
/* 80246F48 00242BA8  7E C7 B3 78 */	mr r7, r22
/* 80246F4C 00242BAC  7E E9 BB 78 */	mr r9, r23
/* 80246F50 00242BB0  7F 0A C3 78 */	mr r10, r24
/* 80246F54 00242BB4  39 12 6D 9C */	addi r8, r18, 0x6d9c
/* 80246F58 00242BB8  4B FF EC 25 */	bl func_80245B7C
/* 80246F5C 00242BBC  2C 03 00 00 */	cmpwi r3, 0
/* 80246F60 00242BC0  40 82 00 0C */	bne lbl_80246F6C
/* 80246F64 00242BC4  38 60 00 00 */	li r3, 0
/* 80246F68 00242BC8  48 00 00 84 */	b lbl_80246FEC
lbl_80246F6C:
/* 80246F6C 00242BCC  7E 94 F2 14 */	add r20, r20, r30
/* 80246F70 00242BD0  7F 5A FB 78 */	or r26, r26, r31
/* 80246F74 00242BD4  7E D6 F2 14 */	add r22, r22, r30
/* 80246F78 00242BD8  4B FF FD 55 */	bl func_80246CCC
/* 80246F7C 00242BDC  7C 16 1B 96 */	divwu r0, r22, r3
/* 80246F80 00242BE0  7C 00 19 D6 */	mullw r0, r0, r3
/* 80246F84 00242BE4  7E C0 B0 50 */	subf r22, r0, r22
lbl_80246F88:
/* 80246F88 00242BE8  2C 1B 00 00 */	cmpwi r27, 0
/* 80246F8C 00242BEC  40 82 FF 24 */	bne lbl_80246EB0
/* 80246F90 00242BF0  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80246F94 00242BF4  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 80246F98 00242BF8  41 82 00 10 */	beq lbl_80246FA8
/* 80246F9C 00242BFC  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 80246FA0 00242C00  90 1C 00 44 */	stw r0, 0x44(r28)
/* 80246FA4 00242C04  48 00 00 1C */	b lbl_80246FC0
lbl_80246FA8:
/* 80246FA8 00242C08  80 1C 00 44 */	lwz r0, 0x44(r28)
/* 80246FAC 00242C0C  7C 15 00 50 */	subf r0, r21, r0
/* 80246FB0 00242C10  90 1C 00 44 */	stw r0, 0x44(r28)
/* 80246FB4 00242C14  80 1C 00 4C */	lwz r0, 0x4c(r28)
/* 80246FB8 00242C18  7C 00 D0 78 */	andc r0, r0, r26
/* 80246FBC 00242C1C  90 1C 00 4C */	stw r0, 0x4c(r28)
lbl_80246FC0:
/* 80246FC0 00242C20  7F A3 EB 78 */	mr r3, r29
/* 80246FC4 00242C24  48 02 77 C1 */	bl OSRestoreInterrupts
/* 80246FC8 00242C28  38 60 00 01 */	li r3, 1
/* 80246FCC 00242C2C  48 00 00 20 */	b lbl_80246FEC
lbl_80246FD0:
/* 80246FD0 00242C30  7F A3 EB 78 */	mr r3, r29
/* 80246FD4 00242C34  48 02 77 B1 */	bl OSRestoreInterrupts
/* 80246FD8 00242C38  7E 83 A3 78 */	mr r3, r20
/* 80246FDC 00242C3C  7E A5 AB 78 */	mr r5, r21
/* 80246FE0 00242C40  38 80 00 00 */	li r4, 0
/* 80246FE4 00242C44  48 00 15 0D */	bl func_802484F0
/* 80246FE8 00242C48  38 60 00 00 */	li r3, 0
lbl_80246FEC:
/* 80246FEC 00242C4C  39 61 00 50 */	addi r11, r1, 0x50
/* 80246FF0 00242C50  4B F8 01 5D */	bl _restgpr_17
/* 80246FF4 00242C54  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80246FF8 00242C58  7C 08 03 A6 */	mtlr r0
/* 80246FFC 00242C5C  38 21 00 50 */	addi r1, r1, 0x50
/* 80247000 00242C60  4E 80 00 20 */	blr

.global func_80247004
func_80247004:
/* 80247004 00242C64  80 0D A5 18 */	lwz r0, lbl_8063F7D8-_SDA_BASE_(r13)
/* 80247008 00242C68  38 80 00 01 */	li r4, 1
/* 8024700C 00242C6C  7C 03 03 96 */	divwu r0, r3, r0
/* 80247010 00242C70  7C 83 00 30 */	slw r3, r4, r0
/* 80247014 00242C74  4E 80 00 20 */	blr

.global func_80247018
func_80247018:
/* 80247018 00242C78  38 A0 00 01 */	li r5, 1
/* 8024701C 00242C7C  38 6D A5 80 */	addi r3, r13, lbl_8063F840-_SDA_BASE_
/* 80247020 00242C80  38 80 00 04 */	li r4, 4
/* 80247024 00242C84  38 00 00 00 */	li r0, 0
/* 80247028 00242C88  98 AD A5 80 */	stb r5, lbl_8063F840-_SDA_BASE_(r13)
/* 8024702C 00242C8C  B0 83 00 02 */	sth r4, 2(r3)
/* 80247030 00242C90  98 03 00 04 */	stb r0, 4(r3)
/* 80247034 00242C94  4E 80 00 20 */	blr
