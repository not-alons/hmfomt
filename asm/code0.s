    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start sub_809BC64
sub_809BC64: @ 0x0809BC64
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [sp, #0xc]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_809B454
	movs r0, #0
	str r0, [r4, #0x24]
	movs r1, #0
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x2a
	strb r1, [r0]
	adds r0, r4, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809BC8C
sub_809BC8C: @ 0x0809BC8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_809B4A4
	movs r0, #0
	str r0, [r4, #0x24]
	movs r1, #0
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x2a
	strb r1, [r0]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809BCAC
sub_809BCAC: @ 0x0809BCAC
	push {lr}
	bl sub_809B220
	cmp r0, #6
	bls _0809BCBA
	movs r0, #1
	b _0809BCBC
_0809BCBA:
	movs r0, #0
_0809BCBC:
	pop {r1}
	bx r1

	thumb_func_start sub_809BCC0
sub_809BCC0: @ 0x0809BCC0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_809BCAC
	cmp r0, #1
	bne _0809BCE8
	adds r0, r4, #0
	bl sub_809B50C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BCE8
	adds r0, r4, #0
	bl sub_809B504
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BCE8
	movs r5, #1
_0809BCE8:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_809BCF0
sub_809BCF0: @ 0x0809BCF0
	push {lr}
	bl sub_809B65C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809BCFC
sub_809BCFC: @ 0x0809BCFC
	push {lr}
	bl sub_809B538
	cmp r0, #4
	bne _0809BD1A
	bl sub_80D11E4
	movs r1, #0xff
	bl sub_80D0ED0
	movs r1, #5
	cmp r0, #0
	beq _0809BD18
	movs r1, #4
_0809BD18:
	adds r0, r1, #0
_0809BD1A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809BD20
sub_809BD20: @ 0x0809BD20
	ldr r1, [r1]
	str r1, [r0, #0x28]
	movs r1, #0
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_809BD2C
sub_809BD2C: @ 0x0809BD2C
	ldr r1, [r1]
	str r1, [r0, #0x28]
	movs r1, #1
	str r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_809BD38
sub_809BD38: @ 0x0809BD38
	push {lr}
	ldr r1, _0809BD44 @ =0x08103660
	bl sub_809B674
	pop {r0}
	bx r0
	.align 2, 0
_0809BD44: .4byte 0x08103660

	thumb_func_start sub_809BD48
sub_809BD48: @ 0x0809BD48
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [sp, #0xc]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_809B828
	adds r2, r4, #0
	adds r2, #0x34
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809BD70
sub_809BD70: @ 0x0809BD70
	push {r4, lr}
	adds r4, r0, #0
	bl sub_809B870
	adds r2, r4, #0
	adds r2, #0x34
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809BD90
sub_809BD90: @ 0x0809BD90
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_809B4F4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_809B220
	cmp r5, #0xd
	bhi _0809BDAC
	cmp r0, #0x13
	bhi _0809BDAC
	movs r0, #0
	b _0809BDBA
_0809BDAC:
	cmp r5, #0x14
	bhi _0809BDB8
	cmp r0, #0x21
	bhi _0809BDB8
	movs r0, #1
	b _0809BDBA
_0809BDB8:
	movs r0, #2
_0809BDBA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_809BDC0
sub_809BDC0: @ 0x0809BDC0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne _0809BE00
	adds r0, r4, #0
	bl sub_809B8B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BE00
	adds r0, r4, #0
	bl sub_809B50C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BE00
	adds r0, r4, #0
	bl sub_809B504
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BE00
	adds r0, r4, #0
	bl sub_809BD90
	cmp r0, #2
	bne _0809BE00
	movs r5, #1
_0809BE00:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_809BE08
sub_809BE08: @ 0x0809BE08
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_809B8B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BE30
	adds r0, r4, #0
	bl sub_809B50C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BE30
	adds r0, r4, #0
	bl sub_809BD90
	cmp r0, #2
	bne _0809BE30
	movs r5, #1
_0809BE30:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_809BE38
sub_809BE38: @ 0x0809BE38
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0

	thumb_func_start sub_809BE44
sub_809BE44: @ 0x0809BE44
	push {lr}
	adds r3, r0, #0
	adds r3, #0x34
	ldrb r1, [r3]
	movs r2, #1
	orrs r1, r2
	strb r1, [r3]
	bl sub_809B538
	cmp r0, #4
	bne _0809BE6E
	bl sub_80D11E4
	movs r1, #0xff
	bl sub_80D0ED0
	movs r1, #5
	cmp r0, #0
	beq _0809BE6C
	movs r1, #4
_0809BE6C:
	adds r0, r1, #0
_0809BE6E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809BE74
sub_809BE74: @ 0x0809BE74
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0809BE90 @ =0x08103680
	bl sub_809B970
	adds r4, #0x34
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809BE90: .4byte 0x08103680

	thumb_func_start sub_809BE94
sub_809BE94: @ 0x0809BE94
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [sp, #0xc]
	str r0, [sp]
	adds r0, r4, #0
	bl sub_809B828
	adds r2, r4, #0
	adds r2, #0x34
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_809BEBC
sub_809BEBC: @ 0x0809BEBC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_809B870
	adds r2, r4, #0
	adds r2, #0x34
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809BEDC
sub_809BEDC: @ 0x0809BEDC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_809B4F4
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_809B220
	cmp r5, #0xd
	bhi _0809BEF8
	cmp r0, #0x13
	bhi _0809BEF8
	movs r0, #0
	b _0809BEFA
_0809BEF8:
	movs r0, #1
_0809BEFA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_809BF00
sub_809BF00: @ 0x0809BF00
	push {lr}
	adds r0, #0x34
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	adds r1, r0, #0
	cmp r0, #0
	beq _0809BF12
	movs r1, #1
_0809BF12:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_809BF18
sub_809BF18: @ 0x0809BF18
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_809B8B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BF40
	adds r0, r4, #0
	bl sub_809BEDC
	cmp r0, #1
	bne _0809BF40
	adds r0, r4, #0
	bl sub_809BF00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BF40
	movs r5, #1
_0809BF40:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_809BF48
sub_809BF48: @ 0x0809BF48
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_809B8B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BF7C
	adds r0, r4, #0
	bl sub_809B50C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BF7C
	adds r0, r4, #0
	bl sub_809BEDC
	cmp r0, #1
	bne _0809BF7C
	adds r0, r4, #0
	bl sub_809BF00
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809BF7C
	movs r5, #1
_0809BF7C:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_809BF84
sub_809BF84: @ 0x0809BF84
	push {lr}
	adds r3, r0, #0
	adds r3, #0x34
	ldrb r1, [r3]
	movs r2, #7
	orrs r1, r2
	strb r1, [r3]
	bl sub_809B538
	cmp r0, #4
	bne _0809BFAE
	bl sub_80D11E4
	movs r1, #0xff
	bl sub_80D0ED0
	movs r1, #5
	cmp r0, #0
	beq _0809BFAC
	movs r1, #4
_0809BFAC:
	adds r0, r1, #0
_0809BFAE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809BFB4
sub_809BFB4: @ 0x0809BFB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0809BFE4 @ =0x081036A0
	bl sub_809B970
	adds r4, #0x34
	ldrb r2, [r4]
	movs r0, #7
	ands r0, r2
	cmp r0, #0
	beq _0809BFDE
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1d
	subs r0, #1
	movs r1, #7
	ands r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4]
_0809BFDE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809BFE4: .4byte 0x081036A0

	thumb_func_start sub_809BFE8
sub_809BFE8: @ 0x0809BFE8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r5, r0, #0
	add r1, sp, #8
	movs r4, #0x8d
	lsls r4, r4, #2
	movs r0, #0
	mov r8, r0
	ldrh r2, [r1]
	ldr r3, _0809C05C @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r6, #0
	ldrb r4, [r1, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r4
	strb r0, [r1, #1]
	ldrh r4, [r1, #2]
	adds r0, r3, #0
	ands r0, r4
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r2, r0
	strb r2, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	strh r3, [r1, #4]
	mov r4, sp
	mov r0, sp
	movs r2, #6
	bl sub_80D3994
	strb r6, [r4, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_809B104
	ldrb r1, [r5, #8]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x64
	orrs r0, r1
	strb r0, [r5, #8]
	mov r0, r8
	str r0, [r5, #0xc]
	adds r0, r5, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809C05C: .4byte 0xFFFFFC00

	thumb_func_start sub_809C060
sub_809C060: @ 0x0809C060
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	bx lr

	thumb_func_start sub_809C068
sub_809C068: @ 0x0809C068
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #8]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	subs r2, r0, r1
	cmp r2, #0
	bge _0809C07C
	movs r2, #0
	b _0809C082
_0809C07C:
	cmp r2, #0x64
	ble _0809C082
	movs r2, #0x64
_0809C082:
	movs r0, #0x7f
	ands r2, r0
	ldrb r1, [r3, #8]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #8]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809C098
sub_809C098: @ 0x0809C098
	movs r1, #0
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_809C0A0
sub_809C0A0: @ 0x0809C0A0
	ldr r1, [r1]
	str r1, [r0, #0x10]
	movs r1, #1
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_809C0AC
sub_809C0AC: @ 0x0809C0AC
	ldr r2, [r1, #4]
	ldr r1, [r1]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	movs r1, #2
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_809C0BC
sub_809C0BC: @ 0x0809C0BC
	ldr r1, [r1]
	str r1, [r0, #0x10]
	movs r1, #3
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_809C0C8
sub_809C0C8: @ 0x0809C0C8
	ldr r1, [r1]
	str r1, [r0, #0x10]
	movs r1, #4
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_809C0D4
sub_809C0D4: @ 0x0809C0D4
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	add r1, sp, #8
	movs r4, #0x8d
	lsls r4, r4, #2
	ldrh r2, [r1]
	ldr r3, _0809C140 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r6, #0
	ldrb r4, [r1, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r4
	strb r0, [r1, #1]
	ldrh r4, [r1, #2]
	adds r0, r3, #0
	ands r0, r4
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r2, r0
	strb r2, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	strh r3, [r1, #4]
	mov r4, sp
	mov r0, sp
	movs r2, #6
	bl sub_80D3994
	strb r6, [r4, #6]
	adds r0, r5, #0
	mov r1, sp
	bl sub_809B124
	add r1, sp, #0x10
	adds r0, r5, #0
	bl sub_809C098
	ldrb r1, [r5, #8]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x64
	orrs r0, r1
	strb r0, [r5, #8]
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809C140: .4byte 0xFFFFFC00

	thumb_func_start sub_809C144
sub_809C144: @ 0x0809C144
	push {lr}
	movs r3, #0
	movs r2, #0
	adds r1, r0, #0
_0809C14C:
	strb r2, [r1]
	strb r2, [r1, #0xc]
	strb r2, [r1, #6]
	adds r1, #1
	adds r3, #1
	cmp r3, #5
	bls _0809C14C
	pop {r1}
	bx r1
	.align 2, 0
_0809C160:
	.byte 0x00, 0xB5, 0x08, 0x1C, 0x71, 0xF7, 0xE4, 0xFC, 0x05, 0x38, 0x28, 0x28, 0x5A, 0xD8, 0x80, 0x00
	.byte 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x7C, 0xC1, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
	.byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08
	.byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
	.byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08
	.byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
	.byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08
	.byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
	.byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08
	.byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
	.byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08
	.byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
	.byte 0x01, 0x20, 0x00, 0xE0, 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start sub_809C22C
sub_809C22C: @ 0x0809C22C
	push {lr}
	movs r2, #1
	subs r0, r1, #5
	cmp r0, #0x28
	bhi _0809C2FE
	lsls r0, r0, #2
	ldr r1, _0809C240 @ =_0809C244
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809C240: .4byte _0809C244
_0809C244: @ jump table
	.4byte _0809C2E8 @ case 0
	.4byte _0809C2FE @ case 1
	.4byte _0809C2FE @ case 2
	.4byte _0809C2FE @ case 3
	.4byte _0809C2FE @ case 4
	.4byte _0809C2FE @ case 5
	.4byte _0809C2FE @ case 6
	.4byte _0809C2FE @ case 7
	.4byte _0809C2EC @ case 8
	.4byte _0809C2FE @ case 9
	.4byte _0809C2FE @ case 10
	.4byte _0809C2FE @ case 11
	.4byte _0809C2FE @ case 12
	.4byte _0809C2FE @ case 13
	.4byte _0809C2FE @ case 14
	.4byte _0809C2FE @ case 15
	.4byte _0809C2F0 @ case 16
	.4byte _0809C2FE @ case 17
	.4byte _0809C2FE @ case 18
	.4byte _0809C2FE @ case 19
	.4byte _0809C2FE @ case 20
	.4byte _0809C2FE @ case 21
	.4byte _0809C2FE @ case 22
	.4byte _0809C2FE @ case 23
	.4byte _0809C2F4 @ case 24
	.4byte _0809C2FE @ case 25
	.4byte _0809C2FE @ case 26
	.4byte _0809C2FE @ case 27
	.4byte _0809C2FE @ case 28
	.4byte _0809C2FE @ case 29
	.4byte _0809C2FE @ case 30
	.4byte _0809C2FE @ case 31
	.4byte _0809C2F8 @ case 32
	.4byte _0809C2FE @ case 33
	.4byte _0809C2FE @ case 34
	.4byte _0809C2FE @ case 35
	.4byte _0809C2FE @ case 36
	.4byte _0809C2FE @ case 37
	.4byte _0809C2FE @ case 38
	.4byte _0809C2FE @ case 39
	.4byte _0809C2FC @ case 40
_0809C2E8:
	movs r2, #0
	b _0809C2FE
_0809C2EC:
	movs r2, #1
	b _0809C2FE
_0809C2F0:
	movs r2, #2
	b _0809C2FE
_0809C2F4:
	movs r2, #3
	b _0809C2FE
_0809C2F8:
	movs r2, #4
	b _0809C2FE
_0809C2FC:
	movs r2, #5
_0809C2FE:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_809C304
sub_809C304: @ 0x0809C304
	push {r4, lr}
	adds r4, r0, #0
	bl sub_809C22C
	adds r4, r4, r0
	ldrb r0, [r4]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809C318:
	.byte 0x10, 0xB5, 0x04, 0x1C, 0xFF, 0xF7, 0x86, 0xFF
	.byte 0x06, 0x34, 0x24, 0x18, 0x20, 0x78, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start sub_809C32C
sub_809C32C: @ 0x0809C32C
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	ldrb r1, [r2, #7]
	rsbs r1, r1, #0
	ldrb r0, [r2, #1]
	rsbs r0, r0, #0
	orrs r0, r1
	cmp r0, #0
	bge _0809C384
	ldrb r1, [r2, #6]
	rsbs r1, r1, #0
	ldrb r0, [r2]
	rsbs r0, r0, #0
	orrs r0, r1
	cmp r0, #0
	bge _0809C384
	ldrb r1, [r2, #8]
	rsbs r1, r1, #0
	ldrb r0, [r2, #2]
	rsbs r0, r0, #0
	orrs r0, r1
	cmp r0, #0
	bge _0809C384
	ldrb r1, [r2, #9]
	rsbs r1, r1, #0
	ldrb r0, [r2, #3]
	rsbs r0, r0, #0
	orrs r0, r1
	cmp r0, #0
	bge _0809C384
	ldrb r1, [r2, #0xa]
	rsbs r1, r1, #0
	ldrb r0, [r2, #4]
	rsbs r0, r0, #0
	orrs r0, r1
	cmp r0, #0
	bge _0809C384
	ldrb r1, [r2, #0xb]
	rsbs r1, r1, #0
	ldrb r0, [r2, #5]
	rsbs r0, r0, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
_0809C384:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809C38C
sub_809C38C: @ 0x0809C38C
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _0809C3B6
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0809C3B6
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0809C3B6
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _0809C3B6
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _0809C3B6
	ldrb r0, [r1, #0xb]
	rsbs r0, r0, #0
	lsrs r2, r0, #0x1f
_0809C3B6:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_809C3BC
sub_809C3BC: @ 0x0809C3BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_809C22C
	adds r3, r0, #0
	adds r1, r4, r3
	ldrb r2, [r1]
	cmp r2, #0
	bne _0809C3DA
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r3
	strb r2, [r0]
_0809C3DA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_809C3E0
sub_809C3E0: @ 0x0809C3E0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r5, #0
	adds r6, r2, r1
	ldrb r0, [r6]
	cmp r0, #0
	beq _0809C418
	adds r0, r2, #0
	adds r0, #0xc
	adds r4, r0, r1
	ldr r0, _0809C408 @ =0x081036C0
	adds r0, r1, r0
	ldrb r3, [r4]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0809C40C
	adds r0, r3, #1
	strb r0, [r4]
	b _0809C418
	.align 2, 0
_0809C408: .4byte 0x081036C0
_0809C40C:
	strb r5, [r6]
	adds r0, r2, #6
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	movs r5, #1
_0809C418:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_809C420
sub_809C420: @ 0x0809C420
	push {lr}
	adds r2, r0, #0
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809C43E
	cmp r1, #0
	beq _0809C434
	cmp r1, #3
	bne _0809C43E
_0809C434:
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
_0809C43E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809C444
sub_809C444: @ 0x0809C444
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl sub_809C22C
	adds r1, r0, #0
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809C46A
	cmp r1, #0
	beq _0809C460
	cmp r1, #3
	bne _0809C46A
_0809C460:
	adds r0, r4, #0
	bl sub_809C3E0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0809C46A:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809C474
sub_809C474: @ 0x0809C474
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_809C22C
	adds r4, r0, #0
	movs r6, #0
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809C4AC
	cmp r4, #1
	beq _0809C490
	cmp r4, #4
	bne _0809C49C
_0809C490:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_809C3E0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0809C49C:
	cmp r4, #0
	beq _0809C4A4
	cmp r4, #3
	bne _0809C4AC
_0809C4A4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_809C420
_0809C4AC:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_809C4B4
sub_809C4B4: @ 0x0809C4B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_809C22C
	adds r1, r0, #0
	movs r2, #0
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809C4DA
	cmp r1, #5
	beq _0809C4D0
	cmp r1, #2
	bne _0809C4DA
_0809C4D0:
	adds r0, r4, #0
	bl sub_809C3E0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0809C4DA:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809C4E4
sub_809C4E4: @ 0x0809C4E4
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_0809C4EC:
	.byte 0x00, 0xB5, 0x03, 0x1C
	.byte 0x00, 0x22, 0x0D, 0x29, 0x08, 0xD8, 0x1F, 0x20, 0x08, 0x40, 0x01, 0x22, 0x82, 0x40, 0x19, 0x68
	.byte 0x11, 0x40, 0x48, 0x42, 0x08, 0x43, 0xC2, 0x0F, 0x01, 0x20, 0x50, 0x40, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start sub_809C510
sub_809C510: @ 0x0809C510
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r6, r3, #0
	movs r0, #0
	cmp r4, #0xd
	bhi _0809C534
	movs r0, #0x1f
	ands r0, r4
	movs r2, #1
	lsls r2, r0
	ldr r1, [r1]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0809C534:
	cmp r0, #0
	beq _0809C574
	cmp r4, #0xd
	bne _0809C554
	cmp r3, #0
	beq _0809C554
	ldr r0, _0809C54C @ =0x081036D4
	adds r0, #0x9c
	ldrb r1, [r0, #8]
	ldrb r2, [r0, #9]
	ldr r0, _0809C550 @ =0x081070AC
	b _0809C5A0
	.align 2, 0
_0809C54C: .4byte 0x081036D4
_0809C550: .4byte 0x081070AC
_0809C554:
	ldr r2, _0809C570 @ =0x081036D4
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r1, r2, #4
	adds r1, r0, r1
	adds r0, r0, r2
	ldrb r2, [r0, #8]
	ldrb r3, [r0, #9]
	ldr r0, [r1]
	str r0, [r5]
	str r2, [r5, #4]
	str r3, [r5, #8]
	b _0809C5A6
	.align 2, 0
_0809C570: .4byte 0x081036D4
_0809C574:
	cmp r4, #0xd
	bne _0809C590
	cmp r6, #0
	beq _0809C590
	ldr r0, _0809C588 @ =0x081036D4
	adds r0, #0x9c
	ldrb r1, [r0, #8]
	ldrb r2, [r0, #9]
	ldr r0, _0809C58C @ =0x08107094
	b _0809C5A0
	.align 2, 0
_0809C588: .4byte 0x081036D4
_0809C58C: .4byte 0x08107094
_0809C590:
	ldr r1, _0809C5B0 @ =0x081036D4
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #8]
	ldrb r2, [r0, #9]
	ldr r0, [r0]
_0809C5A0:
	str r0, [r5]
	str r1, [r5, #4]
	str r2, [r5, #8]
_0809C5A6:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809C5B0: .4byte 0x081036D4

	thumb_func_start sub_809C5B4
sub_809C5B4: @ 0x0809C5B4
	push {lr}
	adds r2, r0, #0
	cmp r1, #0xd
	bhi _0809C5CA
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0809C5CA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809C5D0
sub_809C5D0: @ 0x0809C5D0
	push {lr}
	adds r2, r0, #0
	cmp r1, #0xd
	bhi _0809C5E6
	movs r0, #0x1f
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0809C5E6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809C5EC
sub_809C5EC: @ 0x0809C5EC
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_809C5F4
sub_809C5F4: @ 0x0809C5F4
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0

	thumb_func_start sub_809C600
sub_809C600: @ 0x0809C600
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r0, sp
	strh r1, [r0]
	adds r0, r5, #4
	ldr r4, [r5]
	lsls r4, r4, #1
	adds r4, #4
	adds r4, r5, r4
	adds r1, r4, #0
	mov r2, sp
	bl sub_80E3DB4
	cmp r0, r4
	bne _0809C63C
	mov r2, sp
	ldr r0, [r5]
	adds r3, r0, #0
	cmp r0, #2
	bhi _0809C63C
	lsls r0, r0, #1
	adds r0, #4
	adds r1, r5, r0
	cmp r1, #0
	beq _0809C638
	ldrh r0, [r2]
	strh r0, [r1]
_0809C638:
	adds r0, r3, #1
	str r0, [r5]
_0809C63C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_809C644
sub_809C644: @ 0x0809C644
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r0, sp
	strh r1, [r0]
	adds r0, r5, #4
	ldr r4, [r5]
	lsls r4, r4, #1
	adds r4, #4
	adds r4, r5, r4
	adds r1, r4, #0
	mov r2, sp
	bl sub_80E3E28
	adds r3, r0, #0
	cmp r3, r4
	beq _0809C68A
	ldr r0, [r5]
	cmp r0, #0
	beq _0809C68A
	lsls r0, r0, #1
	adds r0, #4
	adds r0, r5, r0
	adds r1, r3, #2
	cmp r1, r0
	beq _0809C684
	cmp r0, r1
	beq _0809C684
	subs r2, r0, r1
	adds r0, r3, #0
	bl sub_80D39F8
_0809C684:
	ldr r0, [r5]
	subs r0, #1
	str r0, [r5]
_0809C68A:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_809C694
sub_809C694: @ 0x0809C694
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	ldrh r0, [r0, #0xc]
	cmp r0, r1
	bne _0809C6A4
	movs r2, #1
_0809C6A4:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809C6AC
sub_809C6AC: @ 0x0809C6AC
	strh r1, [r0, #0xc]
	bx lr

	thumb_func_start sub_809C6B0
sub_809C6B0: @ 0x0809C6B0
	ldr r1, _0809C6B8 @ =0x0000FFFF
	strh r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0809C6B8: .4byte 0x0000FFFF

	thumb_func_start sub_809C6BC
sub_809C6BC: @ 0x0809C6BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0
	str r0, [r7]
	ldr r0, _0809CAB8 @ =0x0000FFFF
	strh r0, [r7, #0xc]
	movs r5, #7
	rsbs r5, r5, #0
	movs r0, #0
	strb r0, [r7, #0xe]
	subs r0, #3
	mov sb, r0
	movs r4, #0x19
	rsbs r4, r4, #0
	movs r0, #0
	strb r0, [r7, #0xf]
	strb r0, [r7, #0x10]
	ldrb r1, [r7, #0x11]
	subs r0, #2
	ands r0, r1
	mov r1, sb
	ands r0, r1
	movs r2, #5
	rsbs r2, r2, #0
	ands r0, r2
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, #0xc
	ands r0, r2
	movs r3, #0x61
	rsbs r3, r3, #0
	ands r0, r3
	strb r0, [r7, #0x11]
	ldr r0, [r7, #0x10]
	ldr r1, _0809CABC @ =0xFFFE7FFF
	mov r8, r1
	ands r0, r1
	str r0, [r7, #0x10]
	ldrb r1, [r7, #0x12]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r7, #0x12]
	ldrh r1, [r7, #0x12]
	ldr r6, _0809CAC0 @ =0xFFFFFE7F
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x12]
	ldrb r1, [r7, #0x13]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r7, #0x13]
	ldrb r1, [r7, #0x14]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r4
	ands r0, r3
	strb r0, [r7, #0x14]
	ldrh r1, [r7, #0x14]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x14]
	ldrb r1, [r7, #0x15]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r7, #0x15]
	ldr r0, [r7, #0x14]
	mov r1, r8
	ands r0, r1
	str r0, [r7, #0x14]
	ldrb r1, [r7, #0x16]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r7, #0x16]
	ldrh r1, [r7, #0x16]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x16]
	ldrb r1, [r7, #0x17]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	ands r0, r2
	strb r0, [r7, #0x17]
	ldrb r1, [r7, #0x18]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r4
	ands r0, r3
	strb r0, [r7, #0x18]
	ldrh r1, [r7, #0x18]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x18]
	ldrb r1, [r7, #0x19]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r7, #0x19]
	ldr r0, [r7, #0x18]
	mov r2, r8
	ands r0, r2
	str r0, [r7, #0x18]
	ldrb r1, [r7, #0x1a]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r7, #0x1a]
	ldrh r1, [r7, #0x1a]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x1a]
	ldrb r1, [r7, #0x1b]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r7, #0x1b]
	ldrb r1, [r7, #0x1c]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r4
	ands r0, r3
	strb r0, [r7, #0x1c]
	ldrh r1, [r7, #0x1c]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x1c]
	ldrb r1, [r7, #0x1d]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r7, #0x1d]
	ldr r0, [r7, #0x1c]
	ands r0, r2
	str r0, [r7, #0x1c]
	ldrb r1, [r7, #0x1e]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r7, #0x1e]
	ldrh r1, [r7, #0x1e]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x1e]
	ldrb r1, [r7, #0x1f]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r7, #0x1f]
	adds r2, r7, #0
	adds r2, #0x20
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r4
	ands r0, r3
	strb r0, [r2]
	ldrh r1, [r7, #0x20]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x20]
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r2]
	ldr r0, [r7, #0x20]
	mov r1, r8
	ands r0, r1
	str r0, [r7, #0x20]
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r2]
	ldrh r1, [r7, #0x24]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x24]
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x26
	movs r2, #4
	rsbs r2, r2, #0
	mov sl, r2
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x2a
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r2]
	ldrh r1, [r7, #0x2a]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x2a]
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x2c
	movs r0, #0
	strb r0, [r1]
	adds r2, #2
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x24
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x2c]
	ldr r2, _0809CAC4 @ =0xFFFC3FFF
	mov ip, r2
	ands r0, r2
	str r0, [r7, #0x2c]
	adds r2, r7, #0
	adds r2, #0x2e
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r2, #8
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r2]
	ldrh r1, [r7, #0x36]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x36]
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x38
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r2, #3
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r3
	strb r0, [r2]
	ldrh r1, [r7, #0x3a]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r7, #0x3a]
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r4
	ands r0, r3
	strb r0, [r2]
	ldrh r1, [r7, #0x3c]
	ldr r0, _0809CAC8 @ =0xFFFFFC7F
	ands r0, r1
	strh r0, [r7, #0x3c]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x3c]
	mov r2, ip
	ands r0, r2
	str r0, [r7, #0x3c]
	adds r2, r7, #0
	adds r2, #0x3e
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x3f
	movs r0, #0
	strb r0, [r1]
	adds r2, #2
	ldrb r1, [r2]
	subs r0, #2
	ands r0, r1
	ands r0, r5
	ands r0, r4
	ands r0, r3
	strb r0, [r2]
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	strb r0, [r2]
	ldr r0, [r7, #0x40]
	ldr r1, _0809CACC @ =0xFFFE1FFF
	ands r0, r1
	str r0, [r7, #0x40]
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x43
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r2, #0xb
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r7, #0x4c]
	mov r2, r8
	ands r0, r2
	str r0, [r7, #0x4c]
	adds r2, r7, #0
	adds r2, #0x4e
	ldrb r1, [r2]
	mov r0, sb
	ands r0, r1
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	ands r0, r3
	strb r0, [r2]
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	b _0809CAD0
	.align 2, 0
_0809CAB8: .4byte 0x0000FFFF
_0809CABC: .4byte 0xFFFE7FFF
_0809CAC0: .4byte 0xFFFFFE7F
_0809CAC4: .4byte 0xFFFC3FFF
_0809CAC8: .4byte 0xFFFFFC7F
_0809CACC: .4byte 0xFFFE1FFF
_0809CAD0:
	strh r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x31
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x50
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r2, #3
	ldrb r1, [r2]
	subs r0, #2
	ands r0, r1
	ands r0, r5
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x28
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0809CD5C @ =0xFFFFFE3F
	ands r0, r1
	strh r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x54
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r2, #0x3f
	mov r8, r2
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x59
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	strb r0, [r2]
	ldr r0, [r7, #0x58]
	ldr r1, _0809CD60 @ =0xFFFC7FFF
	ands r0, r1
	str r0, [r7, #0x58]
	adds r1, r7, #0
	adds r1, #0x5a
	ldrh r0, [r1]
	ands r6, r0
	strh r6, [r1]
	adds r2, #2
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ands r0, r4
	ands r0, r3
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	mov r2, sl
	ands r2, r0
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r2, r0
	subs r0, #0x24
	ands r2, r0
	strb r2, [r1]
	ldrh r2, [r1]
	ldr r3, _0809CD64 @ =0xFFFFC03F
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1]
	ldr r0, [r7, #0x68]
	ldr r6, _0809CD68 @ =0xFFC03FFF
	ands r0, r6
	str r0, [r7, #0x68]
	adds r2, r7, #0
	adds r2, #0x6a
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x6c
	ldrb r2, [r1]
	subs r4, #0x27
	adds r0, r4, #0
	ands r0, r2
	strb r0, [r1]
	ldrh r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1]
	ldr r0, [r7, #0x6c]
	ands r0, r6
	str r0, [r7, #0x6c]
	adds r2, r7, #0
	adds r2, #0x6e
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	strh r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x70
	ldrb r2, [r1]
	adds r0, r4, #0
	ands r0, r2
	strb r0, [r1]
	ldrh r2, [r1]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1]
	ldr r0, [r7, #0x70]
	ands r0, r6
	str r0, [r7, #0x70]
	adds r1, #2
	ldrh r0, [r1]
	ands r3, r0
	strh r3, [r1]
	adds r1, #1
	ldrb r0, [r1]
	mov r2, r8
	ands r2, r0
	strb r2, [r1]
	adds r1, #1
	ldrb r0, [r1]
	ands r4, r0
	strb r4, [r1]
	ldrh r2, [r1]
	ldr r0, _0809CD5C @ =0xFFFFFE3F
	ands r0, r2
	strh r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	ands r5, r0
	movs r0, #9
	rsbs r0, r0, #0
	ands r5, r0
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r5, r2
	subs r0, #0x18
	ands r5, r0
	subs r2, #0x30
	ands r5, r2
	movs r0, #0x7f
	ands r5, r0
	strb r5, [r1]
	adds r2, r7, #0
	adds r2, #0x76
	ldrb r1, [r2]
	subs r0, #0x81
	ands r0, r1
	mov r1, sb
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0809CD6C @ =0xFFFFF87F
	ands r0, r1
	strh r0, [r2]
	adds r2, #1
	ldrb r1, [r2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2]
	adds r1, r7, #0
	adds r1, #0x78
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r2, #3
	ldrb r0, [r2]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	strb r1, [r2]
	ldrh r1, [r2]
	ldr r0, _0809CD70 @ =0xFFFFFE01
	ands r0, r1
	strh r0, [r2]
	adds r1, r7, #0
	adds r1, #0x7b
	ldrb r0, [r1]
	mov r2, sb
	ands r2, r0
	movs r0, #5
	rsbs r0, r0, #0
	ands r2, r0
	movs r6, #9
	rsbs r6, r6, #0
	ands r2, r6
	movs r5, #0x11
	rsbs r5, r5, #0
	ands r2, r5
	movs r4, #0x21
	rsbs r4, r4, #0
	ands r2, r4
	movs r3, #0x41
	rsbs r3, r3, #0
	ands r2, r3
	movs r0, #0x7f
	ands r2, r0
	strb r2, [r1]
	adds r1, #1
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	movs r1, #0x7e
	adds r1, r1, r7
	mov r8, r1
	ldrb r1, [r1]
	subs r0, #4
	ands r0, r1
	ands r0, r2
	ands r0, r6
	ands r0, r5
	ands r0, r4
	ands r0, r3
	mov r2, r8
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0809CD74 @ =0xFFFFFC7F
	ands r0, r1
	strh r0, [r2]
	adds r2, r7, #0
	adds r2, #0x7f
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809CD5C: .4byte 0xFFFFFE3F
_0809CD60: .4byte 0xFFFC7FFF
_0809CD64: .4byte 0xFFFFC03F
_0809CD68: .4byte 0xFFC03FFF
_0809CD6C: .4byte 0xFFFFF87F
_0809CD70: .4byte 0xFFFFFE01
_0809CD74: .4byte 0xFFFFFC7F

	thumb_func_start sub_809CD78
sub_809CD78: @ 0x0809CD78
	push {r4, lr}
	adds r1, r0, #0
	movs r2, #0x3a
	movs r3, #0
	movs r4, #1
	rsbs r4, r4, #0
_0809CD84:
	str r3, [r1]
	str r3, [r1, #4]
	adds r1, #8
	subs r2, #1
	cmp r2, r4
	bne _0809CD84
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809CD98
sub_809CD98: @ 0x0809CD98
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	movs r6, #0
	lsls r2, r1, #3
	adds r1, r4, r2
	ldr r3, [r1]
	ldr r0, _0809CDC8 @ =0x3B9AC9FF
	cmp r3, r0
	bhi _0809CDB0
	adds r0, r3, #1
	str r0, [r1]
_0809CDB0:
	adds r0, r4, #4
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r5, r0
	bls _0809CDBE
	str r5, [r1]
	movs r6, #1
_0809CDBE:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809CDC8: .4byte 0x3B9AC9FF

	thumb_func_start sub_809CDCC
sub_809CDCC: @ 0x0809CDCC
	push {lr}
	movs r3, #1
	movs r2, #8
	adds r1, r0, #0
	adds r1, #0x40
_0809CDD6:
	ldr r0, [r1]
	cmp r0, #0
	bne _0809CDDE
	movs r3, #0
_0809CDDE:
	adds r1, #8
	adds r2, #1
	cmp r2, #0x3a
	bls _0809CDD6
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_809CDEC
sub_809CDEC: @ 0x0809CDEC
	push {r4, lr}
	movs r2, #0
	movs r3, #8
	ldr r4, _0809CE14 @ =0x3B9AC9FF
	adds r1, r0, #0
	adds r1, #0x40
_0809CDF8:
	ldr r0, [r1]
	adds r2, r2, r0
	cmp r2, r4
	bls _0809CE02
	ldr r2, _0809CE18 @ =0x3B9ACA00
_0809CE02:
	adds r1, #8
	adds r3, #1
	cmp r3, #0x3a
	bls _0809CDF8
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809CE14: .4byte 0x3B9AC9FF
_0809CE18: .4byte 0x3B9ACA00

	thumb_func_start sub_809CE1C
sub_809CE1C: @ 0x0809CE1C
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr

	thumb_func_start sub_809CE24
sub_809CE24: @ 0x0809CE24
	lsls r1, r1, #3
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_809CE30
sub_809CE30: @ 0x0809CE30
	push {lr}
	adds r0, r1, #0
	subs r0, #0x35
	cmp r0, #5
	bhi _0809CE60
	lsls r0, r0, #2
	ldr r1, _0809CE44 @ =_0809CE48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809CE44: .4byte _0809CE48
_0809CE48: @ jump table
	.4byte _0809CE60 @ case 0
	.4byte _0809CE64 @ case 1
	.4byte _0809CE68 @ case 2
	.4byte _0809CE6C @ case 3
	.4byte _0809CE70 @ case 4
	.4byte _0809CE74 @ case 5
_0809CE60:
	movs r0, #0xfc
	b _0809CE76
_0809CE64:
	movs r0, #0xf9
	b _0809CE76
_0809CE68:
	movs r0, #0xfe
	b _0809CE76
_0809CE6C:
	movs r0, #0xfd
	b _0809CE76
_0809CE70:
	movs r0, #0xfa
	b _0809CE76
_0809CE74:
	movs r0, #0xfb
_0809CE76:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809CE7C
sub_809CE7C: @ 0x0809CE7C
	ldr r0, _0809CE88 @ =0x08103A18
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0809CE88: .4byte 0x08103A18

	thumb_func_start sub_809CE8C
sub_809CE8C: @ 0x0809CE8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	movs r0, #0
	str r0, [r7]
	ldr r0, _0809CF24 @ =0x00000624
	adds r2, r7, r0
	movs r0, #2
	rsbs r0, r0, #0
	movs r3, #3
	rsbs r3, r3, #0
	movs r4, #5
	rsbs r4, r4, #0
	movs r5, #9
	rsbs r5, r5, #0
	movs r6, #0x11
	rsbs r6, r6, #0
	movs r1, #0x21
	rsbs r1, r1, #0
	mov r8, r1
	movs r1, #0
	strb r1, [r2]
	ldr r1, _0809CF28 @ =0x00000625
	adds r2, r7, r1
	movs r1, #0
	strb r1, [r2]
	ldr r1, _0809CF2C @ =0x00000626
	adds r2, r7, r1
	ldrb r1, [r2]
	ands r0, r1
	ands r0, r3
	ands r0, r4
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	strb r0, [r2]
	movs r0, #0
	movs r1, #0x10
	rsbs r1, r1, #0
	mov r8, r1
	ldr r6, _0809CF30 @ =0xFFFFFC0F
	movs r5, #3
_0809CEE4:
	movs r3, #0
	lsls r1, r0, #3
	adds r4, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r0, r7, #4
	adds r2, r1, r0
_0809CEF2:
	ldrb r1, [r2]
	mov r0, r8
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #1]
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1b
	bls _0809CEF2
	adds r0, r4, #0
	cmp r0, #0x1b
	bls _0809CEE4
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809CF24: .4byte 0x00000624
_0809CF28: .4byte 0x00000625
_0809CF2C: .4byte 0x00000626
_0809CF30: .4byte 0xFFFFFC0F

	thumb_func_start sub_809CF34
sub_809CF34: @ 0x0809CF34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	str r0, [sp, #0x34]
	adds r6, r1, #0
	str r2, [sp, #0x38]
	mov r8, r3
	ldr r0, [sp, #0x60]
	mov sb, r0
	add r1, sp, #0x30
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	mov r0, sp
	movs r2, #0xb
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
_0809CF5E:
	strb r1, [r0]
	strb r1, [r0, #1]
	adds r0, #4
	subs r2, #1
	cmp r2, r3
	bne _0809CF5E
	movs r0, #0
	movs r1, #0x10
	rsbs r1, r1, #0
	mov ip, r1
	ldr r7, _0809CFDC @ =0xFFFFFC0F
	movs r5, #3
_0809CF76:
	movs r3, #0
	lsls r1, r0, #3
	adds r4, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r0, r6, #4
	adds r2, r1, r0
_0809CF84:
	ldrb r1, [r2]
	mov r0, ip
	ands r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2, #1]
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1b
	bls _0809CF84
	adds r0, r4, #0
	cmp r0, #0x1b
	bls _0809CF76
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _0809CFC4
	movs r1, #0
	cmp r1, sb
	bhs _0809CFC4
	adds r3, r0, #0
	mov r2, sp
_0809CFBA:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, sb
	blo _0809CFBA
_0809CFC4:
	movs r3, #0xff
	mov r1, sp
_0809CFC8:
	ldrb r2, [r1]
	subs r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x37
	bls _0809CFE0
	adds r0, r2, #0
	orrs r0, r3
	b _0809CFE6
	.align 2, 0
_0809CFDC: .4byte 0xFFFFFC0F
_0809CFE0:
	ldrb r0, [r1]
	subs r0, #2
	asrs r0, r0, #1
_0809CFE6:
	strb r0, [r1]
	ldrb r2, [r1, #1]
	subs r0, r2, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x37
	bls _0809CFFA
	adds r0, r2, #0
	orrs r0, r3
	b _0809D000
_0809CFFA:
	ldrb r0, [r1, #1]
	subs r0, #7
	asrs r0, r0, #1
_0809D000:
	strb r0, [r1, #1]
	adds r1, #4
	add r0, sp, #0x2c
	cmp r1, r0
	ble _0809CFC8
	mov r1, r8
	cmp r1, #0
	bne _0809D016
	str r1, [r6]
	movs r0, #0x14
	b _0809D05E
_0809D016:
	mov r1, r8
	cmp r1, #9
	bne _0809D02C
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne _0809D02C
	movs r0, #4
	str r0, [r6]
	movs r1, #0x28
	mov sl, r1
	b _0809D060
_0809D02C:
	mov r0, r8
	movs r1, #5
	bl sub_80D0F4E
	cmp r0, #0
	bne _0809D042
	movs r0, #1
	str r0, [r6]
	movs r0, #0x96
	lsls r0, r0, #1
	b _0809D05E
_0809D042:
	mov r0, r8
	movs r1, #3
	bl sub_80D0F4E
	cmp r0, #0
	bne _0809D058
	movs r0, #2
	str r0, [r6]
	movs r1, #0x64
	mov sl, r1
	b _0809D060
_0809D058:
	movs r0, #3
	str r0, [r6]
	movs r0, #0x1e
_0809D05E:
	mov sl, r0
_0809D060:
	mov r1, r8
	cmp r1, #0
	beq _0809D10E
	bl sub_80D11E4
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_809D8A4
	adds r1, r0, #0
	asrs r4, r4, #8
	subs r1, #2
	adds r0, r4, #0
	bl sub_80D0F4E
	mov sb, r0
	mov r5, sb
	adds r5, #1
	bl sub_80D11E4
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_809D8B8
	adds r1, r0, #0
	asrs r4, r4, #8
	subs r1, #2
	adds r0, r4, #0
	bl sub_80D0F4E
	adds r7, r0, #0
	adds r4, r7, #1
	lsls r2, r5, #1
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, r6, r2
	ldrb r1, [r2, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #4]
	bl sub_80D11E4
	asrs r1, r0, #8
	movs r0, #3
	ands r1, r0
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809D0DC
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0809D0D8
	mov r5, sb
	b _0809D0EA
_0809D0D8:
	adds r5, #1
	b _0809D0EA
_0809D0DC:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0809D0E8
	adds r4, r7, #0
	b _0809D0EA
_0809D0E8:
	adds r4, #1
_0809D0EA:
	add r0, sp, #0x30
	strb r5, [r0]
	strb r4, [r0, #1]
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r6, r1
	ldrb r2, [r1, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r1, #4]
_0809D10E:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	bne _0809D122
	adds r0, r6, #0
	mov r1, r8
	mov r2, sl
	mov r3, sp
	bl sub_809D168
	b _0809D12E
_0809D122:
	adds r0, r6, #0
	mov r1, r8
	mov r2, sl
	mov r3, sp
	bl sub_809D500
_0809D12E:
	mov r0, r8
	cmp r0, #0
	beq _0809D150
	add r0, sp, #0x30
	ldrb r1, [r0]
	lsls r1, r1, #1
	ldrb r2, [r0, #1]
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r6, r1
	ldrb r2, [r1, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #4]
_0809D150:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	str r0, [r1]
	ldr r0, [sp, #0x34]
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_809D168
sub_809D168: @ 0x0809D168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_809D8A4
	str r0, [sp, #0xc]
	mov r0, sl
	bl sub_809D8B8
	str r0, [sp, #0x10]
	mov r0, sl
	ldr r1, [sp]
	bl sub_809D418
	str r0, [sp, #0x14]
	bl sub_80D11E4
	asrs r0, r0, #4
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r4, #0
	bl sub_80D0F4E
	str r0, [sp, #0x18]
	movs r5, #0
	cmp r5, r4
	blo _0809D1B2
	b _0809D2DA
_0809D1B2:
	str r4, [sp, #0x1c]
_0809D1B4:
	ldr r3, [sp, #0x18]
	adds r4, r3, r5
	ldr r0, [sp, #0x1c]
	cmp r4, r0
	blo _0809D1C0
	subs r4, r4, r0
_0809D1C0:
	adds r0, r4, #0
	ldr r1, [sp, #0xc]
	bl sub_80D0F4E
	mov r8, r0
	adds r0, r4, #0
	ldr r1, [sp, #0xc]
	bl sub_80D0EDA
	adds r7, r0, #0
	mov r1, r8
	lsls r0, r1, #1
	lsls r1, r7, #3
	subs r1, r1, r7
	lsls r1, r1, #3
	adds r0, r0, r1
	add r0, sl
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r5, #1
	str r5, [sp, #0x24]
	cmp r0, #1
	bgt _0809D2D0
	bl sub_80D11E4
	asrs r2, r0, #4
	movs r0, #0xff
	ands r2, r0
	movs r3, #0
	ldr r4, [sp, #0x14]
	lsls r6, r4, #2
	ldr r4, _0809D268 @ =0x08103F98
_0809D202:
	ldr r1, [sp, #0x14]
	adds r0, r6, r1
	adds r0, r3, r0
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809D2CA
	cmp r2, r0
	bge _0809D2C4
	ldr r1, _0809D26C @ =0x08103F84
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r3, [r0]
	mov r2, r8
	lsls r2, r2, #1
	mov sb, r2
	lsls r4, r7, #3
	mov ip, r4
	cmp r3, #1
	bne _0809D2AC
	cmp r7, #0
	beq _0809D2A0
	ldr r0, [sp, #0x10]
	subs r0, #1
	cmp r7, r0
	bhs _0809D2A0
	mov r0, r8
	cmp r0, #0
	beq _0809D2A0
	ldr r0, [sp, #0xc]
	subs r0, #1
	cmp r8, r0
	bhs _0809D2A0
	subs r4, r7, #1
	adds r6, r7, #2
	cmp r4, r6
	bge _0809D2AC
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r5, r0, #3
_0809D252:
	cmp r4, #0
	blt _0809D296
	ldr r1, [sp, #0x10]
	cmp r4, r1
	bge _0809D296
	mov r2, r8
	subs r2, #1
	mov r1, r8
	adds r1, #2
	b _0809D272
	.align 2, 0
_0809D268: .4byte 0x08103F98
_0809D26C: .4byte 0x08103F84
_0809D270:
	adds r2, #1
_0809D272:
	cmp r2, r1
	bge _0809D292
	cmp r2, #0
	bge _0809D280
	ldr r0, [sp, #0xc]
	cmp r2, r0
	bge _0809D270
_0809D280:
	lsls r0, r2, #1
	adds r0, r0, r5
	add r0, sl
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0809D270
	movs r3, #0
_0809D292:
	cmp r3, #0
	beq _0809D2AC
_0809D296:
	adds r5, #0x38
	adds r4, #1
	cmp r4, r6
	blt _0809D252
	b _0809D2AC
_0809D2A0:
	movs r3, #0
	mov r1, r8
	lsls r1, r1, #1
	mov sb, r1
	lsls r2, r7, #3
	mov ip, r2
_0809D2AC:
	mov r4, ip
	subs r1, r4, r7
	lsls r1, r1, #3
	add r1, sb
	add r1, sl
	lsls r3, r3, #2
	ldrb r2, [r1, #5]
	movs r0, #3
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #5]
	b _0809D2D0
_0809D2C4:
	subs r2, r2, r0
	cmp r2, #0
	blt _0809D2D0
_0809D2CA:
	adds r3, #1
	cmp r3, #4
	ble _0809D202
_0809D2D0:
	ldr r5, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	bhs _0809D2DA
	b _0809D1B4
_0809D2DA:
	mov r0, sl
	ldr r1, [sp]
	bl sub_809D470
	str r0, [sp, #0x14]
	ldr r1, [sp, #4]
	cmp r1, #0
	bgt _0809D2EC
	b _0809D402
_0809D2EC:
	movs r2, #0
	mov r8, r2
	movs r3, #1
	mov sb, r3
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #0x20]
_0809D2FA:
	bl sub_80D11E4
	asrs r0, r0, #8
	ldr r1, [sp, #0xc]
	bl sub_80D0F4E
	adds r4, r0, #0
	bl sub_80D11E4
	asrs r0, r0, #8
	ldr r1, [sp, #0x10]
	bl sub_80D0F4E
	adds r7, r0, #0
	lsls r1, r4, #1
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r0, r0, #3
	adds r1, r1, r0
	add r1, sl
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _0809D3E6
	movs r0, #1
	mov r8, r0
	movs r2, #0
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	cmp r0, r4
	bne _0809D370
	ldrb r0, [r1, #1]
	cmp r0, r7
	bne _0809D370
	mov r8, r2
	b _0809D38C
_0809D342:
	subs r3, r5, r7
	lsls r3, r3, #3
	adds r3, r4, r3
	add r3, sl
	ldr r1, _0809D368 @ =0x08103FE4
	mov r2, ip
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0x3f
	ands r2, r0
	lsls r2, r2, #4
	ldrh r0, [r3, #4]
	ldr r4, _0809D36C @ =0xFFFFFC0F
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	b _0809D3E6
	.align 2, 0
_0809D368: .4byte 0x08103FE4
_0809D36C: .4byte 0xFFFFFC0F
_0809D370:
	adds r2, #1
	cmp r2, #0xb
	bgt _0809D38C
	lsls r0, r2, #2
	ldr r3, [sp, #8]
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, r4
	bne _0809D370
	ldrb r0, [r1, #1]
	cmp r0, r7
	bne _0809D370
	movs r0, #0
	mov r8, r0
_0809D38C:
	mov r1, r8
	cmp r1, #1
	bne _0809D3E6
	lsls r4, r4, #1
	lsls r5, r7, #3
	subs r1, r5, r7
	lsls r1, r1, #3
	adds r1, r4, r1
	add r1, sl
	ldrb r0, [r1, #4]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	movs r2, #4
	orrs r0, r2
	strb r0, [r1, #4]
	bl sub_80D11E4
	asrs r2, r0, #8
	movs r0, #0xff
	ands r2, r0
	movs r0, #0
	mov ip, r0
	ldr r1, [sp, #0x14]
	lsls r6, r1, #2
	ldr r1, _0809D414 @ =0x0810400C
	ldr r3, [sp, #0x14]
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r1, r0, r1
_0809D3CA:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809D3DA
	cmp r2, r0
	blt _0809D342
	subs r2, r2, r0
	cmp r2, #0
	blt _0809D3E6
_0809D3DA:
	adds r1, #1
	movs r0, #1
	add ip, r0
	mov r3, ip
	cmp r3, #9
	ble _0809D3CA
_0809D3E6:
	mov r4, r8
	cmp r4, #0
	bne _0809D3F8
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #9
	bgt _0809D3F8
	b _0809D2FA
_0809D3F8:
	ldr r2, [sp, #0x20]
	str r2, [sp, #4]
	cmp r2, #0
	ble _0809D402
	b _0809D2EC
_0809D402:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D414: .4byte 0x0810400C

	thumb_func_start sub_809D418
sub_809D418: @ 0x0809D418
	push {lr}
	movs r0, #0
	cmp r1, #0
	beq _0809D46C
	cmp r1, #9
	bhi _0809D428
	movs r0, #1
	b _0809D46C
_0809D428:
	cmp r1, #0x63
	bhi _0809D442
	movs r0, #2
	movs r2, #0x14
	cmp r1, #0x14
	blo _0809D46C
_0809D434:
	adds r0, #1
	adds r2, #0x14
	cmp r2, #0x63
	bhi _0809D46C
	cmp r1, r2
	bhs _0809D434
	b _0809D46C
_0809D442:
	cmp r1, #0x64
	bne _0809D44A
	movs r0, #7
	b _0809D46C
_0809D44A:
	cmp r1, #0xf9
	bhi _0809D464
	movs r0, #8
	movs r2, #0x82
	cmp r1, #0x82
	blo _0809D46C
_0809D456:
	adds r0, #1
	adds r2, #0x1e
	cmp r2, #0xf9
	bhi _0809D46C
	cmp r1, r2
	bhs _0809D456
	b _0809D46C
_0809D464:
	movs r0, #0xe
	cmp r1, #0xfe
	bhi _0809D46C
	movs r0, #0xd
_0809D46C:
	pop {r1}
	bx r1

	thumb_func_start sub_809D470
sub_809D470: @ 0x0809D470
	push {lr}
	cmp r1, #0x98
	beq _0809D4D2
	cmp r1, #0x98
	bhi _0809D4A0
	cmp r1, #0x28
	beq _0809D4CE
	cmp r1, #0x28
	bhi _0809D48C
	cmp r1, #0x14
	beq _0809D4C6
	cmp r1, #0x1e
	beq _0809D4CA
	b _0809D4DA
_0809D48C:
	cmp r1, #0x66
	beq _0809D4D2
	cmp r1, #0x66
	bhi _0809D49A
	cmp r1, #0x3c
	beq _0809D4D2
	b _0809D4DA
_0809D49A:
	cmp r1, #0x7b
	beq _0809D4D2
	b _0809D4DA
_0809D4A0:
	cmp r1, #0xbe
	beq _0809D4D2
	cmp r1, #0xbe
	bhi _0809D4B2
	cmp r1, #0x9b
	beq _0809D4D2
	cmp r1, #0xab
	beq _0809D4D2
	b _0809D4DA
_0809D4B2:
	cmp r1, #0xde
	beq _0809D4D2
	cmp r1, #0xde
	bhi _0809D4C0
	cmp r1, #0xca
	beq _0809D4D2
	b _0809D4DA
_0809D4C0:
	cmp r1, #0xff
	beq _0809D4D6
	b _0809D4DA
_0809D4C6:
	movs r0, #0xc
	b _0809D4FA
_0809D4CA:
	movs r0, #0xe
	b _0809D4FA
_0809D4CE:
	movs r0, #0x10
	b _0809D4FA
_0809D4D2:
	movs r0, #0x12
	b _0809D4FA
_0809D4D6:
	movs r0, #0x14
	b _0809D4FA
_0809D4DA:
	adds r0, r1, #0
	cmp r0, #0xa
	bls _0809D4FA
	movs r0, #0xb
	cmp r1, #0x13
	bls _0809D4FA
	movs r0, #0xd
	cmp r1, #0x1d
	bls _0809D4FA
	movs r0, #0xf
	cmp r1, #0x27
	bls _0809D4FA
	movs r0, #0x13
	cmp r1, #0xe6
	bhi _0809D4FA
	movs r0, #0x11
_0809D4FA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809D500
sub_809D500: @ 0x0809D500
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_809D8A4
	str r0, [sp, #0xc]
	mov r0, sl
	bl sub_809D8B8
	str r0, [sp, #0x10]
	mov r0, sl
	ldr r1, [sp]
	bl sub_809D79C
	str r0, [sp, #0x14]
	bl sub_80D11E4
	asrs r0, r0, #4
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	adds r4, r1, #0
	muls r4, r2, r4
	adds r1, r4, #0
	bl sub_80D0F4E
	str r0, [sp, #0x18]
	movs r5, #0
	cmp r5, r4
	blo _0809D54A
	b _0809D66A
_0809D54A:
	str r4, [sp, #0x1c]
_0809D54C:
	ldr r3, [sp, #0x18]
	adds r4, r3, r5
	ldr r0, [sp, #0x1c]
	cmp r4, r0
	blo _0809D558
	subs r4, r4, r0
_0809D558:
	adds r0, r4, #0
	ldr r1, [sp, #0xc]
	bl sub_80D0F4E
	adds r7, r0, #0
	adds r0, r4, #0
	ldr r1, [sp, #0xc]
	bl sub_80D0EDA
	adds r6, r0, #0
	lsls r0, r7, #1
	lsls r1, r6, #3
	subs r1, r1, r6
	lsls r1, r1, #3
	adds r0, r0, r1
	add r0, sl
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r5, #1
	str r5, [sp, #0x24]
	cmp r0, #1
	bgt _0809D660
	bl sub_80D11E4
	asrs r2, r0, #4
	movs r0, #0xff
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r1, _0809D5F8 @ =0x08103B38
	ldr r4, [sp, #0x14]
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r1, r0, r1
_0809D5A0:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809D658
	cmp r2, r0
	bge _0809D652
	ldr r1, _0809D5FC @ =0x08103B10
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r3, [r0]
	lsls r0, r7, #1
	mov sb, r0
	lsls r1, r6, #3
	mov r8, r1
	cmp r3, #1
	bne _0809D63A
	cmp r6, #0
	beq _0809D630
	ldr r0, [sp, #0x10]
	subs r0, #1
	cmp r6, r0
	bhs _0809D630
	cmp r7, #0
	beq _0809D630
	ldr r0, [sp, #0xc]
	subs r0, #1
	cmp r7, r0
	bhs _0809D630
	subs r4, r6, #1
	adds r2, r6, #2
	mov ip, r2
	cmp r4, ip
	bge _0809D63A
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r5, r0, #3
_0809D5E6:
	cmp r4, #0
	blt _0809D626
	ldr r0, [sp, #0x10]
	cmp r4, r0
	bge _0809D626
	subs r2, r7, #1
	adds r1, r7, #2
	b _0809D602
	.align 2, 0
_0809D5F8: .4byte 0x08103B38
_0809D5FC: .4byte 0x08103B10
_0809D600:
	adds r2, #1
_0809D602:
	cmp r2, r1
	bge _0809D622
	cmp r2, #0
	bge _0809D610
	ldr r0, [sp, #0xc]
	cmp r2, r0
	bge _0809D600
_0809D610:
	lsls r0, r2, #1
	adds r0, r0, r5
	add r0, sl
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #3
	bne _0809D600
	movs r3, #0
_0809D622:
	cmp r3, #0
	beq _0809D63A
_0809D626:
	adds r5, #0x38
	adds r4, #1
	cmp r4, ip
	blt _0809D5E6
	b _0809D63A
_0809D630:
	movs r3, #0
	lsls r7, r7, #1
	mov sb, r7
	lsls r1, r6, #3
	mov r8, r1
_0809D63A:
	mov r2, r8
	subs r1, r2, r6
	lsls r1, r1, #3
	add r1, sb
	add r1, sl
	lsls r3, r3, #2
	ldrb r2, [r1, #5]
	movs r0, #3
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #5]
	b _0809D660
_0809D652:
	subs r2, r2, r0
	cmp r2, #0
	blt _0809D660
_0809D658:
	adds r1, #1
	adds r3, #1
	cmp r3, #9
	ble _0809D5A0
_0809D660:
	ldr r5, [sp, #0x24]
	ldr r3, [sp, #0x1c]
	cmp r5, r3
	bhs _0809D66A
	b _0809D54C
_0809D66A:
	mov r0, sl
	ldr r1, [sp]
	bl sub_809D7D8
	str r0, [sp, #0x14]
	ldr r4, [sp, #4]
	cmp r4, #0
	bgt _0809D67C
	b _0809D788
_0809D67C:
	movs r0, #0
	mov r8, r0
	movs r1, #1
	mov sb, r1
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #0x20]
_0809D68A:
	bl sub_80D11E4
	asrs r0, r0, #8
	ldr r1, [sp, #0xc]
	bl sub_80D0F4E
	adds r4, r0, #0
	bl sub_80D11E4
	asrs r0, r0, #8
	ldr r1, [sp, #0x10]
	bl sub_80D0F4E
	adds r6, r0, #0
	lsls r1, r4, #1
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r1, r1, r0
	add r1, sl
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _0809D76E
	movs r3, #1
	mov r8, r3
	movs r2, #0
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	cmp r0, r4
	bne _0809D700
	ldrb r0, [r1, #1]
	cmp r0, r6
	bne _0809D700
	mov r8, r2
	b _0809D71C
_0809D6D2:
	subs r3, r5, r6
	lsls r3, r3, #3
	adds r3, r4, r3
	add r3, sl
	ldr r1, _0809D6F8 @ =0x08103C3C
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0x3f
	ands r2, r0
	lsls r2, r2, #4
	ldrh r0, [r3, #4]
	ldr r4, _0809D6FC @ =0xFFFFFC0F
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #4]
	b _0809D76E
	.align 2, 0
_0809D6F8: .4byte 0x08103C3C
_0809D6FC: .4byte 0xFFFFFC0F
_0809D700:
	adds r2, #1
	cmp r2, #0xb
	bgt _0809D71C
	lsls r0, r2, #2
	ldr r3, [sp, #8]
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, r4
	bne _0809D700
	ldrb r0, [r1, #1]
	cmp r0, r6
	bne _0809D700
	movs r0, #0
	mov r8, r0
_0809D71C:
	mov r1, r8
	cmp r1, #1
	bne _0809D76E
	lsls r4, r4, #1
	lsls r5, r6, #3
	subs r1, r5, r6
	lsls r1, r1, #3
	adds r1, r4, r1
	add r1, sl
	ldrb r0, [r1, #4]
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r0, r2
	movs r2, #4
	orrs r0, r2
	strb r0, [r1, #4]
	bl sub_80D11E4
	asrs r2, r0, #8
	movs r0, #0xff
	ands r2, r0
	movs r7, #0
	ldr r1, _0809D798 @ =0x08103C74
	ldr r3, [sp, #0x14]
	lsls r0, r3, #3
	subs r0, r0, r3
	lsls r0, r0, #1
	adds r1, r0, r1
_0809D756:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809D766
	cmp r2, r0
	blt _0809D6D2
	subs r2, r2, r0
	cmp r2, #0
	blt _0809D76E
_0809D766:
	adds r1, #1
	adds r7, #1
	cmp r7, #0xd
	ble _0809D756
_0809D76E:
	mov r4, r8
	cmp r4, #0
	bne _0809D77E
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #9
	ble _0809D68A
_0809D77E:
	ldr r2, [sp, #0x20]
	str r2, [sp, #4]
	cmp r2, #0
	ble _0809D788
	b _0809D67C
_0809D788:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D798: .4byte 0x08103C74

	thumb_func_start sub_809D79C
sub_809D79C: @ 0x0809D79C
	push {lr}
	adds r0, r1, #0
	cmp r0, #9
	bls _0809D7D2
	movs r0, #0x19
	cmp r1, #0xff
	beq _0809D7D2
	movs r0, #0x18
	cmp r1, #0x4f
	bhi _0809D7D2
	movs r0, #0xa
	movs r2, #0x13
	cmp r1, #0x13
	blo _0809D7D2
	cmp r1, #0x13
	bne _0809D7C0
	movs r0, #0xb
	b _0809D7D2
_0809D7C0:
	adds r0, #2
	adds r2, #0xa
	cmp r2, #0x4f
	bhi _0809D7D2
	cmp r1, r2
	blo _0809D7D2
	cmp r1, r2
	bne _0809D7C0
	adds r0, #1
_0809D7D2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809D7D8
sub_809D7D8: @ 0x0809D7D8
	push {lr}
	adds r0, r1, #0
	cmp r0, #0x78
	beq _0809D866
	cmp r0, #0x78
	bhi _0809D81C
	cmp r0, #0x46
	beq _0809D856
	cmp r0, #0x46
	bhi _0809D804
	cmp r0, #0x28
	beq _0809D85A
	cmp r0, #0x28
	bhi _0809D7FA
	cmp r0, #0x1e
	beq _0809D856
	b _0809D86A
_0809D7FA:
	cmp r0, #0x32
	beq _0809D85E
	cmp r0, #0x3c
	beq _0809D85A
	b _0809D86A
_0809D804:
	cmp r0, #0x5a
	beq _0809D856
	cmp r0, #0x5a
	bhi _0809D812
	cmp r0, #0x50
	beq _0809D85A
	b _0809D86A
_0809D812:
	cmp r0, #0x64
	beq _0809D85E
	cmp r0, #0x6e
	beq _0809D862
	b _0809D86A
_0809D81C:
	cmp r0, #0xaa
	beq _0809D862
	cmp r0, #0xaa
	bhi _0809D83C
	cmp r0, #0x8c
	beq _0809D866
	cmp r0, #0x8c
	bhi _0809D832
	cmp r0, #0x82
	beq _0809D862
	b _0809D86A
_0809D832:
	cmp r0, #0x96
	beq _0809D85E
	cmp r0, #0xa0
	beq _0809D866
	b _0809D86A
_0809D83C:
	cmp r0, #0xbe
	beq _0809D862
	cmp r0, #0xbe
	bhi _0809D84A
	cmp r0, #0xb4
	beq _0809D866
	b _0809D86A
_0809D84A:
	cmp r0, #0xc8
	beq _0809D85E
	cmp r0, #0xff
	bne _0809D86A
	movs r0, #0x37
	b _0809D89A
_0809D856:
	movs r0, #0x1e
	b _0809D89A
_0809D85A:
	movs r0, #0x1f
	b _0809D89A
_0809D85E:
	movs r0, #0x20
	b _0809D89A
_0809D862:
	movs r0, #0x2a
	b _0809D89A
_0809D866:
	movs r0, #0x2b
	b _0809D89A
_0809D86A:
	cmp r0, #0x14
	bls _0809D89A
	cmp r0, #0xfa
	bls _0809D876
	movs r0, #0x36
	b _0809D89A
_0809D876:
	cmp r0, #0x63
	bhi _0809D884
	movs r1, #0xa
	bl sub_80D0F4E
	adds r0, #0x14
	b _0809D89A
_0809D884:
	cmp r0, #0xc7
	bhi _0809D892
	movs r1, #0xa
	bl sub_80D0F4E
	adds r0, #0x20
	b _0809D89A
_0809D892:
	movs r1, #0xa
	bl sub_80D0F4E
	adds r0, #0x2b
_0809D89A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809D8A0
sub_809D8A0: @ 0x0809D8A0
	ldr r0, [r0]
	bx lr

	thumb_func_start sub_809D8A4
sub_809D8A4: @ 0x0809D8A4
	push {lr}
	movs r1, #0xd
	ldr r0, [r0]
	cmp r0, #1
	bne _0809D8B0
	movs r1, #0x1c
_0809D8B0:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809D8B8
sub_809D8B8: @ 0x0809D8B8
	push {lr}
	movs r1, #6
	ldr r0, [r0]
	cmp r0, #1
	bne _0809D8C6
	movs r1, #0x1c
	b _0809D8CC
_0809D8C6:
	cmp r0, #2
	bne _0809D8CC
	movs r1, #0xe
_0809D8CC:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809D8D4
sub_809D8D4: @ 0x0809D8D4
	lsls r1, r1, #1
	lsls r3, r2, #3
	subs r3, r3, r2
	lsls r3, r3, #3
	adds r1, r1, r3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bx lr

	thumb_func_start sub_809D8E8
sub_809D8E8: @ 0x0809D8E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov sl, r2
	adds r2, r3, #0
	movs r0, #0
	str r0, [sp]
	lsls r7, r1, #1
	mov r1, sl
	lsls r3, r1, #3
	subs r0, r3, r1
	lsls r0, r0, #3
	adds r0, r7, r0
	adds r4, r6, r0
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _0809D9A2
	ldrb r1, [r4, #5]
	lsrs r1, r1, #2
	adds r0, r6, #0
	str r3, [sp, #4]
	bl sub_809DA00
	str r0, [sp]
	ldr r3, [sp, #4]
	cmp r0, #1
	bne _0809D97C
	ldrb r0, [r4, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4, #4]
	movs r2, #0
	str r2, [sp]
	movs r5, #0
	mov sb, r7
	mov r8, r3
	b _0809D970
_0809D942:
	movs r4, #0
	adds r7, r5, #1
	b _0809D964
_0809D948:
	lsls r0, r4, #1
	lsls r1, r5, #3
	subs r1, r1, r5
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r2, r6, r0
	ldrb r1, [r2, #5]
	lsrs r0, r1, #2
	cmp r0, #1
	bne _0809D962
	movs r0, #3
	ands r0, r1
	strb r0, [r2, #5]
_0809D962:
	adds r4, #1
_0809D964:
	adds r0, r6, #0
	bl sub_809D8A4
	cmp r4, r0
	blt _0809D948
	adds r5, r7, #0
_0809D970:
	adds r0, r6, #0
	bl sub_809D8B8
	cmp r5, r0
	blt _0809D942
	b _0809D98E
_0809D97C:
	ldrb r0, [r4, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4, #4]
	mov sb, r7
	mov r8, r3
_0809D98E:
	mov r1, r8
	mov r2, sl
	subs r0, r1, r2
	lsls r0, r0, #3
	add r0, sb
	adds r0, r6, r0
	ldrb r2, [r0, #5]
	movs r1, #3
	ands r1, r2
	strb r1, [r0, #5]
_0809D9A2:
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_809D9B4
sub_809D9B4: @ 0x0809D9B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	lsls r1, r1, #1
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r4, r5, r1
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bne _0809D9F2
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1a
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_809DA00
	adds r6, r0, #0
	ldrb r1, [r4, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #4]
	ldrh r1, [r4, #4]
	ldr r0, _0809D9FC @ =0xFFFFFC0F
	ands r0, r1
	strh r0, [r4, #4]
_0809D9F2:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809D9FC: .4byte 0xFFFFFC0F

	thumb_func_start sub_809DA00
sub_809DA00: @ 0x0809DA00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	mov r0, r8
	subs r0, #3
	cmp r0, #0x1f
	bls _0809DA18
	b _0809DF1C
_0809DA18:
	lsls r0, r0, #2
	ldr r1, _0809DA24 @ =_0809DA28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809DA24: .4byte _0809DA28
_0809DA28: @ jump table
	.4byte _0809DAA8 @ case 0
	.4byte _0809DB02 @ case 1
	.4byte _0809DB02 @ case 2
	.4byte _0809DB02 @ case 3
	.4byte _0809DB02 @ case 4
	.4byte _0809DB02 @ case 5
	.4byte _0809DB02 @ case 6
	.4byte _0809DB9C @ case 7
	.4byte _0809DF1C @ case 8
	.4byte _0809DF1C @ case 9
	.4byte _0809DF1C @ case 10
	.4byte _0809DF1C @ case 11
	.4byte _0809DF1C @ case 12
	.4byte _0809DF1C @ case 13
	.4byte _0809DF1C @ case 14
	.4byte _0809DF1C @ case 15
	.4byte _0809DF1C @ case 16
	.4byte _0809DF1C @ case 17
	.4byte _0809DF1C @ case 18
	.4byte _0809DF1C @ case 19
	.4byte _0809DBFC @ case 20
	.4byte _0809DF1C @ case 21
	.4byte _0809DF1C @ case 22
	.4byte _0809DF1C @ case 23
	.4byte _0809DF1C @ case 24
	.4byte _0809DF1C @ case 25
	.4byte _0809DF1C @ case 26
	.4byte _0809DF1C @ case 27
	.4byte _0809DF1C @ case 28
	.4byte _0809DC36 @ case 29
	.4byte _0809DDA6 @ case 30
	.4byte _0809DEFC @ case 31
_0809DAA8:
	ldr r0, _0809DAD4 @ =0x00001BD8
	adds r1, r6, r0
	mov r0, sp
	bl sub_800E924
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	ldr r1, _0809DAD8 @ =0x4CC00000
	cmp r0, r1
	bgt _0809DAE0
	ldr r1, _0809DADC @ =0x00000625
	adds r2, r5, r1
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0809DACE
	b _0809DC30
_0809DACE:
	movs r0, #4
	b _0809DAF0
	.align 2, 0
_0809DAD4: .4byte 0x00001BD8
_0809DAD8: .4byte 0x4CC00000
_0809DADC: .4byte 0x00000625
_0809DAE0:
	ldr r0, _0809DAF8 @ =0x00000624
	adds r2, r5, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0809DAFC
	movs r0, #1
_0809DAF0:
	orrs r0, r1
	strb r0, [r2]
	b _0809DF1C
	.align 2, 0
_0809DAF8: .4byte 0x00000624
_0809DAFC:
	movs r1, #0
	mov r8, r1
	b _0809DF1C
_0809DB02:
	movs r4, #0
	ldr r2, _0809DB50 @ =0x00001C38
	adds r0, r6, r2
	bl sub_800F8A8
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0809DB16
	movs r4, #1
_0809DB16:
	ldr r1, _0809DB54 @ =0x00001DAC
	adds r0, r6, r1
	bl sub_809ED04
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809DB26
	movs r4, #1
_0809DB26:
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_809DF2C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0809DB38
	movs r4, #1
_0809DB38:
	cmp r4, #1
	beq _0809DC30
	movs r1, #0x51
	mov r0, r8
	subs r0, #4
	cmp r0, #5
	bhi _0809DB8A
	lsls r0, r0, #2
	ldr r1, _0809DB58 @ =_0809DB5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809DB50: .4byte 0x00001C38
_0809DB54: .4byte 0x00001DAC
_0809DB58: .4byte _0809DB5C
_0809DB5C: @ jump table
	.4byte _0809DB74 @ case 0
	.4byte _0809DB78 @ case 1
	.4byte _0809DB7C @ case 2
	.4byte _0809DB80 @ case 3
	.4byte _0809DB84 @ case 4
	.4byte _0809DB88 @ case 5
_0809DB74:
	movs r1, #5
	b _0809DB8A
_0809DB78:
	movs r1, #0xd
	b _0809DB8A
_0809DB7C:
	movs r1, #0x15
	b _0809DB8A
_0809DB80:
	movs r1, #0x1d
	b _0809DB8A
_0809DB84:
	movs r1, #0x25
	b _0809DB8A
_0809DB88:
	movs r1, #0x2d
_0809DB8A:
	cmp r1, #0x51
	bne _0809DB90
	b _0809DF1C
_0809DB90:
	movs r2, #0xd2
	lsls r2, r2, #6
	adds r0, r6, r2
	bl sub_809C3BC
	b _0809DF1C
_0809DB9C:
	movs r7, #0
	movs r3, #0xc8
	str r3, [sp, #8]
	ldrb r0, [r6, #0x10]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #0xc]
	add r2, sp, #0xc
	add r0, sp, #8
	cmp r3, r1
	bls _0809DBBC
	adds r0, r2, #0
_0809DBBC:
	ldr r0, [r0]
	cmp r0, #2
	bhi _0809DBC4
	movs r7, #1
_0809DBC4:
	ldr r0, _0809DBF4 @ =0x00000625
	adds r4, r5, r0
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809DBD4
	movs r7, #1
_0809DBD4:
	ldr r1, _0809DBF8 @ =0x00001C38
	adds r0, r6, r1
	bl sub_800F8A8
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0809DBE6
	movs r7, #1
_0809DBE6:
	cmp r7, #0
	bne _0809DC30
	ldrb r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	b _0809DF1C
	.align 2, 0
_0809DBF4: .4byte 0x00000625
_0809DBF8: .4byte 0x00001C38
_0809DBFC:
	movs r7, #0
	movs r1, #0xd2
	lsls r1, r1, #6
	adds r0, r6, r1
	bl sub_809C38C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809DC10
	movs r7, #1
_0809DC10:
	movs r4, #4
_0809DC12:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_809DF2C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0809DC24
	movs r7, #1
_0809DC24:
	adds r4, #1
	cmp r4, #9
	ble _0809DC12
	cmp r7, #1
	beq _0809DC30
	b _0809DF1C
_0809DC30:
	movs r2, #0
	mov r8, r2
	b _0809DF1C
_0809DC36:
	movs r4, #0
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_800C060
	cmp r0, #0
	bne _0809DC48
	movs r4, #1
_0809DC48:
	adds r0, r5, #0
	bl sub_809DFAC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0809DC68
	ldr r2, _0809DC98 @ =0x00001C38
	adds r0, r6, r2
	bl sub_800F8A8
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0809DC68
	movs r4, #1
_0809DC68:
	cmp r4, #0
	beq _0809DC6E
	b _0809DD9E
_0809DC6E:
	ldr r0, _0809DC9C @ =0x00001BD8
	adds r1, r6, r0
	mov r0, sp
	bl sub_800E924
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	subs r0, #0x34
	cmp r0, #0x9b
	beq _0809DD20
	cmp r0, #0x9b
	bgt _0809DCAA
	cmp r0, #0x66
	beq _0809DCD8
	cmp r0, #0x66
	bgt _0809DCA0
	cmp r0, #0x3c
	beq _0809DCC2
	b _0809DD9C
	.align 2, 0
_0809DC98: .4byte 0x00001C38
_0809DC9C: .4byte 0x00001BD8
_0809DCA0:
	cmp r0, #0x7b
	beq _0809DCF0
	cmp r0, #0x98
	beq _0809DD08
	b _0809DD9C
_0809DCAA:
	cmp r0, #0xbe
	beq _0809DD50
	cmp r0, #0xbe
	bgt _0809DCB8
	cmp r0, #0xab
	beq _0809DD38
	b _0809DD9C
_0809DCB8:
	cmp r0, #0xca
	beq _0809DD68
	cmp r0, #0xde
	beq _0809DD80
	b _0809DD9C
_0809DCC2:
	ldr r2, _0809DCD4 @ =0x00000625
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0809DD8E
	b _0809DD9C
	.align 2, 0
_0809DCD4: .4byte 0x00000625
_0809DCD8:
	ldr r0, _0809DCEC @ =0x00000625
	adds r1, r5, r0
	ldrb r2, [r1]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
	movs r0, #0x40
	b _0809DD90
	.align 2, 0
_0809DCEC: .4byte 0x00000625
_0809DCF0:
	ldr r2, _0809DD04 @ =0x00000625
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
	movs r0, #0x80
	b _0809DD90
	.align 2, 0
_0809DD04: .4byte 0x00000625
_0809DD08:
	ldr r0, _0809DD1C @ =0x00000626
	adds r1, r5, r0
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
	movs r0, #1
	b _0809DD90
	.align 2, 0
_0809DD1C: .4byte 0x00000626
_0809DD20:
	ldr r2, _0809DD34 @ =0x00000626
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
	movs r0, #2
	b _0809DD90
	.align 2, 0
_0809DD34: .4byte 0x00000626
_0809DD38:
	ldr r0, _0809DD4C @ =0x00000626
	adds r1, r5, r0
	ldrb r2, [r1]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
	movs r0, #4
	b _0809DD90
	.align 2, 0
_0809DD4C: .4byte 0x00000626
_0809DD50:
	ldr r2, _0809DD64 @ =0x00000626
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
	movs r0, #8
	b _0809DD90
	.align 2, 0
_0809DD64: .4byte 0x00000626
_0809DD68:
	ldr r0, _0809DD7C @ =0x00000626
	adds r1, r5, r0
	ldrb r2, [r1]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
	movs r0, #0x10
	b _0809DD90
	.align 2, 0
_0809DD7C: .4byte 0x00000626
_0809DD80:
	ldr r2, _0809DD98 @ =0x00000626
_0809DD82:
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
_0809DD8E:
	movs r0, #0x20
_0809DD90:
	orrs r0, r2
	strb r0, [r1]
	b _0809DD9E
	.align 2, 0
_0809DD98: .4byte 0x00000626
_0809DD9C:
	movs r4, #1
_0809DD9E:
	cmp r4, #1
	beq _0809DDA4
	b _0809DF1C
_0809DDA4:
	b _0809DF18
_0809DDA6:
	movs r4, #0
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_800C060
	cmp r0, #0
	bne _0809DDB8
	movs r4, #1
_0809DDB8:
	adds r0, r5, #0
	bl sub_809E02C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0809DDD8
	ldr r2, _0809DE08 @ =0x00001C38
	adds r0, r6, r2
	bl sub_800F8A8
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0809DDD8
	movs r4, #1
_0809DDD8:
	cmp r4, #0
	bne _0809DD9E
	ldr r0, _0809DE0C @ =0x00001BD8
	adds r1, r6, r0
	mov r0, sp
	bl sub_800E924
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r1, _0809DE10 @ =0xFFFFFECC
	adds r0, r0, r1
	cmp r0, #0x78
	beq _0809DE94
	cmp r0, #0x78
	bgt _0809DE1E
	cmp r0, #0x28
	beq _0809DE4C
	cmp r0, #0x28
	bgt _0809DE14
	cmp r0, #0
	beq _0809DE36
	b _0809DD9C
	.align 2, 0
_0809DE08: .4byte 0x00001C38
_0809DE0C: .4byte 0x00001BD8
_0809DE10: .4byte 0xFFFFFECC
_0809DE14:
	cmp r0, #0x3c
	beq _0809DE64
	cmp r0, #0x50
	beq _0809DE7C
	b _0809DD9C
_0809DE1E:
	cmp r0, #0xa0
	beq _0809DEB4
	cmp r0, #0xa0
	bgt _0809DE2C
	cmp r0, #0x8c
	beq _0809DE9C
	b _0809DD9C
_0809DE2C:
	cmp r0, #0xb4
	beq _0809DECC
	cmp r0, #0xff
	beq _0809DEE4
	b _0809DD9C
_0809DE36:
	ldr r2, _0809DE48 @ =0x00000624
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0809DEF4
	b _0809DD9C
	.align 2, 0
_0809DE48: .4byte 0x00000624
_0809DE4C:
	ldr r0, _0809DE60 @ =0x00000624
	adds r1, r5, r0
	ldrb r2, [r1]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
	movs r0, #4
	b _0809DD90
	.align 2, 0
_0809DE60: .4byte 0x00000624
_0809DE64:
	ldr r2, _0809DE78 @ =0x00000624
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
	movs r0, #8
	b _0809DD90
	.align 2, 0
_0809DE78: .4byte 0x00000624
_0809DE7C:
	ldr r0, _0809DE90 @ =0x00000624
	adds r1, r5, r0
	ldrb r2, [r1]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _0809DD9C
	movs r0, #0x10
	b _0809DD90
	.align 2, 0
_0809DE90: .4byte 0x00000624
_0809DE94:
	ldr r2, _0809DE98 @ =0x00000624
	b _0809DD82
	.align 2, 0
_0809DE98: .4byte 0x00000624
_0809DE9C:
	ldr r0, _0809DEB0 @ =0x00000624
	adds r1, r5, r0
	ldrb r2, [r1]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0809DEAC
	b _0809DD9C
_0809DEAC:
	movs r0, #0x40
	b _0809DD90
	.align 2, 0
_0809DEB0: .4byte 0x00000624
_0809DEB4:
	ldr r2, _0809DEC8 @ =0x00000624
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0809DEC4
	b _0809DD9C
_0809DEC4:
	movs r0, #0x80
	b _0809DD90
	.align 2, 0
_0809DEC8: .4byte 0x00000624
_0809DECC:
	ldr r0, _0809DEE0 @ =0x00000625
	adds r1, r5, r0
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0809DEDC
	b _0809DD9C
_0809DEDC:
	movs r0, #1
	b _0809DD90
	.align 2, 0
_0809DEE0: .4byte 0x00000625
_0809DEE4:
	ldr r2, _0809DEF8 @ =0x00000625
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0809DEF4
	b _0809DD9C
_0809DEF4:
	movs r0, #2
	b _0809DD90
	.align 2, 0
_0809DEF8: .4byte 0x00000625
_0809DEFC:
	ldr r2, _0809DF14 @ =0x00000625
	adds r1, r5, r2
	ldrb r2, [r1]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0809DF18
	movs r0, #8
	orrs r0, r2
	strb r0, [r1]
	b _0809DF1C
	.align 2, 0
_0809DF14: .4byte 0x00000625
_0809DF18:
	movs r0, #0
	mov r8, r0
_0809DF1C:
	mov r0, r8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_809DF2C
sub_809DF2C: @ 0x0809DF2C
	push {r4, r5, r6, r7, lr}
	adds r7, r2, #0
	movs r6, #0
	movs r4, #0x51
	subs r0, r1, #4
	cmp r0, #5
	bhi _0809DF76
	lsls r0, r0, #2
	ldr r1, _0809DF44 @ =_0809DF48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809DF44: .4byte _0809DF48
_0809DF48: @ jump table
	.4byte _0809DF60 @ case 0
	.4byte _0809DF64 @ case 1
	.4byte _0809DF68 @ case 2
	.4byte _0809DF6C @ case 3
	.4byte _0809DF70 @ case 4
	.4byte _0809DF74 @ case 5
_0809DF60:
	movs r4, #5
	b _0809DF76
_0809DF64:
	movs r4, #0xd
	b _0809DF76
_0809DF68:
	movs r4, #0x15
	b _0809DF76
_0809DF6C:
	movs r4, #0x1d
	b _0809DF76
_0809DF70:
	movs r4, #0x25
	b _0809DF76
_0809DF74:
	movs r4, #0x2d
_0809DF76:
	cmp r4, #0x50
	bgt _0809DFA0
	ldr r1, _0809DFA8 @ =0x00001C38
	adds r0, r7, r1
	adds r1, r4, #0
	bl sub_800F92C
	movs r5, #1
	rsbs r5, r5, #0
	cmp r0, r5
	beq _0809DF8E
	movs r6, #1
_0809DF8E:
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r4, #0
	bl sub_800B544
	cmp r0, r5
	beq _0809DFA0
	movs r6, #1
_0809DFA0:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0809DFA8: .4byte 0x00001C38

	thumb_func_start sub_809DFAC
sub_809DFAC: @ 0x0809DFAC
	push {lr}
	adds r3, r0, #0
	ldr r1, _0809E024 @ =0x00000625
	adds r0, r3, r1
	ldrb r2, [r0]
	lsls r0, r2, #0x1a
	lsrs r1, r0, #0x1f
	lsls r0, r2, #0x19
	cmp r0, #0
	bge _0809DFC2
	adds r1, #1
_0809DFC2:
	lsrs r0, r2, #7
	cmp r0, #0
	beq _0809DFCE
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809DFCE:
	ldr r2, _0809E028 @ =0x00000626
	adds r0, r3, r2
	ldrb r2, [r0]
	lsls r0, r2, #0x1f
	cmp r0, #0
	beq _0809DFE0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809DFE0:
	lsls r0, r2, #0x1e
	cmp r0, #0
	bge _0809DFEC
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809DFEC:
	lsls r0, r2, #0x1d
	cmp r0, #0
	bge _0809DFF8
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809DFF8:
	lsls r0, r2, #0x1c
	cmp r0, #0
	bge _0809E004
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809E004:
	lsls r0, r2, #0x1b
	cmp r0, #0
	bge _0809E010
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809E010:
	lsls r0, r2, #0x1a
	cmp r0, #0
	bge _0809E01C
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809E01C:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0809E024: .4byte 0x00000625
_0809E028: .4byte 0x00000626

	thumb_func_start sub_809E02C
sub_809E02C: @ 0x0809E02C
	push {lr}
	adds r3, r0, #0
	ldr r1, _0809E0A4 @ =0x00000624
	adds r0, r3, r1
	ldrb r2, [r0]
	lsls r0, r2, #0x1e
	lsrs r1, r0, #0x1f
	lsls r0, r2, #0x1d
	cmp r0, #0
	bge _0809E042
	adds r1, #1
_0809E042:
	lsls r0, r2, #0x1c
	cmp r0, #0
	bge _0809E04E
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809E04E:
	lsls r0, r2, #0x1b
	cmp r0, #0
	bge _0809E05A
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809E05A:
	lsls r0, r2, #0x1a
	cmp r0, #0
	bge _0809E066
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809E066:
	lsls r0, r2, #0x19
	cmp r0, #0
	bge _0809E072
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809E072:
	lsrs r0, r2, #7
	cmp r0, #0
	beq _0809E07E
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809E07E:
	ldr r2, _0809E0A8 @ =0x00000625
	adds r0, r3, r2
	ldrb r2, [r0]
	lsls r0, r2, #0x1f
	cmp r0, #0
	beq _0809E090
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809E090:
	lsls r0, r2, #0x1e
	cmp r0, #0
	bge _0809E09C
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0809E09C:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_0809E0A4: .4byte 0x00000624
_0809E0A8: .4byte 0x00000625

	thumb_func_start sub_809E0AC
sub_809E0AC: @ 0x0809E0AC
	push {lr}
	lsls r3, r2, #3
	subs r3, r3, r2
	lsls r3, r3, #3
	adds r3, #4
	adds r0, r0, r3
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #4
	bhi _0809E110
	lsls r0, r0, #2
	ldr r1, _0809E0D0 @ =_0809E0D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809E0D0: .4byte _0809E0D4
_0809E0D4: @ jump table
	.4byte _0809E0E8 @ case 0
	.4byte _0809E0F0 @ case 1
	.4byte _0809E0F8 @ case 2
	.4byte _0809E100 @ case 3
	.4byte _0809E108 @ case 4
_0809E0E8:
	ldr r0, _0809E0EC @ =0x086DC3C4
	b _0809E112
	.align 2, 0
_0809E0EC: .4byte 0x086DC3C4
_0809E0F0:
	ldr r0, _0809E0F4 @ =0x086DC3D0
	b _0809E112
	.align 2, 0
_0809E0F4: .4byte 0x086DC3D0
_0809E0F8:
	ldr r0, _0809E0FC @ =0x086DC3DC
	b _0809E112
	.align 2, 0
_0809E0FC: .4byte 0x086DC3DC
_0809E100:
	ldr r0, _0809E104 @ =0x086DC3E8
	b _0809E112
	.align 2, 0
_0809E104: .4byte 0x086DC3E8
_0809E108:
	ldr r0, _0809E10C @ =0x086DC3F4
	b _0809E112
	.align 2, 0
_0809E10C: .4byte 0x086DC3F4
_0809E110:
	movs r0, #0
_0809E112:
	pop {r1}
	bx r1
	.align 2, 0
_0809E118:
	.byte 0xF0, 0xB5, 0x81, 0xB0, 0x05, 0x1C, 0x0F, 0x1C
	.byte 0x00, 0x26, 0x1E, 0xE0, 0x00, 0x24, 0x73, 0x1C, 0x13, 0xE0, 0x62, 0x00, 0xF0, 0x00, 0x80, 0x1B
	.byte 0xC0, 0x00, 0x12, 0x18, 0xAA, 0x18, 0x90, 0x88, 0x80, 0x05, 0x80, 0x0E, 0x38, 0x18, 0x01, 0x78
	.byte 0x01, 0x31, 0x01, 0x70, 0x51, 0x79, 0x89, 0x08, 0x79, 0x18, 0x08, 0x78, 0x01, 0x30, 0x08, 0x70
	.byte 0x01, 0x34, 0x28, 0x1C, 0x00, 0x93, 0xFF, 0xF7, 0xA5, 0xFB, 0x00, 0x9B, 0x84, 0x42, 0xE4, 0xD3
	.byte 0x1E, 0x1C, 0x28, 0x1C, 0xFF, 0xF7, 0xA8, 0xFB, 0x86, 0x42, 0xDB, 0xD3, 0x01, 0xB0, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47

	thumb_func_start sub_809E174
sub_809E174: @ 0x0809E174
	ldr r1, _0809E180 @ =0x00000624
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0809E180: .4byte 0x00000624

	thumb_func_start sub_809E184
sub_809E184: @ 0x0809E184
	ldr r1, _0809E190 @ =0x00000625
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0809E190: .4byte 0x00000625

	thumb_func_start sub_809E194
sub_809E194: @ 0x0809E194
	ldr r1, _0809E1A0 @ =0x00000625
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0809E1A0: .4byte 0x00000625

	thumb_func_start sub_809E1A4
sub_809E1A4: @ 0x0809E1A4
	ldr r1, _0809E1B0 @ =0x00000625
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0809E1B0: .4byte 0x00000625
_0809E1B4:
	.byte 0xF0, 0xB5, 0x84, 0xB0, 0x07, 0x1C, 0x0E, 0x1C, 0x1F, 0x48, 0x15, 0x18
	.byte 0x68, 0x46, 0x29, 0x1C, 0x70, 0xF7, 0xAE, 0xFB, 0x68, 0x46, 0x00, 0x88, 0x80, 0x05, 0x1C, 0x49
	.byte 0x88, 0x42, 0x41, 0xDD, 0x02, 0xAC, 0x20, 0x1C, 0x29, 0x1C, 0x70, 0xF7, 0xA3, 0xFB, 0x20, 0x88
	.byte 0x80, 0x05, 0x80, 0x0D, 0x17, 0x49, 0x44, 0x18, 0x38, 0x1C, 0x21, 0x1C, 0xFF, 0xF7, 0xD6, 0xFA
	.byte 0x02, 0x1C, 0x15, 0x49, 0x90, 0x00, 0x80, 0x18, 0x40, 0x00, 0x42, 0x18, 0x13, 0x4D, 0x04, 0x23
	.byte 0x01, 0xCD, 0x30, 0x18, 0x11, 0x78, 0x01, 0x70, 0x01, 0x32, 0x01, 0x3B, 0x00, 0x2B, 0xF7, 0xDA
	.byte 0x38, 0x1C, 0x21, 0x1C, 0xFF, 0xF7, 0xE0, 0xFA, 0x02, 0x1C, 0x0D, 0x49, 0xD0, 0x00, 0x80, 0x1A
	.byte 0x40, 0x00, 0x42, 0x18, 0x0B, 0x4C, 0x09, 0x23, 0x01, 0xCC, 0x30, 0x18, 0x11, 0x78, 0x01, 0x70
	.byte 0x01, 0x32, 0x01, 0x3B, 0x00, 0x2B, 0xF7, 0xDA, 0x3F, 0xE0, 0x00, 0x00, 0xD8, 0x1B, 0x00, 0x00
	.byte 0x00, 0x00, 0xC0, 0x4C, 0xCC, 0xFE, 0xFF, 0xFF, 0x38, 0x3B, 0x10, 0x08, 0x10, 0x3B, 0x10, 0x08
	.byte 0x74, 0x3C, 0x10, 0x08, 0x3C, 0x3C, 0x10, 0x08, 0x02, 0xAC, 0x20, 0x1C, 0x29, 0x1C, 0x70, 0xF7
	.byte 0x61, 0xFB, 0x20, 0x88, 0x80, 0x05, 0x80, 0x0D, 0x04, 0x1C, 0x34, 0x3C, 0x38, 0x1C, 0x21, 0x1C
	.byte 0xFF, 0xF7, 0xD2, 0xF8, 0x02, 0x1C, 0x13, 0x49, 0x90, 0x00, 0x80, 0x18, 0x42, 0x18, 0x12, 0x4D
	.byte 0x09, 0x23, 0x01, 0xCD, 0x30, 0x18, 0x11, 0x78, 0x01, 0x70, 0x01, 0x32, 0x01, 0x3B, 0x00, 0x2B
	.byte 0xF7, 0xDA, 0x38, 0x1C, 0x21, 0x1C, 0xFF, 0xF7, 0xEB, 0xF8, 0x02, 0x1C, 0x0B, 0x49, 0x90, 0x00
	.byte 0x80, 0x18, 0x40, 0x00, 0x42, 0x18, 0x0A, 0x4C, 0x0D, 0x23, 0x01, 0xCC, 0x30, 0x18, 0x11, 0x78
	.byte 0x01, 0x70, 0x01, 0x32, 0x01, 0x3B, 0x00, 0x2B, 0xF7, 0xDA, 0x04, 0xB0, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x98, 0x3F, 0x10, 0x08, 0x84, 0x3F, 0x10, 0x08, 0x0C, 0x40, 0x10, 0x08
	.byte 0xE4, 0x3F, 0x10, 0x08

	thumb_func_start sub_809E2D4
sub_809E2D4: @ 0x0809E2D4
	push {r4, lr}
	adds r2, r0, #0
	ldm r1!, {r3, r4}
	stm r2!, {r3, r4}
	movs r4, #0
	movs r1, #0x32
	strb r1, [r0, #8]
	movs r3, #0x20
	rsbs r3, r3, #0
	movs r1, #0
	strb r1, [r0, #9]
	ldrb r2, [r0, #0xa]
	subs r1, #2
	ands r1, r2
	strb r1, [r0, #0xa]
	strh r4, [r0, #0x10]
	ldr r1, _0809E320 @ =0x0000FFFF
	strh r1, [r0, #0x12]
	ldrb r1, [r0, #0xc]
	ands r3, r1
	strb r3, [r0, #0xc]
	ldrh r2, [r0, #0xc]
	ldr r1, _0809E324 @ =0xFFFFFC1F
	ands r1, r2
	strh r1, [r0, #0xc]
	ldrb r2, [r0, #0xd]
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0xd]
	ldr r1, [r0, #0xc]
	ldr r2, _0809E328 @ =0xFE007FFF
	ands r1, r2
	str r1, [r0, #0xc]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0809E320: .4byte 0x0000FFFF
_0809E324: .4byte 0xFFFFFC1F
_0809E328: .4byte 0xFE007FFF
