.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_8023EA44
func_8023EA44:
/* 8023EA44 0023A6A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023EA48 0023A6A8  7C 08 02 A6 */	mflr r0
/* 8023EA4C 0023A6AC  38 8D 86 B8 */	addi r4, r13, lbl_8063D978-_SDA_BASE_
/* 8023EA50 0023A6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023EA54 0023A6B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023EA58 0023A6B8  7C 7F 1B 78 */	mr r31, r3
/* 8023EA5C 0023A6BC  4B FF 7F C1 */	bl func_80236A1C
/* 8023EA60 0023A6C0  3C 80 80 42 */	lis r4, lbl_80424808@ha
/* 8023EA64 0023A6C4  38 00 00 00 */	li r0, 0
/* 8023EA68 0023A6C8  38 84 48 08 */	addi r4, r4, lbl_80424808@l
/* 8023EA6C 0023A6CC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8023EA70 0023A6D0  7F E3 FB 78 */	mr r3, r31
/* 8023EA74 0023A6D4  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8023EA78 0023A6D8  93 ED A4 B8 */	stw r31, lbl_8063F778-_SDA_BASE_(r13)
/* 8023EA7C 0023A6DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023EA80 0023A6E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023EA84 0023A6E4  7C 08 03 A6 */	mtlr r0
/* 8023EA88 0023A6E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8023EA8C 0023A6EC  4E 80 00 20 */	blr
/* 8023EA90 0023A6F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023EA94 0023A6F4  7C 08 02 A6 */	mflr r0
/* 8023EA98 0023A6F8  2C 03 00 00 */	cmpwi r3, 0
/* 8023EA9C 0023A6FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023EAA0 0023A700  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023EAA4 0023A704  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8023EAA8 0023A708  7C 9E 23 78 */	mr r30, r4
/* 8023EAAC 0023A70C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8023EAB0 0023A710  7C 7D 1B 78 */	mr r29, r3
/* 8023EAB4 0023A714  41 82 00 84 */	beq lbl_8023EB38
/* 8023EAB8 0023A718  3C 80 80 42 */	lis r4, lbl_80424808@ha
/* 8023EABC 0023A71C  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8023EAC0 0023A720  38 84 48 08 */	addi r4, r4, lbl_80424808@l
/* 8023EAC4 0023A724  90 83 00 0C */	stw r4, 0xc(r3)
/* 8023EAC8 0023A728  48 00 00 18 */	b lbl_8023EAE0
lbl_8023EACC:
/* 8023EACC 0023A72C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8023EAD0 0023A730  2C 03 00 00 */	cmpwi r3, 0
/* 8023EAD4 0023A734  41 82 00 08 */	beq lbl_8023EADC
/* 8023EAD8 0023A738  4B F9 BF E1 */	bl __dl__FPv
lbl_8023EADC:
/* 8023EADC 0023A73C  83 FF 00 04 */	lwz r31, 4(r31)
lbl_8023EAE0:
/* 8023EAE0 0023A740  2C 1F 00 00 */	cmpwi r31, 0
/* 8023EAE4 0023A744  40 82 FF E8 */	bne lbl_8023EACC
/* 8023EAE8 0023A748  34 1D 00 10 */	addic. r0, r29, 0x10
/* 8023EAEC 0023A74C  38 00 00 00 */	li r0, 0
/* 8023EAF0 0023A750  90 0D A4 B8 */	stw r0, lbl_8063F778-_SDA_BASE_(r13)
/* 8023EAF4 0023A754  41 82 00 28 */	beq lbl_8023EB1C
/* 8023EAF8 0023A758  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8023EAFC 0023A75C  48 00 00 10 */	b lbl_8023EB0C
lbl_8023EB00:
/* 8023EB00 0023A760  83 E3 00 04 */	lwz r31, 4(r3)
/* 8023EB04 0023A764  48 00 B2 05 */	bl func_80249D08
/* 8023EB08 0023A768  7F E3 FB 78 */	mr r3, r31
lbl_8023EB0C:
/* 8023EB0C 0023A76C  2C 03 00 00 */	cmpwi r3, 0
/* 8023EB10 0023A770  40 82 FF F0 */	bne lbl_8023EB00
/* 8023EB14 0023A774  38 00 00 00 */	li r0, 0
/* 8023EB18 0023A778  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_8023EB1C:
/* 8023EB1C 0023A77C  7F A3 EB 78 */	mr r3, r29
/* 8023EB20 0023A780  38 80 00 00 */	li r4, 0
/* 8023EB24 0023A784  4B FF 7F 51 */	bl func_80236A74
/* 8023EB28 0023A788  2C 1E 00 00 */	cmpwi r30, 0
/* 8023EB2C 0023A78C  40 81 00 0C */	ble lbl_8023EB38
/* 8023EB30 0023A790  7F A3 EB 78 */	mr r3, r29
/* 8023EB34 0023A794  4B F9 BF 85 */	bl __dl__FPv
lbl_8023EB38:
/* 8023EB38 0023A798  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023EB3C 0023A79C  7F A3 EB 78 */	mr r3, r29
/* 8023EB40 0023A7A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8023EB44 0023A7A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8023EB48 0023A7A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023EB4C 0023A7AC  7C 08 03 A6 */	mtlr r0
/* 8023EB50 0023A7B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8023EB54 0023A7B4  4E 80 00 20 */	blr

