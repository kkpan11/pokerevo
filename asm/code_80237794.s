.include "macros.inc"

.section .text, "ax"  # 0x80006980 - 0x803E1E60

.global func_80237794
func_80237794:
/* 80237794 002333F4  4E 80 00 20 */	blr

.global func_80237798
func_80237798:
/* 80237798 002333F8  4E 80 00 20 */	blr

.global func_8023779C
func_8023779C:
/* 8023779C 002333FC  38 A0 00 01 */	li r5, 1
/* 802377A0 00233400  38 6D A4 50 */	addi r3, r13, lbl_8063F710-_SDA_BASE_
/* 802377A4 00233404  38 80 00 04 */	li r4, 4
/* 802377A8 00233408  38 00 00 00 */	li r0, 0
/* 802377AC 0023340C  98 AD A4 50 */	stb r5, lbl_8063F710-_SDA_BASE_(r13)
/* 802377B0 00233410  B0 83 00 02 */	sth r4, 2(r3)
/* 802377B4 00233414  98 03 00 04 */	stb r0, 4(r3)
/* 802377B8 00233418  4E 80 00 20 */	blr
