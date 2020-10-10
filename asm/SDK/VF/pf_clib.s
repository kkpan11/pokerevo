.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global VFipf_toupper
VFipf_toupper:
/* 80304E94 00300AF4  2C 03 00 61 */	cmpwi r3, 0x61
/* 80304E98 00300AF8  4D 80 00 20 */	bltlr
/* 80304E9C 00300AFC  2C 03 00 7A */	cmpwi r3, 0x7a
/* 80304EA0 00300B00  4D 81 00 20 */	bgtlr
/* 80304EA4 00300B04  38 63 FF E0 */	addi r3, r3, -32
/* 80304EA8 00300B08  4E 80 00 20 */	blr

.global VFipf_memcpy
VFipf_memcpy:
/* 80304EAC 00300B0C  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 80304EB0 00300B10  7C 68 1B 78 */	mr r8, r3
/* 80304EB4 00300B14  40 82 00 9C */	bne lbl_80304F50
/* 80304EB8 00300B18  54 80 07 BF */	clrlwi. r0, r4, 0x1e
/* 80304EBC 00300B1C  40 82 00 94 */	bne lbl_80304F50
/* 80304EC0 00300B20  28 05 00 03 */	cmplwi r5, 3
/* 80304EC4 00300B24  54 A7 F0 BE */	srwi r7, r5, 2
/* 80304EC8 00300B28  40 81 00 88 */	ble lbl_80304F50
/* 80304ECC 00300B2C  54 E6 E8 FF */	rlwinm. r6, r7, 0x1d, 3, 0x1f
/* 80304ED0 00300B30  54 E0 10 3A */	slwi r0, r7, 2
/* 80304ED4 00300B34  7C 00 00 D0 */	neg r0, r0
/* 80304ED8 00300B38  7C C9 03 A6 */	mtctr r6
/* 80304EDC 00300B3C  41 82 00 58 */	beq lbl_80304F34
lbl_80304EE0:
/* 80304EE0 00300B40  80 C4 00 00 */	lwz r6, 0(r4)
/* 80304EE4 00300B44  90 C8 00 00 */	stw r6, 0(r8)
/* 80304EE8 00300B48  80 C4 00 04 */	lwz r6, 4(r4)
/* 80304EEC 00300B4C  90 C8 00 04 */	stw r6, 4(r8)
/* 80304EF0 00300B50  80 C4 00 08 */	lwz r6, 8(r4)
/* 80304EF4 00300B54  90 C8 00 08 */	stw r6, 8(r8)
/* 80304EF8 00300B58  80 C4 00 0C */	lwz r6, 0xc(r4)
/* 80304EFC 00300B5C  90 C8 00 0C */	stw r6, 0xc(r8)
/* 80304F00 00300B60  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 80304F04 00300B64  90 C8 00 10 */	stw r6, 0x10(r8)
/* 80304F08 00300B68  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 80304F0C 00300B6C  90 C8 00 14 */	stw r6, 0x14(r8)
/* 80304F10 00300B70  80 C4 00 18 */	lwz r6, 0x18(r4)
/* 80304F14 00300B74  90 C8 00 18 */	stw r6, 0x18(r8)
/* 80304F18 00300B78  80 C4 00 1C */	lwz r6, 0x1c(r4)
/* 80304F1C 00300B7C  38 84 00 20 */	addi r4, r4, 0x20
/* 80304F20 00300B80  90 C8 00 1C */	stw r6, 0x1c(r8)
/* 80304F24 00300B84  39 08 00 20 */	addi r8, r8, 0x20
/* 80304F28 00300B88  42 00 FF B8 */	bdnz lbl_80304EE0
/* 80304F2C 00300B8C  70 E7 00 07 */	andi. r7, r7, 7
/* 80304F30 00300B90  41 82 00 1C */	beq lbl_80304F4C
lbl_80304F34:
/* 80304F34 00300B94  7C E9 03 A6 */	mtctr r7
lbl_80304F38:
/* 80304F38 00300B98  80 C4 00 00 */	lwz r6, 0(r4)
/* 80304F3C 00300B9C  38 84 00 04 */	addi r4, r4, 4
/* 80304F40 00300BA0  90 C8 00 00 */	stw r6, 0(r8)
/* 80304F44 00300BA4  39 08 00 04 */	addi r8, r8, 4
/* 80304F48 00300BA8  42 00 FF F0 */	bdnz lbl_80304F38
lbl_80304F4C:
/* 80304F4C 00300BAC  7C A5 02 14 */	add r5, r5, r0
lbl_80304F50:
/* 80304F50 00300BB0  2C 05 00 00 */	cmpwi r5, 0
/* 80304F54 00300BB4  4D 82 00 20 */	beqlr
/* 80304F58 00300BB8  54 A0 E8 FF */	rlwinm. r0, r5, 0x1d, 3, 0x1f
/* 80304F5C 00300BBC  7C 09 03 A6 */	mtctr r0
/* 80304F60 00300BC0  41 82 00 58 */	beq lbl_80304FB8
lbl_80304F64:
/* 80304F64 00300BC4  88 04 00 00 */	lbz r0, 0(r4)
/* 80304F68 00300BC8  98 08 00 00 */	stb r0, 0(r8)
/* 80304F6C 00300BCC  88 04 00 01 */	lbz r0, 1(r4)
/* 80304F70 00300BD0  98 08 00 01 */	stb r0, 1(r8)
/* 80304F74 00300BD4  88 04 00 02 */	lbz r0, 2(r4)
/* 80304F78 00300BD8  98 08 00 02 */	stb r0, 2(r8)
/* 80304F7C 00300BDC  88 04 00 03 */	lbz r0, 3(r4)
/* 80304F80 00300BE0  98 08 00 03 */	stb r0, 3(r8)
/* 80304F84 00300BE4  88 04 00 04 */	lbz r0, 4(r4)
/* 80304F88 00300BE8  98 08 00 04 */	stb r0, 4(r8)
/* 80304F8C 00300BEC  88 04 00 05 */	lbz r0, 5(r4)
/* 80304F90 00300BF0  98 08 00 05 */	stb r0, 5(r8)
/* 80304F94 00300BF4  88 04 00 06 */	lbz r0, 6(r4)
/* 80304F98 00300BF8  98 08 00 06 */	stb r0, 6(r8)
/* 80304F9C 00300BFC  88 04 00 07 */	lbz r0, 7(r4)
/* 80304FA0 00300C00  38 84 00 08 */	addi r4, r4, 8
/* 80304FA4 00300C04  98 08 00 07 */	stb r0, 7(r8)
/* 80304FA8 00300C08  39 08 00 08 */	addi r8, r8, 8
/* 80304FAC 00300C0C  42 00 FF B8 */	bdnz lbl_80304F64
/* 80304FB0 00300C10  70 A5 00 07 */	andi. r5, r5, 7
/* 80304FB4 00300C14  4D 82 00 20 */	beqlr
lbl_80304FB8:
/* 80304FB8 00300C18  7C A9 03 A6 */	mtctr r5
lbl_80304FBC:
/* 80304FBC 00300C1C  88 04 00 00 */	lbz r0, 0(r4)
/* 80304FC0 00300C20  38 84 00 01 */	addi r4, r4, 1
/* 80304FC4 00300C24  98 08 00 00 */	stb r0, 0(r8)
/* 80304FC8 00300C28  39 08 00 01 */	addi r8, r8, 1
/* 80304FCC 00300C2C  42 00 FF F0 */	bdnz lbl_80304FBC
/* 80304FD0 00300C30  4E 80 00 20 */	blr

