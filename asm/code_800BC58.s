    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

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
