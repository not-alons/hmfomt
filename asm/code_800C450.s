    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

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