.global VFipf_memset
VFipf_memset:
/* 80304FD4 00300C34  7C 69 1B 78 */	mr r9, r3
/* 80304FD8 00300C38  48 00 00 10 */	b lbl_80304FE8
lbl_80304FDC:
/* 80304FDC 00300C3C  98 89 00 00 */	stb r4, 0(r9)
/* 80304FE0 00300C40  39 29 00 01 */	addi r9, r9, 1
/* 80304FE4 00300C44  38 A5 FF FF */	addi r5, r5, -1
lbl_80304FE8:
/* 80304FE8 00300C48  55 20 07 BF */	clrlwi. r0, r9, 0x1e
/* 80304FEC 00300C4C  41 82 00 0C */	beq lbl_80304FF8
/* 80304FF0 00300C50  2C 05 00 00 */	cmpwi r5, 0
/* 80304FF4 00300C54  40 82 FF E8 */	bne lbl_80304FDC
lbl_80304FF8:
/* 80304FF8 00300C58  54 87 40 2E */	slwi r7, r4, 8
/* 80304FFC 00300C5C  28 05 00 03 */	cmplwi r5, 3
/* 80305000 00300C60  7C 88 3B 78 */	or r8, r4, r7
/* 80305004 00300C64  54 86 C0 0E */	slwi r6, r4, 0x18
/* 80305008 00300C68  54 80 80 1E */	slwi r0, r4, 0x10
/* 8030500C 00300C6C  54 A7 F0 BE */	srwi r7, r5, 2
/* 80305010 00300C70  7C C0 03 78 */	or r0, r6, r0
/* 80305014 00300C74  7D 08 03 78 */	or r8, r8, r0
/* 80305018 00300C78  40 81 00 5C */	ble lbl_80305074
/* 8030501C 00300C7C  54 E6 E8 FF */	rlwinm. r6, r7, 0x1d, 3, 0x1f
/* 80305020 00300C80  54 E0 10 3A */	slwi r0, r7, 2
/* 80305024 00300C84  7C 00 00 D0 */	neg r0, r0
/* 80305028 00300C88  7C C9 03 A6 */	mtctr r6
/* 8030502C 00300C8C  41 82 00 34 */	beq lbl_80305060
lbl_80305030:
/* 80305030 00300C90  91 09 00 00 */	stw r8, 0(r9)
/* 80305034 00300C94  91 09 00 04 */	stw r8, 4(r9)
/* 80305038 00300C98  91 09 00 08 */	stw r8, 8(r9)
/* 8030503C 00300C9C  91 09 00 0C */	stw r8, 0xc(r9)
/* 80305040 00300CA0  91 09 00 10 */	stw r8, 0x10(r9)
/* 80305044 00300CA4  91 09 00 14 */	stw r8, 0x14(r9)
/* 80305048 00300CA8  91 09 00 18 */	stw r8, 0x18(r9)
/* 8030504C 00300CAC  91 09 00 1C */	stw r8, 0x1c(r9)
/* 80305050 00300CB0  39 29 00 20 */	addi r9, r9, 0x20
/* 80305054 00300CB4  42 00 FF DC */	bdnz lbl_80305030
/* 80305058 00300CB8  70 E7 00 07 */	andi. r7, r7, 7
/* 8030505C 00300CBC  41 82 00 14 */	beq lbl_80305070
lbl_80305060:
/* 80305060 00300CC0  7C E9 03 A6 */	mtctr r7
lbl_80305064:
/* 80305064 00300CC4  91 09 00 00 */	stw r8, 0(r9)
/* 80305068 00300CC8  39 29 00 04 */	addi r9, r9, 4
/* 8030506C 00300CCC  42 00 FF F8 */	bdnz lbl_80305064
lbl_80305070:
/* 80305070 00300CD0  7C A5 02 14 */	add r5, r5, r0
lbl_80305074:
/* 80305074 00300CD4  2C 05 00 00 */	cmpwi r5, 0
/* 80305078 00300CD8  4D 82 00 20 */	beqlr
/* 8030507C 00300CDC  54 A0 E8 FF */	rlwinm. r0, r5, 0x1d, 3, 0x1f
/* 80305080 00300CE0  7C 09 03 A6 */	mtctr r0
/* 80305084 00300CE4  41 82 00 34 */	beq lbl_803050B8
lbl_80305088:
/* 80305088 00300CE8  98 89 00 00 */	stb r4, 0(r9)
/* 8030508C 00300CEC  98 89 00 01 */	stb r4, 1(r9)
/* 80305090 00300CF0  98 89 00 02 */	stb r4, 2(r9)
/* 80305094 00300CF4  98 89 00 03 */	stb r4, 3(r9)
/* 80305098 00300CF8  98 89 00 04 */	stb r4, 4(r9)
/* 8030509C 00300CFC  98 89 00 05 */	stb r4, 5(r9)
/* 803050A0 00300D00  98 89 00 06 */	stb r4, 6(r9)
/* 803050A4 00300D04  98 89 00 07 */	stb r4, 7(r9)
/* 803050A8 00300D08  39 29 00 08 */	addi r9, r9, 8
/* 803050AC 00300D0C  42 00 FF DC */	bdnz lbl_80305088
/* 803050B0 00300D10  70 A5 00 07 */	andi. r5, r5, 7
/* 803050B4 00300D14  4D 82 00 20 */	beqlr
lbl_803050B8:
/* 803050B8 00300D18  7C A9 03 A6 */	mtctr r5
lbl_803050BC:
/* 803050BC 00300D1C  98 89 00 00 */	stb r4, 0(r9)
/* 803050C0 00300D20  39 29 00 01 */	addi r9, r9, 1
/* 803050C4 00300D24  42 00 FF F8 */	bdnz lbl_803050BC
/* 803050C8 00300D28  4E 80 00 20 */	blr

