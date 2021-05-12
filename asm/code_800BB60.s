    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start sub_800BB60
sub_800BB60: @ 0x0800BB60
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0x1f
	rsbs r2, r2, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_800BB74
sub_800BB74: @ 0x0800BB74
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BB7C
sub_800BB7C: @ 0x0800BB7C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800BB74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800BB9C
	ldr r0, _0800BB98 @ =0x080E9605
	ldr r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	adds r1, r1, r0
	ldrb r0, [r1]
	b _0800BB9E
	.align 2, 0
_0800BB98: .4byte 0x080E9605
_0800BB9C:
	movs r0, #0xc7
_0800BB9E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800BBA4
sub_800BBA4: @ 0x0800BBA4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_800BB74
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800BBC0
	adds r0, r5, #0
	bl sub_800E010
	b _0800BBE4
_0800BBC0:
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r1, [r4]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1c
	adds r1, #0x40
	mov r0, sp
	bl sub_800DF50
	mov r0, sp
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #1
	bl sub_800E028
_0800BBE4:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800BBF0
sub_800BBF0: @ 0x0800BBF0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r0, r7, #0
	bl sub_800DF54
	cmp r0, #0x4e
	bgt _0800BC48
	cmp r0, #0x40
	blt _0800BC48
	ldrb r0, [r5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
	ldr r4, [r5]
	lsls r4, r4, #0x1b
	lsrs r4, r4, #0x1c
	adds r0, r7, #0
	bl sub_800DF54
	subs r0, #0x40
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	ldrb r2, [r5]
	movs r1, #0x1f
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5]
	adds r4, #0x40
	mov r0, sp
	adds r1, r4, #0
	bl sub_800DF50
	mov r0, sp
	ldrb r1, [r0]
	adds r0, r6, #0
	movs r2, #1
	bl sub_800E028
	b _0800BC4E
_0800BC48:
	adds r0, r6, #0
	bl sub_800E010
_0800BC4E:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800BC58
sub_800BC58: @ 0x0800BC58
	push {r4, lr}
	sub sp, #8
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r3, #0
	adds r1, r3, #0
	adds r1, #8
	add r4, sp, #4
	cmp r3, r1
	beq _0800BC76
	movs r2, #0
_0800BC70:
	stm r0!, {r2}
	cmp r0, r1
	bne _0800BC70
