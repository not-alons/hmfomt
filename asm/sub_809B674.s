    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED
    
	thumb_func_start sub_809B674
sub_809B674: @ 0x0809B674
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	bl sub_809B2E8
	ldrb r2, [r5, #0x1c]
	lsls r0, r2, #0x1a
	lsrs r3, r0, #0x1f
	cmp r3, #0
	beq _0809B6AE
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1b
	cmp r0, #0x1e
	bhi _0809B6A4
	adds r1, r0, #1
	movs r0, #0x1f
	ands r1, r0
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1c]
_0809B6A4:
	ldrb r1, [r5, #0x1c]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x1c]
_0809B6AE:
	ldrh r0, [r5, #0x1e]
	ldr r1, _0809B6DC @ =0xFFFFFE00
	ands r1, r0
	strh r1, [r5, #0x1e]
	ldrb r0, [r5, #0x1c]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0809B6E0
	cmp r3, #0
	beq _0809B6FC
	bl sub_80D11E4
	movs r1, #0x64
	bl sub_80D0ED0
	ldrb r1, [r7]
	cmp r0, r1
	bge _0809B6FC
	ldrb r1, [r5, #0x1c]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	b _0809B6FA
	.align 2, 0
_0809B6DC: .4byte 0xFFFFFE00
_0809B6E0:
	cmp r3, #0
	bne _0809B6FC
	bl sub_80D11E4
	movs r1, #0x64
	bl sub_80D0ED0
	ldrb r1, [r7, #1]
	cmp r0, r1
	bge _0809B6FC
	ldrb r0, [r5, #0x1c]
	movs r1, #0x40
	orrs r0, r1
_0809B6FA:
	strb r0, [r5, #0x1c]
_0809B6FC:
	ldrb r0, [r5, #0x1c]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge _0809B720
	ldrb r2, [r5, #0x1d]
	lsls r0, r2, #0x1b
	lsrs r1, r0, #0x1d
	cmp r1, #6
	bhi _0809B72A
	adds r1, #1
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	b _0809B728
_0809B720:
	ldrb r1, [r5, #0x1d]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
_0809B728:
	strb r0, [r5, #0x1d]
_0809B72A:
	ldrb r1, [r5, #0x1c]
	lsrs r0, r1, #7
	cmp r0, #0
	bne _0809B76E
	lsls r0, r1, #0x19
	cmp r0, #0
	bge _0809B76E
	ldrb r1, [r5, #0x1d]
	movs r0, #0x1c
	ands r0, r1
	cmp r0, #0
	beq _0809B74A
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1d
	subs r4, r0, #1
	b _0809B74C
_0809B74A:
	movs r4, #0
_0809B74C:
	cmp r4, #6
	bls _0809B752
	movs r4, #6
_0809B752:
	bl sub_80D11E4
	movs r1, #0x64
	bl sub_80D0ED0
	adds r1, r7, #2
	adds r1, r1, r4
	ldrb r1, [r1]
	cmp r0, r1
	bge _0809B76E
	ldrb r0, [r5, #0x1c]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x1c]
_0809B76E:
	ldrb r0, [r5, #0x1c]
	lsrs r1, r0, #7
	adds r3, r0, #0
	cmp r1, #0
	beq _0809B78C
	ldrb r2, [r5, #0x1d]
	lsrs r1, r2, #5
	cmp r1, #6
	bhi _0809B794
	adds r1, #1
	lsls r1, r1, #5
	movs r0, #0x1f
	ands r0, r2
	orrs r0, r1
	b _0809B792
_0809B78C:
	ldrb r1, [r5, #0x1d]
	movs r0, #0x1f
	ands r0, r1
_0809B792:
	strb r0, [r5, #0x1d]
_0809B794:
	movs r0, #0
	mov r8, r0
	lsls r0, r3, #0x18
	cmp r0, #0
	bge _0809B7D0
	ldrb r1, [r5, #0x1d]
	movs r0, #0xe0
	ands r0, r1
	cmp r0, #0
	beq _0809B7AE
	lsrs r0, r1, #5
	subs r4, r0, #1
	b _0809B7B0
_0809B7AE:
	movs r4, #0
_0809B7B0:
	cmp r4, #4
	bls _0809B7B6
	movs r4, #4
_0809B7B6:
	bl sub_80D11E4
	movs r1, #0x64
	bl sub_80D0ED0
	adds r1, r7, #0
	adds r1, #9
	adds r1, r1, r4
	ldrb r1, [r1]
	cmp r0, r1
	bge _0809B7D0
	movs r1, #2
	mov r8, r1
_0809B7D0:
	mov r0, r8
	cmp r0, #0
	bne _0809B80E
	adds r4, r7, #0
	adds r4, #0x10
	adds r6, r7, #0
	adds r6, #0x20
	adds r0, r5, #0
	bl sub_809B220
	adds r1, r0, #0
	adds r0, r7, #0
	adds r0, #0x14
	b _0809B7F0
_0809B7EC:
	adds r4, #4
	adds r0, r4, #4
_0809B7F0:
	cmp r0, r6
	beq _0809B7FA
	ldrh r0, [r4, #4]
	cmp r0, r1
	bls _0809B7EC
_0809B7FA:
	bl sub_80D11E4
	movs r1, #0x64
	bl sub_80D0ED0
	ldrb r4, [r4, #2]
	cmp r0, r4
	bge _0809B80E
	movs r1, #1
	mov r8, r1
_0809B80E:
	ldrb r1, [r5, #0x1d]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strb r0, [r5, #0x1d]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