.global func_8023EB58
func_8023EB58:
/* 8023EB58 0023A7B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023EB5C 0023A7BC  7C 08 02 A6 */	mflr r0
/* 8023EB60 0023A7C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023EB64 0023A7C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8023EB68 0023A7C8  4B F8 85 BD */	bl _savegpr_26
/* 8023EB6C 0023A7CC  7C 7A 1B 78 */	mr r26, r3
/* 8023EB70 0023A7D0  7C 9B 23 78 */	mr r27, r4
/* 8023EB74 0023A7D4  7C BC 2B 78 */	mr r28, r5
/* 8023EB78 0023A7D8  7C DD 33 78 */	mr r29, r6
/* 8023EB7C 0023A7DC  7C FE 3B 78 */	mr r30, r7
/* 8023EB80 0023A7E0  38 60 00 10 */	li r3, 0x10
/* 8023EB84 0023A7E4  4B F9 BE AD */	bl __nw__FUl
/* 8023EB88 0023A7E8  2C 03 00 00 */	cmpwi r3, 0
/* 8023EB8C 0023A7EC  7C 7F 1B 78 */	mr r31, r3
/* 8023EB90 0023A7F0  40 82 00 0C */	bne lbl_8023EB9C
/* 8023EB94 0023A7F4  38 60 00 00 */	li r3, 0
/* 8023EB98 0023A7F8  48 00 00 BC */	b lbl_8023EC54
lbl_8023EB9C:
/* 8023EB9C 0023A7FC  80 AD 86 B0 */	lwz r5, lbl_8063D970-_SDA_BASE_(r13)
/* 8023EBA0 0023A800  7F C4 F3 78 */	mr r4, r30
/* 8023EBA4 0023A804  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8023EBA8 0023A808  38 05 00 01 */	addi r0, r5, 1
/* 8023EBAC 0023A80C  90 0D 86 B0 */	stw r0, lbl_8063D970-_SDA_BASE_(r13)
/* 8023EBB0 0023A810  93 63 00 00 */	stw r27, 0(r3)
/* 8023EBB4 0023A814  93 83 00 04 */	stw r28, 4(r3)
/* 8023EBB8 0023A818  7F A3 EB 78 */	mr r3, r29
/* 8023EBBC 0023A81C  88 BA 00 04 */	lbz r5, 4(r26)
/* 8023EBC0 0023A820  4B FF 79 71 */	bl func_80236530
/* 8023EBC4 0023A824  90 7F 00 08 */	stw r3, 8(r31)
/* 8023EBC8 0023A828  7C 7E 1B 78 */	mr r30, r3
/* 8023EBCC 0023A82C  54 63 86 3E */	rlwinm r3, r3, 0x10, 0x18, 0x1f
/* 8023EBD0 0023A830  4B FF C4 89 */	bl func_8023B058
/* 8023EBD4 0023A834  2C 03 00 00 */	cmpwi r3, 0
/* 8023EBD8 0023A838  41 82 00 0C */	beq lbl_8023EBE4
/* 8023EBDC 0023A83C  7F C4 F3 78 */	mr r4, r30
/* 8023EBE0 0023A840  4B FF C7 D9 */	bl func_8023B3B8
lbl_8023EBE4:
/* 8023EBE4 0023A844  2C 1F 00 00 */	cmpwi r31, 0
/* 8023EBE8 0023A848  41 82 00 68 */	beq lbl_8023EC50
/* 8023EBEC 0023A84C  83 DA 00 10 */	lwz r30, 0x10(r26)
/* 8023EBF0 0023A850  2C 1E 00 00 */	cmpwi r30, 0
/* 8023EBF4 0023A854  41 82 00 30 */	beq lbl_8023EC24
/* 8023EBF8 0023A858  80 1E 00 00 */	lwz r0, 0(r30)
/* 8023EBFC 0023A85C  7C 00 F8 40 */	cmplw r0, r31
/* 8023EC00 0023A860  41 82 00 50 */	beq lbl_8023EC50
/* 8023EC04 0023A864  48 00 00 14 */	b lbl_8023EC18
lbl_8023EC08:
/* 8023EC08 0023A868  80 03 00 00 */	lwz r0, 0(r3)
/* 8023EC0C 0023A86C  7C 00 F8 40 */	cmplw r0, r31
/* 8023EC10 0023A870  41 82 00 40 */	beq lbl_8023EC50
/* 8023EC14 0023A874  7C 7E 1B 78 */	mr r30, r3
lbl_8023EC18:
/* 8023EC18 0023A878  80 7E 00 04 */	lwz r3, 4(r30)
/* 8023EC1C 0023A87C  2C 03 00 00 */	cmpwi r3, 0
/* 8023EC20 0023A880  40 82 FF E8 */	bne lbl_8023EC08
lbl_8023EC24:
/* 8023EC24 0023A884  48 00 B0 D5 */	bl func_80249CF8
/* 8023EC28 0023A888  2C 03 00 00 */	cmpwi r3, 0
/* 8023EC2C 0023A88C  41 82 00 10 */	beq lbl_8023EC3C
/* 8023EC30 0023A890  93 E3 00 00 */	stw r31, 0(r3)
/* 8023EC34 0023A894  38 00 00 00 */	li r0, 0
/* 8023EC38 0023A898  90 03 00 04 */	stw r0, 4(r3)
lbl_8023EC3C:
/* 8023EC3C 0023A89C  2C 1E 00 00 */	cmpwi r30, 0
/* 8023EC40 0023A8A0  41 82 00 0C */	beq lbl_8023EC4C
/* 8023EC44 0023A8A4  90 7E 00 04 */	stw r3, 4(r30)
/* 8023EC48 0023A8A8  48 00 00 08 */	b lbl_8023EC50
lbl_8023EC4C:
/* 8023EC4C 0023A8AC  90 7A 00 10 */	stw r3, 0x10(r26)
lbl_8023EC50:
/* 8023EC50 0023A8B0  80 7F 00 0C */	lwz r3, 0xc(r31)
lbl_8023EC54:
/* 8023EC54 0023A8B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8023EC58 0023A8B8  4B F8 85 19 */	bl _restgpr_26
/* 8023EC5C 0023A8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023EC60 0023A8C0  7C 08 03 A6 */	mtlr r0
/* 8023EC64 0023A8C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8023EC68 0023A8C8  4E 80 00 20 */	blr
/* 8023EC6C 0023A8CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023EC70 0023A8D0  7C 08 02 A6 */	mflr r0
/* 8023EC74 0023A8D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023EC78 0023A8D8  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8023EC7C 0023A8DC  FF E0 08 90 */	fmr f31, f1
/* 8023EC80 0023A8E0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8023EC84 0023A8E4  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8023EC88 0023A8E8  48 00 00 2C */	b lbl_8023ECB4
lbl_8023EC8C:
/* 8023EC8C 0023A8EC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8023EC90 0023A8F0  2C 03 00 00 */	cmpwi r3, 0
/* 8023EC94 0023A8F4  41 82 00 1C */	beq lbl_8023ECB0
/* 8023EC98 0023A8F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8023EC9C 0023A8FC  2C 0C 00 00 */	cmpwi r12, 0
/* 8023ECA0 0023A900  41 82 00 10 */	beq lbl_8023ECB0
/* 8023ECA4 0023A904  FC 20 F8 90 */	fmr f1, f31
/* 8023ECA8 0023A908  7D 89 03 A6 */	mtctr r12
/* 8023ECAC 0023A90C  4E 80 04 21 */	bctrl
lbl_8023ECB0:
/* 8023ECB0 0023A910  83 FF 00 04 */	lwz r31, 4(r31)
lbl_8023ECB4:
/* 8023ECB4 0023A914  2C 1F 00 00 */	cmpwi r31, 0
/* 8023ECB8 0023A918  40 82 FF D4 */	bne lbl_8023EC8C
/* 8023ECBC 0023A91C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023ECC0 0023A920  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8023ECC4 0023A924  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8023ECC8 0023A928  7C 08 03 A6 */	mtlr r0
/* 8023ECCC 0023A92C  38 21 00 20 */	addi r1, r1, 0x20
/* 8023ECD0 0023A930  4E 80 00 20 */	blr
/* 8023ECD4 0023A934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023ECD8 0023A938  7C 08 02 A6 */	mflr r0
/* 8023ECDC 0023A93C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023ECE0 0023A940  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023ECE4 0023A944  7C 9F 23 78 */	mr r31, r4
/* 8023ECE8 0023A948  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8023ECEC 0023A94C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8023ECF0 0023A950  93 81 00 10 */	stw r28, 0x10(r1)
/* 8023ECF4 0023A954  80 CD A3 D8 */	lwz r6, lbl_8063F698-_SDA_BASE_(r13)
/* 8023ECF8 0023A958  80 A6 16 38 */	lwz r5, 0x1638(r6)
/* 8023ECFC 0023A95C  88 85 0A 87 */	lbz r4, 0xa87(r5)
/* 8023ED00 0023A960  7C 04 00 D0 */	neg r0, r4
/* 8023ED04 0023A964  7C 00 23 78 */	or r0, r0, r4
/* 8023ED08 0023A968  54 1E 0F FF */	rlwinm. r30, r0, 1, 0x1f, 0x1f
/* 8023ED0C 0023A96C  41 82 00 2C */	beq lbl_8023ED38
/* 8023ED10 0023A970  38 00 00 00 */	li r0, 0
/* 8023ED14 0023A974  98 05 0A 87 */	stb r0, 0xa87(r5)
/* 8023ED18 0023A978  80 86 16 38 */	lwz r4, 0x1638(r6)
/* 8023ED1C 0023A97C  80 04 00 64 */	lwz r0, 0x64(r4)
/* 8023ED20 0023A980  60 00 00 40 */	ori r0, r0, 0x40
/* 8023ED24 0023A984  90 04 00 64 */	stw r0, 0x64(r4)
/* 8023ED28 0023A988  80 86 16 38 */	lwz r4, 0x1638(r6)
/* 8023ED2C 0023A98C  80 04 00 00 */	lwz r0, 0(r4)
/* 8023ED30 0023A990  60 00 00 40 */	ori r0, r0, 0x40
/* 8023ED34 0023A994  90 04 00 00 */	stw r0, 0(r4)
lbl_8023ED38:
/* 8023ED38 0023A998  80 AD A4 70 */	lwz r5, lbl_8063F730-_SDA_BASE_(r13)
/* 8023ED3C 0023A99C  2C 05 00 00 */	cmpwi r5, 0
/* 8023ED40 0023A9A0  40 82 00 0C */	bne lbl_8023ED4C
/* 8023ED44 0023A9A4  3B A0 00 00 */	li r29, 0
/* 8023ED48 0023A9A8  48 00 00 3C */	b lbl_8023ED84
lbl_8023ED4C:
/* 8023ED4C 0023A9AC  80 C5 00 14 */	lwz r6, 0x14(r5)
/* 8023ED50 0023A9B0  2C 06 00 00 */	cmpwi r6, 0
/* 8023ED54 0023A9B4  41 82 00 2C */	beq lbl_8023ED80
/* 8023ED58 0023A9B8  80 86 00 00 */	lwz r4, 0(r6)
/* 8023ED5C 0023A9BC  80 05 00 00 */	lwz r0, 0(r5)
/* 8023ED60 0023A9C0  80 A4 00 00 */	lwz r5, 0(r4)
/* 8023ED64 0023A9C4  80 86 00 04 */	lwz r4, 4(r6)
/* 8023ED68 0023A9C8  54 06 80 1E */	slwi r6, r0, 0x10
/* 8023ED6C 0023A9CC  54 A5 40 2E */	slwi r5, r5, 8
/* 8023ED70 0023A9D0  88 04 00 04 */	lbz r0, 4(r4)
/* 8023ED74 0023A9D4  7C C4 2B 78 */	or r4, r6, r5
/* 8023ED78 0023A9D8  7C 9D 03 78 */	or r29, r4, r0
/* 8023ED7C 0023A9DC  48 00 00 08 */	b lbl_8023ED84
lbl_8023ED80:
/* 8023ED80 0023A9E0  3B A0 00 00 */	li r29, 0
lbl_8023ED84:
/* 8023ED84 0023A9E4  83 83 00 10 */	lwz r28, 0x10(r3)
/* 8023ED88 0023A9E8  48 00 00 38 */	b lbl_8023EDC0
lbl_8023ED8C:
/* 8023ED8C 0023A9EC  80 7C 00 00 */	lwz r3, 0(r28)
/* 8023ED90 0023A9F0  2C 03 00 00 */	cmpwi r3, 0
/* 8023ED94 0023A9F4  41 82 00 28 */	beq lbl_8023EDBC
/* 8023ED98 0023A9F8  81 83 00 04 */	lwz r12, 4(r3)
/* 8023ED9C 0023A9FC  2C 0C 00 00 */	cmpwi r12, 0
/* 8023EDA0 0023AA00  41 82 00 1C */	beq lbl_8023EDBC
/* 8023EDA4 0023AA04  80 03 00 08 */	lwz r0, 8(r3)
/* 8023EDA8 0023AA08  7C 00 E8 40 */	cmplw r0, r29
/* 8023EDAC 0023AA0C  40 82 00 10 */	bne lbl_8023EDBC
/* 8023EDB0 0023AA10  7F E3 FB 78 */	mr r3, r31
/* 8023EDB4 0023AA14  7D 89 03 A6 */	mtctr r12
/* 8023EDB8 0023AA18  4E 80 04 21 */	bctrl
lbl_8023EDBC:
/* 8023EDBC 0023AA1C  83 9C 00 04 */	lwz r28, 4(r28)
lbl_8023EDC0:
/* 8023EDC0 0023AA20  2C 1C 00 00 */	cmpwi r28, 0
/* 8023EDC4 0023AA24  40 82 FF C8 */	bne lbl_8023ED8C
/* 8023EDC8 0023AA28  2C 1E 00 00 */	cmpwi r30, 0
/* 8023EDCC 0023AA2C  41 82 00 60 */	beq lbl_8023EE2C
/* 8023EDD0 0023AA30  80 8D A3 D8 */	lwz r4, lbl_8063F698-_SDA_BASE_(r13)
/* 8023EDD4 0023AA34  38 00 00 01 */	li r0, 1
/* 8023EDD8 0023AA38  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 8023EDDC 0023AA3C  98 03 0A 87 */	stb r0, 0xa87(r3)
/* 8023EDE0 0023AA40  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 8023EDE4 0023AA44  80 03 00 64 */	lwz r0, 0x64(r3)
/* 8023EDE8 0023AA48  60 00 00 40 */	ori r0, r0, 0x40
/* 8023EDEC 0023AA4C  90 03 00 64 */	stw r0, 0x64(r3)
/* 8023EDF0 0023AA50  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 8023EDF4 0023AA54  80 03 00 64 */	lwz r0, 0x64(r3)
/* 8023EDF8 0023AA58  60 00 02 00 */	ori r0, r0, 0x200
/* 8023EDFC 0023AA5C  90 03 00 64 */	stw r0, 0x64(r3)
/* 8023EE00 0023AA60  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 8023EE04 0023AA64  88 03 0A 86 */	lbz r0, 0xa86(r3)
/* 8023EE08 0023AA68  2C 00 00 00 */	cmpwi r0, 0
/* 8023EE0C 0023AA6C  41 82 00 10 */	beq lbl_8023EE1C
/* 8023EE10 0023AA70  80 03 00 64 */	lwz r0, 0x64(r3)
/* 8023EE14 0023AA74  60 00 01 00 */	ori r0, r0, 0x100
/* 8023EE18 0023AA78  90 03 00 64 */	stw r0, 0x64(r3)
lbl_8023EE1C:
/* 8023EE1C 0023AA7C  80 64 16 38 */	lwz r3, 0x1638(r4)
/* 8023EE20 0023AA80  80 03 00 00 */	lwz r0, 0(r3)
/* 8023EE24 0023AA84  60 00 00 40 */	ori r0, r0, 0x40
/* 8023EE28 0023AA88  90 03 00 00 */	stw r0, 0(r3)
lbl_8023EE2C:
/* 8023EE2C 0023AA8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023EE30 0023AA90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8023EE34 0023AA94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8023EE38 0023AA98  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8023EE3C 0023AA9C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8023EE40 0023AAA0  7C 08 03 A6 */	mtlr r0
/* 8023EE44 0023AAA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8023EE48 0023AAA8  4E 80 00 20 */	blr

.global func_8023EE4C
func_8023EE4C:
/* 8023EE4C 0023AAAC  38 A0 00 01 */	li r5, 1
/* 8023EE50 0023AAB0  38 6D A4 B0 */	addi r3, r13, lbl_8063F770-_SDA_BASE_
/* 8023EE54 0023AAB4  38 80 00 04 */	li r4, 4
/* 8023EE58 0023AAB8  38 00 00 00 */	li r0, 0
/* 8023EE5C 0023AABC  98 AD A4 B0 */	stb r5, lbl_8063F770-_SDA_BASE_(r13)
/* 8023EE60 0023AAC0  B0 83 00 02 */	sth r4, 2(r3)
/* 8023EE64 0023AAC4  98 03 00 04 */	stb r0, 4(r3)
/* 8023EE68 0023AAC8  4E 80 00 20 */	blr