_0800BC76:
	ldr r0, [r3, #4]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	str r0, [r3, #4]
	adds r2, r3, #0
	adds r2, #8
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r1, r2, #0
	adds r1, #8
	cmp r2, r1
	beq _0800BC9A
	ldr r4, [r4]
_0800BC94:
	stm r0!, {r4}
	cmp r0, r1
	bne _0800BC94
_0800BC9A:
	ldr r0, [r2, #4]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	str r0, [r2, #4]
	adds r0, r3, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800BCB0
sub_800BCB0: @ 0x0800BCB0
	push {lr}
	subs r1, #0x4d
	cmp r1, #0x3b
	bhi _0800BCCC
	lsrs r2, r1, #5
	lsls r2, r2, #2
	adds r2, r0, r2
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0800BCCC:
	pop {r0}
	bx r0

	thumb_func_start sub_800BCD0
sub_800BCD0: @ 0x0800BCD0
	push {r4, lr}
	adds r4, r0, #0
	subs r1, #0x4d
	adds r3, r1, #0
	cmp r1, #0x3b
	bhi _0800BCF0
	lsrs r2, r1, #5
	lsls r2, r2, #2
	adds r2, r4, r2
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0800BCF0:
	adds r0, r4, #0
	adds r0, #8
	cmp r3, #0x3b
	bhi _0800BD0C
	lsrs r2, r3, #5
	lsls r2, r2, #2
	adds r2, r0, r2
	movs r0, #0x1f
	ands r3, r0
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0800BD0C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800BD14
sub_800BD14: @ 0x0800BD14
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	subs r2, #0x4d
	movs r0, #0
	cmp r2, #0x3b
	bhi _0800BD3A
	lsrs r1, r2, #5
	lsls r1, r1, #2
	adds r1, r3, r1
	movs r0, #0x1f
	ands r0, r2
	movs r2, #1
	lsls r2, r0
	ldr r1, [r1]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0800BD3A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800BD40
sub_800BD40: @ 0x0800BD40
	push {lr}
	adds r2, r1, #0
	subs r2, #0x4d
	adds r3, r0, #0
	adds r3, #8
	movs r0, #0
	cmp r2, #0x3b
	bhi _0800BD68
	lsrs r1, r2, #5
	lsls r1, r1, #2
	adds r1, r3, r1
	movs r0, #0x1f
	ands r0, r2
	movs r2, #1
	lsls r2, r0
	ldr r1, [r1]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0800BD68:
	pop {r1}
	bx r1

	thumb_func_start sub_800BD6C
sub_800BD6C: @ 0x0800BD6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	movs r0, #8
	adds r0, r0, r2
	mov r8, r0
	movs r5, #0
	ldr r7, _0800BDD8 @ =0x55555555
	mov ip, r7
	ldr r0, _0800BDDC @ =0x33333333
	mov sb, r0
	ldr r6, _0800BDE0 @ =0x0F0F0F0F
	ldr r4, _0800BDE4 @ =0x00FF00FF
	ldr r3, _0800BDE8 @ =0x0000FFFF
_0800BD8C:
	ldm r2!, {r0}
	adds r1, r0, #0
	mov r7, ip
	ands r1, r7
	lsrs r0, r0, #1
	ands r0, r7
	adds r0, r1, r0
	adds r1, r0, #0
	mov r7, sb
	ands r1, r7
	lsrs r0, r0, #2
	ands r0, r7
	adds r0, r1, r0
	adds r1, r0, #0
	ands r1, r6
	lsrs r0, r0, #4
	ands r0, r6
	adds r0, r1, r0
	adds r1, r0, #0
	ands r1, r4
	lsrs r0, r0, #8
	ands r0, r4
	adds r0, r1, r0
	adds r1, r0, #0
	ands r1, r3
	lsrs r0, r0, #0x10
	ands r0, r3
	adds r1, r1, r0
	adds r5, r5, r1
	cmp r2, r8
	bne _0800BD8C
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BDD8: .4byte 0x55555555
_0800BDDC: .4byte 0x33333333
_0800BDE0: .4byte 0x0F0F0F0F
_0800BDE4: .4byte 0x00FF00FF
_0800BDE8: .4byte 0x0000FFFF

	thumb_func_start sub_800BDEC
sub_800BDEC: @ 0x0800BDEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	adds r2, #8
	movs r0, #8
	adds r0, r0, r2
	mov r8, r0
	movs r5, #0
	ldr r7, _0800BE5C @ =0x55555555
	mov ip, r7
	ldr r0, _0800BE60 @ =0x33333333
	mov sb, r0
	ldr r6, _0800BE64 @ =0x0F0F0F0F
	ldr r4, _0800BE68 @ =0x00FF00FF
	ldr r3, _0800BE6C @ =0x0000FFFF
_0800BE0E:
	ldm r2!, {r0}
	adds r1, r0, #0
	mov r7, ip
	ands r1, r7
	lsrs r0, r0, #1
	ands r0, r7
	adds r0, r1, r0
	adds r1, r0, #0
	mov r7, sb
	ands r1, r7
	lsrs r0, r0, #2
	ands r0, r7
	adds r0, r1, r0
	adds r1, r0, #0
	ands r1, r6
	lsrs r0, r0, #4
	ands r0, r6
	adds r0, r1, r0
	adds r1, r0, #0
	ands r1, r4
	lsrs r0, r0, #8
	ands r0, r4
	adds r0, r1, r0
	adds r1, r0, #0
	ands r1, r3
	lsrs r0, r0, #0x10
	ands r0, r3
	adds r1, r1, r0
	adds r5, r5, r1
	cmp r2, r8
	bne _0800BE0E
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BE5C: .4byte 0x55555555
_0800BE60: .4byte 0x33333333
_0800BE64: .4byte 0x0F0F0F0F
_0800BE68: .4byte 0x00FF00FF
_0800BE6C: .4byte 0x0000FFFF

	thumb_func_start sub_800BE70
sub_800BE70: @ 0x0800BE70
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0
	strb r0, [r6]
	ldrb r1, [r6, #1]
	subs r0, #2
	ands r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	movs r4, #0x11
	rsbs r4, r4, #0
	ands r0, r4
	movs r3, #0x21
	rsbs r3, r3, #0
	ands r0, r3
	movs r5, #0x41
	rsbs r5, r5, #0
	ands r0, r5
	strb r0, [r6, #1]
	ldr r0, [r6]
	ldr r1, _0800BF10 @ =0xFF807FFF
	ands r0, r1
	movs r1, #0xbe
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r6]
	ldrb r0, [r6, #3]
	ands r2, r0
	ands r2, r4
	ands r2, r3
	movs r0, #0xc0
	orrs r2, r0
	strb r2, [r6, #3]
	ldrb r1, [r6, #4]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x17
	orrs r0, r1
	ands r0, r5
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r6, #4]
	movs r0, #0
	strb r0, [r6, #5]
	adds r0, r6, #0
	adds r0, #8
	bl sub_800B660
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_800B8E4
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_800BB60
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_800B2EC
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_800BC58
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800BF10: .4byte 0xFF807FFF

	thumb_func_start sub_800BF14
sub_800BF14: @ 0x0800BF14
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bx lr

	thumb_func_start sub_800BF1C
sub_800BF1C: @ 0x0800BF1C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1e
	movs r2, #0
	cmp r0, #0
	bge _0800BF2E
	adds r2, r1, #0
	adds r2, #8
_0800BF2E:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_800BF34
sub_800BF34: @ 0x0800BF34
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800BF48
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r1, r2
	b _0800BF4A
_0800BF48:
	movs r0, #0
_0800BF4A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800BF50
sub_800BF50: @ 0x0800BF50
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0800BF64
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r1, r2
	b _0800BF66
_0800BF64:
	movs r0, #0
_0800BF66:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800BF6C
sub_800BF6C: @ 0x0800BF6C
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	bx lr

	thumb_func_start sub_800BF74
sub_800BF74: @ 0x0800BF74
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	bx lr

	thumb_func_start sub_800BF7C
sub_800BF7C: @ 0x0800BF7C
	ldrb r0, [r0]
	lsrs r0, r0, #6
	bx lr
	.align 2, 0

	thumb_func_start sub_800BF84
sub_800BF84: @ 0x0800BF84
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BF8C
sub_800BF8C: @ 0x0800BF8C
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BF94
sub_800BF94: @ 0x0800BF94
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BF9C
sub_800BF9C: @ 0x0800BF9C
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BFA4
sub_800BFA4: @ 0x0800BFA4
	ldr r0, [r0]
	lsls r0, r0, #9
	lsrs r0, r0, #0x18
	bx lr

	thumb_func_start sub_800BFAC
sub_800BFAC: @ 0x0800BFAC
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BFB4
sub_800BFB4: @ 0x0800BFB4
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BFBC
sub_800BFBC: @ 0x0800BFBC
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BFC4
sub_800BFC4: @ 0x0800BFC4
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BFCC
sub_800BFCC: @ 0x0800BFCC
	ldrb r0, [r0, #4]
	lsrs r0, r0, #7
	bx lr
	.align 2, 0

	thumb_func_start sub_800BFD4
sub_800BFD4: @ 0x0800BFD4
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BFDC
sub_800BFDC: @ 0x0800BFDC
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BFE4
sub_800BFE4: @ 0x0800BFE4
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BFEC
sub_800BFEC: @ 0x0800BFEC
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BFF4
sub_800BFF4: @ 0x0800BFF4
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800BFFC
sub_800BFFC: @ 0x0800BFFC
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800C004
sub_800C004: @ 0x0800C004
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800C00C
sub_800C00C: @ 0x0800C00C
	ldrb r0, [r0, #5]
	lsrs r0, r0, #7
	bx lr
	.align 2, 0

	thumb_func_start sub_800C014
sub_800C014: @ 0x0800C014
	ldrb r2, [r0, #3]
	lsrs r2, r2, #6
	ldrb r0, [r0, #4]
	movs r1, #0x3f
	ands r0, r1
	lsls r0, r0, #2
	orrs r0, r2
	bx lr

	thumb_func_start sub_800C024
sub_800C024: @ 0x0800C024
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bhi _0800C042
	adds r1, r0, #1
	movs r0, #3
	ands r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0800C042:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C048
sub_800C048: @ 0x0800C048
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1e
	movs r2, #0
	cmp r0, #0
	bge _0800C05A
	adds r2, r1, #0
	adds r2, #8
_0800C05A:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_800C060
sub_800C060: @ 0x0800C060
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800C074
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r1, r2
	b _0800C076
_0800C074:
	movs r0, #0
_0800C076:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800C07C
sub_800C07C: @ 0x0800C07C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _0800C090
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r1, r2
	b _0800C092
_0800C090:
	movs r0, #0
_0800C092:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800C098
sub_800C098: @ 0x0800C098
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bls _0800C0B6
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0800C0B6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C0BC
sub_800C0BC: @ 0x0800C0BC
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bls _0800C0DA
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0800C0DA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C0E0
sub_800C0E0: @ 0x0800C0E0
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bls _0800C0F8
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0800C0F8:
	pop {r0}
	bx r0

	thumb_func_start sub_800C0FC
sub_800C0FC: @ 0x0800C0FC
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _0800C112
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #1]
_0800C112:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C118
sub_800C118: @ 0x0800C118
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800C12E
	ldrb r0, [r2, #1]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #1]
_0800C12E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C134
sub_800C134: @ 0x0800C134
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800C14A
	ldrb r0, [r2, #1]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #1]
_0800C14A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C150
sub_800C150: @ 0x0800C150
	ldrb r1, [r0, #1]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0, #1]
	bx lr
	.align 2, 0

	thumb_func_start sub_800C15C
sub_800C15C: @ 0x0800C15C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bls _0800C172
	ldrb r0, [r2, #1]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
_0800C172:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C178
sub_800C178: @ 0x0800C178
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800C18E
	ldrb r0, [r2, #1]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #1]
_0800C18E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C194
sub_800C194: @ 0x0800C194
	ldrb r1, [r0, #1]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #1]
	bx lr
	.align 2, 0

	thumb_func_start sub_800C1A0
sub_800C1A0: @ 0x0800C1A0
	push {lr}
	adds r3, r0, #0
	movs r2, #0xff
	ands r2, r1
	lsls r2, r2, #0xf
	ldr r0, [r3]
	ldr r1, _0800C1C8 @ =0xFF807FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	lsls r0, r0, #9
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0800C1E4
	lsls r0, r0, #2
	ldr r1, _0800C1CC @ =_0800C1D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C1C8: .4byte 0xFF807FFF
_0800C1CC: .4byte _0800C1D0
_0800C1D0: @ jump table
	.4byte _0800C1F4 @ case 0
	.4byte _0800C214 @ case 1
	.4byte _0800C204 @ case 2
	.4byte _0800C214 @ case 3
	.4byte _0800C214 @ case 4
_0800C1E4:
	ldrh r1, [r3, #2]
	ldr r0, _0800C1F0 @ =0xFFFFF87F
	ands r0, r1
	strh r0, [r3, #2]
	b _0800C224
	.align 2, 0
_0800C1F0: .4byte 0xFFFFF87F
_0800C1F4:
	ldrh r0, [r3, #2]
	ldr r1, _0800C200 @ =0xFFFFF87F
	ands r1, r0
	movs r2, #0xe0
	lsls r2, r2, #2
	b _0800C21E
	.align 2, 0
_0800C200: .4byte 0xFFFFF87F
_0800C204:
	ldrh r0, [r3, #2]
	ldr r1, _0800C210 @ =0xFFFFF87F
	ands r1, r0
	movs r2, #0xa0
	lsls r2, r2, #3
	b _0800C21E
	.align 2, 0
_0800C210: .4byte 0xFFFFF87F
_0800C214:
	ldrh r0, [r3, #2]
	ldr r1, _0800C228 @ =0xFFFFF87F
	ands r1, r0
	movs r2, #0xa0
	lsls r2, r2, #2
_0800C21E:
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r3, #2]
_0800C224:
	pop {r0}
	bx r0
	.align 2, 0
_0800C228: .4byte 0xFFFFF87F

	thumb_func_start sub_800C22C
sub_800C22C: @ 0x0800C22C
	ldrb r1, [r0, #3]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0, #3]
	bx lr
	.align 2, 0

	thumb_func_start sub_800C238
sub_800C238: @ 0x0800C238
	ldrb r1, [r0, #3]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #3]
	bx lr
	.align 2, 0

	thumb_func_start sub_800C244
sub_800C244: @ 0x0800C244
	ldrb r1, [r0, #3]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #3]
	bx lr
	.align 2, 0
_0800C250:
	.byte 0xC2, 0x78, 0x21, 0x21, 0x49, 0x42, 0x11, 0x40, 0xC1, 0x70, 0x70, 0x47

	thumb_func_start sub_800C25C
sub_800C25C: @ 0x0800C25C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bls _0800C278
	ldrb r2, [r1, #4]
	lsls r0, r2, #0x19
	cmp r0, #0
	blt _0800C278
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r1, #4]
_0800C278:
	pop {r0}
	bx r0

	thumb_func_start sub_800C27C
sub_800C27C: @ 0x0800C27C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800C29C
	adds r0, r4, #0
	bl sub_800C048
	cmp r0, #0
	beq _0800C29C
	ldrb r0, [r4, #4]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #4]
_0800C29C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C2A4
sub_800C2A4: @ 0x0800C2A4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800C2B8
	ldrb r0, [r2, #5]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #5]
_0800C2B8:
	pop {r0}
	bx r0

	thumb_func_start sub_800C2BC
sub_800C2BC: @ 0x0800C2BC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800C2D0
	ldrb r0, [r2, #5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #5]
_0800C2D0:
	pop {r0}
	bx r0

	thumb_func_start sub_800C2D4
sub_800C2D4: @ 0x0800C2D4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800C2E8
	ldrb r0, [r2, #5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #5]
_0800C2E8:
	pop {r0}
	bx r0

	thumb_func_start sub_800C2EC
sub_800C2EC: @ 0x0800C2EC
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800C300
	ldrb r0, [r2, #5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #5]
_0800C300:
	pop {r0}
	bx r0

	thumb_func_start sub_800C304
sub_800C304: @ 0x0800C304
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800C318
	ldrb r0, [r2, #5]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
_0800C318:
	pop {r0}
	bx r0

	thumb_func_start sub_800C31C
sub_800C31C: @ 0x0800C31C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800C330
	ldrb r0, [r2, #5]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #5]
_0800C330:
	pop {r0}
	bx r0

	thumb_func_start sub_800C334
sub_800C334: @ 0x0800C334
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800C348
	ldrb r0, [r2, #5]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #5]
_0800C348:
	pop {r0}
	bx r0

	thumb_func_start sub_800C34C
sub_800C34C: @ 0x0800C34C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #4]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800C360
	ldrb r0, [r2, #5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #5]
_0800C360:
	pop {r0}
	bx r0

	thumb_func_start sub_800C364
sub_800C364: @ 0x0800C364
	push {r4, r5, lr}
	movs r3, #3
	ands r3, r1
	lsls r3, r3, #6
	ldrb r4, [r0, #3]
	movs r5, #0x3f
	adds r2, r5, #0
	ands r2, r4
	orrs r2, r3
	strb r2, [r0, #3]
	lsrs r1, r1, #2
	ands r1, r5
	ldrb r3, [r0, #4]
	movs r2, #0x40
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C390
sub_800C390: @ 0x0800C390
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4, #4]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r4, #4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0800C446
	ldr r0, [r4]
	lsls r0, r0, #9
	lsrs r0, r0, #0x18
	cmp r0, #0x5f
	beq _0800C446
	ldrh r2, [r4, #2]
	movs r0, #0xf0
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0800C3D2
	lsls r0, r2, #0x15
	lsrs r0, r0, #0x1c
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #7
	ldr r1, _0800C3E8 @ =0xFFFFF87F
	ands r1, r2
	orrs r1, r0
	strh r1, [r4, #2]
_0800C3D2:
	ldr r1, [r4]
	lsls r0, r1, #9
	lsrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #4
	bhi _0800C420
	lsls r0, r0, #2
	ldr r1, _0800C3EC @ =_0800C3F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C3E8: .4byte 0xFFFFF87F
_0800C3EC: .4byte _0800C3F0
_0800C3F0: @ jump table
	.4byte _0800C404 @ case 0
	.4byte _0800C40A @ case 1
	.4byte _0800C410 @ case 2
	.4byte _0800C410 @ case 3
	.4byte _0800C404 @ case 4
_0800C404:
	cmp r3, #0
	beq _0800C420
	b _0800C414
_0800C40A:
	cmp r3, #1
	beq _0800C420
	b _0800C414
_0800C410:
	cmp r3, #2
	beq _0800C420
_0800C414:
	ldr r0, _0800C44C @ =0xFF807FFF
	ands r0, r2
	movs r1, #0xbe
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4]
_0800C420:
	ldrh r1, [r4, #2]
	movs r0, #0xf0
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800C446
	bl sub_80D11E4
	movs r1, #0xff
	ands r1, r0
	cmp r1, #0x64
	bgt _0800C446
	ldr r0, [r4]
	ldr r1, _0800C44C @ =0xFF807FFF
	ands r0, r1
	movs r1, #0xbe
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4]
_0800C446:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C44C: .4byte 0xFF807FFF

	thumb_func_start sub_800C450
sub_800C450: @ 0x0800C450
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	ldrb r1, [r0]
	movs r3, #2
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrh r1, [r1]
	ldr r0, _0800C548 @ =0xFFFFF801
	ands r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r1, #1]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	ldr r0, [r1]
	ldr r1, _0800C54C @ =0xFFF00FFF
	ands r0, r1
	mov r1, ip
	str r0, [r1]
	ldrb r1, [r1, #2]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #2]
	movs r2, #0
	strb r2, [r1, #3]
	ldrb r1, [r1, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #4]
	strb r2, [r1, #8]
	mov r2, ip
	adds r2, #0x18
	movs r4, #7
	adds r5, r3, #0
	adds r3, #1
_0800C4AE:
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #0x30
	subs r4, #1
	cmp r4, r3
	bne _0800C4AE
	movs r2, #0xcc
	lsls r2, r2, #1
	add r2, ip
	movs r3, #7
	movs r0, #0x8d
	lsls r0, r0, #2
	mov r8, r0
	ldr r4, _0800C550 @ =0xFFFFFC00
	movs r5, #3
	movs r7, #8
	rsbs r7, r7, #0
	movs r6, #1
	rsbs r6, r6, #0
_0800C4D8:
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldrh r1, [r2, #2]
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r2, #3]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #3]
	ldrh r1, [r2, #4]
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r2, #6]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2, #6]
	adds r2, #8
	subs r3, #1
	cmp r3, r6
	bne _0800C4D8
	movs r2, #0xec
	lsls r2, r2, #1
	add r2, ip
	movs r3, #1
	movs r6, #4
	rsbs r6, r6, #0
	movs r5, #5
	rsbs r5, r5, #0
	movs r4, #1
	rsbs r4, r4, #0
_0800C528:
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	ands r0, r5
	strb r0, [r2]
	adds r2, #4
	subs r3, #1
	cmp r3, r4
	bne _0800C528
	mov r0, ip
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800C548: .4byte 0xFFFFF801
_0800C54C: .4byte 0xFFF00FFF
_0800C550: .4byte 0xFFFFFC00

	thumb_func_start sub_800C554
sub_800C554: @ 0x0800C554
	movs r1, #0x78
	movs r2, #0xd8
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_800C560
sub_800C560: @ 0x0800C560
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800C568
sub_800C568: @ 0x0800C568
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x16
	bx lr

	thumb_func_start sub_800C570
sub_800C570: @ 0x0800C570
	push {lr}
	sub sp, #8
	movs r1, #8
	str r1, [sp]
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #2
	adds r0, #4
	str r0, [sp, #4]
	add r2, sp, #4
	mov r3, sp
	cmp r1, r0
	bls _0800C58E
	adds r3, r2, #0
_0800C58E:
	ldr r0, [r3]
	add sp, #8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800C598
sub_800C598: @ 0x0800C598
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_800C570
	cmp r5, r0
	blo _0800C5AA
	movs r0, #0
	b _0800C5BC
_0800C5AA:
	ldr r1, [r4]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x18
	movs r0, #1
	lsls r0, r5
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0800C5BC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800C5C4
sub_800C5C4: @ 0x0800C5C4
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800C5CC
sub_800C5CC: @ 0x0800C5CC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800C570
	cmp r4, r0
	blo _0800C5DE
	movs r0, #0
	b _0800C5EC
_0800C5DE:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x18
	adds r0, r5, r0
	bl sub_800CCB8
_0800C5EC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800C5F4
sub_800C5F4: @ 0x0800C5F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800C570
	adds r6, r0, #0
	cmp r4, r6
	bhs _0800C626
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x18
	adds r5, r0, r5
_0800C60E:
	adds r0, r5, #0
	bl sub_800CCAC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800C61E
	adds r0, r4, #0
	b _0800C62A
_0800C61E:
	adds r5, #0x30
	adds r4, #1
	cmp r4, r6
	blo _0800C60E
_0800C626:
	movs r0, #1
	rsbs r0, r0, #0
_0800C62A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_800C630
sub_800C630: @ 0x0800C630
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_800C570
	adds r5, r0, #0
	movs r7, #0
	movs r6, #0
	cmp r7, r5
	bhs _0800C658
	adds r4, #0x18
_0800C644:
	adds r0, r4, #0
	bl sub_800CCB8
	cmp r0, #0
	beq _0800C650
	adds r7, #1
_0800C650:
	adds r4, #0x30
	adds r6, #1
	cmp r6, r5
	blo _0800C644
_0800C658:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800C660
sub_800C660: @ 0x0800C660
	push {lr}
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	movs r1, #2
	cmp r0, #0
	bne _0800C670
	movs r1, #1
_0800C670:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800C678
sub_800C678: @ 0x0800C678
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800C660
	cmp r4, r0
	blo _0800C68A
	movs r0, #0
	b _0800C698
_0800C68A:
	lsls r0, r4, #2
	movs r1, #0xec
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_800CD38
_0800C698:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800C6A0
sub_800C6A0: @ 0x0800C6A0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800C570
	cmp r4, r0
	bhs _0800C6D0
	lsls r2, r4, #3
	adds r0, r5, r2
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	ldr r1, _0800C6CC @ =0x8CC00000
	cmp r0, r1
	bhi _0800C6D0
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r2, r1
	adds r0, r5, r0
	b _0800C6D2
	.align 2, 0
_0800C6CC: .4byte 0x8CC00000
_0800C6D0:
	movs r0, #0
_0800C6D2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_800C6D8
sub_800C6D8: @ 0x0800C6D8
	push {lr}
	ldrb r1, [r0, #2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	blt _0800C6E8
	movs r0, #1
	rsbs r0, r0, #0
	b _0800C6EA
_0800C6E8:
	lsrs r0, r1, #5
_0800C6EA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800C6F0
sub_800C6F0: @ 0x0800C6F0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	bl sub_800C570
	adds r1, r0, #0
	cmp r4, r1
	blo _0800C70A
	adds r0, r4, #0
	bl sub_80D0F4E
	adds r4, r0, #0
_0800C70A:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x88
	movs r1, #0x60
	strh r0, [r5]
	strh r1, [r5, #2]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_800C720
sub_800C720: @ 0x0800C720
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800C660
	cmp r4, r0
	blo _0800C732
	movs r0, #0
	b _0800C740
_0800C732:
	lsls r0, r4, #2
	movs r1, #0xec
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_800CD58
_0800C740:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800C748
sub_800C748: @ 0x0800C748
	lsls r2, r2, #5
	movs r1, #0x98
	subs r1, r1, r2
	movs r2, #0x28
	strh r2, [r0]
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start sub_800C758
sub_800C758: @ 0x0800C758
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #8
	orrs r0, r2
	bx lr
	.align 2, 0

	thumb_func_start sub_800C768
sub_800C768: @ 0x0800C768
	adds r0, #8
	bx lr

	thumb_func_start sub_800C76C
sub_800C76C: @ 0x0800C76C
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0800C78E
	lsls r0, r2, #0x1f
	lsrs r0, r0, #0x1f
	adds r0, #1
	movs r1, #1
	ands r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0800C78E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C794
sub_800C794: @ 0x0800C794
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _0800C7CC @ =0x000003E7
	str r2, [sp]
	ldrh r4, [r5]
	lsls r0, r4, #0x15
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	str r0, [sp, #4]
	add r1, sp, #4
	mov r3, sp
	cmp r2, r0
	bls _0800C7B2
	adds r3, r1, #0
_0800C7B2:
	ldr r0, [r3]
	ldr r2, _0800C7D0 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _0800C7D4 @ =0xFFFFF801
	ands r1, r4
	orrs r1, r0
	strh r1, [r5]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C7CC: .4byte 0x000003E7
_0800C7D0: .4byte 0x000003FF
_0800C7D4: .4byte 0xFFFFF801

	thumb_func_start sub_800C7D8
sub_800C7D8: @ 0x0800C7D8
	push {r4, lr}
	adds r3, r0, #0
	ldrh r2, [r3]
	lsls r0, r2, #0x15
	lsrs r0, r0, #0x16
	cmp r0, r1
	bhi _0800C7F4
	ldr r0, _0800C7F0 @ =0xFFFFF801
	ands r0, r2
	strh r0, [r3]
	b _0800C806
	.align 2, 0
_0800C7F0: .4byte 0xFFFFF801
_0800C7F4:
	subs r0, r0, r1
	ldr r4, _0800C80C @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _0800C810 @ =0xFFFFF801
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
_0800C806:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800C80C: .4byte 0x000003FF
_0800C810: .4byte 0xFFFFF801

	thumb_func_start sub_800C814
sub_800C814: @ 0x0800C814
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_800C570
	cmp r5, r0
	bhs _0800C844
	ldr r3, [r4]
	lsls r0, r3, #0xc
	lsrs r1, r0, #0x18
	movs r2, #1
	lsls r2, r5
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0800C844
	orrs r1, r2
	movs r0, #0xff
	ands r1, r0
	lsls r1, r1, #0xc
	ldr r0, _0800C84C @ =0xFFF00FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r4]
_0800C844:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C84C: .4byte 0xFFF00FFF
_0800C850:
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0xFF, 0xF7, 0x8B, 0xFE, 0x85, 0x42, 0x0E, 0xD2, 0x23, 0x68
	.byte 0x18, 0x03, 0x01, 0x0E, 0x01, 0x22, 0xAA, 0x40, 0x08, 0x1C, 0x10, 0x40, 0x00, 0x28, 0x05, 0xD0
	.byte 0x91, 0x43, 0x09, 0x03, 0x03, 0x48, 0x18, 0x40, 0x08, 0x43, 0x20, 0x60, 0x30, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xFF, 0x0F, 0xF0, 0xFF

	thumb_func_start sub_800C888
sub_800C888: @ 0x0800C888
	ldrb r1, [r0, #1]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0, #1]
	bx lr
	.align 2, 0

	thumb_func_start sub_800C894
sub_800C894: @ 0x0800C894
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800C570
	cmp r4, r0
	blo _0800C8A6
	movs r0, #0
	b _0800C8B4
_0800C8A6:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x18
	adds r0, r5, r0
	bl sub_800CCD0
_0800C8B4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800C8BC
sub_800C8BC: @ 0x0800C8BC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0
	b _0800C8E4
_0800C8C6:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x18
	adds r0, r5, r0
	adds r1, r6, #0
	bl sub_800CCE8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800C8E0
	adds r0, r4, #0
	b _0800C8F2
_0800C8E0:
	adds r1, r4, #1
	adds r0, r5, #0
_0800C8E4:
	bl sub_800C5F4
	adds r4, r0, #0
	cmp r4, #0
	bge _0800C8C6
	movs r0, #1
	rsbs r0, r0, #0
_0800C8F2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_800C8F8
sub_800C8F8: @ 0x0800C8F8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800C570
	cmp r4, r0
	bhs _0800C914
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x18
	adds r0, r5, r0
	bl sub_800CD20
_0800C914:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C91C
sub_800C91C: @ 0x0800C91C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	bl sub_800C894
	adds r4, r0, #0
	cmp r4, #0
	beq _0800C988
	bl sub_809B220
	adds r2, r0, #0
	ldrb r1, [r5, #3]
	ldrb r0, [r5, #4]
	movs r3, #3
	ands r0, r3
	lsls r0, r0, #8
	orrs r0, r1
	cmp r0, r2
	bhs _0800C980
	strb r2, [r5, #3]
	lsrs r0, r2, #8
	ands r0, r3
	ldrb r2, [r5, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #4]
	adds r0, r4, #0
	bl sub_809B1F4
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #8
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xc
	bls _0800C970
	movs r4, #0xc
_0800C970:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_0800C980:
	adds r0, r5, #0
	mov r1, r8
	bl sub_800C8F8
_0800C988:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C994
sub_800C994: @ 0x0800C994
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800C660
	cmp r4, r0
	bhs _0800C9B0
	lsls r0, r4, #2
	movs r1, #0xec
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_800CD78
_0800C9B0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800C9B8
sub_800C9B8: @ 0x0800C9B8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800C570
	cmp r4, r0
	bhs _0800C9E0
	lsls r2, r4, #3
	adds r2, r5, r2
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrh r1, [r2]
	ldr r0, _0800C9E8 @ =0xFFFFFC00
	ands r0, r1
	movs r3, #0x8d
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0800C9E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C9E8: .4byte 0xFFFFFC00

	thumb_func_start sub_800C9EC
sub_800C9EC: @ 0x0800C9EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r3, [r7]
	lsls r0, r3, #0xc
	lsrs r1, r0, #0x18
	ldr r2, _0800CAA8 @ =0x55555555
	ands r1, r2
	lsrs r0, r0, #0x19
	ands r0, r2
	adds r0, r1, r0
	ldr r2, _0800CAAC @ =0x33333333
	adds r1, r0, #0
	ands r1, r2
	lsrs r0, r0, #2
	ands r0, r2
	adds r0, r1, r0
	ldr r2, _0800CAB0 @ =0x0F0F0F0F
	adds r1, r0, #0
	ands r1, r2
	lsrs r0, r0, #4
	ands r0, r2
	adds r0, r1, r0
	ldr r2, _0800CAB4 @ =0x00FF00FF
	adds r1, r0, #0
	ands r1, r2
	lsrs r0, r0, #8
	ands r0, r2
	adds r0, r1, r0
	ldr r2, _0800CAB8 @ =0x0000FFFF
	adds r1, r0, #0
	ands r1, r2
	lsrs r0, r0, #0x10
	ands r0, r2
	adds r1, r1, r0
	mov sl, r1
	ldr r0, _0800CABC @ =0xFFF00FFF
	ands r3, r0
	str r3, [r7]
	adds r0, r7, #0
	bl sub_800C570
	str r0, [sp, #0x10]
	movs r6, #0
	cmp r6, r0
	bhs _0800CB3E
	mov sb, sp
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x14]
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	adds r5, r7, #0
	adds r5, #0x18
_0800CA64:
	adds r0, r5, #0
	bl sub_800CCAC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800CB30
	adds r0, r5, #0
	bl sub_800CCD0
	adds r4, r0, #0
	cmp r4, #0
	beq _0800CB30
	ldrb r1, [r7, #2]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _0800CA8A
	lsrs r0, r1, #5
	cmp r6, r0
	beq _0800CAA0
_0800CA8A:
	adds r0, r4, #0
	bl sub_809B4FC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800CAE6
	adds r0, r4, #0
	bl sub_809BCAC
	cmp r0, #0
	bne _0800CAC0
_0800CAA0:
	adds r0, r4, #0
	bl sub_809BCF0
	b _0800CAE6
	.align 2, 0
_0800CAA8: .4byte 0x55555555
_0800CAAC: .4byte 0x33333333
_0800CAB0: .4byte 0x0F0F0F0F
_0800CAB4: .4byte 0x00FF00FF
_0800CAB8: .4byte 0x0000FFFF
_0800CABC: .4byte 0xFFF00FFF
_0800CAC0:
	mov r2, sl
	cmp r2, #0
	beq _0800CAE6
	mov r0, sp
	adds r1, r4, #0
	bl sub_809B114
	mov r3, sb
	ldrh r0, [r3]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	cmp r0, #0x11
	bne _0800CAE6
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	adds r0, r4, #0
	bl sub_809BCF0
_0800CAE6:
	adds r0, r4, #0
	bl sub_809BD38
	adds r0, r4, #0
	bl sub_809BCC0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800CB30
	ldr r0, [sp, #0x14]
	adds r1, r4, #0
	bl sub_809B114
	adds r0, r4, #0
	bl sub_809BCFC
	adds r4, r0, #0
	mov r0, sp
	ldr r1, [sp, #0x14]
	movs r2, #6
	bl sub_80D3994
	movs r0, #7
	ands r4, r0
	mov r1, sb
	ldrb r0, [r1, #6]
	movs r2, #8
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r4
	mov r3, sb
	strb r0, [r3, #6]
	mov r1, r8
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
_0800CB30:
	movs r0, #8
	add r8, r0
	adds r5, #0x30
	adds r6, #1
	ldr r1, [sp, #0x10]
	cmp r6, r1
	blo _0800CA64
_0800CB3E:
	adds r0, r7, #0
	bl sub_800C660
	adds r6, r0, #0
	movs r5, #0
	cmp r5, r6
	bhs _0800CB6C
	movs r2, #0xec
	lsls r2, r2, #1
	adds r4, r7, r2
_0800CB52:
	adds r0, r4, #0
	bl sub_800CD38
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800CB64
	adds r0, r4, #0
	bl sub_800CD88
_0800CB64:
	adds r4, #4
	adds r5, #1
	cmp r5, r6
	blo _0800CB52
_0800CB6C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800CB7C
sub_800CB7C: @ 0x0800CB7C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800C570
	adds r1, r0, #0
	cmp r4, r1
	blo _0800CB94
	adds r0, r4, #0
	bl sub_80D0F4E
	adds r4, r0, #0
_0800CB94:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0x18
	adds r0, r5, r0
	bl sub_800CCAC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800CBB8
	ldrb r0, [r5, #2]
	movs r1, #0x10
	orrs r0, r1
	lsls r2, r4, #5
	movs r1, #0x1f
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #2]
_0800CBB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800CBC0
sub_800CBC0: @ 0x0800CBC0
	ldrb r2, [r0, #2]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #2]
	bx lr

	thumb_func_start sub_800CBCC
sub_800CBCC: @ 0x0800CBCC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x44
	adds r7, r0, #0
	adds r4, r1, #0
	bl sub_800C720
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800CBEA
	movs r0, #1
	rsbs r0, r0, #0
	b _0800CC98
_0800CBEA:
	lsls r0, r4, #2
	movs r1, #0xec
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r7, r0
	bl sub_800CDB0
	add r0, sp, #0x3c
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_800C748
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	add r0, sp, #0x40
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r1, #2
	ldrsh r6, [r0, r1]
	add r1, sp, #8
	movs r3, #0x11
	ldrh r2, [r1]
	ldr r4, _0800CCA8 @ =0xFFFFFC00
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r3
	strh r0, [r1]
	lsls r5, r5, #0x10
	lsrs r2, r5, #0x10
	movs r0, #0x3f
	mov sb, r0
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r1, #1]
	movs r0, #3
	mov r8, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #1]
	lsrs r5, r5, #0x16
	ldrh r2, [r1, #2]
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r5
	strh r0, [r1, #2]
	lsls r6, r6, #0x10
	lsrs r2, r6, #0x10
	mov r0, sb
	ands r2, r0
	lsls r2, r2, #2
	ldrb r3, [r1, #3]
	mov r0, r8
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #3]
	lsrs r6, r6, #0x16
	ldrh r0, [r1, #4]
	ands r4, r0
	orrs r4, r6
	strh r4, [r1, #4]
	mov r4, sp
	mov r0, sp
	movs r2, #6
	bl sub_80D3994
	mov r1, r8
	strb r1, [r4, #6]
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0
	movs r3, #0
	bl sub_809BC8C
	bl sub_80D11E4
	movs r1, #0xa
	bl sub_80D0ED0
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_809B2A8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_800C8BC
_0800CC98:
	add sp, #0x44
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800CCA8: .4byte 0xFFFFFC00

	thumb_func_start sub_800CCAC
sub_800CCAC: @ 0x0800CCAC
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	bx lr

	thumb_func_start sub_800CCB8
sub_800CCB8: @ 0x0800CCB8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	movs r2, #0
	cmp r0, #0
	beq _0800CCC8
	adds r2, r1, #4
_0800CCC8:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CCD0
sub_800CCD0: @ 0x0800CCD0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	movs r2, #0
	cmp r0, #0
	beq _0800CCE0
	adds r2, r1, #4
_0800CCE0:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CCE8
sub_800CCE8: @ 0x0800CCE8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldrb r0, [r6]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800CD16
	adds r4, r6, #4
	cmp r4, #0
	beq _0800CD0A
	adds r0, r4, #0
	bl sub_80D7C40
	ldr r0, [r5, #0x24]
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x28]
	str r0, [r4, #0x28]
_0800CD0A:
	ldrb r0, [r6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6]
	movs r0, #1
	b _0800CD18
_0800CD16:
	movs r0, #0
_0800CD18:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CD20
sub_800CD20: @ 0x0800CD20
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0800CD34
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0800CD34:
	pop {r0}
	bx r0

	thumb_func_start sub_800CD38
sub_800CD38: @ 0x0800CD38
	ldr r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bx lr
_0800CD40:
	.byte 0x00, 0xB5, 0x01, 0x68, 0x48, 0x07, 0x00, 0x28, 0x02, 0xDA, 0x88, 0x07, 0x80, 0x0F, 0x00, 0xE0
	.byte 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start sub_800CD58
sub_800CD58: @ 0x0800CD58
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800CD72
	ldrb r1, [r1]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800CD72
	movs r2, #1
_0800CD72:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_800CD78
sub_800CD78: @ 0x0800CD78
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	movs r2, #3
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_800CD88
sub_800CD88: @ 0x0800CD88
	push {lr}
	adds r2, r0, #0
	ldrb r3, [r2]
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _0800CDAC
	ldr r0, [r2]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	subs r0, #1
	movs r1, #3
	ands r0, r1
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r2]
_0800CDAC:
	pop {r0}
	bx r0

	thumb_func_start sub_800CDB0
sub_800CDB0: @ 0x0800CDB0
	ldrb r2, [r0]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_800CDBC
sub_800CDBC: @ 0x0800CDBC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r1, [r5]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
	ldrh r1, [r5]
	ldr r0, _0800CE48 @ =0xFFFFF801
	ands r0, r1
	strh r0, [r5]
	ldrb r1, [r5, #1]
	movs r0, #9
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r0, [r5]
	ldr r1, _0800CE4C @ =0xE0001FFF
	ands r0, r1
	str r0, [r5]
	ldrb r1, [r5, #3]
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r5, #3]
	ldrh r1, [r5, #4]
	ldr r0, _0800CE50 @ =0xFFFFC00F
	ands r0, r1
	strh r0, [r5, #4]
	ldr r0, [r5, #4]
	ldr r1, _0800CE54 @ =0xFF003FFF
	ands r0, r1
	str r0, [r5, #4]
	movs r0, #0
	strb r0, [r5, #0xc]
	strb r0, [r5, #0x1c]
	adds r4, r5, #0
	adds r4, #0x2c
	movs r6, #0xf
	movs r7, #1
	rsbs r7, r7, #0
_0800CE1A:
	adds r0, r4, #0
	bl sub_800D9FC
	adds r4, #0x3c
	subs r6, #1
	cmp r6, r7
	bne _0800CE1A
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	adds r1, r5, #7
	movs r2, #2
_0800CE32:
	strb r0, [r1]
	subs r2, #1
	adds r1, #1
	cmp r2, #0
	bgt _0800CE32
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800CE48: .4byte 0xFFFFF801
_0800CE4C: .4byte 0xE0001FFF
_0800CE50: .4byte 0xFFFFC00F
_0800CE54: .4byte 0xFF003FFF

	thumb_func_start sub_800CE58
sub_800CE58: @ 0x0800CE58
	movs r1, #0xb8
	movs r2, #0x88
	lsls r2, r2, #1
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr

	thumb_func_start sub_800CE64
sub_800CE64: @ 0x0800CE64
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800CE6C
sub_800CE6C: @ 0x0800CE6C
	ldrh r0, [r0]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x16
	bx lr

	thumb_func_start sub_800CE74
sub_800CE74: @ 0x0800CE74
	push {lr}
	sub sp, #8
	movs r1, #0x10
	str r1, [sp]
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	adds r0, #8
	str r0, [sp, #4]
	add r2, sp, #4
	mov r3, sp
	cmp r1, r0
	bls _0800CE92
	adds r3, r2, #0
_0800CE92:
	ldr r0, [r3]
	add sp, #8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CE9C
sub_800CE9C: @ 0x0800CE9C
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	adds r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_800CEA8
sub_800CEA8: @ 0x0800CEA8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_800CE74
	cmp r5, r0
	blo _0800CEBA
	movs r0, #0
	b _0800CECC
_0800CEBA:
	ldr r1, [r4]
	lsls r1, r1, #3
	lsrs r1, r1, #0x10
	movs r0, #1
	lsls r0, r5
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0800CECC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CED4
sub_800CED4: @ 0x0800CED4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_800CE9C
	cmp r5, r0
	blo _0800CEE6
	movs r0, #0
	b _0800CEF8
_0800CEE6:
	ldrb r1, [r4, #3]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r5
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0800CEF8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CF00
sub_800CF00: @ 0x0800CF00
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800CF08
sub_800CF08: @ 0x0800CF08
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_800CF10
sub_800CF10: @ 0x0800CF10
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	cmp r4, r0
	blo _0800CF22
	movs r0, #0
	b _0800CF30
_0800CF22:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA2C
_0800CF30:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CF38
sub_800CF38: @ 0x0800CF38
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	cmp r4, r0
	blo _0800CF4A
	movs r0, #0
	b _0800CF58
_0800CF4A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA48
_0800CF58:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CF60
sub_800CF60: @ 0x0800CF60
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	cmp r4, r0
	blo _0800CF72
	movs r0, #0
	b _0800CF80
_0800CF72:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA14
_0800CF80:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800CF88
sub_800CF88: @ 0x0800CF88
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	adds r6, r0, #0
	cmp r4, r6
	bhs _0800CFBA
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r5, r0, r5
_0800CFA2:
	adds r0, r5, #0
	bl sub_800DA08
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800CFB2
	adds r0, r4, #0
	b _0800CFBE
_0800CFB2:
	adds r5, #0x3c
	adds r4, #1
	cmp r4, r6
	blo _0800CFA2
_0800CFBA:
	movs r0, #1
	rsbs r0, r0, #0
_0800CFBE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_800CFC4
sub_800CFC4: @ 0x0800CFC4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_800CE74
	adds r5, r0, #0
	movs r7, #0
	movs r6, #0
	cmp r7, r5
	bhs _0800CFEC
	adds r4, #0x2c
_0800CFD8:
	adds r0, r4, #0
	bl sub_800DA2C
	cmp r0, #0
	beq _0800CFE4
	adds r7, #1
_0800CFE4:
	adds r4, #0x3c
	adds r6, #1
	cmp r6, r5
	blo _0800CFD8
_0800CFEC:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800CFF4
sub_800CFF4: @ 0x0800CFF4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_800CE74
	adds r5, r0, #0
	movs r7, #0
	movs r6, #0
	cmp r7, r5
	bhs _0800D01C
	adds r4, #0x2c
_0800D008:
	adds r0, r4, #0
	bl sub_800DA48
	cmp r0, #0
	beq _0800D014
	adds r7, #1
_0800D014:
	adds r4, #0x3c
	adds r6, #1
	cmp r6, r5
	blo _0800D008
_0800D01C:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800D024
sub_800D024: @ 0x0800D024
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_800CE74
	adds r5, r0, #0
	movs r7, #0
	movs r6, #0
	cmp r7, r5
	bhs _0800D04E
	adds r4, #0x2c
_0800D038:
	adds r0, r4, #0
	bl sub_800DA08
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D046
	adds r7, #1
_0800D046:
	adds r4, #0x3c
	adds r6, #1
	cmp r6, r5
	blo _0800D038
_0800D04E:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800D058
sub_800D058: @ 0x0800D058
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0800D06A
	movs r0, #1
	rsbs r0, r0, #0
	b _0800D070
_0800D06A:
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
_0800D070:
	pop {r1}
	bx r1

	thumb_func_start sub_800D074
sub_800D074: @ 0x0800D074
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	bl sub_800CE74
	adds r1, r0, #0
	cmp r4, r1
	blo _0800D08E
	adds r0, r4, #0
	bl sub_80D0F4E
	adds r4, r0, #0
_0800D08E:
	movs r1, #3
	ands r1, r4
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	cmp r4, #7
	bhi _0800D0A2
	adds r1, r0, #0
	adds r1, #0xd8
	b _0800D0A8
_0800D0A2:
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r0, r2
_0800D0A8:
	movs r0, #7
	ands r0, r4
	movs r2, #0x90
	cmp r0, #3
	bhi _0800D0B4
	movs r2, #0x68
_0800D0B4:
	strh r1, [r5]
	strh r2, [r5, #2]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_800D0C0
sub_800D0C0: @ 0x0800D0C0
	movs r3, #0x20
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #5
	adds r1, #0x70
	strh r3, [r0]
	strh r1, [r0, #2]
	bx lr

	thumb_func_start sub_800D0D0
sub_800D0D0: @ 0x0800D0D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	bl sub_800CE74
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_800D024
	subs r5, r4, r0
	cmp r5, #0
	bgt _0800D0F2
_0800D0EC:
	movs r0, #1
	rsbs r0, r0, #0
	b _0800D14A
_0800D0F2:
	movs r7, #1
	rsbs r7, r7, #0
	adds r0, r6, #0
	bl sub_800CE9C
	mov sb, r0
	movs r4, #0
	cmp r4, sb
	bhs _0800D148
	mov r8, r7
_0800D106:
	adds r0, r6, #7
	adds r1, r0, r4
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, r8
	beq _0800D134
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r6, r0
	bl sub_800DA14
	cmp r0, #0
	beq _0800D134
	bl sub_809B8B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D13C
_0800D134:
	cmp r7, r8
	bne _0800D142
	adds r7, r4, #0
	b _0800D142
_0800D13C:
	subs r5, #1
	cmp r5, #0
	ble _0800D0EC
_0800D142:
	adds r4, #1
	cmp r4, sb
	blo _0800D106
_0800D148:
	adds r0, r7, #0
_0800D14A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800D158
sub_800D158: @ 0x0800D158
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE9C
	cmp r4, r0
	bhs _0800D1AA
	adds r0, r5, #7
	adds r0, r0, r4
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	blt _0800D1AA
	adds r0, r5, #0
	bl sub_800CE74
	cmp r4, r0
	bhs _0800D1AA
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA14
	adds r4, r0, #0
	cmp r4, #0
	beq _0800D1AA
	movs r5, #0
	bl sub_809B8D4
	cmp r0, #0x14
	bhi _0800D1A4
	adds r0, r4, #0
	bl sub_809B8BC
	cmp r0, #0x1d
	bls _0800D1A6
_0800D1A4:
	movs r5, #1
_0800D1A6:
	adds r0, r5, #0
	b _0800D1AC
_0800D1AA:
	movs r0, #0
_0800D1AC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800D1B4
sub_800D1B4: @ 0x0800D1B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_800CE9C
	cmp r5, r0
	blo _0800D1C8
	movs r0, #1
	rsbs r0, r0, #0
	b _0800D1D2
_0800D1C8:
	adds r0, r4, #7
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0800D1D2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_800D1D8
sub_800D1D8: @ 0x0800D1D8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_800D0C0
	mov r0, sp
	ldrh r0, [r0]
	adds r0, #0x20
	mov r1, sp
	strh r0, [r1]
	ldr r0, [sp]
	str r0, [r4]
	adds r0, r4, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800D1FC
sub_800D1FC: @ 0x0800D1FC
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x16
	bx lr

	thumb_func_start sub_800D204
sub_800D204: @ 0x0800D204
	adds r0, #0xc
	bx lr

	thumb_func_start sub_800D208
sub_800D208: @ 0x0800D208
	ldr r0, [r0, #4]
	lsls r0, r0, #8
	lsrs r0, r0, #0x16
	bx lr

	thumb_func_start sub_800D210
sub_800D210: @ 0x0800D210
	adds r0, #0x1c
	bx lr

	thumb_func_start sub_800D214
sub_800D214: @ 0x0800D214
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0800D236
	lsls r0, r2, #0x1f
	lsrs r0, r0, #0x1f
	adds r0, #1
	movs r1, #1
	ands r0, r1
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3]
_0800D236:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800D23C
sub_800D23C: @ 0x0800D23C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _0800D274 @ =0x000003E7
	str r2, [sp]
	ldrh r4, [r5]
	lsls r0, r4, #0x15
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	str r0, [sp, #4]
	add r1, sp, #4
	mov r3, sp
	cmp r2, r0
	bls _0800D25A
	adds r3, r1, #0
_0800D25A:
	ldr r0, [r3]
	ldr r2, _0800D278 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _0800D27C @ =0xFFFFF801
	ands r1, r4
	orrs r1, r0
	strh r1, [r5]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D274: .4byte 0x000003E7
_0800D278: .4byte 0x000003FF
_0800D27C: .4byte 0xFFFFF801

	thumb_func_start sub_800D280
sub_800D280: @ 0x0800D280
	push {r4, lr}
	adds r3, r0, #0
	ldrh r2, [r3]
	lsls r0, r2, #0x15
	lsrs r0, r0, #0x16
	cmp r0, r1
	bhi _0800D29C
	ldr r0, _0800D298 @ =0xFFFFF801
	ands r0, r2
	strh r0, [r3]
	b _0800D2AE
	.align 2, 0
_0800D298: .4byte 0xFFFFF801
_0800D29C:
	subs r0, r0, r1
	ldr r4, _0800D2B4 @ =0x000003FF
	adds r1, r4, #0
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _0800D2B8 @ =0xFFFFF801
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
_0800D2AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D2B4: .4byte 0x000003FF
_0800D2B8: .4byte 0xFFFFF801

	thumb_func_start sub_800D2BC
sub_800D2BC: @ 0x0800D2BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_800CE74
	cmp r5, r0
	bhs _0800D2EC
	ldr r3, [r4]
	lsls r0, r3, #3
	lsrs r1, r0, #0x10
	movs r2, #1
	lsls r2, r5
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0800D2EC
	orrs r1, r2
	ldr r0, _0800D2F4 @ =0x0000FFFF
	ands r1, r0
	lsls r1, r1, #0xd
	ldr r0, _0800D2F8 @ =0xE0001FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r4]
_0800D2EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D2F4: .4byte 0x0000FFFF
_0800D2F8: .4byte 0xE0001FFF
_0800D2FC:
	.byte 0x30, 0xB5, 0x04, 0x1C
	.byte 0x0D, 0x1C, 0xFF, 0xF7, 0xB7, 0xFD, 0x85, 0x42, 0x0E, 0xD2, 0x23, 0x68, 0xD8, 0x00, 0x01, 0x0C
	.byte 0x01, 0x22, 0xAA, 0x40, 0x08, 0x1C, 0x10, 0x40, 0x00, 0x28, 0x05, 0xD0, 0x91, 0x43, 0x49, 0x03
	.byte 0x03, 0x48, 0x18, 0x40, 0x08, 0x43, 0x20, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xFF, 0x1F, 0x00, 0xE0

	thumb_func_start sub_800D334
sub_800D334: @ 0x0800D334
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_800CE9C
	cmp r5, r0
	bhs _0800D366
	ldrb r3, [r4, #3]
	lsls r0, r3, #0x19
	lsrs r1, r0, #0x1e
	movs r2, #1
	lsls r2, r5
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0800D366
	orrs r1, r2
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #5
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #3]
_0800D366:
	pop {r4, r5}
	pop {r0}
	bx r0
_0800D36C:
	.byte 0x30, 0xB5, 0x04, 0x1C
	.byte 0x0D, 0x1C, 0xFF, 0xF7, 0x93, 0xFD, 0x85, 0x42, 0x0F, 0xD2, 0xE3, 0x78, 0x58, 0x06, 0x81, 0x0F
	.byte 0x01, 0x22, 0xAA, 0x40, 0x08, 0x1C, 0x10, 0x40, 0x00, 0x28, 0x06, 0xD0, 0x91, 0x43, 0x49, 0x01
	.byte 0x61, 0x20, 0x40, 0x42, 0x18, 0x40, 0x08, 0x43, 0xE0, 0x70, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

	thumb_func_start sub_800D3A0
sub_800D3A0: @ 0x0800D3A0
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #1]
	lsls r0, r1, #0x1c
	cmp r0, #0
	blt _0800D3B2
	movs r0, #8
	orrs r0, r1
	strb r0, [r2, #1]
_0800D3B2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800D3B8
sub_800D3B8: @ 0x0800D3B8
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #1]
	lsls r0, r1, #0x1b
	cmp r0, #0
	blt _0800D3CA
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
_0800D3CA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800D3D0
sub_800D3D0: @ 0x0800D3D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	cmp r4, r0
	blo _0800D3E2
	movs r0, #0
	b _0800D3F0
_0800D3E2:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA7C
_0800D3F0:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800D3F8
sub_800D3F8: @ 0x0800D3F8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	cmp r4, r0
	blo _0800D40A
	movs r0, #0
	b _0800D418
_0800D40A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA98
_0800D418:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800D420
sub_800D420: @ 0x0800D420
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	cmp r4, r0
	blo _0800D432
	movs r0, #0
	b _0800D440
_0800D432:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA64
_0800D440:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800D448
sub_800D448: @ 0x0800D448
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0
	b _0800D470
_0800D452:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	adds r1, r6, #0
	bl sub_800DAB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800D46C
	adds r0, r4, #0
	b _0800D47E
_0800D46C:
	adds r1, r4, #1
	adds r0, r5, #0
_0800D470:
	bl sub_800CF88
	adds r4, r0, #0
	cmp r4, #0
	bge _0800D452
	movs r0, #1
	rsbs r0, r0, #0
_0800D47E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_800D484
sub_800D484: @ 0x0800D484
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0
	b _0800D4AC
_0800D48E:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	adds r1, r6, #0
	bl sub_800DAE4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800D4A8
	adds r0, r4, #0
	b _0800D4BA
_0800D4A8:
	adds r1, r4, #1
	adds r0, r5, #0
_0800D4AC:
	bl sub_800CF88
	adds r4, r0, #0
	cmp r4, #0
	bge _0800D48E
	movs r0, #1
	rsbs r0, r0, #0
_0800D4BA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_800D4C0
sub_800D4C0: @ 0x0800D4C0
	push {lr}
	lsls r2, r1, #4
	subs r2, r2, r1
	lsls r2, r2, #2
	adds r2, #0x2c
	adds r0, r0, r2
	bl sub_800DB14
	pop {r0}
	bx r0

	thumb_func_start sub_800D4D4
sub_800D4D4: @ 0x0800D4D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov r8, r1
	bl sub_800D420
	adds r7, r0, #0
	mov sl, r7
	cmp r7, #0
	beq _0800D598
	bl sub_809B220
	adds r4, r0, #0
	adds r5, r4, #0
	adds r0, r6, #0
	mov r1, r8
	bl sub_800D3D0
	mov sb, r0
	cmp r0, #0
	beq _0800D550
	ldrh r2, [r6, #4]
	lsls r0, r2, #0x12
	lsrs r0, r0, #0x16
	cmp r0, r4
	bhs _0800D590
	ldr r1, _0800D548 @ =0x000003FF
	adds r0, r1, #0
	ands r4, r0
	lsls r1, r4, #4
	ldr r0, _0800D54C @ =0xFFFFC00F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #4]
	adds r0, r7, #0
	bl sub_809B1F4
	adds r5, r0, #0
	adds r7, r6, #0
	adds r7, #0xc
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xc
	bls _0800D536
	movs r4, #0xc
_0800D536:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
	b _0800D590
	.align 2, 0
_0800D548: .4byte 0x000003FF
_0800D54C: .4byte 0xFFFFC00F
_0800D550:
	ldr r2, [r6, #4]
	lsls r0, r2, #8
	lsrs r0, r0, #0x16
	cmp r0, r5
	bhs _0800D590
	ldr r0, _0800D5A8 @ =0x000003FF
	ands r5, r0
	lsls r1, r5, #0xe
	ldr r0, _0800D5AC @ =0xFF003FFF
	ands r0, r2
	orrs r0, r1
	str r0, [r6, #4]
	mov r0, sl
	bl sub_809B1F4
	adds r5, r0, #0
	adds r7, r6, #0
	adds r7, #0x1c
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xc
	bls _0800D580
	movs r4, #0xc
_0800D580:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80D3994
	adds r0, r7, r4
	mov r1, sb
	strb r1, [r0]
_0800D590:
	adds r0, r6, #0
	mov r1, r8
	bl sub_800D4C0
_0800D598:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D5A8: .4byte 0x000003FF
_0800D5AC: .4byte 0xFF003FFF

	thumb_func_start sub_800D5B0
sub_800D5B0: @ 0x0800D5B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r0
	ldr r4, [r0]
	lsls r0, r4, #3
	lsrs r1, r0, #0x10
	ldr r6, _0800D780 @ =0x55555555
	ands r1, r6
	lsrs r0, r0, #0x11
	ands r0, r6
	adds r0, r1, r0
	ldr r1, _0800D784 @ =0x33333333
	mov r8, r1
	adds r1, r0, #0
	mov r2, r8
	ands r1, r2
	lsrs r0, r0, #2
	ands r0, r2
	adds r0, r1, r0
	ldr r5, _0800D788 @ =0x0F0F0F0F
	adds r1, r0, #0
	ands r1, r5
	lsrs r0, r0, #4
	ands r0, r5
	adds r0, r1, r0
	ldr r3, _0800D78C @ =0x00FF00FF
	adds r1, r0, #0
	ands r1, r3
	lsrs r0, r0, #8
	ands r0, r3
	adds r0, r1, r0
	ldr r2, _0800D790 @ =0x0000FFFF
	adds r1, r0, #0
	ands r1, r2
	lsrs r0, r0, #0x10
	ands r0, r2
	adds r1, r1, r0
	mov sl, r1
	ldr r0, _0800D794 @ =0xE0001FFF
	ands r4, r0
	mov r0, sb
	str r4, [r0]
	ldrb r1, [r0, #3]
	lsls r1, r1, #0x19
	lsrs r0, r1, #0x1e
	ands r0, r6
	lsrs r1, r1, #0x1f
	ands r1, r6
	adds r0, r0, r1
	mov r1, r8
	ands r0, r1
	ands r0, r5
	ands r0, r3
	ands r0, r2
	add sl, r0
	mov r0, sb
	bl sub_800CE9C
	str r0, [sp, #0x18]
	movs r6, #0
	cmp r6, r0
	bhs _0800D714
	add r2, sp, #0x14
	mov r8, r2
	add r5, sp, #8
_0800D63A:
	mov r0, sb
	adds r0, #7
	adds r1, r0, r6
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0800D70C
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x2c
	add r0, sb
	bl sub_800DA64
	adds r4, r0, #0
	adds r7, r4, #0
	cmp r4, #0
	beq _0800D70C
	bl sub_809B8B0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800D70C
	mov r0, sb
	ldrb r1, [r0, #3]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r6
	ands r1, r0
	cmp r1, #0
	beq _0800D688
	movs r1, #1
	rsbs r1, r1, #0
	add sl, r1
	adds r0, r4, #0
	bl sub_809B8F0
_0800D688:
	add r0, sp, #0x10
	mov r1, sb
	adds r2, r6, #0
	bl sub_800D0C0
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	mov r2, r8
	movs r0, #0
	ldrsh r3, [r2, r0]
	movs r1, #2
	ldrsh r4, [r2, r1]
	movs r2, #0x25
	ldrh r1, [r5]
	ldr r0, _0800D798 @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r2
	strh r0, [r5]
	lsls r3, r3, #0x10
	lsrs r1, r3, #0x10
	movs r2, #0x3f
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r5, #1]
	movs r0, #3
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	lsrs r3, r3, #0x16
	ldr r0, _0800D79C @ =0x000003FF
	ands r3, r0
	ldrh r1, [r5, #2]
	ldr r0, _0800D798 @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	movs r2, #0x3f
	ands r1, r2
	lsls r1, r1, #2
	ldrb r2, [r5, #3]
	movs r0, #3
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #3]
	lsrs r4, r4, #0x16
	ldr r0, _0800D79C @ =0x000003FF
	ands r4, r0
	ldrh r1, [r5, #4]
	ldr r0, _0800D798 @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r4
	strh r0, [r5, #4]
	mov r4, sp
	mov r0, sp
	adds r1, r5, #0
	movs r2, #6
	bl sub_80D3994
	movs r1, #3
	strb r1, [r4, #6]
	adds r0, r7, #0
	mov r1, sp
	bl sub_809B124
_0800D70C:
	adds r6, #1
	ldr r2, [sp, #0x18]
	cmp r6, r2
	blo _0800D63A
_0800D714:
	mov r0, sb
	ldrb r1, [r0, #3]
	movs r0, #0x61
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, sb
	strb r0, [r1, #3]
	mov r0, sb
	bl sub_800CE74
	str r0, [sp, #0x1c]
	movs r2, #0
	mov r8, r2
	cmp r8, r0
	bhs _0800D7FC
	mov r7, sb
	adds r7, #0x2c
_0800D736:
	adds r0, r7, #0
	bl sub_800DA08
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D7F0
	adds r0, r7, #0
	bl sub_800DA7C
	adds r5, r0, #0
	adds r0, r7, #0
	bl sub_800DA98
	adds r6, r0, #0
	cmp r5, #0
	bne _0800D75A
	cmp r6, #0
	beq _0800D7F0
_0800D75A:
	adds r4, r5, #0
	cmp r5, #0
	bne _0800D762
	adds r4, r6, #0
_0800D762:
	mov r1, sb
	ldrb r0, [r1, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0800D7A0
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r8, r0
	bne _0800D7A0
	adds r0, r4, #0
	bl sub_809B8F0
	b _0800D7DE
	.align 2, 0
_0800D780: .4byte 0x55555555
_0800D784: .4byte 0x33333333
_0800D788: .4byte 0x0F0F0F0F
_0800D78C: .4byte 0x00FF00FF
_0800D790: .4byte 0x0000FFFF
_0800D794: .4byte 0xE0001FFF
_0800D798: .4byte 0xFFFFFC00
_0800D79C: .4byte 0x000003FF
_0800D7A0:
	adds r0, r4, #0
	bl sub_809B4FC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D7DE
	adds r0, r4, #0
	bl sub_809B8B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D7DE
	mov r2, sl
	cmp r2, #0
	beq _0800D7DE
	mov r0, sp
	adds r1, r4, #0
	bl sub_809B114
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	cmp r0, #0x25
	bne _0800D7DE
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	adds r0, r4, #0
	bl sub_809B8F0
_0800D7DE:
	cmp r5, #0
	beq _0800D7EA
	adds r0, r5, #0
	bl sub_809BE74
	b _0800D7F0
_0800D7EA:
	adds r0, r6, #0
	bl sub_809BFB4
_0800D7F0:
	adds r7, #0x3c
	movs r1, #1
	add r8, r1
	ldr r2, [sp, #0x1c]
	cmp r8, r2
	blo _0800D736
_0800D7FC:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800D80C
sub_800D80C: @ 0x0800D80C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_800CE74
	adds r1, r0, #0
	cmp r4, r1
	blo _0800D824
	adds r0, r4, #0
	bl sub_80D0F4E
	adds r4, r0, #0
_0800D824:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r5, r0
	bl sub_800DA08
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D850
	ldrb r0, [r5, #3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #3]
	movs r0, #0xf
	ands r4, r0
	ldrb r1, [r5, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5, #4]
_0800D850:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800D858
sub_800D858: @ 0x0800D858
	ldrb r2, [r0, #3]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #3]
	bx lr
	.align 2, 0

	thumb_func_start sub_800D864
sub_800D864: @ 0x0800D864
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	bl sub_800CE9C
	cmp r6, r0
	bhs _0800D8A0
	adds r0, r4, #0
	bl sub_800CE74
	cmp r5, r0
	bhs _0800D8A0
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0x2c
	adds r0, r4, r0
	bl sub_800DA64
	cmp r0, #0
	beq _0800D8A0
	bl sub_809B8B0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800D8A0
	adds r0, r4, #7
	adds r0, r0, r6
	strb r5, [r0]
_0800D8A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800D8A8
sub_800D8A8: @ 0x0800D8A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov sl, r0
	adds r4, r1, #0
	bl sub_800D158
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0800D8C4
	b _0800D9E8
_0800D8C4:
	mov r0, sl
	adds r0, #7
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r1
	movs r1, #0xff
	strb r1, [r0]
	add r0, sp, #0x48
	mov r1, sl
	adds r2, r4, #0
	bl sub_800D1D8
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	add r0, sp, #0x4c
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r1, #2
	ldrsh r6, [r0, r1]
	add r7, sp, #8
	movs r2, #0x25
	ldrh r1, [r7]
	ldr r3, _0800D9A0 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r7]
	lsls r5, r5, #0x10
	lsrs r1, r5, #0x10
	movs r0, #0x3f
	mov r8, r0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r4, [r7, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r7, #1]
	lsrs r5, r5, #0x16
	ldrh r1, [r7, #2]
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r7, #2]
	lsls r6, r6, #0x10
	lsrs r0, r6, #0x10
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r7, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r7, #3]
	lsrs r6, r6, #0x16
	ldrh r0, [r7, #4]
	ands r3, r0
	orrs r3, r6
	strh r3, [r7, #4]
	mov r5, sp
	movs r4, #2
	mov r0, sp
	adds r1, r7, #0
	movs r2, #6
	bl sub_80D3994
	strb r4, [r5, #6]
	mov r1, sb
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x2c
	mov r1, sl
	adds r5, r1, r0
	adds r0, r5, #0
	bl sub_800DA7C
	adds r4, r0, #0
	cmp r4, #0
	beq _0800D9A4
	bl sub_809B91C
	add r5, sp, #0x10
	adds r0, r5, #0
	mov r1, sp
	movs r2, #0
	movs r3, #0
	bl sub_809BD70
	adds r0, r4, #0
	bl sub_809B228
	lsrs r4, r0, #1
	cmp r4, #1
	bls _0800D996
	bl sub_80D11E4
	adds r1, r4, #0
	bl sub_80D0F4E
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_809B2A8
_0800D996:
	mov r0, sl
	adds r1, r5, #0
	bl sub_800D448
	b _0800D9EC
	.align 2, 0
_0800D9A0: .4byte 0xFFFFFC00
_0800D9A4:
	adds r0, r5, #0
	bl sub_800DA98
	adds r4, r0, #0
	cmp r4, #0
	beq _0800D9E8
	bl sub_809B91C
	adds r0, r7, #0
	mov r1, sp
	movs r2, #0
	movs r3, #0
	bl sub_809BEBC
	adds r0, r4, #0
	bl sub_809B228
	lsrs r4, r0, #1
	cmp r4, #1
	bls _0800D9DE
	bl sub_80D11E4
	adds r1, r4, #0
	bl sub_80D0F4E
	adds r1, r0, #0
	adds r0, r7, #0
	bl sub_809B2A8
_0800D9DE:
	mov r0, sl
	adds r1, r7, #0
	bl sub_800D484
	b _0800D9EC
_0800D9E8:
	movs r0, #1
	rsbs r0, r0, #0
_0800D9EC:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800D9FC
sub_800D9FC: @ 0x0800D9FC
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_800DA08
sub_800DA08: @ 0x0800DA08
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	bx lr

	thumb_func_start sub_800DA14
sub_800DA14: @ 0x0800DA14
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	movs r2, #0
	cmp r0, #0
	beq _0800DA24
	adds r2, r1, #4
_0800DA24:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800DA2C
sub_800DA2C: @ 0x0800DA2C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	movs r3, #0
	cmp r0, #0
	beq _0800DA42
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge _0800DA42
	adds r3, r2, #4
_0800DA42:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_800DA48
sub_800DA48: @ 0x0800DA48
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	movs r3, #0
	cmp r0, #0
	beq _0800DA5E
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt _0800DA5E
	adds r3, r2, #4
_0800DA5E:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_800DA64
sub_800DA64: @ 0x0800DA64
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	lsls r0, r0, #0x1f
	movs r2, #0
	cmp r0, #0
	beq _0800DA74
	adds r2, r1, #4
_0800DA74:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800DA7C
sub_800DA7C: @ 0x0800DA7C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	movs r3, #0
	cmp r0, #0
	beq _0800DA92
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge _0800DA92
	adds r3, r2, #4
_0800DA92:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_800DA98
sub_800DA98: @ 0x0800DA98
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	movs r3, #0
	cmp r0, #0
	beq _0800DAAE
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt _0800DAAE
	adds r3, r2, #4
_0800DAAE:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_800DAB4
sub_800DAB4: @ 0x0800DAB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800DADA
	adds r0, r4, #4
	cmp r0, #0
	beq _0800DACA
	bl sub_80D7BC4
_0800DACA:
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	movs r0, #1
	b _0800DADC
_0800DADA:
	movs r0, #0
_0800DADC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800DAE4
sub_800DAE4: @ 0x0800DAE4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0800DB0A
	adds r0, r4, #4
	cmp r0, #0
	beq _0800DAFA
	bl sub_80D7B50
_0800DAFA:
	ldrb r0, [r4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4]
	b _0800DB0C
_0800DB0A:
	movs r0, #0
_0800DB0C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800DB14
sub_800DB14: @ 0x0800DB14
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq _0800DB28
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0800DB28:
	pop {r0}
	bx r0