.global VFipf_strlen
VFipf_strlen:
/* 803050CC 00300D2C  7C 64 1B 78 */	mr r4, r3
/* 803050D0 00300D30  48 00 00 08 */	b lbl_803050D8
lbl_803050D4:
/* 803050D4 00300D34  38 84 00 01 */	addi r4, r4, 1
lbl_803050D8:
/* 803050D8 00300D38  88 04 00 00 */	lbz r0, 0(r4)
/* 803050DC 00300D3C  7C 00 07 75 */	extsb. r0, r0
/* 803050E0 00300D40  40 82 FF F4 */	bne lbl_803050D4
/* 803050E4 00300D44  7C 63 20 50 */	subf r3, r3, r4
/* 803050E8 00300D48  4E 80 00 20 */	blr

.global VFipf_strcpy
VFipf_strcpy:
/* 803050EC 00300D4C  7C 66 1B 78 */	mr r6, r3
/* 803050F0 00300D50  48 00 00 0C */	b lbl_803050FC
lbl_803050F4:
/* 803050F4 00300D54  38 84 00 01 */	addi r4, r4, 1
/* 803050F8 00300D58  38 C6 00 01 */	addi r6, r6, 1
lbl_803050FC:
/* 803050FC 00300D5C  88 A4 00 00 */	lbz r5, 0(r4)
/* 80305100 00300D60  7C A0 07 75 */	extsb. r0, r5
/* 80305104 00300D64  98 A6 00 00 */	stb r5, 0(r6)
/* 80305108 00300D68  40 82 FF EC */	bne lbl_803050F4
/* 8030510C 00300D6C  4E 80 00 20 */	blr

