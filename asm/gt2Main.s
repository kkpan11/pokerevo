.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global gt2CreateSocket
gt2CreateSocket:
/* 803499F0 00345650  39 00 00 00 */	li r8, 0
/* 803499F4 00345654  48 00 36 6C */	b func_8034D060

.global gt2CloseSocket
gt2CloseSocket:
/* 803499F8 00345658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803499FC 0034565C  7C 08 02 A6 */	mflr r0
/* 80349A00 00345660  3C 80 80 35 */	lis r4, gti2CloseAllConnectionsHardMap@ha
/* 80349A04 00345664  38 A0 00 00 */	li r5, 0
/* 80349A08 00345668  90 01 00 14 */	stw r0, 0x14(r1)
/* 80349A0C 0034566C  38 84 9D 64 */	addi r4, r4, gti2CloseAllConnectionsHardMap@l
/* 80349A10 00345670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80349A14 00345674  7C 7F 1B 78 */	mr r31, r3
/* 80349A18 00345678  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80349A1C 0034567C  4B FE D1 A1 */	bl TableMapSafe
/* 80349A20 00345680  7F E3 FB 78 */	mr r3, r31
/* 80349A24 00345684  48 00 38 79 */	bl func_8034D29C
/* 80349A28 00345688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80349A2C 0034568C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80349A30 00345690  7C 08 03 A6 */	mtlr r0
/* 80349A34 00345694  38 21 00 10 */	addi r1, r1, 0x10
/* 80349A38 00345698  4E 80 00 20 */	blr

.global gt2Think
gt2Think:
/* 80349A3C 0034569C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80349A40 003456A0  7C 08 02 A6 */	mflr r0
/* 80349A44 003456A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80349A48 003456A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80349A4C 003456AC  7C 7F 1B 78 */	mr r31, r3
/* 80349A50 003456B0  48 00 25 45 */	bl func_8034BF94
/* 80349A54 003456B4  2C 03 00 00 */	cmpwi r3, 0
/* 80349A58 003456B8  41 82 00 1C */	beq lbl_80349A74
/* 80349A5C 003456BC  7F E3 FB 78 */	mr r3, r31
/* 80349A60 003456C0  48 00 3F 21 */	bl func_8034D980
/* 80349A64 003456C4  2C 03 00 00 */	cmpwi r3, 0
/* 80349A68 003456C8  41 82 00 0C */	beq lbl_80349A74
/* 80349A6C 003456CC  7F E3 FB 78 */	mr r3, r31
/* 80349A70 003456D0  48 00 3F 5D */	bl func_8034D9CC
lbl_80349A74:
/* 80349A74 003456D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80349A78 003456D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80349A7C 003456DC  7C 08 03 A6 */	mtlr r0
/* 80349A80 003456E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80349A84 003456E4  4E 80 00 20 */	blr

.global gt2Listen
gt2Listen:
/* 80349A88 003456E8  48 00 38 78 */	b func_8034D300

.global gt2Accept
gt2Accept:
/* 80349A8C 003456EC  4B FF FA 0C */	b gti2AcceptConnection

.global gt2Reject
gt2Reject:
/* 80349A90 003456F0  4B FF FA AC */	b gti2RejectConnection

