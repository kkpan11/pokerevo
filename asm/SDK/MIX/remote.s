.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global __MIXRmtUpdateSettings
__MIXRmtUpdateSettings:
/* 8029A964 002965C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A968 002965C8  7C 08 02 A6 */	mflr r0
/* 8029A96C 002965CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A970 002965D0  1C 03 00 44 */	mulli r0, r3, 0x44
/* 8029A974 002965D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A978 002965D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8029A97C 002965DC  7C 9E 23 78 */	mr r30, r4
/* 8029A980 002965E0  80 6D AC 60 */	lwz r3, lbl_8063FF20-_SDA_BASE_(r13)
/* 8029A984 002965E4  7F E3 02 14 */	add r31, r3, r0
/* 8029A988 002965E8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8029A98C 002965EC  54 60 00 03 */	rlwinm. r0, r3, 0, 0, 1
/* 8029A990 002965F0  41 82 03 F8 */	beq lbl_8029AD88
/* 8029A994 002965F4  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8029A998 002965F8  41 82 00 50 */	beq lbl_8029A9E8
/* 8029A99C 002965FC  A0 1F 00 26 */	lhz r0, 0x26(r31)
/* 8029A9A0 00296600  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 8029A9A4 00296604  A0 1F 00 2A */	lhz r0, 0x2a(r31)
/* 8029A9A8 00296608  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 8029A9AC 0029660C  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 8029A9B0 00296610  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 8029A9B4 00296614  A0 1F 00 32 */	lhz r0, 0x32(r31)
/* 8029A9B8 00296618  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 8029A9BC 0029661C  A0 1F 00 36 */	lhz r0, 0x36(r31)
/* 8029A9C0 00296620  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 8029A9C4 00296624  A0 1F 00 3A */	lhz r0, 0x3a(r31)
/* 8029A9C8 00296628  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 8029A9CC 0029662C  A0 1F 00 3E */	lhz r0, 0x3e(r31)
/* 8029A9D0 00296630  B0 1F 00 3C */	sth r0, 0x3c(r31)
/* 8029A9D4 00296634  A0 1F 00 42 */	lhz r0, 0x42(r31)
/* 8029A9D8 00296638  B0 1F 00 40 */	sth r0, 0x40(r31)
/* 8029A9DC 0029663C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029A9E0 00296640  54 00 00 7E */	clrlwi r0, r0, 1
/* 8029A9E4 00296644  90 1F 00 00 */	stw r0, 0(r31)
lbl_8029A9E8:
/* 8029A9E8 00296648  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029A9EC 0029664C  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 8029A9F0 00296650  41 82 01 04 */	beq lbl_8029AAF4
/* 8029A9F4 00296654  80 7F 00 04 */	lwz r3, 4(r31)
/* 8029A9F8 00296658  4B FF CF 4D */	bl __MIXGetVolume
/* 8029A9FC 0029665C  B0 7F 00 26 */	sth r3, 0x26(r31)
/* 8029AA00 00296660  80 7F 00 08 */	lwz r3, 8(r31)
/* 8029AA04 00296664  4B FF CF 41 */	bl __MIXGetVolume
/* 8029AA08 00296668  B0 7F 00 2E */	sth r3, 0x2e(r31)
/* 8029AA0C 0029666C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8029AA10 00296670  4B FF CF 35 */	bl __MIXGetVolume
/* 8029AA14 00296674  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 8029AA18 00296678  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8029AA1C 0029667C  4B FF CF 29 */	bl __MIXGetVolume
/* 8029AA20 00296680  B0 7F 00 3E */	sth r3, 0x3e(r31)
/* 8029AA24 00296684  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029AA28 00296688  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8029AA2C 0029668C  41 82 00 14 */	beq lbl_8029AA40
/* 8029AA30 00296690  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8029AA34 00296694  4B FF CF 11 */	bl __MIXGetVolume
/* 8029AA38 00296698  B0 7F 00 2A */	sth r3, 0x2a(r31)
/* 8029AA3C 0029669C  48 00 00 18 */	b lbl_8029AA54
lbl_8029AA40:
/* 8029AA40 002966A0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8029AA44 002966A4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8029AA48 002966A8  7C 63 02 14 */	add r3, r3, r0
/* 8029AA4C 002966AC  4B FF CE F9 */	bl __MIXGetVolume
/* 8029AA50 002966B0  B0 7F 00 2A */	sth r3, 0x2a(r31)
lbl_8029AA54:
/* 8029AA54 002966B4  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029AA58 002966B8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8029AA5C 002966BC  41 82 00 14 */	beq lbl_8029AA70
/* 8029AA60 002966C0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029AA64 002966C4  4B FF CE E1 */	bl __MIXGetVolume
/* 8029AA68 002966C8  B0 7F 00 32 */	sth r3, 0x32(r31)
/* 8029AA6C 002966CC  48 00 00 18 */	b lbl_8029AA84
lbl_8029AA70:
/* 8029AA70 002966D0  80 7F 00 08 */	lwz r3, 8(r31)
/* 8029AA74 002966D4  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8029AA78 002966D8  7C 63 02 14 */	add r3, r3, r0
/* 8029AA7C 002966DC  4B FF CE C9 */	bl __MIXGetVolume
/* 8029AA80 002966E0  B0 7F 00 32 */	sth r3, 0x32(r31)
lbl_8029AA84:
/* 8029AA84 002966E4  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029AA88 002966E8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8029AA8C 002966EC  41 82 00 14 */	beq lbl_8029AAA0
/* 8029AA90 002966F0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8029AA94 002966F4  4B FF CE B1 */	bl __MIXGetVolume
/* 8029AA98 002966F8  B0 7F 00 3A */	sth r3, 0x3a(r31)
/* 8029AA9C 002966FC  48 00 00 18 */	b lbl_8029AAB4
lbl_8029AAA0:
/* 8029AAA0 00296700  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8029AAA4 00296704  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8029AAA8 00296708  7C 63 02 14 */	add r3, r3, r0
/* 8029AAAC 0029670C  4B FF CE 99 */	bl __MIXGetVolume
/* 8029AAB0 00296710  B0 7F 00 3A */	sth r3, 0x3a(r31)
lbl_8029AAB4:
/* 8029AAB4 00296714  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029AAB8 00296718  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8029AABC 0029671C  41 82 00 14 */	beq lbl_8029AAD0
/* 8029AAC0 00296720  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8029AAC4 00296724  4B FF CE 81 */	bl __MIXGetVolume
/* 8029AAC8 00296728  B0 7F 00 42 */	sth r3, 0x42(r31)
/* 8029AACC 0029672C  48 00 00 18 */	b lbl_8029AAE4
lbl_8029AAD0:
/* 8029AAD0 00296730  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8029AAD4 00296734  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8029AAD8 00296738  7C 63 02 14 */	add r3, r3, r0
/* 8029AADC 0029673C  4B FF CE 69 */	bl __MIXGetVolume
/* 8029AAE0 00296740  B0 7F 00 42 */	sth r3, 0x42(r31)
lbl_8029AAE4:
/* 8029AAE4 00296744  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029AAE8 00296748  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 8029AAEC 0029674C  64 00 80 00 */	oris r0, r0, 0x8000
/* 8029AAF0 00296750  90 1F 00 00 */	stw r0, 0(r31)
lbl_8029AAF4:
/* 8029AAF4 00296754  A0 9F 00 24 */	lhz r4, 0x24(r31)
/* 8029AAF8 00296758  38 7E 01 04 */	addi r3, r30, 0x104
/* 8029AAFC 0029675C  38 00 00 00 */	li r0, 0
/* 8029AB00 00296760  2C 04 00 00 */	cmpwi r4, 0
/* 8029AB04 00296764  B0 9E 01 02 */	sth r4, 0x102(r30)
/* 8029AB08 00296768  41 82 00 08 */	beq lbl_8029AB10
/* 8029AB0C 0029676C  60 00 00 01 */	ori r0, r0, 1
lbl_8029AB10:
/* 8029AB10 00296770  A0 DF 00 24 */	lhz r6, 0x24(r31)
/* 8029AB14 00296774  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8029AB18 00296778  A0 BF 00 26 */	lhz r5, 0x26(r31)
/* 8029AB1C 0029677C  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8029AB20 00296780  7C 86 28 50 */	subf r4, r6, r5
/* 8029AB24 00296784  7C 87 20 96 */	mulhw r4, r7, r4
/* 8029AB28 00296788  7C 84 16 70 */	srawi r4, r4, 2
/* 8029AB2C 0029678C  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8029AB30 00296790  7C A4 2A 14 */	add r5, r4, r5
/* 8029AB34 00296794  54 A4 04 3F */	clrlwi. r4, r5, 0x10
/* 8029AB38 00296798  B0 A3 00 00 */	sth r5, 0(r3)
/* 8029AB3C 0029679C  41 82 00 0C */	beq lbl_8029AB48
/* 8029AB40 002967A0  60 00 00 02 */	ori r0, r0, 2
/* 8029AB44 002967A4  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029AB48:
/* 8029AB48 002967A8  A0 9F 00 28 */	lhz r4, 0x28(r31)
/* 8029AB4C 002967AC  2C 04 00 00 */	cmpwi r4, 0
/* 8029AB50 002967B0  B0 83 00 02 */	sth r4, 2(r3)
/* 8029AB54 002967B4  41 82 00 0C */	beq lbl_8029AB60
/* 8029AB58 002967B8  60 00 00 04 */	ori r0, r0, 4
/* 8029AB5C 002967BC  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029AB60:
/* 8029AB60 002967C0  A0 DF 00 28 */	lhz r6, 0x28(r31)
/* 8029AB64 002967C4  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8029AB68 002967C8  A0 BF 00 2A */	lhz r5, 0x2a(r31)
/* 8029AB6C 002967CC  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8029AB70 002967D0  7C 86 28 50 */	subf r4, r6, r5
/* 8029AB74 002967D4  7C 87 20 96 */	mulhw r4, r7, r4
/* 8029AB78 002967D8  7C 84 16 70 */	srawi r4, r4, 2
/* 8029AB7C 002967DC  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8029AB80 002967E0  7C A4 2A 14 */	add r5, r4, r5
/* 8029AB84 002967E4  54 A4 04 3F */	clrlwi. r4, r5, 0x10
/* 8029AB88 002967E8  B0 A3 00 04 */	sth r5, 4(r3)
/* 8029AB8C 002967EC  41 82 00 0C */	beq lbl_8029AB98
/* 8029AB90 002967F0  60 00 00 08 */	ori r0, r0, 8
/* 8029AB94 002967F4  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029AB98:
/* 8029AB98 002967F8  A0 9F 00 2C */	lhz r4, 0x2c(r31)
/* 8029AB9C 002967FC  2C 04 00 00 */	cmpwi r4, 0
/* 8029ABA0 00296800  B0 83 00 06 */	sth r4, 6(r3)
/* 8029ABA4 00296804  41 82 00 0C */	beq lbl_8029ABB0
/* 8029ABA8 00296808  60 00 00 10 */	ori r0, r0, 0x10
/* 8029ABAC 0029680C  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029ABB0:
/* 8029ABB0 00296810  A0 DF 00 2C */	lhz r6, 0x2c(r31)
/* 8029ABB4 00296814  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8029ABB8 00296818  A0 BF 00 2E */	lhz r5, 0x2e(r31)
/* 8029ABBC 0029681C  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8029ABC0 00296820  7C 86 28 50 */	subf r4, r6, r5
/* 8029ABC4 00296824  7C 87 20 96 */	mulhw r4, r7, r4
/* 8029ABC8 00296828  7C 84 16 70 */	srawi r4, r4, 2
/* 8029ABCC 0029682C  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8029ABD0 00296830  7C A4 2A 14 */	add r5, r4, r5
/* 8029ABD4 00296834  54 A4 04 3F */	clrlwi. r4, r5, 0x10
/* 8029ABD8 00296838  B0 A3 00 08 */	sth r5, 8(r3)
/* 8029ABDC 0029683C  41 82 00 0C */	beq lbl_8029ABE8
/* 8029ABE0 00296840  60 00 00 20 */	ori r0, r0, 0x20
/* 8029ABE4 00296844  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029ABE8:
/* 8029ABE8 00296848  A0 9F 00 30 */	lhz r4, 0x30(r31)
/* 8029ABEC 0029684C  2C 04 00 00 */	cmpwi r4, 0
/* 8029ABF0 00296850  B0 83 00 0A */	sth r4, 0xa(r3)
/* 8029ABF4 00296854  41 82 00 0C */	beq lbl_8029AC00
/* 8029ABF8 00296858  60 00 00 40 */	ori r0, r0, 0x40
/* 8029ABFC 0029685C  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029AC00:
/* 8029AC00 00296860  A0 DF 00 30 */	lhz r6, 0x30(r31)
/* 8029AC04 00296864  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8029AC08 00296868  A0 BF 00 32 */	lhz r5, 0x32(r31)
/* 8029AC0C 0029686C  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8029AC10 00296870  7C 86 28 50 */	subf r4, r6, r5
/* 8029AC14 00296874  7C 87 20 96 */	mulhw r4, r7, r4
/* 8029AC18 00296878  7C 84 16 70 */	srawi r4, r4, 2
/* 8029AC1C 0029687C  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8029AC20 00296880  7C A4 2A 14 */	add r5, r4, r5
/* 8029AC24 00296884  54 A4 04 3F */	clrlwi. r4, r5, 0x10
/* 8029AC28 00296888  B0 A3 00 0C */	sth r5, 0xc(r3)
/* 8029AC2C 0029688C  41 82 00 0C */	beq lbl_8029AC38
/* 8029AC30 00296890  60 00 00 80 */	ori r0, r0, 0x80
/* 8029AC34 00296894  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029AC38:
/* 8029AC38 00296898  A0 9F 00 34 */	lhz r4, 0x34(r31)
/* 8029AC3C 0029689C  2C 04 00 00 */	cmpwi r4, 0
/* 8029AC40 002968A0  B0 83 00 0E */	sth r4, 0xe(r3)
/* 8029AC44 002968A4  41 82 00 0C */	beq lbl_8029AC50
/* 8029AC48 002968A8  60 00 01 00 */	ori r0, r0, 0x100
/* 8029AC4C 002968AC  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029AC50:
/* 8029AC50 002968B0  A0 DF 00 34 */	lhz r6, 0x34(r31)
/* 8029AC54 002968B4  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8029AC58 002968B8  A0 BF 00 36 */	lhz r5, 0x36(r31)
/* 8029AC5C 002968BC  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8029AC60 002968C0  7C 86 28 50 */	subf r4, r6, r5
/* 8029AC64 002968C4  7C 87 20 96 */	mulhw r4, r7, r4
/* 8029AC68 002968C8  7C 84 16 70 */	srawi r4, r4, 2
/* 8029AC6C 002968CC  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8029AC70 002968D0  7C A4 2A 14 */	add r5, r4, r5
/* 8029AC74 002968D4  54 A4 04 3F */	clrlwi. r4, r5, 0x10
/* 8029AC78 002968D8  B0 A3 00 10 */	sth r5, 0x10(r3)
/* 8029AC7C 002968DC  41 82 00 0C */	beq lbl_8029AC88
/* 8029AC80 002968E0  60 00 02 00 */	ori r0, r0, 0x200
/* 8029AC84 002968E4  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029AC88:
/* 8029AC88 002968E8  A0 9F 00 38 */	lhz r4, 0x38(r31)
/* 8029AC8C 002968EC  2C 04 00 00 */	cmpwi r4, 0
/* 8029AC90 002968F0  B0 83 00 12 */	sth r4, 0x12(r3)
/* 8029AC94 002968F4  41 82 00 0C */	beq lbl_8029ACA0
/* 8029AC98 002968F8  60 00 04 00 */	ori r0, r0, 0x400
/* 8029AC9C 002968FC  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029ACA0:
/* 8029ACA0 00296900  A0 DF 00 38 */	lhz r6, 0x38(r31)
/* 8029ACA4 00296904  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8029ACA8 00296908  A0 BF 00 3A */	lhz r5, 0x3a(r31)
/* 8029ACAC 0029690C  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8029ACB0 00296910  7C 86 28 50 */	subf r4, r6, r5
/* 8029ACB4 00296914  7C 87 20 96 */	mulhw r4, r7, r4
/* 8029ACB8 00296918  7C 84 16 70 */	srawi r4, r4, 2
/* 8029ACBC 0029691C  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8029ACC0 00296920  7C A4 2A 14 */	add r5, r4, r5
/* 8029ACC4 00296924  54 A4 04 3F */	clrlwi. r4, r5, 0x10
/* 8029ACC8 00296928  B0 A3 00 14 */	sth r5, 0x14(r3)
/* 8029ACCC 0029692C  41 82 00 0C */	beq lbl_8029ACD8
/* 8029ACD0 00296930  60 00 08 00 */	ori r0, r0, 0x800
/* 8029ACD4 00296934  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029ACD8:
/* 8029ACD8 00296938  A0 9F 00 3C */	lhz r4, 0x3c(r31)
/* 8029ACDC 0029693C  2C 04 00 00 */	cmpwi r4, 0
/* 8029ACE0 00296940  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8029ACE4 00296944  41 82 00 0C */	beq lbl_8029ACF0
/* 8029ACE8 00296948  60 00 10 00 */	ori r0, r0, 0x1000
/* 8029ACEC 0029694C  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029ACF0:
/* 8029ACF0 00296950  A0 DF 00 3C */	lhz r6, 0x3c(r31)
/* 8029ACF4 00296954  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8029ACF8 00296958  A0 BF 00 3E */	lhz r5, 0x3e(r31)
/* 8029ACFC 0029695C  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8029AD00 00296960  7C 86 28 50 */	subf r4, r6, r5
/* 8029AD04 00296964  7C 87 20 96 */	mulhw r4, r7, r4
/* 8029AD08 00296968  7C 84 16 70 */	srawi r4, r4, 2
/* 8029AD0C 0029696C  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8029AD10 00296970  7C A4 2A 14 */	add r5, r4, r5
/* 8029AD14 00296974  54 A4 04 3F */	clrlwi. r4, r5, 0x10
/* 8029AD18 00296978  B0 A3 00 18 */	sth r5, 0x18(r3)
/* 8029AD1C 0029697C  41 82 00 0C */	beq lbl_8029AD28
/* 8029AD20 00296980  60 00 20 00 */	ori r0, r0, 0x2000
/* 8029AD24 00296984  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029AD28:
/* 8029AD28 00296988  A0 9F 00 40 */	lhz r4, 0x40(r31)
/* 8029AD2C 0029698C  2C 04 00 00 */	cmpwi r4, 0
/* 8029AD30 00296990  B0 83 00 1A */	sth r4, 0x1a(r3)
/* 8029AD34 00296994  41 82 00 0C */	beq lbl_8029AD40
/* 8029AD38 00296998  60 00 40 00 */	ori r0, r0, 0x4000
/* 8029AD3C 0029699C  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029AD40:
/* 8029AD40 002969A0  A0 DF 00 40 */	lhz r6, 0x40(r31)
/* 8029AD44 002969A4  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8029AD48 002969A8  A0 BF 00 42 */	lhz r5, 0x42(r31)
/* 8029AD4C 002969AC  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8029AD50 002969B0  7C 86 28 50 */	subf r4, r6, r5
/* 8029AD54 002969B4  7C 87 20 96 */	mulhw r4, r7, r4
/* 8029AD58 002969B8  7C 84 16 70 */	srawi r4, r4, 2
/* 8029AD5C 002969BC  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8029AD60 002969C0  7C A4 2A 14 */	add r5, r4, r5
/* 8029AD64 002969C4  54 A4 04 3F */	clrlwi. r4, r5, 0x10
/* 8029AD68 002969C8  B0 A3 00 1C */	sth r5, 0x1c(r3)
/* 8029AD6C 002969CC  41 82 00 0C */	beq lbl_8029AD78
/* 8029AD70 002969D0  60 00 80 00 */	ori r0, r0, 0x8000
/* 8029AD74 002969D4  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8029AD78:
/* 8029AD78 002969D8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8029AD7C 002969DC  B0 1E 01 00 */	sth r0, 0x100(r30)
/* 8029AD80 002969E0  64 60 03 00 */	oris r0, r3, 0x300
/* 8029AD84 002969E4  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_8029AD88:
/* 8029AD88 002969E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029AD8C 002969EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029AD90 002969F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029AD94 002969F4  7C 08 03 A6 */	mtlr r0
/* 8029AD98 002969F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029AD9C 002969FC  4E 80 00 20 */	blr