.global VFipf_strcmp
VFipf_strcmp:
/* 80305110 00300D70  48 00 00 0C */	b lbl_8030511C
lbl_80305114:
/* 80305114 00300D74  38 63 00 01 */	addi r3, r3, 1
/* 80305118 00300D78  38 84 00 01 */	addi r4, r4, 1
lbl_8030511C:
/* 8030511C 00300D7C  88 A3 00 00 */	lbz r5, 0(r3)
/* 80305120 00300D80  2C 05 00 00 */	cmpwi r5, 0
/* 80305124 00300D84  41 82 00 18 */	beq lbl_8030513C
/* 80305128 00300D88  88 04 00 00 */	lbz r0, 0(r4)
/* 8030512C 00300D8C  2C 00 00 00 */	cmpwi r0, 0
/* 80305130 00300D90  41 82 00 0C */	beq lbl_8030513C
/* 80305134 00300D94  7C 05 00 40 */	cmplw r5, r0
/* 80305138 00300D98  41 82 FF DC */	beq lbl_80305114
lbl_8030513C:
/* 8030513C 00300D9C  88 04 00 00 */	lbz r0, 0(r4)
/* 80305140 00300DA0  7C 60 28 50 */	subf r3, r0, r5
/* 80305144 00300DA4  4E 80 00 20 */	blr

.global VFipf_strncmp
VFipf_strncmp:
/* 80305148 00300DA8  7C A9 03 A6 */	mtctr r5
/* 8030514C 00300DAC  2C 05 00 00 */	cmpwi r5, 0
/* 80305150 00300DB0  41 82 00 3C */	beq lbl_8030518C
lbl_80305154:
/* 80305154 00300DB4  88 A3 00 00 */	lbz r5, 0(r3)
/* 80305158 00300DB8  2C 05 00 00 */	cmpwi r5, 0
/* 8030515C 00300DBC  41 82 00 18 */	beq lbl_80305174
/* 80305160 00300DC0  88 04 00 00 */	lbz r0, 0(r4)
/* 80305164 00300DC4  2C 00 00 00 */	cmpwi r0, 0
/* 80305168 00300DC8  41 82 00 0C */	beq lbl_80305174
/* 8030516C 00300DCC  7C 05 00 40 */	cmplw r5, r0
/* 80305170 00300DD0  41 82 00 10 */	beq lbl_80305180
lbl_80305174:
/* 80305174 00300DD4  88 04 00 00 */	lbz r0, 0(r4)
/* 80305178 00300DD8  7C 60 28 50 */	subf r3, r0, r5
/* 8030517C 00300DDC  4E 80 00 20 */	blr
lbl_80305180:
/* 80305180 00300DE0  38 63 00 01 */	addi r3, r3, 1
/* 80305184 00300DE4  38 84 00 01 */	addi r4, r4, 1
/* 80305188 00300DE8  42 00 FF CC */	bdnz lbl_80305154
lbl_8030518C:
/* 8030518C 00300DEC  38 60 00 00 */	li r3, 0
/* 80305190 00300DF0  4E 80 00 20 */	blr