.global gt2Connect
gt2Connect:
/* 80349A94 003456F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80349A98 003456F8  7C 08 02 A6 */	mflr r0
/* 80349A9C 003456FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80349AA0 00345700  39 61 00 40 */	addi r11, r1, 0x40
/* 80349AA4 00345704  4B E7 D6 7D */	bl func_801C7120
/* 80349AA8 00345708  7C 7E 1B 78 */	mr r30, r3
/* 80349AAC 0034570C  7C 9F 23 78 */	mr r31, r4
/* 80349AB0 00345710  7C A3 2B 78 */	mr r3, r5
/* 80349AB4 00345714  7C D9 33 78 */	mr r25, r6
/* 80349AB8 00345718  7C FA 3B 78 */	mr r26, r7
/* 80349ABC 0034571C  7D 1D 43 78 */	mr r29, r8
/* 80349AC0 00345720  7D 3C 4B 78 */	mr r28, r9
/* 80349AC4 00345724  7D 5B 53 78 */	mr r27, r10
/* 80349AC8 00345728  38 81 00 0C */	addi r4, r1, 0xc
/* 80349ACC 0034572C  38 A1 00 08 */	addi r5, r1, 8
/* 80349AD0 00345730  48 00 41 61 */	bl func_8034DC30
/* 80349AD4 00345734  2C 03 00 00 */	cmpwi r3, 0
/* 80349AD8 00345738  41 82 00 1C */	beq lbl_80349AF4
/* 80349ADC 0034573C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80349AE0 00345740  2C 03 00 00 */	cmpwi r3, 0
/* 80349AE4 00345744  41 82 00 10 */	beq lbl_80349AF4
/* 80349AE8 00345748  A0 01 00 08 */	lhz r0, 8(r1)
/* 80349AEC 0034574C  2C 00 00 00 */	cmpwi r0, 0
/* 80349AF0 00345750  40 82 00 0C */	bne lbl_80349AFC
lbl_80349AF4:
/* 80349AF4 00345754  38 60 00 04 */	li r3, 4
/* 80349AF8 00345758  48 00 01 2C */	b lbl_80349C24
lbl_80349AFC:
/* 80349AFC 0034575C  4B FA D2 71 */	bl func_802F6D6C
/* 80349B00 00345760  54 63 00 04 */	rlwinm r3, r3, 0, 0, 2
/* 80349B04 00345764  3C 03 20 00 */	addis r0, r3, 0x2000
/* 80349B08 00345768  28 00 00 00 */	cmplwi r0, 0
/* 80349B0C 0034576C  40 82 00 0C */	bne lbl_80349B18
/* 80349B10 00345770  38 60 00 04 */	li r3, 4
/* 80349B14 00345774  48 00 01 10 */	b lbl_80349C24
lbl_80349B18:
/* 80349B18 00345778  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80349B1C 0034577C  7F C3 F3 78 */	mr r3, r30
/* 80349B20 00345780  A0 C1 00 08 */	lhz r6, 8(r1)
/* 80349B24 00345784  38 81 00 10 */	addi r4, r1, 0x10
/* 80349B28 00345788  4B FF F7 F5 */	bl gti2NewOutgoingConnection
/* 80349B2C 0034578C  2C 03 00 00 */	cmpwi r3, 0
/* 80349B30 00345790  41 82 00 08 */	beq lbl_80349B38
/* 80349B34 00345794  48 00 00 F0 */	b lbl_80349C24
lbl_80349B38:
/* 80349B38 00345798  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80349B3C 0034579C  7F 24 CB 78 */	mr r4, r25
/* 80349B40 003457A0  7F 45 D3 78 */	mr r5, r26
/* 80349B44 003457A4  7F 86 E3 78 */	mr r6, r28
/* 80349B48 003457A8  93 A3 00 20 */	stw r29, 0x20(r3)
/* 80349B4C 003457AC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80349B50 003457B0  4B FF F8 75 */	bl gti2StartConnectionAttempt
/* 80349B54 003457B4  2C 03 00 00 */	cmpwi r3, 0
/* 80349B58 003457B8  7C 7C 1B 78 */	mr r28, r3
/* 80349B5C 003457BC  41 82 00 14 */	beq lbl_80349B70
/* 80349B60 003457C0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80349B64 003457C4  48 00 3A 19 */	bl func_8034D57C
/* 80349B68 003457C8  7F 83 E3 78 */	mr r3, r28
/* 80349B6C 003457CC  48 00 00 B8 */	b lbl_80349C24
lbl_80349B70:
/* 80349B70 003457D0  2C 1B 00 00 */	cmpwi r27, 0
/* 80349B74 003457D4  40 82 00 1C */	bne lbl_80349B90
/* 80349B78 003457D8  2C 1F 00 00 */	cmpwi r31, 0
/* 80349B7C 003457DC  41 82 00 0C */	beq lbl_80349B88
/* 80349B80 003457E0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80349B84 003457E4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80349B88:
/* 80349B88 003457E8  38 60 00 00 */	li r3, 0
/* 80349B8C 003457EC  48 00 00 98 */	b lbl_80349C24
lbl_80349B90:
/* 80349B90 003457F0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80349B94 003457F4  3B 80 00 05 */	li r28, 5
/* 80349B98 003457F8  3B A0 00 00 */	li r29, 0
/* 80349B9C 003457FC  80 64 00 24 */	lwz r3, 0x24(r4)
/* 80349BA0 00345800  38 03 00 01 */	addi r0, r3, 1
/* 80349BA4 00345804  90 04 00 24 */	stw r0, 0x24(r4)
lbl_80349BA8:
/* 80349BA8 00345808  7F C3 F3 78 */	mr r3, r30
/* 80349BAC 0034580C  48 00 23 E9 */	bl func_8034BF94
/* 80349BB0 00345810  2C 03 00 00 */	cmpwi r3, 0
/* 80349BB4 00345814  41 82 00 1C */	beq lbl_80349BD0
/* 80349BB8 00345818  7F C3 F3 78 */	mr r3, r30
/* 80349BBC 0034581C  48 00 3D C5 */	bl func_8034D980
/* 80349BC0 00345820  2C 03 00 00 */	cmpwi r3, 0
/* 80349BC4 00345824  41 82 00 0C */	beq lbl_80349BD0
/* 80349BC8 00345828  7F C3 F3 78 */	mr r3, r30
/* 80349BCC 0034582C  48 00 3E 01 */	bl func_8034D9CC
lbl_80349BD0:
/* 80349BD0 00345830  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80349BD4 00345834  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80349BD8 00345838  7C 03 FE 70 */	srawi r3, r0, 0x1f
/* 80349BDC 0034583C  7C 1C 00 10 */	subfc r0, r28, r0
/* 80349BE0 00345840  7F 63 E9 15 */	adde. r27, r3, r29
/* 80349BE4 00345844  40 82 00 0C */	bne lbl_80349BF0
/* 80349BE8 00345848  38 60 00 01 */	li r3, 1
/* 80349BEC 0034584C  4B FE F4 39 */	bl msleep
lbl_80349BF0:
/* 80349BF0 00345850  2C 1B 00 00 */	cmpwi r27, 0
/* 80349BF4 00345854  41 82 FF B4 */	beq lbl_80349BA8
/* 80349BF8 00345858  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80349BFC 0034585C  80 64 00 24 */	lwz r3, 0x24(r4)
/* 80349C00 00345860  38 03 FF FF */	addi r0, r3, -1
/* 80349C04 00345864  90 04 00 24 */	stw r0, 0x24(r4)
/* 80349C08 00345868  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80349C0C 0034586C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80349C10 00345870  2C 00 00 05 */	cmpwi r0, 5
/* 80349C14 00345874  40 82 00 08 */	bne lbl_80349C1C
/* 80349C18 00345878  90 7F 00 00 */	stw r3, 0(r31)
lbl_80349C1C:
/* 80349C1C 0034587C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80349C20 00345880  80 63 00 18 */	lwz r3, 0x18(r3)
lbl_80349C24:
/* 80349C24 00345884  39 61 00 40 */	addi r11, r1, 0x40
/* 80349C28 00345888  4B E7 D5 45 */	bl func_801C716C
/* 80349C2C 0034588C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80349C30 00345890  7C 08 03 A6 */	mtlr r0
/* 80349C34 00345894  38 21 00 40 */	addi r1, r1, 0x40
/* 80349C38 00345898  4E 80 00 20 */	blr