.global __MIXRmtResetChannel
__MIXRmtResetChannel:
/* 8029ADA0 00296A00  80 AD AC 60 */	lwz r5, lbl_8063FF20-_SDA_BASE_(r13)
/* 8029ADA4 00296A04  1C 83 00 44 */	mulli r4, r3, 0x44
/* 8029ADA8 00296A08  38 60 00 00 */	li r3, 0
/* 8029ADAC 00296A0C  7C 64 29 6E */	stwux r3, r4, r5
/* 8029ADB0 00296A10  38 00 FC 40 */	li r0, -960
/* 8029ADB4 00296A14  90 64 00 04 */	stw r3, 4(r4)
/* 8029ADB8 00296A18  90 64 00 08 */	stw r3, 8(r4)
/* 8029ADBC 00296A1C  90 64 00 0C */	stw r3, 0xc(r4)
/* 8029ADC0 00296A20  90 64 00 10 */	stw r3, 0x10(r4)
/* 8029ADC4 00296A24  90 04 00 14 */	stw r0, 0x14(r4)
/* 8029ADC8 00296A28  90 04 00 18 */	stw r0, 0x18(r4)
/* 8029ADCC 00296A2C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8029ADD0 00296A30  90 04 00 20 */	stw r0, 0x20(r4)
/* 8029ADD4 00296A34  B0 64 00 40 */	sth r3, 0x40(r4)
/* 8029ADD8 00296A38  B0 64 00 3C */	sth r3, 0x3c(r4)
/* 8029ADDC 00296A3C  B0 64 00 38 */	sth r3, 0x38(r4)
/* 8029ADE0 00296A40  B0 64 00 34 */	sth r3, 0x34(r4)
/* 8029ADE4 00296A44  B0 64 00 30 */	sth r3, 0x30(r4)
/* 8029ADE8 00296A48  B0 64 00 2C */	sth r3, 0x2c(r4)
/* 8029ADEC 00296A4C  B0 64 00 28 */	sth r3, 0x28(r4)
/* 8029ADF0 00296A50  B0 64 00 24 */	sth r3, 0x24(r4)
/* 8029ADF4 00296A54  4E 80 00 20 */	blr