.global gt2Send
gt2Send:
/* 80349C3C 0034589C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80349C40 003458A0  7C 08 02 A6 */	mflr r0
/* 80349C44 003458A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80349C48 003458A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80349C4C 003458AC  7C DF 33 78 */	mr r31, r6
/* 80349C50 003458B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80349C54 003458B4  7C 7E 1B 78 */	mr r30, r3
/* 80349C58 003458B8  90 81 00 08 */	stw r4, 8(r1)
/* 80349C5C 003458BC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80349C60 003458C0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80349C64 003458C4  2C 00 00 05 */	cmpwi r0, 5
/* 80349C68 003458C8  41 82 00 0C */	beq lbl_80349C74
/* 80349C6C 003458CC  38 60 00 08 */	li r3, 8
/* 80349C70 003458D0  48 00 00 B0 */	b lbl_80349D20
lbl_80349C74:
/* 80349C74 003458D4  38 61 00 08 */	addi r3, r1, 8
/* 80349C78 003458D8  38 81 00 0C */	addi r4, r1, 0xc
/* 80349C7C 003458DC  48 00 41 59 */	bl func_8034DDD4
/* 80349C80 003458E0  2C 1F 00 00 */	cmpwi r31, 0
/* 80349C84 003458E4  41 82 00 48 */	beq lbl_80349CCC
/* 80349C88 003458E8  80 7E 00 08 */	lwz r3, 8(r30)
/* 80349C8C 003458EC  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80349C90 003458F0  2C 00 00 02 */	cmpwi r0, 2
/* 80349C94 003458F4  40 82 00 38 */	bne lbl_80349CCC
/* 80349C98 003458F8  80 81 00 08 */	lwz r4, 8(r1)
/* 80349C9C 003458FC  38 61 00 10 */	addi r3, r1, 0x10
/* 80349CA0 00345900  38 A0 00 02 */	li r5, 2
/* 80349CA4 00345904  4B CB A3 5D */	bl memcpy
/* 80349CA8 00345908  80 7E 00 08 */	lwz r3, 8(r30)
/* 80349CAC 0034590C  A0 81 00 10 */	lhz r4, 0x10(r1)
/* 80349CB0 00345910  80 03 00 44 */	lwz r0, 0x44(r3)
/* 80349CB4 00345914  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80349CB8 00345918  7C 04 02 14 */	add r0, r4, r0
/* 80349CBC 0034591C  7C 03 00 00 */	cmpw r3, r0
/* 80349CC0 00345920  41 82 00 0C */	beq lbl_80349CCC
/* 80349CC4 00345924  38 60 00 09 */	li r3, 9
/* 80349CC8 00345928  48 00 00 58 */	b lbl_80349D20
lbl_80349CCC:
/* 80349CCC 0034592C  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 80349CD0 00345930  4B FE C2 19 */	bl ArrayLength
/* 80349CD4 00345934  2C 03 00 00 */	cmpwi r3, 0
/* 80349CD8 00345938  41 82 00 24 */	beq lbl_80349CFC
/* 80349CDC 0034593C  80 A1 00 08 */	lwz r5, 8(r1)
/* 80349CE0 00345940  7F C3 F3 78 */	mr r3, r30
/* 80349CE4 00345944  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80349CE8 00345948  7F E7 FB 78 */	mr r7, r31
/* 80349CEC 0034594C  38 80 00 00 */	li r4, 0
/* 80349CF0 00345950  4B FF F2 55 */	bl gti2SendFilterCallback
/* 80349CF4 00345954  38 60 00 00 */	li r3, 0
/* 80349CF8 00345958  48 00 00 28 */	b lbl_80349D20
lbl_80349CFC:
/* 80349CFC 0034595C  80 81 00 08 */	lwz r4, 8(r1)
/* 80349D00 00345960  7F C3 F3 78 */	mr r3, r30
/* 80349D04 00345964  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80349D08 00345968  7F E6 FB 78 */	mr r6, r31
/* 80349D0C 0034596C  48 00 31 BD */	bl func_8034CEC8
/* 80349D10 00345970  2C 03 00 00 */	cmpwi r3, 0
/* 80349D14 00345974  38 60 00 0A */	li r3, 0xa
/* 80349D18 00345978  41 82 00 08 */	beq lbl_80349D20
/* 80349D1C 0034597C  38 60 00 00 */	li r3, 0
lbl_80349D20:
/* 80349D20 00345980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80349D24 00345984  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80349D28 00345988  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80349D2C 0034598C  7C 08 03 A6 */	mtlr r0
/* 80349D30 00345990  38 21 00 20 */	addi r1, r1, 0x20
/* 80349D34 00345994  4E 80 00 20 */	blr

.global func_80349D38
func_80349D38:
/* 80349D38 00345998  48 00 2F 34 */	b func_8034CC6C

.global gt2CloseConnectionHard
gt2CloseConnectionHard:
/* 80349D3C 0034599C  38 80 00 01 */	li r4, 1
/* 80349D40 003459A0  4B FF FB 08 */	b func_80349848
lbl_80349D44:
/* 80349D44 003459A4  80 63 00 00 */	lwz r3, 0(r3)
/* 80349D48 003459A8  38 80 00 00 */	li r4, 0
/* 80349D4C 003459AC  4B FF FA FC */	b func_80349848

.global func_80349D50
func_80349D50:
/* 80349D50 003459B0  3C 80 80 35 */	lis r4, lbl_80349D44@ha
/* 80349D54 003459B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80349D58 003459B8  38 84 9D 44 */	addi r4, r4, lbl_80349D44@l
/* 80349D5C 003459BC  38 A0 00 00 */	li r5, 0
/* 80349D60 003459C0  4B FE CE 5C */	b TableMapSafe

.global gti2CloseAllConnectionsHardMap
gti2CloseAllConnectionsHardMap:
/* 80349D64 003459C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80349D68 003459C8  38 80 00 01 */	li r4, 1
/* 80349D6C 003459CC  4B FF FA DC */	b func_80349848

.global gt2CloseAllConnectionsHard
gt2CloseAllConnectionsHard:
/* 80349D70 003459D0  3C 80 80 35 */	lis r4, gti2CloseAllConnectionsHardMap@ha
/* 80349D74 003459D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80349D78 003459D8  38 84 9D 64 */	addi r4, r4, gti2CloseAllConnectionsHardMap@l
/* 80349D7C 003459DC  38 A0 00 00 */	li r5, 0
/* 80349D80 003459E0  4B FE CE 3C */	b TableMapSafe

.global func_80349D84
func_80349D84:
/* 80349D84 003459E4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80349D88 003459E8  2C 00 00 05 */	cmpwi r0, 5
/* 80349D8C 003459EC  40 80 00 0C */	bge lbl_80349D98
/* 80349D90 003459F0  38 60 00 00 */	li r3, 0
/* 80349D94 003459F4  4E 80 00 20 */	blr
lbl_80349D98:
/* 80349D98 003459F8  40 82 00 0C */	bne lbl_80349DA4
/* 80349D9C 003459FC  38 60 00 01 */	li r3, 1
/* 80349DA0 00345A00  4E 80 00 20 */	blr
lbl_80349DA4:
/* 80349DA4 00345A04  2C 00 00 06 */	cmpwi r0, 6
/* 80349DA8 00345A08  38 60 00 03 */	li r3, 3
/* 80349DAC 00345A0C  4C 82 00 20 */	bnelr
/* 80349DB0 00345A10  38 60 00 02 */	li r3, 2
/* 80349DB4 00345A14  4E 80 00 20 */	blr

.global func_80349DB8
func_80349DB8:
/* 80349DB8 00345A18  80 63 00 00 */	lwz r3, 0(r3)
/* 80349DBC 00345A1C  4E 80 00 20 */	blr

.global gt2GetLocalPort
gt2GetLocalPort:
/* 80349DC0 00345A20  A0 63 00 08 */	lhz r3, 8(r3)
/* 80349DC4 00345A24  4E 80 00 20 */	blr

.global gt2GetIncomingBufferFreeSpace
gt2GetIncomingBufferFreeSpace:
/* 80349DC8 00345A28  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 80349DCC 00345A2C  80 03 00 48 */	lwz r0, 0x48(r3)
/* 80349DD0 00345A30  7C 64 00 50 */	subf r3, r4, r0
/* 80349DD4 00345A34  4E 80 00 20 */	blr

.global gt2GetOutgoingBufferFreeSpace
gt2GetOutgoingBufferFreeSpace:
/* 80349DD8 00345A38  80 83 00 58 */	lwz r4, 0x58(r3)
/* 80349DDC 00345A3C  80 03 00 54 */	lwz r0, 0x54(r3)
/* 80349DE0 00345A40  7C 64 00 50 */	subf r3, r4, r0
/* 80349DE4 00345A44  4E 80 00 20 */	blr

.global gt2GetSocketSOCKET
gt2GetSocketSOCKET:
/* 80349DE8 00345A48  80 63 00 00 */	lwz r3, 0(r3)
/* 80349DEC 00345A4C  4E 80 00 20 */	blr

.global gt2SetUnrecognizedMessageCallback
gt2SetUnrecognizedMessageCallback:
/* 80349DF0 00345A50  90 83 00 30 */	stw r4, 0x30(r3)
/* 80349DF4 00345A54  4E 80 00 20 */	blr

.global gt2SetConnectionData
gt2SetConnectionData:
/* 80349DF8 00345A58  90 83 00 40 */	stw r4, 0x40(r3)
/* 80349DFC 00345A5C  4E 80 00 20 */	blr

.global gt2GetConnectionData
gt2GetConnectionData:
/* 80349E00 00345A60  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80349E04 00345A64  4E 80 00 20 */	blr
