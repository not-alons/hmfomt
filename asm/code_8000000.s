    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	arm_func_start sub_08000000
sub_08000000: @ 0x08000000
	b _080000C0
_08000004:
	.byte 0x24, 0xFF, 0xAE, 0x51, 0x69, 0x9A, 0xA2, 0x21, 0x3D, 0x84, 0x82, 0x0A
	.byte 0x84, 0xE4, 0x09, 0xAD, 0x11, 0x24, 0x8B, 0x98, 0xC0, 0x81, 0x7F, 0x21, 0xA3, 0x52, 0xBE, 0x19
	.byte 0x93, 0x09, 0xCE, 0x20, 0x10, 0x46, 0x4A, 0x4A, 0xF8, 0x27, 0x31, 0xEC, 0x58, 0xC7, 0xE8, 0x33
	.byte 0x82, 0xE3, 0xCE, 0xBF, 0x85, 0xF4, 0xDF, 0x94, 0xCE, 0x4B, 0x09, 0xC1, 0x94, 0x56, 0x8A, 0xC0
	.byte 0x13, 0x72, 0xA7, 0xFC, 0x9F, 0x84, 0x4D, 0x73, 0xA3, 0xCA, 0x9A, 0x61, 0x58, 0x97, 0xA3, 0x27
	.byte 0xFC, 0x03, 0x98, 0x76, 0x23, 0x1D, 0xC7, 0x61, 0x03, 0x04, 0xAE, 0x56, 0xBF, 0x38, 0x84, 0x00
	.byte 0x40, 0xA7, 0x0E, 0xFD, 0xFF, 0x52, 0xFE, 0x03, 0x6F, 0x95, 0x30, 0xF1, 0x97, 0xFB, 0xC0, 0x85
	.byte 0x60, 0xD6, 0x80, 0x25, 0xA9, 0x63, 0xBE, 0x03, 0x01, 0x4E, 0x38, 0xE2, 0xF9, 0xA2, 0x34, 0xFF
	.byte 0xBB, 0x3E, 0x03, 0x44, 0x78, 0x00, 0x90, 0xCB, 0x88, 0x11, 0x3A, 0x94, 0x65, 0xC0, 0x7C, 0x63
	.byte 0x87, 0xF0, 0x3C, 0xAF, 0xD6, 0x25, 0xE4, 0x8B, 0x38, 0x0A, 0xAC, 0x72, 0x21, 0xD4, 0xF8, 0x07
	.byte 0x48, 0x41, 0x52, 0x56, 0x45, 0x53, 0x54, 0x4D, 0x4F, 0x47, 0x42, 0x41, 0x41, 0x34, 0x4E, 0x45
	.byte 0x45, 0x39, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00
_080000C0:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _08000154 @ =0x03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _08000158 @ =0x03007F00
	mov r0, #3
	svc #0x10000
	ldr r3, _0800015C @ =0x03000490
	mov r1, #0x4000000
	str r3, [r1, #0xd8]
	ldr r2, _08000160 @ =0x03000CD8
	sub r3, r2, r3
	add r3, r3, #3
	lsrs r3, r3, #2
	orrne r2, r3, #0x84000000
	ldrne r3, _08000164 @ =0x0875B9F8
	strne r3, [r1, #0xd4]
	strne r2, [r1, #0xdc]
	ldr r0, _08000168 @ =0x02001F10
	ldr r1, _0800016C @ =0x02040000
	sub r1, r1, r0
	ldr r2, _08000170 @ =sub_80D01E0
	mov lr, pc
	bx r2
_08000124:
	.byte 0x48, 0x40, 0x9F, 0xE5, 0x04, 0x50, 0x94, 0xE4, 0x00, 0x00, 0x55, 0xE3
	.byte 0x04, 0x60, 0x94, 0x14, 0x00, 0x00, 0x56, 0x13, 0x0F, 0xE0, 0xA0, 0x11, 0x16, 0xFF, 0x2F, 0x11
	.byte 0x01, 0x50, 0x55, 0x12, 0xF9, 0xFF, 0xFF, 0x1A, 0x28, 0x10, 0x9F, 0xE5, 0x28, 0xE0, 0x9F, 0xE5
	.byte 0x11, 0xFF, 0x2F, 0xE1
_08000154: .4byte 0x03007FA0
_08000158: .4byte 0x03007F00
_0800015C: .4byte 0x03000490
_08000160: .4byte 0x03000CD8
_08000164: .4byte 0x0875B9F8
_08000168: .4byte 0x02001F10
_0800016C: .4byte 0x02040000
_08000170: .4byte sub_80D01E0
_08000174:
	.byte 0x10, 0x86, 0x0E, 0x08, 0x8D, 0x01, 0x00, 0x08, 0x81, 0x01, 0x00, 0x08
	.byte 0xE0, 0x20, 0x01, 0xDF, 0x00, 0xDF, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_800018C
sub_800018C: @ 0x0800018C
	push {r4, lr}
	sub sp, #0x1c
	ldr r1, _08000228 @ =0x04000204
	ldr r2, _0800022C @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_80004C4
	ldr r1, _08000230 @ =0x03000491
	movs r0, #0xd
	bl sub_80D100C
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_800050C
	add r4, sp, #0xc
	adds r0, r4, #0
	bl sub_8000640
	adds r0, r4, #0
	bl sub_80002E0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080001C6
	adds r0, r4, #0
	bl sub_8000358
_080001C6:
	ldr r1, _08000234 @ =sub_8000240
	movs r0, #0xc
	bl sub_80D100C
	ldr r1, _08000238 @ =0x04000132
	ldr r2, _0800023C @ =0x0000C00F
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_800050C
	bl sub_8008AFC
	mov r0, sp
	bl sub_8008980
	movs r0, #8
	bl sub_80005D4
	bl sub_80036F8
	add r1, sp, #8
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #8]
	str r0, [sp, #4]
	add r0, sp, #4
	bl sub_800082C
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08000216
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08000216:
	mov r0, sp
	movs r1, #2
	bl sub_8008A68
	add sp, #0x1c
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000228: .4byte 0x04000204
_0800022C: .4byte 0x00004014
_08000230: .4byte 0x03000491
_08000234: .4byte sub_8000240
_08000238: .4byte 0x04000132
_0800023C: .4byte 0x0000C00F

	thumb_func_start sub_8000240
sub_8000240: @ 0x08000240
	push {r4, lr}
	ldr r0, _080002C8 @ =0x0000FFFF
	bl sub_8000528
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080002CC @ =0x04000130
	ldrh r1, [r2]
	movs r0, #0xf
	bics r0, r1
	cmp r0, #0
	beq _0800026E
	movs r3, #0xf
_08000264:
	ldrh r1, [r2]
	adds r0, r3, #0
	bics r0, r1
	cmp r0, #0
	bne _08000264
_0800026E:
	ldr r1, _080002D0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _080002D4 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _080002D8 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _080002DC @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	movs r0, #0xff
	bl sub_080D375C
_080002C4:
	b _080002C4
	.align 2, 0
_080002C8: .4byte 0x0000FFFF
_080002CC: .4byte 0x04000130
_080002D0: .4byte 0x040000B0
_080002D4: .4byte 0x0000C5FF
_080002D8: .4byte 0x00007FFF
_080002DC: .4byte 0x040000D4

	thumb_func_start sub_80002E0
sub_80002E0: @ 0x080002E0
	push {r4, r5, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r1, sp
	movs r2, #0
	movs r3, #0x20
	bl sub_80006E4
	ldr r5, _08000324 @ =0x03000400
	ldrh r0, [r5]
	cmp r0, #0
	bne _08000320
	str r0, [sp, #0x20]
	add r1, sp, #0x20
	adds r0, r4, #0
	movs r2, #0x20
	movs r3, #4
	bl sub_80006E4
	ldrh r0, [r5]
	cmp r0, #0
	bne _08000320
	str r0, [sp, #0x24]
	add r1, sp, #0x24
	adds r0, r4, #0
	movs r2, #0x24
	movs r3, #4
	bl sub_80006E4
	ldrh r0, [r5]
	cmp r0, #0
	beq _08000328
_08000320:
	movs r0, #0
	b _0800034C
	.align 2, 0
_08000324: .4byte 0x03000400
_08000328:
	movs r4, #0
	ldr r1, _08000354 @ =0x080E862C
	mov r0, sp
	movs r2, #0x20
	bl sub_80D3948
	cmp r0, #0
	bne _0800034A
	ldr r1, [sp, #0x20]
	movs r0, #3
	ands r0, r1
	cmp r0, r1
	bne _0800034A
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bhi _0800034A
	movs r4, #1
_0800034A:
	adds r0, r4, #0
_0800034C:
	add sp, #0x28
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08000354: .4byte 0x080E862C

	thumb_func_start sub_8000358
sub_8000358: @ 0x08000358
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _08000398 @ =0x080E862C
	movs r1, #0
	movs r3, #0x20
	bl sub_80006A4
	ldr r5, _0800039C @ =0x03000400
	ldrh r0, [r5]
	cmp r0, #0
	bne _08000390
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x20
	mov r2, sp
	movs r3, #4
	bl sub_80006A4
	ldrh r0, [r5]
	cmp r0, #0
	bne _08000390
	adds r0, r4, #0
	movs r1, #0x24
	mov r2, sp
	movs r3, #4
	bl sub_80006A4
_08000390:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000398: .4byte 0x080E862C
_0800039C: .4byte 0x03000400

	thumb_func_start sub_80003A0
sub_80003A0: @ 0x080003A0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_80002E0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080003D0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x20
	movs r3, #4
	bl sub_80006E4
	ldr r0, _080003CC @ =0x03000400
	ldrh r0, [r0]
	cmp r0, #0
	bne _080003D0
	ldr r0, [sp]
	b _080003D2
	.align 2, 0
_080003CC: .4byte 0x03000400
_080003D0:
	movs r0, #0
_080003D2:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80003DC
sub_80003DC: @ 0x080003DC
	ldr r0, _080003E4 @ =0x00003FEC
	muls r0, r1, r0
	adds r0, #0x28
	bx lr
	.align 2, 0
_080003E4: .4byte 0x00003FEC

	thumb_func_start sub_80003E8
sub_80003E8: @ 0x080003E8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x20
	movs r3, #4
	bl sub_80006E4
	ldr r0, _08000428 @ =0x03000400
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800041E
	movs r1, #1
	lsls r1, r5
	ldr r0, [sp]
	orrs r0, r1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x20
	mov r2, sp
	movs r3, #4
	bl sub_80006A4
_0800041E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000428: .4byte 0x03000400
_0800042C:
	.byte 0x30, 0xB5, 0x81, 0xB0
	.byte 0x04, 0x1C, 0x0D, 0x1C, 0x00, 0x20, 0x00, 0x90, 0x20, 0x1C, 0x69, 0x46, 0x20, 0x22, 0x04, 0x23
	.byte 0x00, 0xF0, 0x50, 0xF9, 0x09, 0x48, 0x00, 0x88, 0x00, 0x28, 0x0A, 0xD1, 0x01, 0x21, 0xA9, 0x40
	.byte 0x00, 0x98, 0x88, 0x43, 0x00, 0x90, 0x20, 0x1C, 0x20, 0x21, 0x6A, 0x46, 0x04, 0x23, 0x00, 0xF0
	.byte 0x21, 0xF9, 0x01, 0xB0, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x04, 0x00, 0x03

	thumb_func_start sub_8000470
sub_8000470: @ 0x08000470
	push {lr}
	sub sp, #4
	str r1, [sp]
	movs r1, #0x24
	mov r2, sp
	movs r3, #4
	bl sub_80006A4
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8000488
sub_8000488: @ 0x08000488
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_80002E0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080004B8
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x24
	movs r3, #4
	bl sub_80006E4
	ldr r0, _080004B4 @ =0x03000400
	ldrh r0, [r0]
	cmp r0, #0
	bne _080004B8
	ldr r0, [sp]
	b _080004BA
	.align 2, 0
_080004B4: .4byte 0x03000400
_080004B8:
	movs r0, #0
_080004BA:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80004C4
sub_80004C4: @ 0x080004C4
	push {r4, lr}
	ldr r0, _080004E8 @ =0x0000FFFF
	bl sub_8000528
	ldr r1, _080004EC @ =0x03007FFC
	ldr r0, _080004F0 @ =0x03000958
	str r0, [r1]
	movs r4, #0
_080004D4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_80D100C
	adds r4, #1
	cmp r4, #0xd
	bls _080004D4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080004E8: .4byte 0x0000FFFF
_080004EC: .4byte 0x03007FFC
_080004F0: .4byte 0x03000958

	thumb_func_start sub_80004F4
sub_80004F4: @ 0x080004F4
	push {lr}
	lsls r0, r0, #0x10
	ldr r1, _08000508 @ =0x03000A1C
	bl sub_80D3910
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08000508: .4byte 0x03000A1C

	thumb_func_start sub_800050C
sub_800050C: @ 0x0800050C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08000524 @ =0x04000202
	strh r0, [r1]
	bl sub_80004F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08000524: .4byte 0x04000202

	thumb_func_start sub_8000528
sub_8000528: @ 0x08000528
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800053C @ =0x03000A1C
	bl sub_80D3910
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_0800053C: .4byte 0x03000A1C

	thumb_func_start sub_8000540
sub_8000540: @ 0x08000540
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_80D101C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08000554:
	.byte 0x00, 0xB5, 0x01, 0x1C, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x20, 0xD3, 0xF0
	.byte 0xF9, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	thumb_func_start sub_8000568
sub_8000568: @ 0x08000568
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	bl sub_80D3754
	pop {r0}
	bx r0
	.align 2, 0
_0800057C:
	.byte 0x08, 0x1C, 0x70, 0x47
	.byte 0x08, 0x1C, 0x70, 0x47, 0x00, 0xB5, 0x00, 0xF0, 0x25, 0xF8, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x00, 0xF0, 0x39, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	thumb_func_start sub_800059C
sub_800059C: @ 0x0800059C
	push {r4, lr}
	adds r4, r0, #0
_080005A0:
	adds r0, r4, #0
	bl sub_80D01F8
	cmp r0, #0
	bne _080005BE
	ldr r0, _080005B8 @ =0x030004C0
	ldr r0, [r0]
	cmp r0, #0
	beq _080005BC
	bl sub_80D390C
	b _080005A0
	.align 2, 0
_080005B8: .4byte 0x030004C0
_080005BC:
	movs r0, #0
_080005BE:
	pop {r4}
	pop {r1}
	bx r1
_080005C4:
	.byte 0x02, 0x49, 0x0A, 0x68, 0x08, 0x60, 0x10, 0x1C, 0x70, 0x47, 0x00, 0x00
	.byte 0xC0, 0x04, 0x00, 0x03

	thumb_func_start sub_80005D4
sub_80005D4: @ 0x080005D4
	push {lr}
	bl sub_800059C
	cmp r0, #0
	bne _080005E0
	movs r0, #0
_080005E0:
	pop {r1}
	bx r1

	thumb_func_start sub_80005E4
sub_80005E4: @ 0x080005E4
	push {lr}
	bl sub_80005D4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80005F0
sub_80005F0: @ 0x080005F0
	push {lr}
	bl sub_800059C
	pop {r1}
	bx r1
	.align 2, 0
_080005FC:
	.byte 0x00, 0xB5, 0xFF, 0xF7
	.byte 0xF7, 0xFF, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start sub_8000608
sub_8000608: @ 0x08000608
	push {lr}
	bl sub_80D0260
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8000614
sub_8000614: @ 0x08000614
	push {lr}
	bl sub_8000608
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8000620
sub_8000620: @ 0x08000620
	push {lr}
	bl sub_80D0260
	pop {r0}
	bx r0
	.align 2, 0
_0800062C:
	.byte 0x00, 0xB5, 0xFF, 0xF7
	.byte 0xF7, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8000640
sub_8000640: @ 0x08000640
	push {lr}
	adds r3, r0, #0
	ldr r2, _0800065C @ =0x03000402
	ldrb r1, [r2]
	cmp r1, #0
	bne _08000654
	movs r0, #1
	strb r0, [r2]
	ldr r0, _08000660 @ =0x03000400
	strh r1, [r0]
_08000654:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800065C: .4byte 0x03000402
_08000660: .4byte 0x03000400
_08000664:
	.byte 0x70, 0xB5, 0x82, 0xB0, 0x06, 0x1C, 0x00, 0x22, 0xFF, 0x23, 0x69, 0x46
	.byte 0x88, 0x18, 0x01, 0x78, 0x19, 0x43, 0x01, 0x70, 0x50, 0x1C, 0x00, 0x06, 0x02, 0x0E, 0x07, 0x2A
	.byte 0xF5, 0xD9, 0x00, 0x24, 0x80, 0x25, 0x2D, 0x02, 0x30, 0x1C, 0x21, 0x1C, 0x6A, 0x46, 0x08, 0x23
	.byte 0x00, 0xF0, 0x08, 0xF8, 0x08, 0x34, 0xAC, 0x42, 0xF6, 0xD3, 0x01, 0x20, 0x02, 0xB0, 0x70, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	thumb_func_start sub_80006A4
sub_80006A4: @ 0x080006A4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r2, r3, #0
	ldr r1, _080006E0 @ =0x03000400
	movs r0, #0
	strh r0, [r1]
	cmp r2, #0
	beq _080006D8
	movs r6, #1
	movs r1, #0xe0
	lsls r1, r1, #0x14
	orrs r1, r4
	adds r0, r5, #0
	bl sub_80D38D4
	cmp r0, #0
	beq _080006D6
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, #0
	bl sub_8000728
	movs r6, #0
_080006D6:
	adds r0, r6, #0
_080006D8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080006E0: .4byte 0x03000400

	thumb_func_start sub_80006E4
sub_80006E4: @ 0x080006E4
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r2, r3, #0
	ldr r1, _08000708 @ =0x03000400
	movs r0, #0
	strh r0, [r1]
	cmp r2, #0
	beq _0800070C
	movs r0, #0xe0
	lsls r0, r0, #0x14
	orrs r0, r4
	adds r1, r5, #0
	bl sub_80D379C
	movs r0, #1
	b _0800070E
	.align 2, 0
_08000708: .4byte 0x03000400
_0800070C:
	movs r0, #0
_0800070E:
	pop {r4, r5}
	pop {r1}
	bx r1
_08000714:
	.byte 0x00, 0xB5, 0x00, 0x79, 0x03, 0x22, 0x10, 0x40, 0x03, 0x30, 0xD0, 0xF0
	.byte 0x75, 0xFC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start sub_8000728
sub_8000728: @ 0x08000728
	push {lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	cmp r3, #0x10
	beq _080007C0
	cmp r3, #0x10
	bgt _0800074E
	cmp r3, #2
	beq _08000780
	cmp r3, #2
	bgt _08000744
	cmp r3, #1
	beq _08000772
	b _080007E2
_08000744:
	cmp r3, #4
	beq _0800079C
	cmp r3, #8
	beq _080007B4
	b _080007E2
_0800074E:
	cmp r3, #0x80
	beq _080007D8
	cmp r3, #0x80
	bgt _08000760
	cmp r3, #0x20
	beq _080007A8
	cmp r3, #0x40
	beq _080007CC
	b _080007E2
_08000760:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, r0
	beq _0800078C
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r3, r0
	beq _0800078C
	b _080007E2
_08000772:
	ldr r0, _0800077C @ =0x03000400
	ldrh r1, [r0]
	movs r2, #1
	b _080007DE
	.align 2, 0
_0800077C: .4byte 0x03000400
_08000780:
	ldr r0, _08000788 @ =0x03000400
	ldrh r1, [r0]
	movs r2, #2
	b _080007DE
	.align 2, 0
_08000788: .4byte 0x03000400
_0800078C:
	ldr r2, _08000798 @ =0x03000400
	ldrh r1, [r2]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _080007E2
	.align 2, 0
_08000798: .4byte 0x03000400
_0800079C:
	ldr r0, _080007A4 @ =0x03000400
	ldrh r1, [r0]
	movs r2, #4
	b _080007DE
	.align 2, 0
_080007A4: .4byte 0x03000400
_080007A8:
	ldr r0, _080007B0 @ =0x03000400
	ldrh r1, [r0]
	movs r2, #0x20
	b _080007DE
	.align 2, 0
_080007B0: .4byte 0x03000400
_080007B4:
	ldr r0, _080007BC @ =0x03000400
	ldrh r1, [r0]
	movs r2, #8
	b _080007DE
	.align 2, 0
_080007BC: .4byte 0x03000400
_080007C0:
	ldr r0, _080007C8 @ =0x03000400
	ldrh r1, [r0]
	movs r2, #0x10
	b _080007DE
	.align 2, 0
_080007C8: .4byte 0x03000400
_080007CC:
	ldr r0, _080007D4 @ =0x03000400
	ldrh r1, [r0]
	movs r2, #0x40
	b _080007DE
	.align 2, 0
_080007D4: .4byte 0x03000400
_080007D8:
	ldr r0, _080007E8 @ =0x03000400
	ldrh r1, [r0]
	movs r2, #0x80
_080007DE:
	orrs r1, r2
	strh r1, [r0]
_080007E2:
	pop {r0}
	bx r0
	.align 2, 0
_080007E8: .4byte 0x03000400

	thumb_func_start sub_80007EC
sub_80007EC: @ 0x080007EC
	push {lr}
	adds r2, r0, #0
	ldr r0, _08000808 @ =0x080E59CC
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08000802
	adds r0, r2, #0
	bl sub_8000608
_08000802:
	pop {r0}
	bx r0
	.align 2, 0
_08000808: .4byte 0x080E59CC

	thumb_func_start sub_800080C
sub_800080C: @ 0x0800080C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08000828 @ =0x080E59DC
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08000822
	adds r0, r2, #0
	bl sub_8000608
_08000822:
	pop {r0}
	bx r0
	.align 2, 0
_08000828: .4byte 0x080E59DC

	thumb_func_start sub_800082C
sub_800082C: @ 0x0800082C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _080008F8
	add r7, sp, #4
	add r6, sp, #8
_0800083C:
	ldr r1, [r5]
	ldr r2, [r1]
	adds r0, r7, #0
	ldr r2, [r2, #0xc]
	bl sub_80D3914
	ldr r1, [sp, #4]
	str r7, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r0, #0
	str r0, [r7]
	str r1, [sp]
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08000866
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08000866:
	movs r4, #0
	ldr r1, [r5]
	cmp r4, r1
	beq _0800087E
	cmp r1, #0
	beq _0800087E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_0800087E:
	str r4, [r5]
	ldr r3, [sp]
	cmp r3, #0
	beq _080008F8
	ldr r1, [r3]
	adds r0, r6, #0
	ldr r2, [r1, #0xc]
	adds r1, r3, #0
	bl sub_80D3914
	ldr r0, [sp, #8]
	str r6, [sp, #0x14]
	str r0, [sp, #0x18]
	movs r4, #0
	str r4, [r6]
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _080008B0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_080008B0:
	ldr r0, [sp, #4]
	str r4, [sp, #4]
	adds r4, r0, #0
	ldr r1, [r5]
	cmp r4, r1
	beq _080008CC
	cmp r1, #0
	beq _080008CC
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_080008CC:
	str r4, [r5]
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _080008E0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_080008E0:
	ldr r1, [sp]
	cmp r1, #0
	beq _080008F2
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_080008F2:
	ldr r0, [r5]
	cmp r0, #0
	bne _0800083C
_080008F8:
	ldr r1, [r5]
	cmp r1, #0
	beq _0800090A
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_0800090A:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8000914
sub_8000914: @ 0x08000914
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0
	bl sub_8008444
	ldr r0, _08000CB0 @ =0x080E5A0C
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl sub_8008B54
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #1
	bl sub_8008B54
	adds r4, r5, #0
	adds r4, #0x10
	ldr r0, _08000CB4 @ =0x08747A74
	adds r1, r4, #0
	bl sub_80D102C
	ldr r0, _08000CB8 @ =0x00006A10
	adds r0, r0, r5
	mov sb, r0
	adds r1, r4, #0
	bl sub_805E6CC
	ldr r1, _08000CBC @ =0x00006A40
	adds r1, r1, r5
	mov sl, r1
	ldr r1, _08000CC0 @ =0x0874E530
	mov r0, sl
	bl sub_805E6CC
	ldr r0, _08000CC4 @ =0x00006A70
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _08000CC8 @ =0x0858BA28
	bl sub_805E6CC
	ldr r1, _08000CCC @ =0x00006AA0
	adds r4, r5, r1
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	movs r6, #0
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r0, _08000CD0 @ =0x00006AC0
	adds r4, r5, r0
	adds r0, r4, #0
	mov r1, r8
	ldr r2, _08000CD4 @ =0x00000342
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r1, _08000CD8 @ =0x00006AE0
	adds r4, r5, r1
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0xf1
	lsls r2, r2, #3
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	movs r0, #0xd6
	lsls r0, r0, #7
	adds r4, r5, r0
	adds r0, r4, #0
	mov r1, r8
	ldr r2, _08000CDC @ =0x000002B2
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r1, _08000CE0 @ =0x00006B20
	adds r4, r5, r1
	adds r0, r4, #0
	mov r1, r8
	ldr r2, _08000CE4 @ =0x00000924
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r0, _08000CE8 @ =0x00006B40
	adds r4, r5, r0
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0xe6
	lsls r2, r2, #3
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r1, _08000CEC @ =0x00006B60
	adds r4, r5, r1
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0xe6
	lsls r2, r2, #3
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	movs r0, #0xd7
	lsls r0, r0, #7
	adds r4, r5, r0
	adds r0, r4, #0
	mov r1, r8
	ldr r2, _08000CF0 @ =0x0000091A
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r1, _08000CF4 @ =0x00006BA0
	adds r4, r5, r1
	adds r0, r4, #0
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r0, _08000CF8 @ =0x00006BC0
	adds r4, r5, r0
	adds r0, r4, #0
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r1, _08000CFC @ =0x00006BE0
	adds r4, r5, r1
	adds r0, r4, #0
	mov r1, sb
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	movs r0, #0xd8
	lsls r0, r0, #7
	adds r4, r5, r0
	adds r0, r4, #0
	mov r1, sb
	movs r2, #4
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r1, _08000D00 @ =0x00006C20
	adds r4, r5, r1
	adds r0, r4, #0
	mov r1, sb
	movs r2, #7
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r0, _08000D04 @ =0x00006C40
	adds r4, r5, r0
	adds r0, r4, #0
	mov r1, sl
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl sub_805E824
	str r6, [r4, #0x18]
	str r6, [r4, #0x1c]
	ldr r1, _08000D08 @ =0x00006C70
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xc0
	lsls r2, r2, #2
	bl sub_8007A28
	ldr r0, _08000D0C @ =0x00006C74
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	movs r1, #9
	movs r2, #7
	bl sub_80071BC
	ldr r1, _08000D10 @ =0x00006C78
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #4
	bl sub_8007B54
	str r0, [r4, #4]
	movs r0, #0xd9
	lsls r0, r0, #7
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	bl sub_800736C
	str r0, [r4, #4]
	ldr r1, _08000D14 @ =0x00006C88
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #4
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r0, _08000D18 @ =0x00006C90
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	bl sub_800736C
	str r0, [r4, #4]
	ldr r1, _08000D1C @ =0x00006C98
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #4
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r0, _08000D20 @ =0x00006CA0
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	bl sub_800736C
	str r0, [r4, #4]
	ldr r1, _08000D24 @ =0x00006CA8
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #4
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r0, _08000D28 @ =0x00006CB0
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #2
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r1, _08000D2C @ =0x00006CB8
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	bl sub_800736C
	str r0, [r4, #4]
	ldr r0, _08000D30 @ =0x00006CC0
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #2
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r1, _08000D34 @ =0x00006CC8
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	bl sub_800736C
	str r0, [r4, #4]
	ldr r0, _08000D38 @ =0x00006CD0
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #1
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r1, _08000D3C @ =0x00006CD8
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #1
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r0, _08000D40 @ =0x00006CE0
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #3
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r1, _08000D44 @ =0x00006CE8
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	bl sub_800736C
	str r0, [r4, #4]
	ldr r0, _08000D48 @ =0x00006CF0
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #5
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r1, _08000D4C @ =0x00006CF8
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #5
	bl sub_8007B54
	str r0, [r4, #4]
	movs r0, #0xda
	lsls r0, r0, #7
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	bl sub_800736C
	str r0, [r4, #4]
	ldr r1, _08000D50 @ =0x00006D08
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #6
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r0, _08000D54 @ =0x00006D10
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	bl sub_800736C
	str r0, [r4, #4]
	ldr r1, _08000D58 @ =0x00006D18
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #2
	bl sub_8007B54
	str r0, [r4, #4]
	ldr r0, _08000D5C @ =0x00006D20
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	bl sub_800736C
	str r0, [r4, #4]
	ldr r1, _08000D60 @ =0x00006D28
	adds r0, r5, r1
	str r6, [r0]
	adds r1, #4
	adds r0, r5, r1
	str r6, [r0]
	subs r1, #0xbf
	adds r0, r5, r1
	strb r6, [r0]
	adds r1, #1
	adds r0, r5, r1
	strb r6, [r0]
	adds r0, r5, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08000CB0: .4byte 0x080E5A0C
_08000CB4: .4byte 0x08747A74
_08000CB8: .4byte 0x00006A10
_08000CBC: .4byte 0x00006A40
_08000CC0: .4byte 0x0874E530
_08000CC4: .4byte 0x00006A70
_08000CC8: .4byte 0x0858BA28
_08000CCC: .4byte 0x00006AA0
_08000CD0: .4byte 0x00006AC0
_08000CD4: .4byte 0x00000342
_08000CD8: .4byte 0x00006AE0
_08000CDC: .4byte 0x000002B2
_08000CE0: .4byte 0x00006B20
_08000CE4: .4byte 0x00000924
_08000CE8: .4byte 0x00006B40
_08000CEC: .4byte 0x00006B60
_08000CF0: .4byte 0x0000091A
_08000CF4: .4byte 0x00006BA0
_08000CF8: .4byte 0x00006BC0
_08000CFC: .4byte 0x00006BE0
_08000D00: .4byte 0x00006C20
_08000D04: .4byte 0x00006C40
_08000D08: .4byte 0x00006C70
_08000D0C: .4byte 0x00006C74
_08000D10: .4byte 0x00006C78
_08000D14: .4byte 0x00006C88
_08000D18: .4byte 0x00006C90
_08000D1C: .4byte 0x00006C98
_08000D20: .4byte 0x00006CA0
_08000D24: .4byte 0x00006CA8
_08000D28: .4byte 0x00006CB0
_08000D2C: .4byte 0x00006CB8
_08000D30: .4byte 0x00006CC0
_08000D34: .4byte 0x00006CC8
_08000D38: .4byte 0x00006CD0
_08000D3C: .4byte 0x00006CD8
_08000D40: .4byte 0x00006CE0
_08000D44: .4byte 0x00006CE8
_08000D48: .4byte 0x00006CF0
_08000D4C: .4byte 0x00006CF8
_08000D50: .4byte 0x00006D08
_08000D54: .4byte 0x00006D10
_08000D58: .4byte 0x00006D18
_08000D5C: .4byte 0x00006D20
_08000D60: .4byte 0x00006D28

	thumb_func_start sub_8000D64
sub_8000D64: @ 0x08000D64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r5, r1, #0
	movs r7, #0
	ldr r0, _08000D80 @ =0x00006D28
	adds r4, r5, r0
_08000D72:
	ldr r0, [r4]
	cmp r0, #0
	beq _08000D84
	cmp r0, #1
	beq _08000D8E
	b _08000D9C
	.align 2, 0
_08000D80: .4byte 0x00006D28
_08000D84:
	adds r0, r5, #0
	bl sub_8000E1C
	movs r0, #1
	b _08000D9A
_08000D8E:
	adds r0, r5, #0
	bl sub_8000FF8
	cmp r0, #1
	beq _08000DA0
	movs r0, #0
_08000D9A:
	str r0, [r4]
_08000D9C:
	cmp r7, #0
	beq _08000D72
_08000DA0:
	ldr r1, _08000DD8 @ =0x00006C6E
	adds r0, r5, r1
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	bne _08000DE0
	movs r0, #4
	bl sub_80005D4
	ldr r1, _08000DDC @ =0x080E59FC
	str r1, [r0]
	str r0, [sp]
	mov r1, sp
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [r1]
	str r0, [r6]
	ldr r1, [sp]
	cmp r1, #0
	beq _08000E0C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
	b _08000E0C
	.align 2, 0
_08000DD8: .4byte 0x00006C6E
_08000DDC: .4byte 0x080E59FC
_08000DE0:
	movs r0, #4
	bl sub_80005D4
	ldr r1, _08000E18 @ =0x080E59EC
	str r1, [r0]
	str r0, [sp]
	mov r1, sp
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r2, r1, #0
	movs r1, #0
	str r1, [r2]
	str r0, [r6]
	ldr r1, [sp]
	cmp r1, #0
	beq _08000E0C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08000E0C:
	adds r0, r6, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08000E18: .4byte 0x080E59EC

	thumb_func_start sub_8000E1C
sub_8000E1C: @ 0x08000E1C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	bl sub_8008724
	adds r0, r7, #0
	bl sub_8000F5C
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl sub_80005D4
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_8008918
	adds r1, r0, #0
	movs r6, #0
	str r6, [r4]
	str r6, [r4, #4]
	ldr r0, _08000EB0 @ =0x080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_8009300
	str r4, [sp, #4]
	ldr r1, _08000EB4 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #0
	bl sub_800934C
	adds r0, r7, #0
	bl sub_8008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl sub_80D3914
	ldr r1, _08000EB8 @ =0x00006D32
	adds r0, r7, r1
	strh r6, [r0]
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0
	bl sub_8008B6C
	ldr r0, _08000EB8 @ =0x00006D32
	adds r5, r7, r0
_08000E92:
	adds r0, r7, #0
	bl sub_80087C8
	adds r0, r7, #0
	bl sub_80088B8
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #1
	beq _08000EE0
	cmp r0, #1
	bgt _08000EBC
	cmp r0, #0
	beq _08000EC2
	b _08000F3E
	.align 2, 0
_08000EB0: .4byte 0x080E5B80
_08000EB4: .4byte 0x00000889
_08000EB8: .4byte 0x00006D32
_08000EBC:
	cmp r0, #2
	beq _08000F30
	b _08000F3E
_08000EC2:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _08000F3E
	ldr r1, _08000EDC @ =0x00006D2C
	adds r0, r7, r1
	movs r1, #0x78
	str r1, [r0]
	movs r0, #1
	strh r0, [r5]
	b _08000F3E
	.align 2, 0
_08000EDC: .4byte 0x00006D2C
_08000EE0:
	ldr r0, _08000F28 @ =0x00006D2C
	adds r4, r7, r0
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	adds r0, r7, #0
	bl sub_80088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08000EFC
	movs r0, #0
	str r0, [r4]
_08000EFC:
	ldr r0, [r4]
	cmp r0, #0
	bgt _08000F3E
	ldr r0, [sp, #4]
	adds r0, #0xc
	ldr r1, _08000F2C @ =0x00000889
	movs r2, #1
	movs r3, #0
	bl sub_8009378
	adds r0, r7, #0
	bl sub_8008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl sub_80D3914
	movs r0, #2
	strh r0, [r5]
	b _08000F3E
	.align 2, 0
_08000F28: .4byte 0x00006D2C
_08000F2C: .4byte 0x00000889
_08000F30:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _08000F3E
	movs r6, #1
_08000F3E:
	cmp r6, #0
	beq _08000E92
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08000F54
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08000F54:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8000F5C
sub_8000F5C: @ 0x08000F5C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08000FE0 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl sub_8008EB8
	movs r0, #1
	rsbs r0, r0, #0
	ldr r4, _08000FE4 @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r4, #0
	bl sub_8008EB8
	ldr r0, _08000FE8 @ =0x0874E648
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_80D102C
	ldr r0, _08000FEC @ =0x0874EB40
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl sub_8008E64
	ldr r0, _08000FF0 @ =0x0874EB60
	adds r1, r4, #0
	bl sub_80D102C
	adds r0, r5, #0
	bl sub_8008918
	mov r1, sp
	movs r3, #0x84
	lsls r3, r3, #4
	adds r2, r3, #0
	strh r2, [r1]
	movs r4, #0
	strh r2, [r0]
	adds r0, r5, #0
	bl sub_8008918
	mov r2, sp
	ldr r3, _08000FF4 @ =0x00001F43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r5, #0
	bl sub_8008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	adds r0, r5, #0
	bl sub_8008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000FE0: .4byte 0x06007FE0
_08000FE4: .4byte 0x0600F800
_08000FE8: .4byte 0x0874E648
_08000FEC: .4byte 0x0874EB40
_08000FF0: .4byte 0x0874EB60
_08000FF4: .4byte 0x00001F43

	thumb_func_start sub_8000FF8
sub_8000FF8: @ 0x08000FF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	bl sub_8008724
	adds r0, r7, #0
	bl sub_80019D8
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl sub_80005D4
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_8008918
	adds r1, r0, #0
	movs r6, #0
	str r6, [r4]
	str r6, [r4, #4]
	ldr r0, _0800112C @ =0x080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_8009300
	str r4, [sp, #4]
	ldr r1, _08001130 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #0
	bl sub_800934C
	adds r0, r7, #0
	bl sub_8008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl sub_80D3914
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0x23
	bl sub_8008B6C
	ldr r1, _08001134 @ =0x00006C64
	adds r0, r7, r1
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r3, _08001138 @ =0x00006C66
	adds r0, r7, r3
	strh r6, [r0]
	ldr r4, _0800113C @ =0x00006C68
	adds r0, r7, r4
	strh r6, [r0]
	adds r3, #4
	adds r0, r7, r3
	strh r1, [r0]
	adds r4, #0xca
	adds r1, r7, r4
	movs r0, #3
	strh r0, [r1]
	ldr r0, _08001140 @ =0x00006D30
	adds r1, r7, r0
	movs r0, #0xe0
	strh r0, [r1]
	ldr r1, _08001144 @ =0x00006C6D
	adds r0, r7, r1
	strb r2, [r0]
	adds r3, #2
	adds r0, r7, r3
	strb r2, [r0]
	movs r4, #0
	mov sb, r4
	mov sl, r4
	mov r8, r4
	movs r0, #0
	str r0, [sp, #0x10]
	movs r1, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x18]
	movs r3, #0
	str r3, [sp, #0x1c]

	non_word_aligned_thumb_func_start sub_080010BE
sub_080010BE: @ 0x080010BE
	bl sub_80D11E4
	adds r0, r7, #0
	bl sub_80087C8
	adds r0, r7, #0
	bl sub_80088B8
	ldr r4, [sp, #0x10]
	cmp r4, #0
	bne _0800110E
	movs r4, #0
	adds r0, r7, #0
	bl sub_80088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08001100
	adds r0, r7, #0
	bl sub_80088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08001100
	adds r0, r7, #0
	bl sub_80088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08001102
_08001100:
	movs r4, #1
_08001102:
	cmp r4, #0
	beq _0800110E
	ldr r0, _08001148 @ =0x00006D32
	adds r1, r7, r0
	movs r0, #0xb
	strh r0, [r1]
_0800110E:
	ldr r1, _08001148 @ =0x00006D32
	adds r0, r7, r1
	ldrh r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd
	bls _08001120
	b _08001694
_08001120:
	lsls r0, r0, #2
	ldr r1, _0800114C @ =_08001150
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800112C: .4byte 0x080E5B80
_08001130: .4byte 0x00000889
_08001134: .4byte 0x00006C64
_08001138: .4byte 0x00006C66
_0800113C: .4byte 0x00006C68
_08001140: .4byte 0x00006D30
_08001144: .4byte 0x00006C6D
_08001148: .4byte 0x00006D32
_0800114C: .4byte _08001150
_08001150: @ jump table
	.4byte _08001188 @ case 0
	.4byte _080011A4 @ case 1
	.4byte _08001220 @ case 2
	.4byte _08001290 @ case 3
	.4byte _080012C8 @ case 4
	.4byte _08001314 @ case 5
	.4byte _08001338 @ case 6
	.4byte _08001374 @ case 7
	.4byte _080013AC @ case 8
	.4byte _08001434 @ case 9
	.4byte _080014EC @ case 10
	.4byte _08001630 @ case 11
	.4byte _08001654 @ case 12
	.4byte _08001684 @ case 13
_08001188:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _08001196
	b _08001694
_08001196:
	ldr r2, _080011A0 @ =0x00006D32
	adds r1, r7, r2
	movs r0, #4
	strh r0, [r1]
	b _08001694
	.align 2, 0
_080011A0: .4byte 0x00006D32
_080011A4:
	ldr r4, _08001204 @ =0x00006D30
	adds r3, r7, r4
	ldrh r0, [r3]
	subs r0, #1
	movs r1, #0
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080011B8
	strh r1, [r3]
_080011B8:
	ldr r0, _08001208 @ =0x00006AB8
	adds r2, r7, r0
	ldr r1, [r2]
	ldr r4, _0800120C @ =0xFFFF5000
	adds r1, r1, r4
	str r1, [r2]
	ldr r0, _08001210 @ =0x006FFFFF
	cmp r1, r0
	bgt _080011CE
	adds r0, #1
	str r0, [r2]
_080011CE:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080011D8
	b _08001694
_080011D8:
	ldr r1, [r2]
	movs r0, #0xe0
	lsls r0, r0, #0xf
	cmp r1, r0
	beq _080011E4
	b _08001694
_080011E4:
	ldr r2, _08001214 @ =0x00006AA0
	adds r0, r7, r2
	movs r1, #0xca
	lsls r1, r1, #1
	bl sub_805E860
	ldr r3, _08001218 @ =0x00006D2C
	adds r1, r7, r3
	movs r0, #0x5a
	str r0, [r1]
	ldr r4, _0800121C @ =0x00006D32
	adds r1, r7, r4
	movs r0, #5
	strh r0, [r1]
	b _08001694
	.align 2, 0
_08001204: .4byte 0x00006D30
_08001208: .4byte 0x00006AB8
_0800120C: .4byte 0xFFFF5000
_08001210: .4byte 0x006FFFFF
_08001214: .4byte 0x00006AA0
_08001218: .4byte 0x00006D2C
_0800121C: .4byte 0x00006D32
_08001220:
	ldr r0, _08001240 @ =0x00006D2C
	adds r1, r7, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0x1e
	beq _08001248
	cmp r0, #0x3c
	bne _08001252
	ldr r1, _08001244 @ =0x00006AA0
	adds r0, r7, r1
	movs r1, #0xc9
	lsls r1, r1, #1
	bl sub_805E860
	b _08001252
	.align 2, 0
_08001240: .4byte 0x00006D2C
_08001244: .4byte 0x00006AA0
_08001248:
	ldr r2, _0800127C @ =0x00006AA0
	adds r0, r7, r2
	ldr r1, _08001280 @ =0x00000195
	bl sub_805E860
_08001252:
	ldr r3, _08001284 @ =0x00006D2C
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #0
	ble _0800125E
	b _08001694
_0800125E:
	ldr r4, _0800127C @ =0x00006AA0
	adds r0, r7, r4
	ldr r1, _08001288 @ =0x000001FD
	bl sub_805E860
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0x67
	bl sub_8008B6C
	ldr r0, _0800128C @ =0x00006D32
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	b _08001694
	.align 2, 0
_0800127C: .4byte 0x00006AA0
_08001280: .4byte 0x00000195
_08001284: .4byte 0x00006D2C
_08001288: .4byte 0x000001FD
_0800128C: .4byte 0x00006D32
_08001290:
	ldr r1, _080012B8 @ =0x00006AB4
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0800129E
	b _08001694
_0800129E:
	ldr r2, _080012BC @ =0x00006AA0
	adds r0, r7, r2
	ldr r1, _080012C0 @ =0x00000195
	bl sub_805E860
	movs r3, #1
	mov sl, r3
	mov r8, r3
	ldr r4, _080012C4 @ =0x00006D32
	adds r1, r7, r4
	movs r0, #7
	strh r0, [r1]
	b _08001694
	.align 2, 0
_080012B8: .4byte 0x00006AB4
_080012BC: .4byte 0x00006AA0
_080012C0: .4byte 0x00000195
_080012C4: .4byte 0x00006D32
_080012C8:
	ldr r0, _08001300 @ =0x00006AD8
	adds r4, r7, r0
	ldr r0, [r4]
	ldr r1, _08001304 @ =0xFFFEC000
	adds r0, r0, r1
	str r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #0x10
	cmp r0, r5
	ble _080012DE
	b _08001694
_080012DE:
	ldr r2, _08001308 @ =0x00006D2C
	adds r1, r7, r2
	movs r0, #0x3c
	str r0, [r1]
	ldr r3, _0800130C @ =0x00006AA0
	adds r0, r7, r3
	movs r1, #0xe1
	lsls r1, r1, #1
	bl sub_805E860
	movs r6, #1
	str r5, [r4]
	ldr r4, _08001310 @ =0x00006D32
	adds r1, r7, r4
	movs r0, #8
	strh r0, [r1]
	b _08001694
	.align 2, 0
_08001300: .4byte 0x00006AD8
_08001304: .4byte 0xFFFEC000
_08001308: .4byte 0x00006D2C
_0800130C: .4byte 0x00006AA0
_08001310: .4byte 0x00006D32
_08001314:
	ldr r0, _08001330 @ =0x00006D2C
	adds r1, r7, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	ble _08001324
	b _08001694
_08001324:
	ldr r2, _08001334 @ =0x00006D32
	adds r1, r7, r2
	movs r0, #9
	strh r0, [r1]
	b _08001694
	.align 2, 0
_08001330: .4byte 0x00006D2C
_08001334: .4byte 0x00006D32
_08001338:
	ldr r3, _08001368 @ =0x00006BBC
	adds r1, r7, r3
	ldr r0, [r1]
	movs r4, #0xc0
	lsls r4, r4, #9
	adds r0, r0, r4
	str r0, [r1]
	cmp r0, #0
	bge _0800134C
	b _08001694
_0800134C:
	movs r0, #0
	str r0, [r1]
	ldr r0, _0800136C @ =0x00006C6C
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	movs r1, #1
	str r1, [sp, #0x14]
	movs r6, #3
	ldr r2, _08001370 @ =0x00006D32
	adds r1, r7, r2
	movs r0, #0xa
	strh r0, [r1]
	b _08001694
	.align 2, 0
_08001368: .4byte 0x00006BBC
_0800136C: .4byte 0x00006C6C
_08001370: .4byte 0x00006D32
_08001374:
	ldr r3, _080013A0 @ =0x00006C64
	adds r2, r7, r3
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r2]
	ldr r4, _080013A4 @ =0x00006C6A
	adds r1, r7, r4
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08001396
	b _08001694
_08001396:
	movs r1, #1
	str r1, [sp, #0x10]
	ldr r2, _080013A8 @ =0x00006D32
	adds r1, r7, r2
	b _08001412
	.align 2, 0
_080013A0: .4byte 0x00006C64
_080013A4: .4byte 0x00006C6A
_080013A8: .4byte 0x00006D32
_080013AC:
	ldr r3, _08001418 @ =0x00006D30
	adds r1, r7, r3
	movs r0, #0
	strh r0, [r1]
	ldr r4, _0800141C @ =0x00006AB8
	adds r1, r7, r4
	movs r0, #0xe0
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r1, _08001420 @ =0x00006AA0
	adds r0, r7, r1
	movs r1, #0xc9
	lsls r1, r1, #1
	bl sub_805E860
	ldr r2, _08001424 @ =0x00006AC0
	adds r0, r7, r2
	movs r1, #0xce
	lsls r1, r1, #2
	bl sub_805E860
	ldr r3, _08001428 @ =0x00006AD8
	adds r1, r7, r3
	movs r0, #0x80
	lsls r0, r0, #0x10
	str r0, [r1]
	movs r4, #0
	str r4, [sp, #0x14]
	movs r6, #0
	movs r0, #2
	mov sl, r0
	mov r8, r0
	ldr r2, _0800142C @ =0x00006C6C
	adds r1, r7, r2
	movs r0, #9
	strb r0, [r1]
	adds r3, #0xe4
	adds r0, r7, r3
	str r6, [r0]
	ldr r4, _08001430 @ =0x00006C64
	adds r0, r7, r4
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r2, #2
	adds r0, r7, r2
	strh r1, [r0]
	movs r3, #1
	str r3, [sp, #0x10]
	adds r4, #0xce
	adds r1, r7, r4
_08001412:
	movs r0, #0xc
	strh r0, [r1]
	b _08001694
	.align 2, 0
_08001418: .4byte 0x00006D30
_0800141C: .4byte 0x00006AB8
_08001420: .4byte 0x00006AA0
_08001424: .4byte 0x00006AC0
_08001428: .4byte 0x00006AD8
_0800142C: .4byte 0x00006C6C
_08001430: .4byte 0x00006C64
_08001434:
	add r4, sp, #8
	adds r0, r4, #0
	bl sub_8000640
	adds r0, r4, #0
	bl sub_80003A0
	adds r2, r0, #0
	cmp r2, #0
	bne _08001484
	ldr r0, _08001470 @ =0x00006C6D
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08001474 @ =0x00006C6E
	adds r0, r7, r1
	strb r2, [r0]
	ldr r2, _08001478 @ =0x00006BF8
	adds r0, r7, r2
	movs r4, #0xa0
	lsls r4, r4, #0xf
	str r4, [r0]
	ldr r3, _0800147C @ =0x00006BE0
	adds r0, r7, r3
	movs r1, #2
	bl sub_805E860
	ldr r1, _08001480 @ =0x00006C58
	adds r0, r7, r1
	b _080014B6
	.align 2, 0
_08001470: .4byte 0x00006C6D
_08001474: .4byte 0x00006C6E
_08001478: .4byte 0x00006BF8
_0800147C: .4byte 0x00006BE0
_08001480: .4byte 0x00006C58
_08001484:
	ldr r2, _080014CC @ =0x00006C6D
	adds r1, r7, r2
	movs r0, #2
	strb r0, [r1]
	ldr r3, _080014D0 @ =0x00006C6E
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	ldr r4, _080014D4 @ =0x00006BF8
	adds r1, r7, r4
	movs r0, #0xc0
	lsls r0, r0, #0xd
	str r0, [r1]
	ldr r1, _080014D8 @ =0x00006C18
	adds r0, r7, r1
	movs r4, #0x88
	lsls r4, r4, #0x10
	str r4, [r0]
	subs r2, #0x6d
	adds r0, r7, r2
	movs r1, #5
	bl sub_805E860
	ldr r3, _080014DC @ =0x00006C58
	adds r0, r7, r3
_080014B6:
	str r4, [r0]
	ldr r4, _080014E0 @ =0x00006D2C
	adds r1, r7, r4
	ldr r0, _080014E4 @ =0x00000924
	str r0, [r1]
	ldr r0, _080014E8 @ =0x00006D32
	adds r1, r7, r0
	movs r0, #0xd
	strh r0, [r1]
	b _08001694
	.align 2, 0
_080014CC: .4byte 0x00006C6D
_080014D0: .4byte 0x00006C6E
_080014D4: .4byte 0x00006BF8
_080014D8: .4byte 0x00006C18
_080014DC: .4byte 0x00006C58
_080014E0: .4byte 0x00006D2C
_080014E4: .4byte 0x00000924
_080014E8: .4byte 0x00006D32
_080014EC:
	ldr r1, _08001550 @ =0x00006C6D
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08001594
	movs r4, #0
	adds r0, r7, #0
	bl sub_80088CC
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08001518
	adds r0, r7, #0
	bl sub_80088CC
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800151A
_08001518:
	movs r4, #1
_0800151A:
	cmp r4, #0
	beq _08001594
	ldr r3, _08001554 @ =0x00006C6E
	adds r2, r7, r3
	ldrb r1, [r2]
	movs r0, #1
	eors r1, r0
	strb r1, [r2]
	cmp r1, #0
	bne _08001560
	ldr r4, _08001558 @ =0x00006BE0
	adds r0, r7, r4
	movs r1, #2
	bl sub_805E860
	movs r1, #0xd8
	lsls r1, r1, #7
	adds r0, r7, r1
	movs r1, #4
	bl sub_805E860
	ldr r2, _0800155C @ =0x00006C58
	adds r1, r7, r2
	movs r0, #0xc0
	lsls r0, r0, #0xd
	b _0800157E
	.align 2, 0
_08001550: .4byte 0x00006C6D
_08001554: .4byte 0x00006C6E
_08001558: .4byte 0x00006BE0
_0800155C: .4byte 0x00006C58
_08001560:
	ldr r3, _080015D4 @ =0x00006BE0
	adds r0, r7, r3
	movs r1, #1
	bl sub_805E860
	movs r4, #0xd8
	lsls r4, r4, #7
	adds r0, r7, r4
	movs r1, #5
	bl sub_805E860
	ldr r0, _080015D8 @ =0x00006C58
	adds r1, r7, r0
	movs r0, #0x88
	lsls r0, r0, #0x10
_0800157E:
	str r0, [r1]
	ldr r1, _080015DC @ =0x00006D2C
	adds r0, r7, r1
	movs r1, #0xe1
	lsls r1, r1, #3
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl sub_8008B6C
_08001594:
	movs r4, #0
	adds r0, r7, #0
	bl sub_80088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080015B2
	adds r0, r7, #0
	bl sub_80088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080015B4
_080015B2:
	movs r4, #1
_080015B4:
	cmp r4, #0
	beq _08001614
	ldr r2, _080015E0 @ =0x00006C6E
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080015E4
	ldr r3, _080015D4 @ =0x00006BE0
	adds r0, r7, r3
	movs r1, #3
	bl sub_805E860
	b _080015F0
	.align 2, 0
_080015D4: .4byte 0x00006BE0
_080015D8: .4byte 0x00006C58
_080015DC: .4byte 0x00006D2C
_080015E0: .4byte 0x00006C6E
_080015E4:
	movs r4, #0xd8
	lsls r4, r4, #7
	adds r0, r7, r4
	movs r1, #6
	bl sub_805E860
_080015F0:
	ldr r0, _0800160C @ =0x00006D2C
	adds r1, r7, r0
	movs r0, #0x3c
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl sub_8008B6C
	ldr r2, _08001610 @ =0x00006D32
	adds r1, r7, r2
	movs r0, #0xe
	strh r0, [r1]
	b _08001694
	.align 2, 0
_0800160C: .4byte 0x00006D2C
_08001610: .4byte 0x00006D32
_08001614:
	ldr r3, _08001628 @ =0x00006D2C
	adds r1, r7, r3
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _08001694
	ldr r4, _0800162C @ =0x00006D32
	adds r1, r7, r4
	b _08001646
	.align 2, 0
_08001628: .4byte 0x00006D2C
_0800162C: .4byte 0x00006D32
_08001630:
	ldr r0, _0800164C @ =0x00006D2C
	adds r1, r7, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _08001694
	movs r1, #1
	str r1, [sp, #0x18]
	ldr r2, _08001650 @ =0x00006D32
	adds r1, r7, r2
_08001646:
	movs r0, #0xf
	strh r0, [r1]
	b _08001694
	.align 2, 0
_0800164C: .4byte 0x00006D2C
_08001650: .4byte 0x00006D32
_08001654:
	ldr r0, [sp, #4]
	ldr r1, _0800167C @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #0
	bl sub_8009378
	adds r0, r7, #0
	bl sub_8008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl sub_80D3914
	ldr r3, _08001680 @ =0x00006D32
	adds r1, r7, r3
	movs r0, #0x10
	strh r0, [r1]
	b _08001694
	.align 2, 0
_0800167C: .4byte 0x00000889
_08001680: .4byte 0x00006D32
_08001684:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _08001694
	movs r4, #1
	str r4, [sp, #0x1c]
_08001694:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080016B6
	ldr r1, _080016C8 @ =0x00006AB4
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080016B6
	ldr r2, _080016CC @ =0x00006AA0
	adds r0, r7, r2
	movs r1, #0xc9
	lsls r1, r1, #1
	bl sub_805E860
	movs r3, #0
	str r3, [sp, #0x14]
_080016B6:
	adds r0, r6, #0
	cmp r0, #2
	beq _080016F4
	cmp r0, #2
	bgt _080016D0
	cmp r0, #1
	beq _080016D6
	b _0800172A
	.align 2, 0
_080016C8: .4byte 0x00006AB4
_080016CC: .4byte 0x00006AA0
_080016D0:
	cmp r0, #3
	beq _08001710
	b _0800172A
_080016D6:
	ldr r4, _080016F0 @ =0x00006AC0
	adds r0, r7, r4
	movs r1, #0xdc
	lsls r1, r1, #2
	bl sub_805E860
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xa9
	bl sub_8008B6C
	movs r6, #2
	b _0800172A
	.align 2, 0
_080016F0: .4byte 0x00006AC0
_080016F4:
	ldr r1, _0800170C @ =0x00006AD4
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800172A
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xa9
	bl sub_8008B88
	b _0800172A
	.align 2, 0
_0800170C: .4byte 0x00006AD4
_08001710:
	ldr r2, _08001738 @ =0x00006AD4
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0800172A
	ldr r3, _0800173C @ =0x00006AC0
	adds r0, r7, r3
	movs r1, #0xce
	lsls r1, r1, #2
	bl sub_805E860
	movs r6, #0
_0800172A:
	mov r0, sl
	cmp r0, #1
	beq _08001740
	cmp r0, #2
	beq _08001760
	b _0800177A
	.align 2, 0
_08001738: .4byte 0x00006AD4
_0800173C: .4byte 0x00006AC0
_08001740:
	ldr r4, _08001758 @ =0x00006B18
	adds r2, r7, r4
	ldr r1, [r2]
	movs r0, #0xbc
	lsls r0, r0, #0x10
	cmp r1, r0
	ble _08001760
	ldr r3, _0800175C @ =0xFFFFA000
	adds r0, r1, r3
	str r0, [r2]
	b _0800177A
	.align 2, 0
_08001758: .4byte 0x00006B18
_0800175C: .4byte 0xFFFFA000
_08001760:
	movs r4, #0xd6
	lsls r4, r4, #7
	adds r0, r7, r4
	ldr r1, _08001788 @ =0x000002B6
	bl sub_805E860
	ldr r0, _0800178C @ =0x00006B18
	adds r1, r7, r0
	movs r0, #0xbc
	lsls r0, r0, #0x10
	str r0, [r1]
	movs r1, #0
	mov sl, r1
_0800177A:
	mov r0, r8
	cmp r0, #1
	beq _08001790
	cmp r0, #2
	beq _080017B0
	b _080017C8
	.align 2, 0
_08001788: .4byte 0x000002B6
_0800178C: .4byte 0x00006B18
_08001790:
	ldr r3, _080017A8 @ =0x00006B38
	adds r2, r7, r3
	ldr r1, [r2]
	ldr r0, _080017AC @ =0x003FFFFF
	cmp r1, r0
	bgt _080017B0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r1, r4
	str r0, [r2]
	b _080017C8
	.align 2, 0
_080017A8: .4byte 0x00006B38
_080017AC: .4byte 0x003FFFFF
_080017B0:
	ldr r1, _080017E4 @ =0x00006B20
	adds r0, r7, r1
	ldr r1, _080017E8 @ =0x00000928
	bl sub_805E860
	ldr r2, _080017EC @ =0x00006B38
	adds r1, r7, r2
	movs r0, #0x80
	lsls r0, r0, #0xf
	str r0, [r1]
	movs r3, #0
	mov r8, r3
_080017C8:
	ldr r4, _080017F0 @ =0x00006C6C
	adds r0, r7, r4
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #8
	bls _080017DA
	b _08001952
_080017DA:
	lsls r0, r0, #2
	ldr r1, _080017F4 @ =_080017F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080017E4: .4byte 0x00006B20
_080017E8: .4byte 0x00000928
_080017EC: .4byte 0x00006B38
_080017F0: .4byte 0x00006C6C
_080017F4: .4byte _080017F8
_080017F8: @ jump table
	.4byte _0800181C @ case 0
	.4byte _08001874 @ case 1
	.4byte _080018AE @ case 2
	.4byte _08001922 @ case 3
	.4byte _08001952 @ case 4
	.4byte _08001952 @ case 5
	.4byte _08001952 @ case 6
	.4byte _08001952 @ case 7
	.4byte _080018AE @ case 8
_0800181C:
	ldr r0, _08001858 @ =0x00006B5C
	adds r2, r7, r0
	ldr r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #9
	adds r1, r1, r3
	str r1, [r2]
	ldr r4, _0800185C @ =0x00006B7C
	adds r0, r7, r4
	str r1, [r0]
	ldr r0, _08001860 @ =0x00006B58
	adds r1, r7, r0
	ldr r0, [r1]
	ldr r4, _08001864 @ =0xFFFF0000
	adds r0, r0, r4
	str r0, [r1]
	ldr r0, _08001868 @ =0x00006B78
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	ldr r1, [r2]
	ldr r0, _0800186C @ =0x005FFFFF
	cmp r1, r0
	bgt _08001850
	b _08001952
_08001850:
	ldr r2, _08001870 @ =0x00006C6C
	adds r1, r7, r2
	movs r0, #2
	b _08001950
	.align 2, 0
_08001858: .4byte 0x00006B5C
_0800185C: .4byte 0x00006B7C
_08001860: .4byte 0x00006B58
_08001864: .4byte 0xFFFF0000
_08001868: .4byte 0x00006B78
_0800186C: .4byte 0x005FFFFF
_08001870: .4byte 0x00006C6C
_08001874:
	ldr r4, _080018E4 @ =0x00006B5C
	adds r3, r7, r4
	ldr r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	str r1, [r3]
	adds r4, #0x20
	adds r0, r7, r4
	str r1, [r0]
	ldr r0, _080018E8 @ =0x00006B58
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	ldr r2, _080018EC @ =0x00006B78
	adds r1, r7, r2
	ldr r0, [r1]
	ldr r4, _080018F0 @ =0xFFFF0000
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, [r3]
	ldr r0, _080018F4 @ =0x0093FFFF
	cmp r1, r0
	ble _08001952
	ldr r0, _080018F8 @ =0x00006C6C
	adds r1, r7, r0
	movs r0, #3
	strb r0, [r1]
_080018AE:
	ldr r2, _080018E8 @ =0x00006B58
	adds r1, r7, r2
	movs r0, #0xe0
	lsls r0, r0, #0xd
	str r0, [r1]
	ldr r3, _080018EC @ =0x00006B78
	adds r1, r7, r3
	movs r0, #0xd4
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r4, _080018FC @ =0x00006B7C
	adds r2, r7, r4
	ldr r0, _080018E4 @ =0x00006B5C
	adds r1, r7, r0
	movs r0, #0x94
	lsls r0, r0, #0x10
	str r0, [r1]
	str r0, [r2]
	ldr r1, _080018F8 @ =0x00006C6C
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	bne _08001900
	movs r2, #0x1e
	b _08001918
	.align 2, 0
_080018E4: .4byte 0x00006B5C
_080018E8: .4byte 0x00006B58
_080018EC: .4byte 0x00006B78
_080018F0: .4byte 0xFFFF0000
_080018F4: .4byte 0x0093FFFF
_080018F8: .4byte 0x00006C6C
_080018FC: .4byte 0x00006B7C
_08001900:
	ldr r3, _080019C4 @ =0x00006B40
	adds r0, r7, r3
	ldr r4, _080019C8 @ =0x0000071C
	adds r1, r4, #0
	bl sub_805E860
	ldr r1, _080019CC @ =0x00006B60
	adds r0, r7, r1
	adds r1, r4, #0
	bl sub_805E860
	movs r2, #0
_08001918:
	mov sb, r2
	ldr r3, _080019D0 @ =0x00006C6C
	adds r1, r7, r3
	movs r0, #4
	strb r0, [r1]
_08001922:
	mov r4, sb
	lsls r0, r4, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r2, r0, #0x18
	mov sb, r2
	cmp r0, #0
	bge _08001952
	ldr r3, _080019C4 @ =0x00006B40
	adds r0, r7, r3
	ldr r4, _080019C8 @ =0x0000071C
	adds r1, r4, #0
	bl sub_805E860
	ldr r1, _080019CC @ =0x00006B60
	adds r0, r7, r1
	adds r1, r4, #0
	bl sub_805E860
	ldr r2, _080019D0 @ =0x00006C6C
	adds r1, r7, r2
	movs r0, #5
_08001950:
	strb r0, [r1]
_08001952:
	adds r0, r7, #0
	bl sub_8008918
	mov r2, sp
	ldr r3, _080019D4 @ =0x00006D30
	adds r4, r7, r3
	ldrh r1, [r4]
	strh r1, [r2]
	strh r1, [r0, #0x10]
	adds r0, r7, #0
	bl sub_8008918
	mov r2, sp
	ldrh r1, [r4]
	strh r1, [r2]
	strh r1, [r0, #0x14]
	adds r0, r7, #0
	bl sub_8008918
	mov r2, sp
	ldrh r1, [r4]
	strh r1, [r2]
	strh r1, [r0, #0x18]
	adds r0, r7, #0
	bl sub_8008918
	mov r2, sp
	ldrh r1, [r4]
	strh r1, [r2]
	strh r1, [r0, #0x1c]
	adds r0, r7, #0
	bl sub_80024E0
	ldr r4, [sp, #0x1c]
	cmp r4, #0
	bne _0800199E
	bl sub_080010BE
_0800199E:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _080019B0
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_080019B0:
	ldr r0, [sp, #0x18]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080019C4: .4byte 0x00006B40
_080019C8: .4byte 0x0000071C
_080019CC: .4byte 0x00006B60
_080019D0: .4byte 0x00006C6C
_080019D4: .4byte 0x00006D30

	thumb_func_start sub_80019D8
sub_80019D8: @ 0x080019D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08001DAC @ =0xFFFFEFC8
	add sp, r4
	adds r7, r0, #0
	ldr r1, _08001DB0 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl sub_8008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r1, _08001DB4 @ =0x0600C000
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8008EB8
	ldr r1, _08001DB8 @ =0x0600D000
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8008EB8
	ldr r1, _08001DBC @ =0x0600E000
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8008EB8
	ldr r1, _08001DC0 @ =0x0600F000
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_8008EB8
	ldr r0, _08001DC4 @ =0x0874A9C0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_80D102C
	ldr r0, _08001DC8 @ =0x0874E330
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_8008E64
	movs r4, #0
	add r0, sp, #8
	mov sb, r0
	add r1, sp, #0x10
	mov sl, r1
	mov r2, sp
	adds r2, #0x18
	ldr r3, _08001DCC @ =0x00001030
	add r3, sp
	str r2, [r3]
	mov r5, sp
	adds r5, #0x20
	ldr r0, _08001DD0 @ =0x00001034
	add r0, sp
	str r5, [r0]
	ldr r1, _08001DD4 @ =0x00006BA4
	adds r1, r7, r1
	ldr r2, _08001DD8 @ =0x0000101C
	add r2, sp
	str r1, [r2]
	ldr r3, _08001DDC @ =0x00006BC4
	adds r3, r7, r3
	movs r5, #0x81
	lsls r5, r5, #5
	add r5, sp
	str r3, [r5]
	ldr r0, _08001DE0 @ =0x00006AA4
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #5
	add r1, sp
	str r0, [r1]
	ldr r2, _08001DE4 @ =0x00006AC4
	adds r2, r7, r2
	ldr r3, _08001DE8 @ =0x00001004
	add r3, sp
	str r2, [r3]
	ldr r5, _08001DEC @ =0x00006AE4
	adds r5, r7, r5
	ldr r0, _08001DF0 @ =0x00001008
	add r0, sp
	str r5, [r0]
	ldr r1, _08001DF4 @ =0x00006B04
	adds r1, r7, r1
	ldr r2, _08001DF8 @ =0x0000100C
	add r2, sp
	str r1, [r2]
	ldr r3, _08001DFC @ =0x00006B24
	adds r3, r7, r3
	ldr r5, _08001E00 @ =0x00001010
	add r5, sp
	str r3, [r5]
	ldr r0, _08001E04 @ =0x00006B44
	adds r0, r7, r0
	ldr r1, _08001E08 @ =0x00001014
	add r1, sp
	str r0, [r1]
	ldr r2, _08001E0C @ =0x00006B84
	adds r2, r7, r2
	ldr r3, _08001E10 @ =0x00001018
	add r3, sp
	str r2, [r3]
	ldr r5, _08001E14 @ =0x00006BE4
	adds r5, r7, r5
	ldr r0, _08001E18 @ =0x00001024
	add r0, sp
	str r5, [r0]
_08001AC0:
	ldr r1, _08001E1C @ =0x080E8684
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r1, sp
	bl sub_80D102C
	lsls r0, r4, #0xc
	movs r3, #0
	adds r4, #1
	mov r8, r4
	ldr r1, _08001E20 @ =0x00006C04
	adds r1, r7, r1
	ldr r2, _08001E24 @ =0x00001028
	add r2, sp
	str r1, [r2]
	ldr r4, _08001E28 @ =0x00006C24
	adds r4, r7, r4
	ldr r5, _08001E2C @ =0x0000102C
	add r5, sp
	str r4, [r5]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r1, r1, r0
	mov ip, r1
_08001AF2:
	lsls r2, r3, #6
	lsls r1, r3, #7
	adds r6, r3, #1
	add r0, sp, #0x40
	adds r4, r1, r0
	mov r5, sp
	adds r3, r1, r5
	add r2, ip
	movs r5, #0x1f
_08001B04:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r2, r0
	ldrh r0, [r3]
	strh r0, [r1]
	ldr r0, _08001E30 @ =0x06000800
	adds r1, r2, r0
	ldrh r0, [r4]
	strh r0, [r1]
	adds r4, #2
	adds r3, #2
	adds r2, #2
	subs r5, #1
	cmp r5, #0
	bge _08001B04
	adds r3, r6, #0
	cmp r3, #0x1f
	ble _08001AF2
	mov r4, r8
	cmp r4, #3
	ble _08001AC0
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	movs r3, #0xfa
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r4, #0
	strh r2, [r0]
	adds r0, r7, #0
	bl sub_8008918
	mov r2, sp
	ldr r5, _08001E34 @ =0x00005843
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #8]
	adds r0, r7, #0
	bl sub_8008918
	mov r2, sp
	ldr r3, _08001E38 @ =0x00005A42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r7, #0
	bl sub_8008918
	mov r2, sp
	ldr r5, _08001E3C @ =0x00005C41
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	bl sub_8008918
	mov r2, sp
	ldr r3, _08001E40 @ =0x00005E40
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x10]
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x12]
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x14]
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x16]
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x18]
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	adds r0, r7, #0
	bl sub_8008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	mov r0, sp
	str r4, [sp]
	strh r4, [r0, #4]
	str r4, [sp, #8]
	mov r5, sb
	strh r4, [r5, #4]
	str r4, [sp, #0x10]
	mov r0, sl
	strh r4, [r0, #4]
	str r4, [sp, #0x18]
	ldr r1, _08001DCC @ =0x00001030
	add r1, sp
	ldr r1, [r1]
	strh r4, [r1, #4]
	ldr r2, _08001E44 @ =0x00006BA0
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, _08001DD8 @ =0x0000101C
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	ldr r5, _08001DD0 @ =0x00001034
	add r5, sp
	ldr r6, [r5]
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	ldr r0, [sp, #0x10]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08001E48 @ =0x05000320
	movs r2, #0xe0
	bl sub_8008E64
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq _08001C5A
	mov r3, sb
	ldrh r2, [r3, #4]
_08001C5A:
	ldr r1, _08001E4C @ =0x06010000
	bl sub_8008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq _08001C6C
	mov r4, sb
	ldrh r1, [r4, #4]
_08001C6C:
	lsrs r0, r1, #5
	ldr r5, _08001E50 @ =0x00006C60
	adds r4, r7, r5
	strh r0, [r4]
	ldr r1, _08001E54 @ =0x00006BB8
	adds r0, r7, r1
	movs r2, #0xf0
	lsls r2, r2, #0xf
	mov r8, r2
	str r2, [r0]
	ldr r3, _08001E58 @ =0x00006BBC
	adds r1, r7, r3
	ldr r0, _08001E5C @ =0xFFA00000
	str r0, [r1]
	subs r5, #0xa0
	adds r0, r7, r5
	ldr r1, [r0]
	ldr r2, [r1]
	mov ip, r2
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	movs r3, #0x81
	lsls r3, r3, #5
	add r3, sp
	ldr r3, [r3]
	ldr r0, [r3]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	mov r5, ip
	ldr r3, [r5, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r3, [sp, #8]
	movs r5, #0
	ldrsh r0, [r4, r5]
	lsls r0, r0, #5
	ldr r2, _08001E4C @ =0x06010000
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq _08001CDE
	mov r4, sb
	ldrh r2, [r4, #4]
_08001CDE:
	adds r0, r3, #0
	bl sub_8008E64
	ldr r5, _08001E60 @ =0x00006BD8
	adds r0, r7, r5
	mov r1, r8
	str r1, [r0]
	ldr r2, _08001E64 @ =0x00006BDC
	adds r1, r7, r2
	movs r0, #0xb0
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r3, _08001E68 @ =0x00006AA0
	adds r4, r7, r3
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	movs r4, #0x80
	lsls r4, r4, #5
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	movs r5, #0xd9
	lsls r5, r5, #7
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl sub_80074C0
	lsls r0, r0, #5
	ldr r2, _08001E6C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _08001D5C
	mov r3, sl
	ldrh r2, [r3, #4]
_08001D5C:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, _08001E70 @ =0x00006AB8
	adds r0, r7, r4
	movs r5, #0x84
	lsls r5, r5, #0x11
	str r5, [r0]
	ldr r1, _08001E74 @ =0x00006ABC
	adds r0, r7, r1
	movs r2, #0x94
	lsls r2, r2, #0x10
	mov r8, r2
	str r2, [r0]
	ldr r3, _08001E78 @ =0x00006AC0
	adds r4, r7, r3
	ldr r1, _08001E7C @ =0x00000342
	adds r0, r4, #0
	bl sub_805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, _08001DE8 @ =0x00001004
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	b _08001E80
	.align 2, 0
_08001DAC: .4byte 0xFFFFEFC8
_08001DB0: .4byte 0x06007FE0
_08001DB4: .4byte 0x0600C000
_08001DB8: .4byte 0x0600D000
_08001DBC: .4byte 0x0600E000
_08001DC0: .4byte 0x0600F000
_08001DC4: .4byte 0x0874A9C0
_08001DC8: .4byte 0x0874E330
_08001DCC: .4byte 0x00001030
_08001DD0: .4byte 0x00001034
_08001DD4: .4byte 0x00006BA4
_08001DD8: .4byte 0x0000101C
_08001DDC: .4byte 0x00006BC4
_08001DE0: .4byte 0x00006AA4
_08001DE4: .4byte 0x00006AC4
_08001DE8: .4byte 0x00001004
_08001DEC: .4byte 0x00006AE4
_08001DF0: .4byte 0x00001008
_08001DF4: .4byte 0x00006B04
_08001DF8: .4byte 0x0000100C
_08001DFC: .4byte 0x00006B24
_08001E00: .4byte 0x00001010
_08001E04: .4byte 0x00006B44
_08001E08: .4byte 0x00001014
_08001E0C: .4byte 0x00006B84
_08001E10: .4byte 0x00001018
_08001E14: .4byte 0x00006BE4
_08001E18: .4byte 0x00001024
_08001E1C: .4byte 0x080E8684
_08001E20: .4byte 0x00006C04
_08001E24: .4byte 0x00001028
_08001E28: .4byte 0x00006C24
_08001E2C: .4byte 0x0000102C
_08001E30: .4byte 0x06000800
_08001E34: .4byte 0x00005843
_08001E38: .4byte 0x00005A42
_08001E3C: .4byte 0x00005C41
_08001E40: .4byte 0x00005E40
_08001E44: .4byte 0x00006BA0
_08001E48: .4byte 0x05000320
_08001E4C: .4byte 0x06010000
_08001E50: .4byte 0x00006C60
_08001E54: .4byte 0x00006BB8
_08001E58: .4byte 0x00006BBC
_08001E5C: .4byte 0xFFA00000
_08001E60: .4byte 0x00006BD8
_08001E64: .4byte 0x00006BDC
_08001E68: .4byte 0x00006AA0
_08001E6C: .4byte 0x05000200
_08001E70: .4byte 0x00006AB8
_08001E74: .4byte 0x00006ABC
_08001E78: .4byte 0x00006AC0
_08001E7C: .4byte 0x00000342
_08001E80:
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	ldr r1, _08002258 @ =0x00006CB8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_80074C0
	lsls r0, r0, #5
	ldr r2, _0800225C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _08001EAE
	mov r3, sl
	ldrh r2, [r3, #4]
_08001EAE:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, _08002260 @ =0x00006AD8
	adds r0, r7, r4
	str r5, [r0]
	ldr r5, _08002264 @ =0x00006ADC
	adds r0, r7, r5
	mov r1, r8
	str r1, [r0]
	ldr r2, _08002268 @ =0x00006AE0
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, _0800226C @ =0x00001008
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	ldr r5, _08002270 @ =0x00006C90
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl sub_80074C0
	lsls r0, r0, #5
	ldr r2, _0800225C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _08001F1A
	mov r3, sl
	ldrh r2, [r3, #4]
_08001F1A:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, _08002274 @ =0x00006AF8
	adds r0, r7, r4
	movs r5, #0xa0
	lsls r5, r5, #0xe
	str r5, [r0]
	ldr r0, _08002278 @ =0x00006AFC
	adds r1, r7, r0
	movs r0, #0xa8
	lsls r0, r0, #0xf
	str r0, [r1]
	movs r1, #0xd6
	lsls r1, r1, #7
	adds r4, r7, r1
	ldr r1, _0800227C @ =0x000002B2
	adds r0, r4, #0
	bl sub_805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, _08002280 @ =0x0000100C
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	ldr r5, _08002284 @ =0x00006CA0
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl sub_80074C0
	lsls r0, r0, #5
	ldr r2, _0800225C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _08001F96
	mov r3, sl
	ldrh r2, [r3, #4]
_08001F96:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, _08002288 @ =0x00006B18
	adds r1, r7, r4
	movs r0, #0x88
	lsls r0, r0, #0x11
	str r0, [r1]
	ldr r5, _0800228C @ =0x00006B1C
	adds r0, r7, r5
	mov r1, r8
	str r1, [r0]
	ldr r2, _08002290 @ =0x00006B20
	adds r4, r7, r2
	ldr r1, _08002294 @ =0x00000924
	adds r0, r4, #0
	bl sub_805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, _08002298 @ =0x00001010
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r5, _0800229C @ =0x00006B38
	adds r1, r7, r5
	ldr r0, _080022A0 @ =0xFFF00000
	str r0, [r1]
	ldr r1, _080022A4 @ =0x00006B3C
	adds r0, r7, r1
	mov r2, r8
	str r2, [r0]
	ldr r3, _080022A8 @ =0x00006B40
	adds r4, r7, r3
	movs r5, #0xe6
	lsls r5, r5, #3
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805E860
	ldr r1, _080022AC @ =0x00006B60
	adds r0, r7, r1
	adds r1, r5, #0
	bl sub_805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, _080022B0 @ =0x00001014
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	ldr r5, _080022B4 @ =0x00006CC8
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl sub_80074C0
	lsls r0, r0, #5
	ldr r2, _0800225C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _0800206E
	mov r3, sl
	ldrh r2, [r3, #4]
_0800206E:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, _080022B8 @ =0x00006B58
	adds r0, r7, r4
	movs r5, #0xa0
	lsls r5, r5, #0xe
	str r5, [r0]
	ldr r1, _080022BC @ =0x00006B5C
	adds r0, r7, r1
	movs r2, #0x80
	lsls r2, r2, #0xe
	str r2, [r0]
	ldr r3, _080022C0 @ =0x00006B78
	adds r1, r7, r3
	movs r0, #0xc8
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r4, #0x24
	adds r0, r7, r4
	str r2, [r0]
	movs r5, #0xd7
	lsls r5, r5, #7
	adds r4, r7, r5
	ldr r1, _080022C4 @ =0x0000091A
	adds r0, r4, #0
	bl sub_805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r0, _080022C8 @ =0x00001018
	add r0, sp
	ldr r0, [r0]
	mov r8, r0
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r5, [sp, #0x10]
	ldr r1, _080022CC @ =0x00006CE8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_80074C0
	lsls r0, r0, #5
	ldr r2, _0800225C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _080020FC
	mov r3, sl
	ldrh r2, [r3, #4]
_080020FC:
	adds r0, r5, #0
	bl sub_8008E64
	ldr r5, [sp, #8]
	ldr r1, _080022D0 @ =0x00006CD0
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_8007D4C
	lsls r0, r0, #5
	ldr r2, _080022D4 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq _08002120
	mov r3, sb
	ldrh r2, [r3, #4]
_08002120:
	adds r0, r5, #0
	bl sub_8008E64
	ldr r1, _080022D8 @ =0x0000091B
	adds r0, r4, #0
	bl sub_805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	mov r5, r8
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r5, [sp, #8]
	ldr r1, _080022DC @ =0x00006CD8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_8007D4C
	lsls r0, r0, #5
	ldr r2, _080022D4 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq _0800217E
	mov r3, sb
	ldrh r2, [r3, #4]
_0800217E:
	adds r0, r5, #0
	bl sub_8008E64
	ldr r1, _080022E0 @ =0x0000091C
	adds r0, r4, #0
	bl sub_805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, _080022C8 @ =0x00001018
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #8]
	ldr r5, _080022E4 @ =0x00006CE0
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl sub_8007D4C
	lsls r0, r0, #5
	ldr r2, _080022D4 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq _080021E0
	mov r3, sb
	ldrh r2, [r3, #4]
_080021E0:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r5, _080022E8 @ =0x00006BE0
	adds r4, r7, r5
	adds r0, r4, #0
	movs r1, #1
	bl sub_805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, _080022EC @ =0x00001024
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	movs r5, #0xda
	lsls r5, r5, #7
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl sub_80074C0
	lsls r0, r0, #5
	ldr r2, _0800225C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _08002248
	mov r3, sl
	ldrh r2, [r3, #4]
_08002248:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, [sp, #8]
	ldr r5, _080022F0 @ =0x00006CF0
	adds r0, r7, r5
	ldr r1, [r0, #4]
	b _080022F4
	.align 2, 0
_08002258: .4byte 0x00006CB8
_0800225C: .4byte 0x05000200
_08002260: .4byte 0x00006AD8
_08002264: .4byte 0x00006ADC
_08002268: .4byte 0x00006AE0
_0800226C: .4byte 0x00001008
_08002270: .4byte 0x00006C90
_08002274: .4byte 0x00006AF8
_08002278: .4byte 0x00006AFC
_0800227C: .4byte 0x000002B2
_08002280: .4byte 0x0000100C
_08002284: .4byte 0x00006CA0
_08002288: .4byte 0x00006B18
_0800228C: .4byte 0x00006B1C
_08002290: .4byte 0x00006B20
_08002294: .4byte 0x00000924
_08002298: .4byte 0x00001010
_0800229C: .4byte 0x00006B38
_080022A0: .4byte 0xFFF00000
_080022A4: .4byte 0x00006B3C
_080022A8: .4byte 0x00006B40
_080022AC: .4byte 0x00006B60
_080022B0: .4byte 0x00001014
_080022B4: .4byte 0x00006CC8
_080022B8: .4byte 0x00006B58
_080022BC: .4byte 0x00006B5C
_080022C0: .4byte 0x00006B78
_080022C4: .4byte 0x0000091A
_080022C8: .4byte 0x00001018
_080022CC: .4byte 0x00006CE8
_080022D0: .4byte 0x00006CD0
_080022D4: .4byte 0x06010000
_080022D8: .4byte 0x0000091B
_080022DC: .4byte 0x00006CD8
_080022E0: .4byte 0x0000091C
_080022E4: .4byte 0x00006CE0
_080022E8: .4byte 0x00006BE0
_080022EC: .4byte 0x00001024
_080022F0: .4byte 0x00006CF0
_080022F4:
	bl sub_8007D4C
	lsls r0, r0, #5
	ldr r2, _0800249C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq _0800230A
	mov r3, sb
	ldrh r2, [r3, #4]
_0800230A:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, _080024A0 @ =0x00006BFC
	adds r0, r7, r4
	movs r5, #0xe0
	lsls r5, r5, #0xf
	str r5, [r0]
	movs r0, #0xd8
	lsls r0, r0, #7
	adds r4, r7, r0
	adds r0, r4, #0
	movs r1, #4
	bl sub_805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, _080024A4 @ =0x00001028
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #8]
	ldr r1, _080024A8 @ =0x00006CF8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_8007D4C
	lsls r0, r0, #5
	ldr r2, _0800249C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq _0800237C
	mov r3, sb
	ldrh r2, [r3, #4]
_0800237C:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, _080024AC @ =0x00006C1C
	adds r0, r7, r4
	str r5, [r0]
	ldr r5, _080024B0 @ =0x00006C20
	adds r0, r7, r5
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, _080024B4 @ =0x0000102C
	add r4, sp
	ldr r4, [r4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	ldr r5, _080024B8 @ =0x00006D10
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl sub_80074C0
	lsls r0, r0, #5
	ldr r2, _080024BC @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _080023E0
	mov r3, sl
	ldrh r2, [r3, #4]
_080023E0:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, [sp, #8]
	ldr r5, _080024C0 @ =0x00006D08
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl sub_8007D4C
	lsls r0, r0, #5
	ldr r2, _0800249C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq _08002404
	mov r3, sb
	ldrh r2, [r3, #4]
_08002404:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, _080024C4 @ =0x00006C38
	adds r0, r7, r4
	movs r5, #0xf0
	lsls r5, r5, #0xf
	str r5, [r0]
	ldr r0, _080024C8 @ =0x00006C3C
	adds r1, r7, r0
	movs r0, #0x90
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r2, _080024CC @ =0x00006A40
	adds r1, r7, r2
	adds r0, r6, #0
	movs r2, #0
	bl sub_805E790
	mov r1, sp
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	ldr r1, _080024D0 @ =0x00006D20
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_80074C0
	lsls r0, r0, #5
	ldr r2, _080024BC @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq _08002458
	mov r3, sl
	ldrh r2, [r3, #4]
_08002458:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, [sp, #8]
	ldr r1, _080024D4 @ =0x00006D18
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_8007D4C
	lsls r0, r0, #5
	ldr r2, _0800249C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq _0800247C
	mov r3, sb
	ldrh r2, [r3, #4]
_0800247C:
	adds r0, r4, #0
	bl sub_8008E64
	ldr r4, _080024D8 @ =0x00006C5C
	adds r0, r7, r4
	str r5, [r0]
	ldr r3, _080024DC @ =0x00001038
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800249C: .4byte 0x06010000
_080024A0: .4byte 0x00006BFC
_080024A4: .4byte 0x00001028
_080024A8: .4byte 0x00006CF8
_080024AC: .4byte 0x00006C1C
_080024B0: .4byte 0x00006C20
_080024B4: .4byte 0x0000102C
_080024B8: .4byte 0x00006D10
_080024BC: .4byte 0x05000200
_080024C0: .4byte 0x00006D08
_080024C4: .4byte 0x00006C38
_080024C8: .4byte 0x00006C3C
_080024CC: .4byte 0x00006A40
_080024D0: .4byte 0x00006D20
_080024D4: .4byte 0x00006D18
_080024D8: .4byte 0x00006C5C
_080024DC: .4byte 0x00001038

	thumb_func_start sub_80024E0
sub_80024E0: @ 0x080024E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	adds r7, r0, #0
	mov r0, sp
	movs r1, #0
	movs r2, #0
	mov r8, r2
	mov r3, r8
	strh r3, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	mov r4, r8
	str r4, [sp, #0xc]
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r4, [sp, #0x14]
	strb r1, [r0, #0x18]
	add r6, sp, #0x1c
	str r4, [sp, #0x1c]
	strh r4, [r6, #4]
	add r5, sp, #0x24
	str r4, [sp, #0x24]
	mov r0, r8
	strh r0, [r5, #4]
	add r0, sp, #0x2c
	mov r1, r8
	str r1, [sp, #0x2c]
	strh r1, [r0, #4]
	add r0, sp, #0x34
	str r1, [sp, #0x34]
	mov r2, r8
	strh r2, [r0, #4]
	ldr r3, _080028E0 @ =0x00006AB4
	adds r4, r7, r3
	ldr r1, _080028E4 @ =0x00006AA0
	adds r0, r7, r1
	bl sub_805E8F0
	str r0, [r4]
	ldr r2, _080028E8 @ =0x00006AD4
	adds r4, r7, r2
	ldr r3, _080028EC @ =0x00006AC0
	adds r0, r7, r3
	bl sub_805E8F0
	str r0, [r4]
	ldr r0, _080028F0 @ =0x00006AF4
	adds r4, r7, r0
	ldr r1, _080028F4 @ =0x00006AE0
	adds r0, r7, r1
	bl sub_805E8F0
	str r0, [r4]
	ldr r2, _080028F8 @ =0x00006B14
	adds r4, r7, r2
	movs r3, #0xd6
	lsls r3, r3, #7
	adds r0, r7, r3
	bl sub_805E8F0
	str r0, [r4]
	ldr r0, _080028FC @ =0x00006B34
	adds r4, r7, r0
	ldr r1, _08002900 @ =0x00006B20
	adds r0, r7, r1
	bl sub_805E8F0
	str r0, [r4]
	ldr r2, _08002904 @ =0x00006B54
	adds r4, r7, r2
	ldr r3, _08002908 @ =0x00006B40
	adds r0, r7, r3
	bl sub_805E8F0
	str r0, [r4]
	ldr r4, _0800290C @ =0x00006C6D
	adds r4, r4, r7
	mov sl, r4
	movs r0, #0
	ldrsb r0, [r4, r0]
	add r5, sp, #0x3c
	mov sb, r5
	cmp r0, #0
	bne _08002596
	b _080027C4
_08002596:
	ldr r6, _08002910 @ =0x00006C20
	adds r4, r7, r6
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r5, _08002914 @ =0x00006C24
	adds r0, r7, r5
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	movs r6, #0x1a
	ldrsh r1, [r4, r6]
	mov r0, sp
	strh r1, [r0]
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	mov r0, sp
	strh r1, [r0, #2]
	mov r1, r8
	strh r1, [r0, #8]
	ldr r2, _08002918 @ =0x00006D08
	adds r0, r7, r2
	ldr r1, [r0, #4]
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
	ldr r3, _0800291C @ =0x00006D10
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r7, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq _08002618
	mov r4, sp
	ldrh r2, [r4, #0x20]
_08002618:
	adds r0, r3, #0
	mov r3, sp
	bl sub_805E99C
	ldr r5, _08002920 @ =0x00006BF4
	adds r4, r7, r5
	ldr r6, _08002924 @ =0x00006BE0
	adds r5, r7, r6
	adds r0, r5, #0
	bl sub_805E8F0
	str r0, [r4]
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	ldr r4, _08002928 @ =0x00006BE4
	adds r0, r7, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	movs r6, #0x1a
	ldrsh r1, [r5, r6]
	mov r0, sp
	strh r1, [r0]
	movs r0, #0x1e
	ldrsh r1, [r5, r0]
	mov r0, sp
	strh r1, [r0, #2]
	ldr r1, _0800292C @ =0x00006CF0
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r2, #0xda
	lsls r2, r2, #7
	adds r6, r7, r2
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	adds r0, r7, #0
	bl sub_8008920
	ldr r1, [sp, #0x1c]
	movs r2, #0
	cmp r1, #0
	beq _080026A6
	mov r3, sp
	ldrh r2, [r3, #0x20]
_080026A6:
	mov r3, sp
	bl sub_805E99C
	mov r4, sl
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _0800273E
	ldr r5, _08002930 @ =0x00006C14
	adds r4, r7, r5
	movs r0, #0xd8
	lsls r0, r0, #7
	adds r5, r7, r0
	adds r0, r5, #0
	bl sub_805E8F0
	str r0, [r4]
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	ldr r4, _08002934 @ =0x00006C04
	adds r0, r7, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r4, #0x1a
	ldrsh r1, [r5, r4]
	mov r0, sp
	strh r1, [r0]
	movs r0, #0x1e
	ldrsh r1, [r5, r0]
	mov r0, sp
	strh r1, [r0, #2]
	ldr r1, _08002938 @ =0x00006CF8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	adds r0, r7, #0
	bl sub_8008920
	ldr r1, [sp, #0x1c]
	movs r2, #0
	cmp r1, #0
	beq _08002738
	mov r3, sp
	ldrh r2, [r3, #0x20]
_08002738:
	mov r3, sp
	bl sub_805E99C
_0800273E:
	ldr r5, _0800293C @ =0x00006C40
	adds r4, r7, r5
	adds r0, r4, #0
	bl sub_805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r6, _08002940 @ =0x00006C44
	adds r0, r7, r6
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	movs r0, #0x1a
	ldrsh r1, [r4, r0]
	mov r0, sp
	strh r1, [r0]
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	strh r1, [r0, #2]
	ldr r3, _08002944 @ =0x00006D18
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
	ldr r4, _08002948 @ =0x00006D20
	adds r0, r7, r4
	ldr r1, [r0, #4]
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	adds r0, r7, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq _080027BC
	mov r5, sp
	ldrh r2, [r5, #0x20]
_080027BC:
	adds r0, r3, #0
	mov r3, sp
	bl sub_805E99C
_080027C4:
	ldr r6, _0800294C @ =0x00006BA0
	adds r4, r7, r6
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r5, _08002950 @ =0x00006BA4
	adds r0, r7, r5
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	movs r6, #0x1a
	ldrsh r1, [r4, r6]
	mov r0, sp
	movs r6, #0
	strh r1, [r0]
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	mov r0, sp
	strh r1, [r0, #2]
	strh r6, [r0, #8]
	strh r6, [r0, #6]
	strh r6, [r0, #4]
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r7, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq _08002830
	mov r4, sp
	ldrh r2, [r4, #0x20]
_08002830:
	adds r0, r3, #0
	mov r3, sp
	bl sub_805E99C
	ldr r5, _08002954 @ =0x00006D32
	adds r0, r7, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #9
	bgt _08002846
	b _08002976
_08002846:
	adds r0, r7, #0
	bl sub_8008920
	ldr r2, _08002958 @ =0x00006C64
	adds r5, r7, r2
	adds r0, #4
	ldrh r1, [r5]
	strh r1, [r0, #6]
	ldrh r1, [r5, #2]
	strh r1, [r0, #0xe]
	ldrh r1, [r5, #4]
	strh r1, [r0, #0x16]
	ldrh r1, [r5, #6]
	strh r1, [r0, #0x1e]
	ldr r3, _0800295C @ =0x00006BC0
	adds r3, r3, r7
	mov r8, r3
	ldr r1, [r3]
	ldr r4, [r1]
	ldrh r2, [r3, #0xc]
	ldr r3, _08002960 @ =0x00006BC4
	adds r0, r7, r3
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r4, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r4}
	stm r1!, {r2, r4}
	mov r3, r8
	movs r4, #0x1a
	ldrsh r1, [r3, r4]
	mov r0, sp
	strh r1, [r0]
	movs r0, #0x1e
	ldrsh r1, [r3, r0]
	mov r0, sp
	strh r1, [r0, #2]
	strh r6, [r0, #8]
	mov r1, sp
	ldr r2, _08002964 @ =0x00006C60
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r1, #6]
	mov r0, sp
	strh r6, [r0, #4]
	movs r0, #0
	strb r0, [r1, #0x11]
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0800296C
	ldr r4, _08002968 @ =0x00006C6A
	adds r0, r7, r4
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r0, r1
	bne _0800296C
	str r6, [sp, #0x14]
	b _08002970
	.align 2, 0
_080028E0: .4byte 0x00006AB4
_080028E4: .4byte 0x00006AA0
_080028E8: .4byte 0x00006AD4
_080028EC: .4byte 0x00006AC0
_080028F0: .4byte 0x00006AF4
_080028F4: .4byte 0x00006AE0
_080028F8: .4byte 0x00006B14
_080028FC: .4byte 0x00006B34
_08002900: .4byte 0x00006B20
_08002904: .4byte 0x00006B54
_08002908: .4byte 0x00006B40
_0800290C: .4byte 0x00006C6D
_08002910: .4byte 0x00006C20
_08002914: .4byte 0x00006C24
_08002918: .4byte 0x00006D08
_0800291C: .4byte 0x00006D10
_08002920: .4byte 0x00006BF4
_08002924: .4byte 0x00006BE0
_08002928: .4byte 0x00006BE4
_0800292C: .4byte 0x00006CF0
_08002930: .4byte 0x00006C14
_08002934: .4byte 0x00006C04
_08002938: .4byte 0x00006CF8
_0800293C: .4byte 0x00006C40
_08002940: .4byte 0x00006C44
_08002944: .4byte 0x00006D18
_08002948: .4byte 0x00006D20
_0800294C: .4byte 0x00006BA0
_08002950: .4byte 0x00006BA4
_08002954: .4byte 0x00006D32
_08002958: .4byte 0x00006C64
_0800295C: .4byte 0x00006BC0
_08002960: .4byte 0x00006BC4
_08002964: .4byte 0x00006C60
_08002968: .4byte 0x00006C6A
_0800296C:
	movs r0, #1
	str r0, [sp, #0x14]
_08002970:
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #0x18]
_08002976:
	ldr r6, _08002A68 @ =0x00006AA0
	adds r4, r7, r6
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r5, _08002A6C @ =0x00006AA4
	adds r0, r7, r5
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	movs r6, #0x1a
	ldrsh r1, [r4, r6]
	mov r0, sp
	movs r5, #0
	strh r1, [r0]
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	mov r0, sp
	strh r1, [r0, #2]
	strh r5, [r0, #8]
	ldr r1, _08002A70 @ =0x00006C78
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r2, #0xd9
	lsls r2, r2, #7
	adds r0, r7, r2
	ldr r1, [r0, #4]
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	str r5, [sp, #0x14]
	mov r0, sp
	movs r3, #1
	mov sl, r3
	mov r5, sl
	strb r5, [r0, #0x18]
	ldr r6, _08002A74 @ =0x00006AB4
	adds r0, r7, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	ldr r1, _08002A78 @ =0x00006AC4
	adds r1, r7, r1
	str r1, [sp, #0x8c]
	ldr r2, _08002A7C @ =0x00006AE4
	adds r2, r7, r2
	str r2, [sp, #0x90]
	ldr r3, _08002A80 @ =0x00006B04
	adds r3, r7, r3
	str r3, [sp, #0x94]
	ldr r5, _08002A84 @ =0x00006B24
	adds r5, r7, r5
	str r5, [sp, #0x98]
	cmp r0, #0
	blt _08002A14
	b _08002B84
_08002A14:
	adds r0, r7, #0
	bl sub_8008910
	adds r5, r0, #0
	ldr r6, [sp, #0x24]
	mov r8, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq _08002A36
	mov r0, sp
	ldrh r3, [r0, #0x28]
_08002A36:
	str r5, [sp, #0x9c]
	lsls r2, r2, #5
	ldr r1, _08002A88 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl sub_8008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _08002A8C
	cmp r1, #0
	beq _08002A5E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_08002A5E:
	ldr r5, [sp, #0x9c]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b _08002B84
	.align 2, 0
_08002A68: .4byte 0x00006AA0
_08002A6C: .4byte 0x00006AA4
_08002A70: .4byte 0x00006C78
_08002A74: .4byte 0x00006AB4
_08002A78: .4byte 0x00006AC4
_08002A7C: .4byte 0x00006AE4
_08002A80: .4byte 0x00006B04
_08002A84: .4byte 0x00006B24
_08002A88: .4byte 0x06010000
_08002A8C:
	mov r8, r1
	mov r6, sl
	str r6, [sp, #0x60]
	ldr r1, [sp, #0x9c]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs _08002AA8
	adds r0, r1, #0
_08002AA8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _08002AC6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov sl, r4
	cmp r0, #0
	bne _08002ACA
	mov r0, sl
	bl sub_80D3BC0
	b _08002ACA
_08002AC6:
	movs r0, #0
	mov sl, r0
_08002ACA:
	adds r5, r0, #0
	str r5, [sp, #0xa0]
	ldr r3, [sp, #0x9c]
	ldr r2, [r3]
	adds r3, r5, #0
	ldr r4, _08002B24 @ =0x00006AC4
	adds r4, r7, r4
	str r4, [sp, #0x8c]
	ldr r5, _08002B28 @ =0x00006AE4
	adds r5, r7, r5
	str r5, [sp, #0x90]
	ldr r6, _08002B2C @ =0x00006B04
	adds r6, r7, r6
	str r6, [sp, #0x94]
	ldr r0, _08002B30 @ =0x00006B24
	adds r0, r7, r0
	str r0, [sp, #0x98]
	cmp r2, r8
	beq _08002B08
_08002AF0:
	cmp r3, #0
	beq _08002B00
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08002B00:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne _08002AF0
_08002B08:
	adds r5, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne _08002B34
	cmp r5, #0
	beq _08002B20
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_08002B20:
	adds r5, #0x10
	b _08002B5C
	.align 2, 0
_08002B24: .4byte 0x00006AC4
_08002B28: .4byte 0x00006AE4
_08002B2C: .4byte 0x00006B04
_08002B30: .4byte 0x00006B24
_08002B34:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq _08002B5A
_08002B3C:
	cmp r2, #0
	beq _08002B4C
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08002B4C:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne _08002B3C
_08002B5A:
	adds r5, r2, #0
_08002B5C:
	ldr r6, [sp, #0x9c]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq _08002B6E
_08002B68:
	adds r1, #0x10
	cmp r1, r2
	bne _08002B68
_08002B6E:
	cmp r0, #0
	beq _08002B76
	bl sub_80D0260
_08002B76:
	ldr r0, [sp, #0xa0]
	add r0, sl
	ldr r1, [sp, #0xa0]
	ldr r2, [sp, #0x9c]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
_08002B84:
	adds r0, r7, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq _08002B9A
	mov r4, sp
	ldrh r2, [r4, #0x20]
_08002B9A:
	adds r0, r3, #0
	mov r3, sp
	bl sub_805E99C
	mov r0, sp
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r6, #2
	ldrsh r2, [r0, r6]
	adds r0, r7, #0
	movs r3, #1
	bl sub_80035C0
	ldr r0, _08002C88 @ =0x00006AC0
	adds r4, r7, r0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x8c]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	movs r6, #0x1a
	ldrsh r1, [r4, r6]
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	mov r0, sp
	strh r1, [r0, #2]
	strh r2, [r0, #8]
	ldr r1, _08002C8C @ =0x00006CB0
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
	ldr r2, _08002C90 @ =0x00006CB8
	adds r0, r7, r2
	ldr r1, [r0, #4]
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r3, #1
	mov sl, r3
	mov r5, sl
	strb r5, [r0, #0x18]
	ldr r6, _08002C94 @ =0x00006AD4
	adds r0, r7, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08002C34
	b _08002D6A
_08002C34:
	adds r0, r7, #0
	bl sub_8008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq _08002C56
	mov r1, sp
	ldrh r3, [r1, #0x28]
_08002C56:
	str r5, [sp, #0x9c]
	lsls r2, r2, #5
	ldr r4, _08002C98 @ =0x06010000
	adds r2, r2, r4
	mov r0, sb
	mov r1, r8
	bl sub_8008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _08002C9C
	cmp r1, #0
	beq _08002C7E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08002C7E:
	ldr r3, [sp, #0x9c]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b _08002D6A
	.align 2, 0
_08002C88: .4byte 0x00006AC0
_08002C8C: .4byte 0x00006CB0
_08002C90: .4byte 0x00006CB8
_08002C94: .4byte 0x00006AD4
_08002C98: .4byte 0x06010000
_08002C9C:
	mov r8, r1
	mov r4, sl
	str r4, [sp, #0x68]
	ldr r5, [sp, #0x9c]
	ldr r0, [r5]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs _08002CB6
	adds r0, r1, #0
_08002CB6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _08002CD4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov sl, r4
	cmp r0, #0
	bne _08002CD8
	mov r0, sl
	bl sub_80D3BC0
	b _08002CD8
_08002CD4:
	movs r0, #0
	mov sl, r0
_08002CD8:
	adds r5, r0, #0
	str r5, [sp, #0xa0]
	ldr r6, [sp, #0x9c]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, r8
	beq _08002CFE
_08002CE6:
	cmp r3, #0
	beq _08002CF6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08002CF6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne _08002CE6
_08002CFE:
	adds r5, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne _08002D1A
	cmp r5, #0
	beq _08002D16
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_08002D16:
	adds r5, #0x10
	b _08002D42
_08002D1A:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq _08002D40
_08002D22:
	cmp r2, #0
	beq _08002D32
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08002D32:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne _08002D22
_08002D40:
	adds r5, r2, #0
_08002D42:
	ldr r6, [sp, #0x9c]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq _08002D54
_08002D4E:
	adds r1, #0x10
	cmp r1, r2
	bne _08002D4E
_08002D54:
	cmp r0, #0
	beq _08002D5C
	bl sub_80D0260
_08002D5C:
	ldr r0, [sp, #0xa0]
	add r0, sl
	ldr r1, [sp, #0xa0]
	ldr r2, [sp, #0x9c]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
_08002D6A:
	adds r0, r7, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq _08002D80
	mov r4, sp
	ldrh r2, [r4, #0x20]
_08002D80:
	adds r0, r3, #0
	mov r3, sp
	bl sub_805E99C
	mov r0, sp
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r6, #2
	ldrsh r2, [r0, r6]
	adds r0, r7, #0
	movs r3, #0
	bl sub_80035C0
	ldr r1, _08002E80 @ =0x00006C6C
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08002DAA
	b _08002FE2
_08002DAA:
	ldr r2, _08002E84 @ =0x00006B40
	adds r4, r7, r2
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r5, _08002E88 @ =0x00006B44
	adds r0, r7, r5
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	movs r6, #0x1a
	ldrsh r1, [r4, r6]
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	mov r0, sp
	strh r1, [r0, #2]
	strh r2, [r0, #8]
	ldr r1, _08002E8C @ =0x00006CC0
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
	ldr r2, _08002E90 @ =0x00006CC8
	adds r0, r7, r2
	ldr r1, [r0, #4]
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r3, #1
	mov sl, r3
	mov r5, sl
	strb r5, [r0, #0x18]
	ldr r6, _08002E94 @ =0x00006B54
	adds r0, r7, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08002E2C
	b _08002F6A
_08002E2C:
	adds r0, r7, #0
	bl sub_8008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq _08002E4E
	mov r1, sp
	ldrh r3, [r1, #0x28]
_08002E4E:
	str r5, [sp, #0x9c]
	lsls r2, r2, #5
	ldr r4, _08002E98 @ =0x06010000
	adds r2, r2, r4
	mov r0, sb
	mov r1, r8
	bl sub_8008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _08002E9C
	cmp r1, #0
	beq _08002E76
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08002E76:
	ldr r3, [sp, #0x9c]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b _08002F6A
	.align 2, 0
_08002E80: .4byte 0x00006C6C
_08002E84: .4byte 0x00006B40
_08002E88: .4byte 0x00006B44
_08002E8C: .4byte 0x00006CC0
_08002E90: .4byte 0x00006CC8
_08002E94: .4byte 0x00006B54
_08002E98: .4byte 0x06010000
_08002E9C:
	mov r8, r1
	mov r4, sl
	str r4, [sp, #0x70]
	ldr r5, [sp, #0x9c]
	ldr r0, [r5]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x6c]
	add r1, sp, #0x70
	add r0, sp, #0x6c
	cmp r4, #1
	bhs _08002EB6
	adds r0, r1, #0
_08002EB6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _08002ED4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov sl, r4
	cmp r0, #0
	bne _08002ED8
	mov r0, sl
	bl sub_80D3BC0
	b _08002ED8
_08002ED4:
	movs r0, #0
	mov sl, r0
_08002ED8:
	adds r5, r0, #0
	str r5, [sp, #0xa0]
	ldr r6, [sp, #0x9c]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, r8
	beq _08002EFE
_08002EE6:
	cmp r3, #0
	beq _08002EF6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08002EF6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne _08002EE6
_08002EFE:
	adds r5, r3, #0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne _08002F1A
	cmp r5, #0
	beq _08002F16
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_08002F16:
	adds r5, #0x10
	b _08002F42
_08002F1A:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq _08002F40
_08002F22:
	cmp r2, #0
	beq _08002F32
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08002F32:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne _08002F22
_08002F40:
	adds r5, r2, #0
_08002F42:
	ldr r6, [sp, #0x9c]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq _08002F54
_08002F4E:
	adds r1, #0x10
	cmp r1, r2
	bne _08002F4E
_08002F54:
	cmp r0, #0
	beq _08002F5C
	bl sub_80D0260
_08002F5C:
	ldr r0, [sp, #0xa0]
	add r0, sl
	ldr r1, [sp, #0xa0]
	ldr r2, [sp, #0x9c]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
_08002F6A:
	adds r0, r7, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq _08002F80
	mov r4, sp
	ldrh r2, [r4, #0x20]
_08002F80:
	adds r0, r3, #0
	mov r3, sp
	bl sub_805E99C
	mov r0, sp
	ldrh r0, [r0, #2]
	cmp r0, #0x94
	bne _08002FA0
	mov r0, sp
	movs r5, #0
	ldrsh r1, [r0, r5]
	adds r0, r7, #0
	movs r2, #0x94
	movs r3, #0
	bl sub_80035C0
_08002FA0:
	ldr r6, _080030C0 @ =0x00006B60
	adds r2, r7, r6
	movs r0, #0x1a
	ldrsh r1, [r2, r0]
	mov r0, sp
	strh r1, [r0]
	movs r3, #0x1e
	ldrsh r1, [r2, r3]
	strh r1, [r0, #2]
	adds r0, r7, #0
	bl sub_8008920
	ldr r1, [sp, #0x1c]
	movs r2, #0
	cmp r1, #0
	beq _08002FC4
	mov r4, sp
	ldrh r2, [r4, #0x20]
_08002FC4:
	mov r3, sp
	bl sub_805E99C
	mov r0, sp
	ldrh r0, [r0, #2]
	cmp r0, #0x94
	bne _08002FE2
	mov r0, sp
	movs r5, #0
	ldrsh r1, [r0, r5]
	adds r0, r7, #0
	movs r2, #0x94
	movs r3, #0
	bl sub_80035C0
_08002FE2:
	ldr r6, _080030C4 @ =0x00006AE0
	adds r4, r7, r6
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x90]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	movs r6, #0x1a
	ldrsh r1, [r4, r6]
	mov r2, sp
	ldr r3, _080030C8 @ =0x00006D30
	adds r0, r7, r3
	ldrh r0, [r0]
	subs r1, r1, r0
	movs r3, #0
	strh r1, [r2]
	movs r5, #0x1e
	ldrsh r1, [r4, r5]
	mov r0, sp
	strh r1, [r0, #2]
	strh r3, [r0, #8]
	ldr r6, _080030CC @ =0x00006C88
	adds r4, r7, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
	ldr r1, _080030D0 @ =0x00006C90
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r2, #1
	mov sl, r2
	mov r3, sl
	strb r3, [r0, #0x18]
	ldr r5, _080030D4 @ =0x00006AF4
	adds r0, r7, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800306A
	b _080031AC
_0800306A:
	adds r0, r7, #0
	bl sub_8008910
	adds r5, r0, #0
	ldr r6, [sp, #0x24]
	mov r8, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq _0800308C
	mov r0, sp
	ldrh r3, [r0, #0x28]
_0800308C:
	str r5, [sp, #0x9c]
	lsls r2, r2, #5
	ldr r1, _080030D8 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl sub_8008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _080030DC
	cmp r1, #0
	beq _080030B4
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_080030B4:
	ldr r5, [sp, #0x9c]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b _080031AC
	.align 2, 0
_080030C0: .4byte 0x00006B60
_080030C4: .4byte 0x00006AE0
_080030C8: .4byte 0x00006D30
_080030CC: .4byte 0x00006C88
_080030D0: .4byte 0x00006C90
_080030D4: .4byte 0x00006AF4
_080030D8: .4byte 0x06010000
_080030DC:
	mov r8, r1
	mov r6, sl
	str r6, [sp, #0x78]
	ldr r1, [sp, #0x9c]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs _080030F8
	adds r0, r1, #0
_080030F8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _08003116
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov sl, r4
	cmp r0, #0
	bne _0800311A
	mov r0, sl
	bl sub_80D3BC0
	b _0800311A
_08003116:
	movs r0, #0
	mov sl, r0
_0800311A:
	adds r5, r0, #0
	str r5, [sp, #0xa0]
	ldr r3, [sp, #0x9c]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq _08003140
_08003128:
	cmp r3, #0
	beq _08003138
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08003138:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne _08003128
_08003140:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne _0800315C
	cmp r5, #0
	beq _08003158
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_08003158:
	adds r5, #0x10
	b _08003184
_0800315C:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq _08003182
_08003164:
	cmp r2, #0
	beq _08003174
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08003174:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne _08003164
_08003182:
	adds r5, r2, #0
_08003184:
	ldr r6, [sp, #0x9c]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq _08003196
_08003190:
	adds r1, #0x10
	cmp r1, r2
	bne _08003190
_08003196:
	cmp r0, #0
	beq _0800319E
	bl sub_80D0260
_0800319E:
	ldr r0, [sp, #0xa0]
	add r0, sl
	ldr r1, [sp, #0xa0]
	ldr r2, [sp, #0x9c]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
_080031AC:
	adds r0, r7, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq _080031C2
	mov r4, sp
	ldrh r2, [r4, #0x20]
_080031C2:
	adds r0, r3, #0
	mov r3, sp
	bl sub_805E99C
	mov r0, sp
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r6, #2
	ldrsh r2, [r0, r6]
	adds r0, r7, #0
	movs r3, #2
	bl sub_80035C0
	movs r0, #0xd6
	lsls r0, r0, #7
	adds r4, r7, r0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x94]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl sub_80D3994
	add r1, sp, #0x1c
	mov r0, sb
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	movs r6, #0x1a
	ldrsh r1, [r4, r6]
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	mov r0, sp
	strh r1, [r0, #2]
	strh r2, [r0, #8]
	ldr r1, _080032B4 @ =0x00006C98
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
	ldr r2, _080032B8 @ =0x00006CA0
	adds r0, r7, r2
	ldr r1, [r0, #4]
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r3, #1
	mov sl, r3
	mov r5, sl
	strb r5, [r0, #0x18]
	ldr r6, _080032BC @ =0x00006B14
	adds r0, r7, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0800325E
	b _08003396
_0800325E:
	adds r0, r7, #0
	bl sub_8008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq _08003280
	mov r1, sp
	ldrh r3, [r1, #0x28]
_08003280:
	str r5, [sp, #0x9c]
	lsls r2, r2, #5
	ldr r4, _080032C0 @ =0x06010000
	adds r2, r2, r4
	mov r0, sb
	mov r1, r8
	bl sub_8008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _080032C4
	cmp r1, #0
	beq _080032A8
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_080032A8:
	ldr r3, [sp, #0x9c]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b _08003396
	.align 2, 0
_080032B4: .4byte 0x00006C98
_080032B8: .4byte 0x00006CA0
_080032BC: .4byte 0x00006B14
_080032C0: .4byte 0x06010000
_080032C4:
	mov r8, r1
	add r0, sp, #0x80
	mov r4, sl
	str r4, [r0]
	ldr r5, [sp, #0x9c]
	ldr r1, [r5]
	mov r6, r8
	subs r1, r6, r1
	asrs r4, r1, #4
	str r4, [sp, #0x7c]
	ldr r1, [r0]
	add r2, sp, #0x7c
	cmp r4, r1
	bhs _080032E2
	adds r2, r0, #0
_080032E2:
	ldr r0, [r2]
	adds r0, r4, r0
	cmp r0, #0
	beq _08003300
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov sl, r4
	cmp r0, #0
	bne _08003304
	mov r0, sl
	bl sub_80D3BC0
	b _08003304
_08003300:
	movs r0, #0
	mov sl, r0
_08003304:
	adds r5, r0, #0
	str r5, [sp, #0xa0]
	ldr r0, [sp, #0x9c]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq _0800332A
_08003312:
	cmp r3, #0
	beq _08003322
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08003322:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne _08003312
_0800332A:
	adds r5, r3, #0
	ldr r0, [sp, #0x80]
	cmp r0, #1
	bne _08003346
	cmp r5, #0
	beq _08003342
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_08003342:
	adds r5, #0x10
	b _0800336E
_08003346:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq _0800336C
_0800334E:
	cmp r2, #0
	beq _0800335E
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_0800335E:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne _0800334E
_0800336C:
	adds r5, r2, #0
_0800336E:
	ldr r6, [sp, #0x9c]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq _08003380
_0800337A:
	adds r1, #0x10
	cmp r1, r2
	bne _0800337A
_08003380:
	cmp r0, #0
	beq _08003388
	bl sub_80D0260
_08003388:
	ldr r0, [sp, #0xa0]
	add r0, sl
	ldr r1, [sp, #0xa0]
	ldr r2, [sp, #0x9c]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
_08003396:
	adds r0, r7, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq _080033AC
	mov r4, sp
	ldrh r2, [r4, #0x20]
_080033AC:
	adds r0, r3, #0
	mov r3, sp
	bl sub_805E99C
	mov r0, sp
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r6, #2
	ldrsh r2, [r0, r6]
	adds r0, r7, #0
	movs r3, #2
	bl sub_80035C0
	ldr r0, _08003498 @ =0x00006B20
	adds r5, r7, r0
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x98]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	mov r4, sb
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_80D3994
	add r0, sp, #0x1c
	ldm r4!, {r1, r2, r6}
	stm r0!, {r1, r2, r6}
	ldm r4!, {r1, r3, r6}
	stm r0!, {r1, r3, r6}
	ldm r4!, {r2, r3}
	stm r0!, {r2, r3}
	movs r4, #0x1a
	ldrsh r1, [r5, r4]
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	movs r6, #0x1e
	ldrsh r1, [r5, r6]
	strh r1, [r0, #2]
	strh r2, [r0, #8]
	ldr r0, _0800349C @ =0x00006CA8
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
	ldr r1, _080034A0 @ =0x00006CC8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r2, #1
	strb r2, [r0, #0x18]
	ldr r3, _080034A4 @ =0x00006B34
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08003440
	b _0800357E
_08003440:
	adds r0, r7, #0
	bl sub_8008910
	adds r5, r0, #0
	ldr r6, [sp, #0x24]
	mov r8, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq _08003462
	mov r0, sp
	ldrh r3, [r0, #0x28]
_08003462:
	str r5, [sp, #0x9c]
	lsls r2, r2, #5
	ldr r1, _080034A8 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl sub_8008F0C
	mov sl, sb
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _080034AC
	cmp r1, #0
	beq _0800348C
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_0800348C:
	ldr r5, [sp, #0x9c]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b _0800357E
	.align 2, 0
_08003498: .4byte 0x00006B20
_0800349C: .4byte 0x00006CA8
_080034A0: .4byte 0x00006CC8
_080034A4: .4byte 0x00006B34
_080034A8: .4byte 0x06010000
_080034AC:
	mov r8, r1
	add r1, sp, #0x88
	movs r6, #1
	str r6, [r1]
	ldr r2, [sp, #0x9c]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x84
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs _080034CA
	adds r0, r1, #0
_080034CA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _080034E8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov sb, r4
	cmp r0, #0
	bne _080034EC
	mov r0, sb
	bl sub_80D3BC0
	b _080034EC
_080034E8:
	movs r0, #0
	mov sb, r0
_080034EC:
	adds r5, r0, #0
	str r5, [sp, #0xa0]
	ldr r4, [sp, #0x9c]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq _08003512
_080034FA:
	cmp r3, #0
	beq _0800350A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_0800350A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne _080034FA
_08003512:
	adds r5, r3, #0
	ldr r1, [sp, #0x88]
	cmp r1, #1
	bne _0800352E
	cmp r5, #0
	beq _0800352A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
_0800352A:
	adds r5, #0x10
	b _08003556
_0800352E:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq _08003554
_08003536:
	cmp r2, #0
	beq _08003546
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
_08003546:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne _08003536
_08003554:
	adds r5, r2, #0
_08003556:
	ldr r3, [sp, #0x9c]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq _08003568
_08003562:
	adds r1, #0x10
	cmp r1, r2
	bne _08003562
_08003568:
	cmp r0, #0
	beq _08003570
	bl sub_80D0260
_08003570:
	ldr r0, [sp, #0xa0]
	add r0, sb
	ldr r4, [sp, #0xa0]
	ldr r6, [sp, #0x9c]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
_0800357E:
	adds r0, r7, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq _08003594
	mov r0, sp
	ldrh r2, [r0, #0x20]
_08003594:
	adds r0, r3, #0
	mov r3, sp
	bl sub_805E99C
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r0, r7, #0
	movs r3, #2
	bl sub_80035C0
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80035C0
sub_80035C0: @ 0x080035C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x5c
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0xc]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x14]
	strb r2, [r1, #0x18]
	add r2, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r2, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	mov r8, r2
	cmp r3, #1
	beq _08003630
	cmp r3, #1
	bgt _08003610
	cmp r3, #0
	beq _08003616
	b _08003666
_08003610:
	cmp r3, #2
	beq _0800364C
	b _08003666
_08003616:
	movs r1, #0xd7
	lsls r1, r1, #7
	adds r0, r5, r1
	ldr r1, _08003628 @ =0x0000091A
	bl sub_805E860
	ldr r2, _0800362C @ =0x00006CD0
	b _0800365A
	.align 2, 0
_08003628: .4byte 0x0000091A
_0800362C: .4byte 0x00006CD0
_08003630:
	movs r3, #0xd7
	lsls r3, r3, #7
	adds r0, r5, r3
	ldr r1, _08003644 @ =0x0000091B
	bl sub_805E860
	ldr r4, _08003648 @ =0x00006CD8
	adds r0, r5, r4
	b _0800365C
	.align 2, 0
_08003644: .4byte 0x0000091B
_08003648: .4byte 0x00006CD8
_0800364C:
	movs r1, #0xd7
	lsls r1, r1, #7
	adds r0, r5, r1
	ldr r1, _080036E8 @ =0x0000091C
	bl sub_805E860
	ldr r2, _080036EC @ =0x00006CE0
_0800365A:
	adds r0, r5, r2
_0800365C:
	ldr r1, [r0, #4]
	bl sub_8007D4C
	mov r1, sp
	strh r0, [r1, #6]
_08003666:
	movs r3, #0xd7
	lsls r3, r3, #7
	adds r0, r5, r3
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	ldr r4, _080036F0 @ =0x00006B84
	adds r0, r5, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	add r4, sp, #0x3c
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl sub_80D3994
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	mov r0, sp
	movs r1, #0
	strh r6, [r0]
	strh r7, [r0, #2]
	strh r1, [r0, #8]
	ldr r3, _080036F4 @ =0x00006CE8
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl sub_80074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r5, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq _080036D2
	mov r4, r8
	ldrh r2, [r4, #4]
_080036D2:
	adds r0, r3, #0
	mov r3, sp
	bl sub_805E99C
	add sp, #0x5c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080036E8: .4byte 0x0000091C
_080036EC: .4byte 0x00006CE0
_080036F0: .4byte 0x00006B84
_080036F4: .4byte 0x00006CE8

	thumb_func_start sub_80036F8
sub_80036F8: @ 0x080036F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08003714 @ =0x080E5A18
	str r0, [r4]
	ldr r0, _08003718 @ =0x00006D34
	bl sub_80005D4
	bl sub_8000914
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08003714: .4byte 0x080E5A18
_08003718: .4byte 0x00006D34

	thumb_func_start sub_800371C
sub_800371C: @ 0x0800371C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08003748 @ =0x080E5A18
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _08003738
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08003738:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003748: .4byte 0x080E5A18

	thumb_func_start sub_800374C
sub_800374C: @ 0x0800374C
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl sub_8000D64
	ldr r2, [sp]
	mov r0, sp
	str r0, [sp, #4]
	str r2, [sp, #8]
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1]
	str r2, [r4]
	ldr r1, [sp]
	cmp r1, #0
	beq _0800377C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_0800377C:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8003788
sub_8003788: @ 0x08003788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r6, r1, #0
	str r2, [sp, #0x24]
	movs r0, #0
	mov sb, r0
	mov r1, sb
	strb r1, [r6]
	ldr r2, [sp, #0x24]
	adds r2, #0x10
	mov sl, r2
	movs r3, #0xc8
	str r3, [sp, #0x18]
	ldr r1, [sp, #0x24]
	ldrb r0, [r1, #0x10]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	add r2, sp, #0x1c
	add r0, sp, #0x18
	cmp r3, r1
	bls _080037C6
	adds r0, r2, #0
_080037C6:
	ldr r0, [r0]
	mov r1, sp
	movs r2, #0
	bl sub_804EC84
	ldr r2, _08003B24 @ =0x080E874C
	mov r8, r2
	adds r0, r6, #0
	bl sub_80D3B78
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _08003802
	mov r0, r8
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _080037F2
	adds r4, r5, #0
_080037F2:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_80D3994
	adds r0, r7, r4
	mov r1, sb
	strb r1, [r0]
_08003802:
	mov r8, r6
	adds r0, r6, #0
	bl sub_80D3B78
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _08003832
	mov r0, sp
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _08003822
	adds r4, r5, #0
_08003822:
	adds r0, r7, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_08003832:
	ldr r2, _08003B28 @ =0x080E8754
	mov sb, r2
	mov r0, r8
	bl sub_80D3B78
	mov r1, r8
	adds r7, r1, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _08003866
	mov r0, sb
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _08003856
	adds r4, r5, #0
_08003856:
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_08003866:
	mov r2, sl
	ldrb r0, [r2, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	bl sub_800E2E4
	mov r8, r0
	mov r4, r8
	adds r0, r6, #0
	bl sub_80D3B78
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _080038A4
	adds r0, r4, #0
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _08003894
	adds r4, r5, #0
_08003894:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_080038A4:
	mov r1, sl
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	mov r1, sp
	movs r2, #0
	bl sub_804EC84
	ldr r2, _08003B2C @ =0x080E8758
	mov r8, r2
	adds r0, r6, #0
	bl sub_80D3B78
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _080038E8
	mov r0, r8
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _080038D8
	adds r4, r5, #0
_080038D8:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_080038E8:
	adds r0, r6, #0
	bl sub_80D3B78
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _08003916
	mov r0, sp
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _08003906
	adds r4, r5, #0
_08003906:
	adds r0, r7, #0
	mov r1, sp
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_08003916:
	ldr r0, _08003B30 @ =0x080E8760
	mov r8, r0
	adds r0, r6, #0
	bl sub_80D3B78
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _08003948
	mov r0, r8
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _08003938
	adds r4, r5, #0
_08003938:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_08003948:
	mov r1, sl
	ldrb r2, [r1]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	ldrb r3, [r1, #1]
	lsls r0, r3, #0x1e
	lsrs r0, r0, #0x1e
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1b
	adds r2, #6
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r2, r3, r1
	cmp r2, #6
	bls _0800397A
	adds r0, r2, #0
	movs r1, #7
	bl sub_80D0F4E
	adds r2, r0, #0
_0800397A:
	movs r0, #7
	ands r2, r0
	adds r0, r2, #0
	bl sub_800E304
	mov r8, r0
	mov sb, r6
	mov r4, r8
	adds r0, r6, #0
	bl sub_80D3B78
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _080039B8
	adds r0, r4, #0
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _080039A8
	adds r4, r5, #0
_080039A8:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_080039B8:
	ldr r2, _08003B34 @ =0x080E8764
	mov r8, r2
	mov r0, sb
	bl sub_80D3B78
	mov r1, sb
	adds r7, r1, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _080039EC
	mov r0, r8
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _080039DC
	adds r4, r5, #0
_080039DC:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_080039EC:
	movs r1, #0xd
	add r0, sp, #0x20
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_80D3B78
	adds r3, r0, #1
	cmp r3, #0x7f
	bhi _08003A0A
	adds r1, r6, r0
	movs r2, #0
	movs r0, #0xd
	strb r0, [r1]
	adds r0, r6, r3
	strb r2, [r0]
_08003A0A:
	movs r1, #0xa
	mov r0, sp
	adds r0, #0x21
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_80D3B78
	adds r3, r0, #1
	cmp r3, #0x7f
	bhi _08003A2A
	adds r1, r6, r0
	movs r2, #0
	movs r0, #0xa
	strb r0, [r1]
	adds r0, r6, r3
	strb r2, [r0]
_08003A2A:
	ldr r0, [sp, #0x24]
	adds r0, #0x14
	bl sub_8009AF4
	mov r8, r0
	mov r4, r8
	adds r0, r6, #0
	bl sub_80D3B78
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _08003A64
	adds r0, r4, #0
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _08003A54
	adds r4, r5, #0
_08003A54:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_08003A64:
	ldr r2, _08003B38 @ =0x080E8768
	mov r8, r2
	adds r0, r6, #0
	bl sub_80D3B78
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _08003A96
	mov r0, r8
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _08003A86
	adds r4, r5, #0
_08003A86:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
_08003A96:
	movs r1, #0xd
	mov r0, sp
	adds r0, #0x22
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_80D3B78
	adds r3, r0, #1
	cmp r3, #0x7f
	bhi _08003AB6
	adds r1, r6, r0
	movs r2, #0
	movs r0, #0xd
	strb r0, [r1]
	adds r0, r6, r3
	strb r2, [r0]
_08003AB6:
	movs r1, #0xa
	mov r0, sp
	adds r0, #0x23
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_80D3B78
	adds r3, r0, #1
	cmp r3, #0x7f
	bhi _08003AD6
	adds r1, r6, r0
	movs r2, #0
	movs r0, #0xa
	strb r0, [r1]
	adds r0, r6, r3
	strb r2, [r0]
_08003AD6:
	ldr r1, [sp, #0x24]
	ldr r2, _08003B3C @ =0x00001BD8
	adds r0, r1, r2
	bl sub_800E4E0
	adds r7, r0, #0
	adds r4, r7, #0
	adds r0, r6, #0
	bl sub_80D3B78
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq _08003B12
	adds r0, r4, #0
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _08003B02
	adds r4, r5, #0
_08003B02:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
_08003B12:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B24: .4byte 0x080E874C
_08003B28: .4byte 0x080E8754
_08003B2C: .4byte 0x080E8758
_08003B30: .4byte 0x080E8760
_08003B34: .4byte 0x080E8764
_08003B38: .4byte 0x080E8768
_08003B3C: .4byte 0x00001BD8

	thumb_func_start sub_8003B40
sub_8003B40: @ 0x08003B40
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	bl sub_8008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	adds r0, r5, #0
	bl sub_8008918
	adds r1, r0, #0
	add r4, sp, #4
	movs r0, #0
	str r0, [sp, #4]
	str r0, [r4, #4]
	ldr r0, _08003B8C @ =0x080E5B80
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	bl sub_8009300
	ldr r1, _08003B90 @ =0x00000889
	add r0, sp, #0x10
	movs r2, #1
	movs r3, #1
	bl sub_800934C
	adds r0, r5, #0
	bl sub_8008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl sub_80D3914
	b _08003B9A
	.align 2, 0
_08003B8C: .4byte 0x080E5B80
_08003B90: .4byte 0x00000889
_08003B94:
	adds r0, r5, #0
	bl sub_80087C8
_08003B9A:
	ldr r1, [sp, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _08003B94
	adds r0, r4, #0
	movs r1, #2
	bl sub_80094B8
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8003BB4
sub_8003BB4: @ 0x08003BB4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	bl sub_8008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	adds r0, r5, #0
	bl sub_8008918
	adds r1, r0, #0
	add r4, sp, #4
	movs r0, #0
	str r0, [sp, #4]
	str r0, [r4, #4]
	ldr r0, _08003C00 @ =0x080E5B80
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	bl sub_8009300
	ldr r1, _08003C04 @ =0x00000889
	add r0, sp, #0x10
	movs r2, #1
	movs r3, #1
	bl sub_8009378
	adds r0, r5, #0
	bl sub_8008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl sub_80D3914
	b _08003C0E
	.align 2, 0
_08003C00: .4byte 0x080E5B80
_08003C04: .4byte 0x00000889
_08003C08:
	adds r0, r5, #0
	bl sub_80087C8
_08003C0E:
	ldr r1, [sp, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _08003C08
	adds r0, r4, #0
	movs r1, #2
	bl sub_80094B8
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8003C28
sub_8003C28: @ 0x08003C28
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_80088DC
	mov sb, r0
	adds r0, r4, #0
	bl sub_8008920
	mov r8, r0
	adds r0, r4, #0
	bl sub_8008918
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_8008940
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_800894C
	adds r1, r4, #0
	adds r1, #0x10
	adds r4, #0x14
	str r5, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r1, #0
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl sub_8050D3C
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8003C80
sub_8003C80: @ 0x08003C80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08003DBC @ =0xFFFFD2D8
	add sp, r4
	ldr r4, _08003DC0 @ =0x0600E800
	ldr r1, _08003DC4 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl sub_8008EB8
	movs r0, #1
	rsbs r0, r0, #0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r4, #0
	bl sub_8008EB8
	movs r3, #0
	movs r2, #0
	ldr r5, _08003DC8 @ =0x00002D08
	add r5, sp
	mov r0, sp
	adds r0, #8
	ldr r1, _08003DCC @ =0x00002D24
	add r1, sp
	str r0, [r1]
	ldr r0, _08003DD0 @ =0x00002D0C
	add r0, sp
	ldr r1, _08003DD4 @ =0x00002D18
	add r1, sp
	str r0, [r1]
	ldr r0, _08003DD8 @ =0x00002D10
	add r0, sp
	ldr r1, _08003DDC @ =0x00002D1C
	add r1, sp
	str r0, [r1]
	ldr r0, _08003DE0 @ =0x00002D14
	add r0, sp
	ldr r1, _08003DE4 @ =0x00002D20
	add r1, sp
	str r0, [r1]
	adds r4, #0x40
_08003CDA:
	movs r1, #0
	lsls r0, r2, #6
	adds r2, #1
	adds r0, r0, r4
_08003CE2:
	strh r3, [r0]
	adds r3, #1
	adds r0, #2
	adds r1, #1
	cmp r1, #0x1d
	bls _08003CE2
	cmp r2, #0xb
	bls _08003CDA
	movs r1, #0x1e
	movs r2, #0xc
	ldr r0, _08003DC8 @ =0x00002D08
	add r0, sp
	strh r1, [r0]
	strh r2, [r5, #2]
	ldr r0, [r0]
	ldr r2, _08003DCC @ =0x00002D24
	add r2, sp
	ldr r1, [r2]
	movs r2, #0
	bl sub_804E7A0
	movs r7, #0
	movs r3, #0xc
	mov sl, r3
	ldr r0, _08003DCC @ =0x00002D24
	add r0, sp
	ldr r6, [r0]
	movs r1, #0
	mov sb, r1
	ldr r2, _08003DD0 @ =0x00002D0C
	add r2, sp
	mov r8, r2
_08003D22:
	ldr r4, _08003DE8 @ =0x080E8704
	add r4, sb
	lsls r5, r7, #4
	ldr r1, [r4]
	movs r0, #0x1e
	mov r3, r8
	strh r0, [r3]
	mov r3, sl
	ldr r2, _08003DD4 @ =0x00002D18
	add r2, sp
	ldr r2, [r2]
	strh r3, [r2, #2]
	mov r3, r8
	ldr r0, [r3]
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #0x10
	adds r3, r5, #0
	bl sub_804E8F0
	ldr r1, [r4, #4]
	ldr r0, _08003DD8 @ =0x00002D10
	add r0, sp
	movs r2, #0x1e
	strh r2, [r0]
	mov r2, sl
	ldr r3, _08003DDC @ =0x00002D1C
	add r3, sp
	ldr r3, [r3]
	strh r2, [r3, #2]
	ldr r0, [r0]
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #0x80
	adds r3, r5, #0
	bl sub_804E8F0
	ldr r1, [r4, #8]
	ldr r0, _08003DE0 @ =0x00002D14
	add r0, sp
	movs r2, #0x1e
	strh r2, [r0]
	mov r2, sl
	ldr r3, _08003DE4 @ =0x00002D20
	add r3, sp
	ldr r3, [r3]
	strh r2, [r3, #2]
	ldr r0, [r0]
	str r1, [sp]
	adds r1, r6, #0
	movs r2, #0xc0
	adds r3, r5, #0
	bl sub_804E8F0
	movs r0, #0xc
	add sb, r0
	adds r7, #1
	cmp r7, #5
	bls _08003D22
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r2, #0xb4
	lsls r2, r2, #6
	ldr r3, _08003DCC @ =0x00002D24
	add r3, sp
	ldr r0, [r3]
	bl sub_8008E64
	ldr r3, _08003DEC @ =0x00002D28
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003DBC: .4byte 0xFFFFD2D8
_08003DC0: .4byte 0x0600E800
_08003DC4: .4byte 0x06007FE0
_08003DC8: .4byte 0x00002D08
_08003DCC: .4byte 0x00002D24
_08003DD0: .4byte 0x00002D0C
_08003DD4: .4byte 0x00002D18
_08003DD8: .4byte 0x00002D10
_08003DDC: .4byte 0x00002D1C
_08003DE0: .4byte 0x00002D14
_08003DE4: .4byte 0x00002D20
_08003DE8: .4byte 0x080E8704
_08003DEC: .4byte 0x00002D28

	thumb_func_start sub_8003DF0
sub_8003DF0: @ 0x08003DF0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	mov r0, sp
	ldrb r1, [r0]
	adds r1, #8
	lsls r0, r4, #1
	adds r0, #1
	lsls r0, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08003E78 @ =0xFFFFFF00
	ldr r2, [sp]
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	lsls r0, r2, #7
	lsrs r3, r0, #0x17
	adds r0, r5, #0
	adds r0, #0x84
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x80
	cmp r0, #0
	beq _08003E2E
	adds r1, #0x40
_08003E2E:
	ldr r0, _08003E7C @ =0x000001FF
	ands r1, r0
	lsls r0, r1, #0x10
	ldr r1, _08003E80 @ =0xFE00FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	cmp r4, #1
	bne _08003E56
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	beq _08003E56
	ldr r0, _08003E84 @ =0xFFFFFCFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [sp]
_08003E56:
	adds r0, r5, #0
	bl sub_8008920
	mov r2, sp
	movs r1, #0x7f
	ands r1, r4
	lsls r1, r1, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r1, [sp]
	str r1, [r0]
	ldrh r1, [r2, #4]
	strh r1, [r0, #4]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003E78: .4byte 0xFFFFFF00
_08003E7C: .4byte 0x000001FF
_08003E80: .4byte 0xFE00FFFF
_08003E84: .4byte 0xFFFFFCFF

	thumb_func_start sub_8003E88
sub_8003E88: @ 0x08003E88
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r4, #1
	bne _08003E96
	movs r4, #0
_08003E96:
	str r2, [sp]
	str r3, [sp, #4]
	mov r0, sp
	ldrb r1, [r0]
	adds r1, #8
	lsls r0, r4, #1
	adds r0, #1
	lsls r0, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08003EE0 @ =0xFFFFFF00
	ldr r2, [sp]
	ands r2, r0
	orrs r2, r1
	lsls r1, r2, #7
	lsrs r1, r1, #0x17
	adds r1, #0x10
	ldr r0, _08003EE4 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08003EE8 @ =0xFE00FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	adds r0, r5, #0
	bl sub_8008920
	mov r2, sp
	ldr r1, [sp]
	str r1, [r0, #0x34]
	ldrh r1, [r2, #4]
	strh r1, [r0, #0x38]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003EE0: .4byte 0xFFFFFF00
_08003EE4: .4byte 0x000001FF
_08003EE8: .4byte 0xFE00FFFF

	thumb_func_start sub_8003EEC
sub_8003EEC: @ 0x08003EEC
	push {lr}
	adds r2, r0, #0
	movs r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #5
	bhi _08003F7E
	lsls r0, r0, #2
	ldr r1, _08003F04 @ =_08003F08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003F04: .4byte _08003F08
_08003F08: @ jump table
	.4byte _08003F20 @ case 0
	.4byte _08003F38 @ case 1
	.4byte _08003F64 @ case 2
	.4byte _08003F6C @ case 3
	.4byte _08003F74 @ case 4
	.4byte _08003F7C @ case 5
_08003F20:
	adds r0, r2, #0
	adds r0, #0x84
	ldrb r0, [r0]
	ldr r1, _08003F30 @ =0x080E877C
	cmp r0, #0
	beq _08003F7E
	ldr r1, _08003F34 @ =0x080E8770
	b _08003F7E
	.align 2, 0
_08003F30: .4byte 0x080E877C
_08003F34: .4byte 0x080E8770
_08003F38:
	adds r0, r2, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r1, r0, #7
	adds r0, r1, r2
	adds r0, #0x98
	movs r3, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08003F4E
	movs r3, #1
_08003F4E:
	cmp r3, #0
	bne _08003F5A
	adds r0, r1, r2
	adds r1, r0, #0
	adds r1, #0x98
	b _08003F7E
_08003F5A:
	ldr r1, _08003F60 @ =0x080E878C
	b _08003F7E
	.align 2, 0
_08003F60: .4byte 0x080E878C
_08003F64:
	ldr r1, _08003F68 @ =0x080E87A4
	b _08003F7E
	.align 2, 0
_08003F68: .4byte 0x080E87A4
_08003F6C:
	ldr r1, _08003F70 @ =0x080E87FC
	b _08003F7E
	.align 2, 0
_08003F70: .4byte 0x080E87FC
_08003F74:
	ldr r1, _08003F78 @ =0x080E8828
	b _08003F7E
	.align 2, 0
_08003F78: .4byte 0x080E8828
_08003F7C:
	ldr r1, _08003F94 @ =0x080E8878
_08003F7E:
	adds r0, r2, #0
	adds r0, #0x10
	cmp r1, #0
	bne _08003F88
	ldr r1, _08003F98 @ =0x080E86C0
_08003F88:
	movs r2, #0
	movs r3, #0
	bl sub_8050DC8
	pop {r0}
	bx r0
	.align 2, 0
_08003F94: .4byte 0x080E8878
_08003F98: .4byte 0x080E86C0

	thumb_func_start sub_8003F9C
sub_8003F9C: @ 0x08003F9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0800406A
	adds r0, r5, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r8, r0
	adds r4, r5, #0
	adds r4, #0x90
	adds r0, r4, #0
	mov r1, r8
	bl sub_80003DC
	str r0, [sp, #4]
	movs r0, #3
	mov sb, r0
	adds r7, r4, #0
	adds r1, r5, #0
	adds r1, #0x10
	str r1, [sp, #0x10]
	adds r0, r5, #0
	adds r0, #0x8c
	str r0, [sp, #0xc]
	adds r1, #8
	str r1, [sp, #0x14]
	mov r0, sp
	str r0, [sp, #8]
	mov r1, r8
	lsls r6, r1, #7
	adds r4, r6, r5
	adds r4, #0x98
	movs r0, #0x80
	lsls r0, r0, #5
	mov sl, r0
_08003FEE:
	mov r0, sl
	bl sub_8000528
	mov r1, sl
	ands r1, r0
	ldr r0, [sp, #8]
	strh r1, [r0]
	ldr r0, [r5, #8]
	adds r1, r7, #0
	ldr r2, [sp, #4]
	bl sub_80115B0
	cmp r0, #0
	bne _08004052
	adds r1, r6, #0
	adds r1, #0x98
	ldr r2, [r5, #8]
	adds r0, r5, #0
	adds r1, r5, r1
	bl sub_8003788
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_8050DC8
	movs r0, #3
	ldr r1, [sp, #0xc]
	str r0, [r1]
	ldr r0, [sp, #0x14]
	movs r1, #0xc5
	bl sub_8008B6C
	adds r0, r7, #0
	mov r1, r8
	bl sub_80003E8
	adds r0, r7, #0
	mov r1, r8
	bl sub_8000470
	mov r1, sp
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800404E
	bl sub_80004F4
_0800404E:
	movs r0, #1
	b _0800408C
_08004052:
	mov r1, sp
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800405E
	bl sub_80004F4
_0800405E:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	cmp r1, #0
	bne _08003FEE
_0800406A:
	adds r0, r5, #0
	adds r0, #0x10
	ldr r1, _0800409C @ =0x080E88C8
	movs r2, #0
	movs r3, #0
	bl sub_8050DC8
	adds r1, r5, #0
	adds r1, #0x8c
	movs r0, #3
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x18
	movs r1, #0xc7
	bl sub_8008B6C
	movs r0, #0
_0800408C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800409C: .4byte 0x080E88C8

	thumb_func_start sub_80040A0
sub_80040A0: @ 0x080040A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r8, r0
	adds r4, r6, #0
	adds r4, #0x90
	adds r0, r4, #0
	mov r1, r8
	bl sub_80003DC
	mov sl, r0
	movs r0, #0
	str r0, [sp, #8]
	movs r7, #3
	add r0, sp, #8
	mov sb, r0
	str r4, [sp, #0xc]
_080040CE:
	mov r5, sp
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	bl sub_8000528
	ands r4, r0
	strh r4, [r5]
	ldr r0, _08004118 @ =0x000034F4
	bl sub_80005D4
	adds r1, r6, #0
	adds r1, #0x90
	mov r2, sl
	mov r3, sb
	bl sub_8011650
	adds r1, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0800417C
	ldr r4, [r6, #8]
	cmp r4, #0
	beq _0800411C
	adds r0, r4, #0
	movs r1, #2
	bl sub_80D4480
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0800414A
	ldr r1, [sp, #4]
	bl sub_80D4178
	b _0800414A
	.align 2, 0
_08004118: .4byte 0x000034F4
_0800411C:
	movs r0, #8
	bl sub_80005D4
	ldr r1, _08004178 @ =0x080E5A4C
	str r1, [r0]
	ldr r1, [sp, #4]
	str r4, [sp, #4]
	str r1, [r0, #4]
	adds r5, r6, #0
	adds r5, #0xc
	adds r4, r0, #0
	ldr r1, [r6, #0xc]
	cmp r4, r1
	beq _08004148
	cmp r1, #0
	beq _08004148
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08004148:
	str r4, [r5]
_0800414A:
	adds r0, r6, #0
	adds r0, #0x18
	movs r1, #0xc5
	bl sub_8008B6C
	ldr r0, [sp, #0xc]
	mov r1, r8
	bl sub_8000470
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08004168
	movs r1, #3
	bl sub_80D4480
_08004168:
	mov r1, sp
	ldrh r0, [r1]
	cmp r0, #0
	beq _08004174
	bl sub_80004F4
_08004174:
	movs r0, #1
	b _080041C6
	.align 2, 0
_08004178: .4byte 0x080E5A4C
_0800417C:
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r1, #0
	bl sub_8000608
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08004192
	movs r1, #3
	bl sub_80D4480
_08004192:
	mov r1, sp
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800419E
	bl sub_80004F4
_0800419E:
	subs r7, #1
	cmp r7, #0
	bne _080040CE
	adds r0, r6, #0
	adds r0, #0x10
	ldr r1, _080041D8 @ =0x080E88D8
	movs r2, #0
	movs r3, #0
	bl sub_8050DC8
	adds r1, r6, #0
	adds r1, #0x8c
	movs r0, #3
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x18
	movs r1, #0xc7
	bl sub_8008B6C
	movs r0, #0
_080041C6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080041D8: .4byte 0x080E88D8

	thumb_func_start sub_80041DC
sub_80041DC: @ 0x080041DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	adds r7, r0, #0
	adds r4, r1, #0
	str r2, [sp, #0x40]
	add r1, sp, #0x38
	movs r0, #7
	movs r5, #0
	strb r0, [r1]
	strb r5, [r1, #1]
	adds r0, r7, #0
	bl sub_8008574
	ldr r0, _080043B0 @ =0x080E5A5C
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r1, [sp, #0x40]
	ldr r0, [r1]
	str r5, [r1]
	str r0, [r7, #0xc]
	add r0, sp, #0xc
	bl sub_800835C
	add r4, sp, #0x10
	adds r0, r4, #0
	bl sub_800770C
	adds r0, r7, #0
	adds r0, #0x10
	str r5, [sp]
	add r2, sp, #0xc
	str r2, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl sub_8050CC0
	adds r0, r4, #0
	movs r1, #2
	bl sub_8007714
	add r0, sp, #0xc
	movs r1, #2
	bl sub_8008364
	adds r0, r7, #0
	adds r0, #0x14
	movs r1, #1
	bl sub_8008B54
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #2
	bl sub_8008B54
	adds r6, r7, #0
	adds r6, #0x1c
	ldr r1, _080043B4 @ =0x08728208
	adds r0, r6, #0
	bl sub_805E6CC
	adds r4, r7, #0
	adds r4, #0x4c
	adds r0, r4, #0
	bl sub_8007874
	adds r0, r4, #0
	movs r1, #2
	bl sub_8007B54
	str r0, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl sub_8007128
	adds r0, r4, #0
	bl sub_800736C
	str r0, [r4, #4]
	movs r0, #0
	movs r1, #0
	str r0, [r7, #0x5c]
	str r1, [r7, #0x60]
	adds r0, r7, #0
	adds r0, #0x64
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r6, #0
	movs r2, #0
	bl sub_805E824
	adds r0, r7, #0
	adds r0, #0x80
	str r5, [r0]
	adds r0, #0xc
	str r5, [r0]
	adds r0, #4
	bl sub_8000640
	adds r0, r7, #0
	adds r0, #0x98
	movs r1, #1
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x6c]
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
_080042BE:
	strb r3, [r0]
	adds r0, #0x80
	subs r1, #1
	cmp r1, r2
	bne _080042BE
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r5, #1
	movs r1, #0x1c
	adds r1, r1, r7
	mov sl, r1
	movs r2, #0x4c
	adds r2, r2, r7
	mov r8, r2
	adds r3, r7, #0
	adds r3, #0x54
	str r3, [sp, #0x44]
	movs r0, #0x90
	adds r0, r0, r7
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0x60
	str r1, [sp, #0x4c]
	adds r2, r7, #0
	adds r2, #0x61
	str r2, [sp, #0x50]
	adds r3, #9
	str r3, [sp, #0x48]
	adds r0, r7, #0
	adds r0, #0x84
	str r0, [sp, #0x54]
	adds r1, #0x25
	str r1, [sp, #0x58]
	adds r2, #0x25
	str r2, [sp, #0x5c]
	adds r3, #0x2a
	str r3, [sp, #0x60]
	adds r0, #4
	str r0, [sp, #0x64]
	adds r1, #4
	str r1, [sp, #0x68]
	movs r6, #1
	rsbs r6, r6, #0
_08004316:
	adds r0, r4, #0
	bl sub_80114F8
	adds r4, #4
	subs r5, #1
	cmp r5, r6
	bne _08004316
	ldr r0, [sp, #0x6c]
	mov r1, sl
	movs r2, #0
	bl sub_805E790
	ldr r0, [sp, #0x14]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r7, #0x5c]
	str r1, [r7, #0x60]
	mov r2, r8
	ldr r1, [r2, #4]
	mov r0, r8
	bl sub_8007D4C
	ldr r3, _080043B8 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	ldr r1, [sp, #0x4c]
	ldrh r2, [r1]
	ldr r1, _080043BC @ =0xFFFFFC00
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x4c]
	strh r1, [r2]
	ldr r3, [sp, #0x44]
	ldr r1, [r3, #4]
	adds r0, r3, #0
	bl sub_80074C0
	lsls r0, r0, #4
	ldr r1, [sp, #0x50]
	ldrb r2, [r1]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x50]
	strb r1, [r2]
	ldr r3, [sp, #0x48]
	ldrb r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r7, #0x5c]
	ldr r1, [r7, #0x60]
	str r0, [r7, #0x78]
	str r1, [r7, #0x7c]
	movs r4, #0
_08004384:
	mov r0, sb
	bl sub_80003A0
	movs r1, #1
	lsls r1, r4
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	adds r1, r4, #1
	mov sl, r1
	cmp r0, #0
	bge _08004426
	mov r0, sb
	adds r1, r4, #0
	bl sub_80003DC
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x3c]
	movs r5, #3
	add r6, sp, #0x3c
	b _080043E0
	.align 2, 0
_080043B0: .4byte 0x080E5A5C
_080043B4: .4byte 0x08728208
_080043B8: .4byte 0x000003FF
_080043BC: .4byte 0xFFFFFC00
_080043C0:
	movs r0, #0
	str r0, [sp, #0x34]
	adds r0, r2, #0
	bl sub_8000608
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _080043D6
	movs r1, #3
	bl sub_80D4480
_080043D6:
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _08004426
_080043E0:
	ldr r0, _080044B8 @ =0x000034F4
	bl sub_80005D4
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl sub_8011650
	adds r2, r0, #0
	str r2, [sp, #0x34]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _080043C0
	lsls r1, r4, #7
	adds r1, #0x98
	adds r1, r7, r1
	adds r0, r7, #0
	bl sub_8003788
	ldr r2, [sp, #0x34]
	lsls r0, r4, #2
	adds r0, r0, r7
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r0, r0, r3
	ldr r3, _080044BC @ =0x00002210
	adds r1, r2, r3
	ldr r1, [r1]
	str r1, [r0]
	cmp r2, #0
	beq _08004426
	adds r0, r2, #0
	movs r1, #3
	bl sub_80D4480
_08004426:
	mov r4, sl
	cmp r4, #1
	bls _08004384
	mov r0, sb
	bl sub_8000488
	adds r2, r0, #0
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _080044C0
	movs r0, #0
	ldr r1, [sp, #0x54]
	strb r0, [r1]
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	ldr r2, [sp, #0x58]
	strb r0, [r2]
	ldr r0, [r7, #8]
	ldr r3, _080044BC @ =0x00002210
	adds r5, r0, r3
	movs r1, #0
	ldr r0, [r5]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _0800445C
	movs r1, #1
_0800445C:
	ldr r0, [sp, #0x5c]
	strb r1, [r0]
	ldr r2, [r7, #0x5c]
	ldr r3, [r7, #0x60]
	adds r0, r7, #0
	movs r1, #2
	bl sub_8003DF0
	ldrb r0, [r5]
	lsrs r0, r0, #1
	movs r4, #1
	eors r0, r4
	ands r0, r4
	ldr r1, [sp, #0x60]
	strb r0, [r1]
	ldr r2, [r7, #0x5c]
	ldr r3, [r7, #0x60]
	adds r0, r7, #0
	movs r1, #3
	bl sub_8003DF0
	ldrb r0, [r5]
	lsrs r0, r0, #2
	eors r0, r4
	ands r0, r4
	ldr r2, [sp, #0x64]
	strb r0, [r2]
	ldr r2, [r7, #0x5c]
	ldr r3, [r7, #0x60]
	adds r0, r7, #0
	movs r1, #4
	bl sub_8003DF0
	ldrb r0, [r5]
	lsrs r0, r0, #3
	eors r0, r4
	ands r0, r4
	ldr r3, [sp, #0x68]
	strb r0, [r3]
	ldr r2, [r7, #0x5c]
	ldr r3, [r7, #0x60]
	adds r0, r7, #0
	movs r1, #5
	bl sub_8003DF0
	b _08004548
	.align 2, 0
_080044B8: .4byte 0x000034F4
_080044BC: .4byte 0x00002210
_080044C0:
	adds r0, r7, #0
	adds r0, #0x80
	movs r1, #1
	str r1, [r0]
	movs r5, #1
	ldr r0, [sp, #0x54]
	strb r1, [r0]
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	ldr r1, [sp, #0x58]
	strb r0, [r1]
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r4, r0, r7
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r4, r4, r2
	movs r1, #0
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080044F0
	movs r1, #1
_080044F0:
	ldr r3, [sp, #0x5c]
	strb r1, [r3]
	ldr r2, [r7, #0x5c]
	ldr r3, [r7, #0x60]
	adds r0, r7, #0
	movs r1, #2
	bl sub_8003DF0
	ldrb r0, [r4]
	lsrs r0, r0, #1
	eors r0, r5
	ands r0, r5
	ldr r1, [sp, #0x60]
	strb r0, [r1]
	ldr r2, [r7, #0x5c]
	ldr r3, [r7, #0x60]
	adds r0, r7, #0
	movs r1, #3
	bl sub_8003DF0
	ldrb r0, [r4]
	lsrs r0, r0, #2
	eors r0, r5
	ands r0, r5
	ldr r2, [sp, #0x64]
	strb r0, [r2]
	ldr r2, [r7, #0x5c]
	ldr r3, [r7, #0x60]
	adds r0, r7, #0
	movs r1, #4
	bl sub_8003DF0
	ldrb r0, [r4]
	lsrs r0, r0, #3
	eors r0, r5
	ands r0, r5
	ldr r3, [sp, #0x68]
	strb r0, [r3]
	ldr r2, [r7, #0x5c]
	ldr r3, [r7, #0x60]
	adds r0, r7, #0
	movs r1, #5
	bl sub_8003DF0
_08004548:
	ldr r0, [sp, #0x40]
	ldr r1, [r0]
	cmp r1, #0
	beq _0800455C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_0800455C:
	adds r0, r7, #0
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8004570
sub_8004570: @ 0x08004570
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	str r0, [sp, #0x58]
	adds r6, r1, #0
	adds r0, r6, #0
	bl sub_8008724
	adds r0, r6, #0
	bl sub_8008918
	adds r5, r0, #0
	add r0, sp, #0xc
	movs r2, #0xe2
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	movs r4, #0
	strh r1, [r5]
	ldr r0, _080046A4 @ =0x080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _080046A8 @ =0x080F9F7C
	ldr r2, [r2]
	bl sub_8008E64
	add r1, sp, #0xc
	ldr r2, _080046AC @ =0x00001E4C
	adds r0, r2, #0
	strh r0, [r1]
	strh r0, [r5, #0xe]
	ldr r0, _080046B0 @ =0x080F9F70
	ldr r0, [r0]
	ldr r1, _080046B4 @ =0x0600C000
	ldr r2, _080046B8 @ =0x080F9F74
	ldr r2, [r2]
	bl sub_8008E64
	ldr r0, _080046BC @ =0x0600F000
	movs r1, #0x14
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_8051320
	add r1, sp, #0xc
	movs r2, #0xea
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	strh r0, [r5, #0xc]
	adds r0, r6, #0
	bl sub_8003C80
	adds r4, r6, #0
	adds r4, #0x10
	adds r0, r4, #0
	movs r1, #0x2c
	bl sub_8050E98
	adds r0, r4, #0
	bl sub_8050D68
	adds r0, r6, #0
	bl sub_8003C28
	ldrh r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r5, #8]
	adds r0, r6, #0
	bl sub_8003EEC
	add r0, sp, #0x10
	adds r1, r6, #0
	adds r1, #0x1c
	movs r2, #0
	bl sub_805E790
	ldr r4, [sp, #0x18]
	adds r0, r6, #0
	adds r0, #0x4c
	ldr r1, [r0, #4]
	bl sub_8007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r0, _080046C0 @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_8008E64
	ldr r4, [sp, #0x20]
	adds r0, r6, #0
	adds r0, #0x54
	ldr r1, [r0, #4]
	bl sub_80074C0
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r2, _080046C4 @ =0x05000200
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_8008E64
	movs r4, #0
_08004656:
	ldr r2, [r6, #0x5c]
	ldr r3, [r6, #0x60]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8003DF0
	adds r4, #1
	cmp r4, #5
	bls _08004656
	adds r0, r6, #0
	bl sub_8003B40
	movs r0, #0x8c
	adds r0, r0, r6
	mov sl, r0
_08004674:
	adds r0, r6, #0
	bl sub_80087C8
	adds r0, r6, #0
	bl sub_80088B8
	adds r0, r6, #0
	bl sub_8003C28
	adds r0, r6, #0
	bl sub_80088D4
	adds r7, r0, #0
	mov r5, sl
	ldr r0, [r5]
	cmp r0, #1
	bne _08004698
	b _08004A9E
_08004698:
	cmp r0, #1
	bgt _080046C8
	cmp r0, #0
	beq _080046D6
	b _08004674
	.align 2, 0
_080046A4: .4byte 0x080F9F78
_080046A8: .4byte 0x080F9F7C
_080046AC: .4byte 0x00001E4C
_080046B0: .4byte 0x080F9F70
_080046B4: .4byte 0x0600C000
_080046B8: .4byte 0x080F9F74
_080046BC: .4byte 0x0600F000
_080046C0: .4byte 0x06010000
_080046C4: .4byte 0x05000200
_080046C8:
	cmp r0, #2
	bne _080046CE
	b _08004AC4
_080046CE:
	cmp r0, #3
	bne _080046D4
	b _08004B1A
_080046D4:
	b _08004674
_080046D6:
	adds r4, r6, #0
	adds r4, #0x64
	adds r0, r4, #0
	bl sub_805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0800474A
	ldr r1, [r6, #0x64]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r6, #0x68]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x30
	ldr r3, [r3, #0x10]
	bl sub_80D3918
	add r1, sp, #0x30
	adds r0, r1, #0
	movs r2, #0x20
	bl sub_80D3994
	ldr r1, [sp, #0x30]
	ldrb r0, [r1]
	adds r5, r6, #0
	adds r5, #0x78
	strb r0, [r5]
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x17
	adds r3, r6, #0
	adds r3, #0x7a
	lsrs r1, r1, #0x17
	ldrh r2, [r3]
	ldr r0, _0800479C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	adds r4, #0x1c
	ldr r1, [r4]
	ldr r2, [r6, #0x78]
	ldr r3, [r6, #0x7c]
	adds r0, r6, #0
	bl sub_8003DF0
	ldr r1, [r4]
	ldr r0, [r6, #8]
	adds r2, r6, #0
	adds r2, #0x5c
	cmp r0, #0
	beq _08004740
	adds r2, r5, #0
_08004740:
	ldr r3, [r2, #4]
	ldr r2, [r2]
	adds r0, r6, #0
	bl sub_8003E88
_0800474A:
	movs r1, #2
	mov sb, r1
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _080047AE
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _080047A0
	adds r4, r6, #0
	adds r4, #0x80
	ldr r0, [r4]
	cmp r0, #1
	beq _0800476C
	b _08004B36
_0800476C:
	adds r0, r6, #0
	adds r0, #0x18
	movs r1, #0xc6
	bl sub_8008B6C
	movs r0, #0
	str r0, [r4]
	adds r0, r6, #0
	bl sub_8003EEC
	ldr r2, [r6, #0x5c]
	ldr r3, [r6, #0x60]
	adds r0, r6, #0
	movs r1, #1
	bl sub_8003DF0
	ldr r2, [r6, #0x78]
	ldr r3, [r6, #0x7c]
	adds r0, r6, #0
	movs r1, #0
	bl sub_8003DF0
	b _08004674
	.align 2, 0
_0800479C: .4byte 0xFFFFFE00
_080047A0:
	adds r0, r6, #0
	adds r0, #0x18
	movs r1, #0xc6
	bl sub_8008B6C
	add r4, sp, #0x50
	b _08004AF2
_080047AE:
	movs r2, #1
	mov r8, r2
	movs r1, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080048A0
	adds r0, r6, #0
	adds r0, #0x80
	ldr r7, [r0]
	cmp r7, #0
	bne _080047F2
	str r1, [r0]
	ldr r2, [r6, #0x5c]
	ldr r3, [r6, #0x60]
	adds r0, r6, #0
	movs r1, #0
	bl sub_8003DF0
	ldr r2, [r6, #0x78]
	ldr r3, [r6, #0x7c]
	adds r0, r6, #0
	movs r1, #1
	bl sub_8003DF0
	adds r0, r6, #0
	bl sub_8003EEC
	adds r0, r6, #0
	adds r0, #0x18
	movs r1, #0xc5
	bl sub_8008B6C
	b _08004674
_080047F2:
	cmp r7, #1
	beq _080047F8
	b _08004674
_080047F8:
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r1, [r0]
	subs r0, #1
	ldrb r4, [r0]
	cmp r4, #0
	beq _08004864
	lsls r0, r1, #7
	adds r0, r0, r6
	adds r0, #0x98
	movs r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004816
	movs r1, #1
_08004816:
	cmp r1, r8
	beq _08004840
	adds r0, r6, #0
	adds r0, #0x10
	ldr r1, _08004834 @ =0x080E890C
	ldr r2, _08004838 @ =0x080E86EC
	ldr r3, _0800483C @ =0x080E86F0
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl sub_8050E30
	mov r0, sb
	b _08004B30
	.align 2, 0
_08004834: .4byte 0x080E890C
_08004838: .4byte 0x080E86EC
_0800483C: .4byte 0x080E86F0
_08004840:
	adds r0, r6, #0
	adds r0, #0x10
	ldr r1, _08004860 @ =0x080E878C
	movs r2, #0
	movs r3, #0
	bl sub_8050DC8
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0x18
	movs r1, #0xc7
	bl sub_8008B6C
	b _08004674
	.align 2, 0
_08004860: .4byte 0x080E878C
_08004864:
	lsls r0, r1, #7
	adds r0, r0, r6
	adds r0, #0x98
	movs r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004874
	movs r1, #1
_08004874:
	cmp r1, r8
	bne _0800487A
	b _08004ABC
_0800487A:
	adds r0, r6, #0
	adds r0, #0x10
	ldr r1, _08004894 @ =0x080E8914
	ldr r2, _08004898 @ =0x080E86EC
	ldr r3, _0800489C @ =0x080E86F0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_8050E30
	mov r0, sl
	str r7, [r0]
	b _08004674
	.align 2, 0
_08004894: .4byte 0x080E8914
_08004898: .4byte 0x080E86EC
_0800489C: .4byte 0x080E86F0
_080048A0:
	adds r0, r7, #0
	lsls r1, r0, #0x1b
	lsls r0, r0, #0x1a
	lsrs r1, r1, #0x1f
	lsrs r0, r0, #0x1f
	cmp r1, r0
	bne _080048B0
	b _08004A16
_080048B0:
	adds r2, r6, #0
	adds r2, #0x80
	adds r1, r6, #0
	adds r1, #0x84
	ldr r0, [r2]
	adds r1, r1, r0
	ldrb r4, [r1]
	mov r0, r8
	eors r4, r0
	strb r4, [r1]
	ldr r0, [r6, #8]
	adds r5, r2, #0
	cmp r0, #0
	beq _08004980
	ldr r0, [r5]
	cmp r0, #5
	bls _080048D4
	b _08004A08
_080048D4:
	lsls r0, r0, #2
	ldr r1, _080048E0 @ =_080048E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080048E0: .4byte _080048E4
_080048E4: @ jump table
	.4byte _080048FC @ case 0
	.4byte _080048FC @ case 1
	.4byte _08004904 @ case 2
	.4byte _08004924 @ case 3
	.4byte _08004940 @ case 4
	.4byte _0800495C @ case 5
_080048FC:
	adds r0, r6, #0
	bl sub_8003EEC
	b _08004A08
_08004904:
	ldr r3, [r6, #8]
	rsbs r1, r4, #0
	orrs r1, r4
	ldr r2, _08004920 @ =0x00002210
	adds r3, r3, r2
	lsrs r1, r1, #0x1f
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	b _08004A08
	.align 2, 0
_08004920: .4byte 0x00002210
_08004924:
	ldr r2, [r6, #8]
	movs r3, #1
	cmp r4, #0
	beq _0800492E
	movs r3, #0
_0800492E:
	ldr r0, _0800493C @ =0x00002210
	adds r2, r2, r0
	lsls r3, r3, #1
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	b _08004972
	.align 2, 0
_0800493C: .4byte 0x00002210
_08004940:
	ldr r2, [r6, #8]
	movs r3, #1
	cmp r4, #0
	beq _0800494A
	movs r3, #0
_0800494A:
	ldr r1, _08004958 @ =0x00002210
	adds r2, r2, r1
	lsls r3, r3, #2
	ldrb r1, [r2]
	movs r0, #5
	rsbs r0, r0, #0
	b _08004972
	.align 2, 0
_08004958: .4byte 0x00002210
_0800495C:
	ldr r2, [r6, #8]
	movs r3, #1
	cmp r4, #0
	beq _08004966
	movs r3, #0
_08004966:
	ldr r0, _0800497C @ =0x00002210
	adds r2, r2, r0
	lsls r3, r3, #3
	ldrb r1, [r2]
	movs r0, #9
	rsbs r0, r0, #0
_08004972:
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	b _08004A08
	.align 2, 0
_0800497C: .4byte 0x00002210
_08004980:
	adds r0, r6, #0
	bl sub_8003EEC
	adds r0, r6, #0
	adds r0, #0x85
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r4, r0, r6
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r1, #0
	ldr r0, [r4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _080049A2
	movs r1, #1
_080049A2:
	adds r0, r6, #0
	adds r0, #0x86
	strb r1, [r0]
	ldr r2, [r6, #0x5c]
	ldr r3, [r6, #0x60]
	adds r0, r6, #0
	movs r1, #2
	bl sub_8003DF0
	ldrb r0, [r4]
	lsrs r0, r0, #1
	mov r2, r8
	eors r0, r2
	ands r0, r2
	adds r1, r6, #0
	adds r1, #0x87
	strb r0, [r1]
	ldr r2, [r6, #0x5c]
	ldr r3, [r6, #0x60]
	adds r0, r6, #0
	movs r1, #3
	bl sub_8003DF0
	ldrb r0, [r4]
	lsrs r0, r0, #2
	mov r1, r8
	eors r0, r1
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x88
	strb r0, [r1]
	ldr r2, [r6, #0x5c]
	ldr r3, [r6, #0x60]
	adds r0, r6, #0
	movs r1, #4
	bl sub_8003DF0
	ldrb r0, [r4]
	lsrs r0, r0, #3
	mov r2, r8
	eors r0, r2
	ands r0, r2
	adds r1, r6, #0
	adds r1, #0x89
	strb r0, [r1]
	ldr r2, [r6, #0x5c]
	ldr r3, [r6, #0x60]
	adds r0, r6, #0
	movs r1, #5
	bl sub_8003DF0
_08004A08:
	ldr r1, [r5]
	ldr r2, [r6, #0x78]
	ldr r3, [r6, #0x7c]
	adds r0, r6, #0
	bl sub_8003DF0
	b _08004A92
_08004A16:
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _08004A1E
	b _08004674
_08004A1E:
	lsls r1, r7, #0x18
	lsls r0, r7, #0x19
	lsrs r1, r1, #0x1f
	lsrs r0, r0, #0x1f
	cmp r1, r0
	bne _08004A2C
	b _08004674
_08004A2C:
	adds r1, r6, #0
	adds r1, #0x80
	ldr r4, [r1]
	movs r0, #0x80
	ands r0, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r1, #0
	cmp r0, #0
	beq _08004A52
	cmp r4, #0
	bne _08004A48
	mov r0, sb
	b _08004A66
_08004A48:
	movs r0, #0
	cmp r4, #5
	beq _08004A66
	adds r0, r4, #1
	b _08004A66
_08004A52:
	cmp r4, #2
	beq _08004A66
	cmp r4, #1
	bne _08004A5E
	movs r0, #5
	b _08004A66
_08004A5E:
	movs r0, #5
	cmp r4, #0
	beq _08004A66
	subs r0, r4, #1
_08004A66:
	str r0, [r5]
	ldr r2, [r6, #0x5c]
	ldr r3, [r6, #0x60]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8003DF0
	ldr r1, [r5]
	ldr r2, [r6, #0x78]
	ldr r3, [r6, #0x7c]
	adds r0, r6, #0
	bl sub_8003DF0
	ldr r1, [r5]
	ldr r2, [r6, #0x78]
	ldr r3, [r6, #0x7c]
	adds r0, r6, #0
	bl sub_8003E88
	adds r0, r6, #0
	bl sub_8003EEC
_08004A92:
	adds r0, r6, #0
	adds r0, #0x18
	movs r1, #0xcb
	bl sub_8008B6C
	b _08004674
_08004A9E:
	adds r4, r6, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_8050D34
	cmp r0, #3
	beq _08004AB2
	cmp r0, #6
	bne _08004AB2
	b _08004674
_08004AB2:
	adds r0, r4, #0
	bl sub_8050DF0
	cmp r0, #1
	bne _08004B04
_08004ABC:
	adds r0, r6, #0
	bl sub_8003F9C
	b _08004674
_08004AC4:
	adds r4, r6, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_8050D34
	cmp r0, #3
	beq _08004AD8
	cmp r0, #6
	bne _08004AD8
	b _08004674
_08004AD8:
	adds r0, r4, #0
	bl sub_8050DF0
	cmp r0, #1
	bne _08004B04
	adds r0, r6, #0
	bl sub_80040A0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08004AF0
	b _08004674
_08004AF0:
	add r4, sp, #0x54
_08004AF2:
	adds r0, r4, #0
	movs r1, #0
	bl sub_8008B54
	adds r0, r4, #0
	movs r1, #2
	bl sub_8008BF8
	b _08004B36
_08004B04:
	adds r0, r6, #0
	adds r0, #0x18
	movs r1, #0xc5
	bl sub_8008B6C
	adds r0, r6, #0
	bl sub_8003EEC
	movs r0, #0
	str r0, [r5]
	b _08004674
_08004B1A:
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_8050D34
	cmp r0, #5
	bne _08004B28
	b _08004674
_08004B28:
	adds r0, r6, #0
	bl sub_8003EEC
	movs r0, #0
_08004B30:
	mov r1, sl
	str r0, [r1]
	b _08004674
_08004B36:
	adds r0, r6, #0
	bl sub_8003BB4
	ldr r1, [r6, #0xc]
	movs r0, #0
	str r0, [r6, #0xc]
	ldr r2, [sp, #0x58]
	str r1, [r2]
	ldr r0, [sp, #0x58]
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8004B58
sub_8004B58: @ 0x08004B58
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08004B8C @ =0x080E5A68
	str r0, [r4]
	movs r0, #4
	bl sub_80005D4
	ldr r1, _08004B90 @ =0x080E5A3C
	str r1, [r0]
	str r0, [sp]
	movs r0, #0xd0
	lsls r0, r0, #1
	bl sub_80005D4
	movs r1, #0
	mov r2, sp
	bl sub_80041DC
	str r0, [r4, #4]
	adds r0, r4, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08004B8C: .4byte 0x080E5A68
_08004B90: .4byte 0x080E5A3C

	thumb_func_start sub_8004B94
sub_8004B94: @ 0x08004B94
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r0, _08004BD8 @ =0x080E5A68
	str r0, [r6]
	ldr r1, [r4]
	movs r0, #0
	str r0, [r4]
	str r1, [sp]
	movs r0, #0xd0
	lsls r0, r0, #1
	bl sub_80005D4
	adds r1, r5, #0
	mov r2, sp
	bl sub_80041DC
	str r0, [r6, #4]
	ldr r4, [r4]
	cmp r4, #0
	beq _08004BCE
	ldr r0, [r4]
	ldr r2, [r0, #8]
	adds r0, r4, #0
	movs r1, #3
	bl sub_80D3914
_08004BCE:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08004BD8: .4byte 0x080E5A68

	thumb_func_start sub_8004BDC
sub_8004BDC: @ 0x08004BDC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08004C08 @ =0x080E5A68
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _08004BF8
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08004BF8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004C08: .4byte 0x080E5A68

	thumb_func_start sub_8004C0C
sub_8004C0C: @ 0x08004C0C
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl sub_8004570
	ldr r2, [sp]
	mov r0, sp
	str r0, [sp, #4]
	str r2, [sp, #8]
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1]
	str r2, [r4]
	ldr r1, [sp]
	cmp r1, #0
	beq _08004C3C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08004C3C:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8004C48
sub_8004C48: @ 0x08004C48
	ldr r1, _08004C50 @ =0x080E5A88
	str r1, [r0]
	bx lr
	.align 2, 0
_08004C50: .4byte 0x080E5A88

	thumb_func_start sub_8004C54
sub_8004C54: @ 0x08004C54
	push {lr}
	ldr r2, _08004C64 @ =0x080E5A88
	str r2, [r0]
	bl sub_80007EC
	pop {r0}
	bx r0
	.align 2, 0
_08004C64: .4byte 0x080E5A88

	thumb_func_start sub_8004C68
sub_8004C68: @ 0x08004C68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	str r0, [sp, #0x4c]
	add r0, sp, #4
	bl sub_8008980
	movs r0, #0x23
	bl sub_8008DB8
	add r4, sp, #8
	movs r0, #0
	strb r0, [r4]
	add r3, sp, #0x18
	strb r0, [r3]
	add r2, sp, #0x28
	strb r0, [r2]
	subs r0, #4
	mov r1, r8
	ands r0, r1
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r0, r1
	mov r8, r0
	mov sb, r3
	mov r0, sp
	adds r0, #0x38
	str r0, [sp, #0x54]
	mov r1, sp
	adds r1, #0x44
	str r1, [sp, #0x58]
	adds r6, r0, #0
	add r0, sp, #8
	mov sl, r0
	add r7, sp, #0x40
_08004CB4:
	adds r0, r6, #0
	ldr r1, _08004EE8 @ =0x080E8934
	mov r2, sl
	bl sub_8007078
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80070D4
	ldr r1, [sp, #0x40]
	cmp r1, #0
	beq _08004CD8
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08004CD8:
	adds r0, r6, #0
	bl sub_8007110
	adds r5, r0, #0
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xc
	bls _08004CEC
	movs r4, #0xc
_08004CEC:
	mov r0, sl
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80D3994
	mov r1, sl
	adds r0, r1, r4
	movs r1, #0
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #2
	bl sub_80070A4
	adds r0, r6, #0
	mov r1, r8
	bl sub_806E9D8
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_806EA30
	ldr r1, [sp, #0x40]
	cmp r1, #0
	beq _08004D28
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08004D28:
	adds r0, r6, #0
	bl sub_806EA6C
	mov r8, r0
	adds r0, r6, #0
	movs r1, #2
	bl sub_806EA00
	adds r0, r6, #0
	ldr r1, _08004EEC @ =0x080E893C
	mov r2, sb
	bl sub_8007078
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80070D4
	ldr r1, [sp, #0x40]
	cmp r1, #0
	beq _08004D5C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08004D5C:
	adds r0, r6, #0
	bl sub_8007110
	adds r5, r0, #0
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xc
	bls _08004D70
	movs r4, #0xc
_08004D70:
	mov r0, sb
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80D3994
	mov r1, sb
	adds r0, r1, r4
	movs r1, #0
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #2
	bl sub_80070A4
	adds r0, r6, #0
	ldr r1, _08004EF0 @ =0x080E8944
	add r2, sp, #0x28
	bl sub_8007078
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80070D4
	ldr r1, [sp, #0x40]
	cmp r1, #0
	beq _08004DAE
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08004DAE:
	adds r0, r6, #0
	bl sub_8007110
	adds r5, r0, #0
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xc
	bls _08004DC2
	movs r4, #0xc
_08004DC2:
	add r0, sp, #0x28
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80D3994
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x28
	movs r1, #0
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #2
	bl sub_80070A4
	add r0, sp, #0x28
	str r0, [sp]
	adds r0, r6, #0
	mov r1, sl
	mov r2, r8
	mov r3, sb
	bl sub_800598C
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_8005A00
	ldr r1, [sp, #0x40]
	cmp r1, #0
	beq _08004E08
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08004E08:
	adds r0, r6, #0
	bl sub_8005A3C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	movs r1, #2
	bl sub_80059D0
	cmp r4, #0
	bne _08004E22
	b _08004CB4
_08004E22:
	movs r0, #0x38
	bl sub_80005D4
	adds r6, r0, #0
	mov r0, sb
	add r1, sp, #8
	mov sl, r1
	mov r1, sp
	adds r1, #0x28
	str r1, [sp, #0x50]
	ldr r1, _08004EF4 @ =0x080E59DC
	str r1, [r6]
	ldr r1, _08004EF8 @ =0x080E5A78
	adds r5, r6, #0
	stm r5!, {r1}
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xc
	bls _08004E4C
	movs r4, #0xc
_08004E4C:
	adds r0, r5, #0
	mov r1, sb
	adds r2, r4, #0
	bl sub_80D3994
	adds r0, r5, r4
	movs r7, #0
	strb r7, [r0]
	adds r5, r6, #0
	adds r5, #0x14
	mov r0, sl
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xc
	bls _08004E6E
	movs r4, #0xc
_08004E6E:
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, r4, #0
	bl sub_80D3994
	adds r0, r5, r4
	strb r7, [r0]
	adds r0, r6, #0
	adds r0, #0x24
	mov r1, r8
	strb r1, [r0]
	adds r5, r6, #0
	adds r5, #0x28
	ldr r0, [sp, #0x50]
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xc
	bls _08004E96
	movs r4, #0xc
_08004E96:
	adds r0, r5, #0
	add r1, sp, #0x28
	adds r2, r4, #0
	bl sub_80D3994
	adds r0, r5, r4
	movs r1, #0
	strb r1, [r0]
	str r6, [sp, #0x38]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x58]
	str r6, [r1, #4]
	movs r0, #0
	ldr r1, [sp, #0x54]
	str r0, [r1]
	ldr r0, [sp, #0x4c]
	str r6, [r0]
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _08004ECC
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08004ECC:
	add r0, sp, #4
	movs r1, #2
	bl sub_8008A68
	ldr r0, [sp, #0x4c]
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004EE8: .4byte 0x080E8934
_08004EEC: .4byte 0x080E893C
_08004EF0: .4byte 0x080E8944
_08004EF4: .4byte 0x080E59DC
_08004EF8: .4byte 0x080E5A78

	thumb_func_start sub_8004EFC
sub_8004EFC: @ 0x08004EFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	str r3, [sp, #0x24]
	bl sub_8008444
	ldr r0, _080050A4 @ =0x080E5A98
	str r0, [r7, #4]
	movs r0, #3
	add r5, sp, #0x10
	add r1, sp, #0x14
	mov sb, r1
	movs r1, #1
	rsbs r1, r1, #0
_08004F24:
	subs r0, #1
	cmp r0, r1
	bne _08004F24
	movs r0, #3
	movs r1, #1
	rsbs r1, r1, #0
_08004F30:
	subs r0, #1
	cmp r0, r1
	bne _08004F30
	ldr r2, _080050A8 @ =0x00001A28
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	movs r0, #4
	bl sub_80005D4
	adds r4, r0, #0
	add r0, sp, #0xc
	bl sub_800835C
	adds r0, r5, #0
	bl sub_800770C
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r5, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x1c
	movs r3, #4
	bl sub_8050CC0
	ldr r2, _080050AC @ =0x00001A2C
	adds r1, r7, r2
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl sub_8007714
	add r0, sp, #0xc
	movs r1, #2
	bl sub_8008364
	ldr r0, _080050B0 @ =0x00001A30
	adds r4, r7, r0
	movs r0, #0xc8
	bl sub_8008D3C
	str r0, [r4]
	ldr r1, _080050B4 @ =0x00001A34
	adds r0, r7, r1
	movs r1, #3
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
_08004F96:
	strb r3, [r0]
	adds r0, #0x10
	subs r1, #1
	cmp r1, r2
	bne _08004F96
	ldr r2, _080050B8 @ =0x00001A76
	adds r0, r7, r2
	movs r1, #0
	mov sl, r1
	mov r2, sl
	strb r2, [r0]
	ldr r0, _080050B4 @ =0x00001A34
	adds r5, r7, r0
	adds r0, r6, #0
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xf
	bls _08004FBE
	movs r4, #0xf
_08004FBE:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_80D3994
	adds r0, r5, r4
	mov r1, sl
	strb r1, [r0]
	mov r2, r8
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	mov r1, sb
	movs r2, #2
	bl sub_804EC84
	mov r1, r8
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	bl sub_800E2E4
	mov sb, r0
	ldr r2, _080050BC @ =0x00001A44
	adds r6, r7, r2
	mov r4, sb
	adds r0, r6, #0
	bl sub_80D3B78
	adds r1, r6, r0
	mov r8, r1
	movs r1, #0xf
	subs r5, r1, r0
	cmp r5, #0
	beq _08005022
	adds r0, r4, #0
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _08005010
	adds r4, r5, #0
_08005010:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl sub_80D3994
	mov r2, r8
	adds r0, r2, r4
	mov r1, sl
	strb r1, [r0]
_08005022:
	adds r0, r6, #0
	bl sub_80D3B78
	adds r6, r6, r0
	movs r1, #0xf
	subs r5, r1, r0
	cmp r5, #0
	beq _08005050
	add r0, sp, #0x14
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, r5
	bls _08005040
	adds r4, r5, #0
_08005040:
	adds r0, r6, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
_08005050:
	ldr r2, _080050C0 @ =0x00001A54
	adds r5, r7, r2
	ldr r0, [sp, #0x24]
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xf
	bls _08005062
	movs r4, #0xf
_08005062:
	adds r0, r5, #0
	ldr r1, [sp, #0x24]
	adds r2, r4, #0
	bl sub_80D3994
	adds r0, r5, r4
	movs r6, #0
	strb r6, [r0]
	ldr r0, _080050C4 @ =0x00001A64
	adds r5, r7, r0
	ldr r0, [sp, #0x48]
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xf
	bls _08005084
	movs r4, #0xf
_08005084:
	adds r0, r5, #0
	ldr r1, [sp, #0x48]
	adds r2, r4, #0
	bl sub_80D3994
	adds r0, r5, r4
	strb r6, [r0]
	adds r0, r7, #0
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080050A4: .4byte 0x080E5A98
_080050A8: .4byte 0x00001A28
_080050AC: .4byte 0x00001A2C
_080050B0: .4byte 0x00001A30
_080050B4: .4byte 0x00001A34
_080050B8: .4byte 0x00001A76
_080050BC: .4byte 0x00001A44
_080050C0: .4byte 0x00001A54
_080050C4: .4byte 0x00001A64

	thumb_func_start sub_80050C8
sub_80050C8: @ 0x080050C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080050F0 @ =0x080E5A98
	str r0, [r4, #4]
	ldr r1, _080050F4 @ =0x00001A2C
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080050E2
	movs r1, #3
	bl sub_8050D0C
_080050E2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80086BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080050F0: .4byte 0x080E5A98
_080050F4: .4byte 0x00001A2C

	thumb_func_start sub_80050F8
sub_80050F8: @ 0x080050F8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	mov sb, r0
	adds r6, r1, #0
	adds r0, r6, #0
	bl sub_8005254
	adds r0, r6, #0
	bl sub_8005260
	adds r0, r6, #0
	bl sub_8005278
	adds r0, r6, #0
	bl sub_8008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl sub_80005D4
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_8008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, _08005198 @ =0x080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_8009300
	str r4, [sp, #4]
	ldr r1, _0800519C @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl sub_800934C
	adds r0, r6, #0
	bl sub_8008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl sub_80D3914
	movs r4, #0
	movs r5, #0
	add r7, sp, #8
	add r0, sp, #0xc
	mov r8, r0
_08005174:
	adds r0, r6, #0
	bl sub_80087C8
	adds r0, r6, #0
	bl sub_80088B8
	adds r0, r6, #0
	bl sub_80088D4
	adds r0, r4, #0
	cmp r0, #1
	beq _080051BA
	cmp r0, #1
	bgt _080051A0
	cmp r0, #0
	beq _080051AA
	b _0800520A
	.align 2, 0
_08005198: .4byte 0x080E5B80
_0800519C: .4byte 0x00000889
_080051A0:
	cmp r0, #2
	beq _080051D4
	cmp r0, #3
	beq _080051FC
	b _0800520A
_080051AA:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0800520A
	movs r4, #1
	b _0800520A
_080051BA:
	adds r0, r6, #0
	bl sub_8005800
	ldr r1, _080051D0 @ =0x00001A74
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800520A
	movs r4, #2
	b _0800520A
	.align 2, 0
_080051D0: .4byte 0x00001A74
_080051D4:
	ldr r0, [sp, #4]
	adds r0, #0xc
	ldr r1, _080051F8 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl sub_8009378
	adds r0, r6, #0
	bl sub_8008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl sub_80D3914
	movs r4, #3
	b _0800520A
	.align 2, 0
_080051F8: .4byte 0x00000889
_080051FC:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0800520A
	movs r5, #1
_0800520A:
	cmp r5, #0
	beq _08005174
	movs r0, #0
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	mov r1, r8
	str r0, [r1, #4]
	str r0, [r7]
	mov r1, sb
	str r0, [r1]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08005230
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08005230:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _08005242
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08005242:
	mov r0, sb
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8005254
sub_8005254: @ 0x08005254
	push {lr}
	bl sub_8008724
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8005260
sub_8005260: @ 0x08005260
	ldr r2, _08005270 @ =0x00001A75
	adds r1, r0, r2
	movs r2, #0
	strb r2, [r1]
	ldr r1, _08005274 @ =0x00001A74
	adds r0, r0, r1
	strb r2, [r0]
	bx lr
	.align 2, 0
_08005270: .4byte 0x00001A75
_08005274: .4byte 0x00001A74

	thumb_func_start sub_8005278
sub_8005278: @ 0x08005278
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	mov sl, r0
	ldr r0, _08005488 @ =0x080F9F70
	ldr r0, [r0]
	ldr r1, _0800548C @ =0x06004B00
	ldr r2, _08005490 @ =0x080F9F74
	ldr r2, [r2]
	bl sub_8008E64
	ldr r0, _08005494 @ =0x080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl sub_8008E64
	mov r0, sl
	bl sub_8008918
	add r1, sp, #0xc
	movs r3, #0xba
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r4, #0
	strh r2, [r0]
	mov r0, sl
	bl sub_8008918
	add r2, sp, #0xc
	ldr r5, _08005498 @ =0x00001841
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	mov r0, sl
	bl sub_8008918
	add r2, sp, #0xc
	ldr r7, _0800549C @ =0x00001F01
	adds r1, r7, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	ldr r0, _080054A0 @ =0x0600F800
	movs r1, #0x14
	str r1, [sp]
	movs r1, #0x96
	lsls r1, r1, #2
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_8051320
	ldr r1, _080054A4 @ =0x06FFC000
	movs r0, #0
	movs r2, #0x20
	bl sub_8008EB8
	movs r0, #0
	mov r8, r0
	add r5, sp, #0x20
	add r1, sp, #0x24
	mov sb, r1
	mov r2, sp
	adds r2, #0x28
	str r2, [sp, #0x64]
	mov r3, sp
	adds r3, #0x2c
	str r3, [sp, #0x68]
	mov r4, sp
	adds r4, #0x30
	str r4, [sp, #0x70]
	mov r7, sp
	adds r7, #0x34
	str r7, [sp, #0x74]
	mov r0, sp
	adds r0, #0x38
	str r0, [sp, #0x78]
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x5c]
	movs r7, #0xc
	movs r6, #2
	mov r4, sl
	adds r4, #0xc
_0800532E:
	add r0, sp, #0x20
	strh r7, [r0]
	strh r6, [r5, #2]
	ldr r0, [sp, #0x20]
	adds r1, r4, #0
	movs r2, #0
	bl sub_804E7A0
	movs r2, #0xc1
	lsls r2, r2, #2
	adds r4, r4, r2
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #3
	bls _0800532E
	movs r1, #0
	mov r8, r1
	ldr r7, _080054A8 @ =0x00000C1C
	add r7, sl
	movs r2, #0xfa
	lsls r2, r2, #4
	add r2, sl
	str r2, [sp, #0x54]
	ldr r3, _080054AC @ =0x00001324
	add r3, sl
	str r3, [sp, #0x58]
	ldr r4, _080054B0 @ =0x000016A8
	add r4, sl
	str r4, [sp, #0x6c]
	movs r6, #0xe
	movs r5, #2
	ldr r4, _080054A8 @ =0x00000C1C
	add r4, sl
_08005372:
	add r0, sp, #0x24
	strh r6, [r0]
	mov r0, sb
	strh r5, [r0, #2]
	ldr r0, [sp, #0x24]
	adds r1, r4, #0
	movs r2, #0
	bl sub_804E7A0
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r4, r4, r1
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #3
	bls _08005372
	movs r4, #0
	mov r8, r4
	movs r6, #0xc
	movs r5, #2
	mov r4, sl
	adds r4, #0xc
_080053A0:
	mov r0, r8
	lsls r1, r0, #4
	add r1, sl
	ldr r2, _080054B4 @ =0x00001A34
	adds r1, r1, r2
	add r0, sp, #0x28
	strh r6, [r0]
	ldr r3, [sp, #0x64]
	strh r5, [r3, #2]
	ldr r0, [sp, #0x28]
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_804E8F0
	movs r0, #0xc1
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #3
	bls _080053A0
	ldr r1, _080054B8 @ =0x080E8958
	movs r4, #0xe
	movs r5, #2
	add r0, sp, #0x2c
	strh r4, [r0]
	ldr r3, [sp, #0x68]
	strh r5, [r3, #2]
	ldr r0, [sp, #0x2c]
	str r1, [sp]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_804E8F0
	ldr r1, _080054BC @ =0x080E8968
	add r0, sp, #0x30
	strh r4, [r0]
	ldr r7, [sp, #0x70]
	strh r5, [r7, #2]
	ldr r0, [sp, #0x30]
	str r1, [sp]
	ldr r1, [sp, #0x54]
	movs r2, #0
	movs r3, #0
	bl sub_804E8F0
	ldr r1, _080054C0 @ =0x080E8978
	add r0, sp, #0x34
	strh r4, [r0]
	ldr r0, [sp, #0x74]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x34]
	str r1, [sp]
	ldr r1, [sp, #0x58]
	movs r2, #0
	movs r3, #0
	bl sub_804E8F0
	ldr r1, _080054C4 @ =0x080E8988
	add r0, sp, #0x38
	strh r4, [r0]
	ldr r2, [sp, #0x78]
	strh r5, [r2, #2]
	ldr r0, [sp, #0x38]
	str r1, [sp]
	ldr r1, [sp, #0x6c]
	movs r2, #0
	movs r3, #0
	bl sub_804E8F0
	movs r3, #0
	mov r8, r3
	ldr r4, [sp, #0x5c]
	str r4, [sp, #0x4c]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	str r5, [sp, #0x84]
	mov r7, sl
	adds r7, #0xc
	str r7, [sp, #0x88]
_08005448:
	mov r0, sl
	bl sub_8008910
	adds r6, r0, #0
	add r0, sp, #0x10
	ldr r1, [sp, #0x88]
	ldr r2, [sp, #0x84]
	movs r3, #0xc0
	lsls r3, r3, #2
	bl sub_8008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq _080054C8
	cmp r1, #0
	beq _08005476
	adds r0, r1, #0
	ldr r1, [sp, #0x4c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_08005476:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r5, #0xc0
	lsls r5, r5, #2
	lsls r5, r5, #2
	str r5, [sp, #0x60]
	b _08005596
	.align 2, 0
_08005488: .4byte 0x080F9F70
_0800548C: .4byte 0x06004B00
_08005490: .4byte 0x080F9F74
_08005494: .4byte 0x080F9F78
_08005498: .4byte 0x00001841
_0800549C: .4byte 0x00001F01
_080054A0: .4byte 0x0600F800
_080054A4: .4byte 0x06FFC000
_080054A8: .4byte 0x00000C1C
_080054AC: .4byte 0x00001324
_080054B0: .4byte 0x000016A8
_080054B4: .4byte 0x00001A34
_080054B8: .4byte 0x080E8958
_080054BC: .4byte 0x080E8968
_080054C0: .4byte 0x080E8978
_080054C4: .4byte 0x080E8988
_080054C8:
	str r1, [sp, #0x8c]
	movs r0, #1
	str r0, [sp, #0x40]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x3c]
	add r1, sp, #0x40
	add r0, sp, #0x3c
	cmp r4, #1
	bhs _080054E2
	adds r0, r1, #0
_080054E2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _08005500
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov sb, r4
	cmp r0, #0
	bne _08005504
	mov r0, sb
	bl sub_80D3BC0
	b _08005504
_08005500:
	movs r0, #0
	mov sb, r0
_08005504:
	adds r5, r0, #0
	str r5, [sp, #0x90]
	ldr r2, [r6]
	adds r3, r5, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	lsls r0, r0, #2
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x8c]
	cmp r2, r1
	beq _08005534
_0800551A:
	cmp r3, #0
	beq _0800552A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_0800552A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x8c]
	cmp r2, r0
	bne _0800551A
_08005534:
	adds r5, r3, #0
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne _08005550
	cmp r5, #0
	beq _0800554C
	adds r0, r5, #0
	ldr r1, [sp, #0x4c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_0800554C:
	adds r5, #0x10
	b _08005572
_08005550:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq _08005570
_08005558:
	cmp r2, #0
	beq _08005568
	adds r0, r2, #0
	ldr r1, [sp, #0x4c]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_08005568:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne _08005558
_08005570:
	adds r5, r2, #0
_08005572:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq _08005582
_0800557C:
	adds r1, #0x10
	cmp r1, r2
	bne _0800557C
_08005582:
	cmp r0, #0
	beq _0800558A
	bl sub_80D0260
_0800558A:
	ldr r0, [sp, #0x90]
	add r0, sb
	ldr r7, [sp, #0x90]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
_08005596:
	ldr r0, [sp, #0x84]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0x84]
	ldr r2, [sp, #0x88]
	movs r3, #0xc1
	lsls r3, r3, #2
	adds r2, r2, r3
	str r2, [sp, #0x88]
	movs r4, #1
	add r8, r4
	mov r5, r8
	cmp r5, #3
	bhi _080055B6
	b _08005448
_080055B6:
	movs r7, #0
	mov r8, r7
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x50]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ldr r1, [sp, #0x60]
	adds r0, r1, r0
	str r0, [sp, #0x7c]
	ldr r2, _08005608 @ =0x00000C1C
	add r2, sl
	str r2, [sp, #0x80]
_080055D0:
	mov r0, sl
	bl sub_8008910
	adds r6, r0, #0
	add r0, sp, #0xc
	ldr r1, [sp, #0x80]
	ldr r2, [sp, #0x7c]
	movs r3, #0xe0
	lsls r3, r3, #2
	bl sub_8008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq _0800560C
	cmp r1, #0
	beq _080055FE
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
_080055FE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b _080056CE
	.align 2, 0
_08005608: .4byte 0x00000C1C
_0800560C:
	str r1, [sp, #0x8c]
	movs r0, #1
	str r0, [sp, #0x48]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x44]
	add r1, sp, #0x48
	add r0, sp, #0x44
	cmp r4, #1
	bhs _08005626
	adds r0, r1, #0
_08005626:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _08005644
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov sb, r4
	cmp r0, #0
	bne _08005648
	mov r0, sb
	bl sub_80D3BC0
	b _08005648
_08005644:
	movs r0, #0
	mov sb, r0
_08005648:
	adds r5, r0, #0
	str r5, [sp, #0x90]
	ldr r2, [r6]
	adds r3, r5, #0
	b _08005666
_08005652:
	cmp r3, #0
	beq _08005662
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_08005662:
	adds r2, #0x10
	adds r3, #0x10
_08005666:
	ldr r0, [sp, #0x8c]
	cmp r2, r0
	bne _08005652
	adds r5, r3, #0
	ldr r0, [sp, #0x48]
	cmp r0, #1
	bne _08005688
	cmp r5, #0
	beq _08005684
	adds r0, r5, #0
	ldr r1, [sp, #0x50]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_08005684:
	adds r5, #0x10
	b _080056AA
_08005688:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq _080056A8
_08005690:
	cmp r2, #0
	beq _080056A0
	adds r0, r2, #0
	ldr r1, [sp, #0x50]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_080056A0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne _08005690
_080056A8:
	adds r5, r2, #0
_080056AA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq _080056BA
_080056B4:
	adds r1, #0x10
	cmp r1, r2
	bne _080056B4
_080056BA:
	cmp r0, #0
	beq _080056C2
	bl sub_80D0260
_080056C2:
	ldr r0, [sp, #0x90]
	add r0, sb
	ldr r7, [sp, #0x90]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
_080056CE:
	ldr r0, [sp, #0x7c]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0x7c]
	ldr r2, [sp, #0x80]
	movs r3, #0xe1
	lsls r3, r3, #2
	adds r2, r2, r3
	str r2, [sp, #0x80]
	movs r4, #1
	add r8, r4
	mov r5, r8
	cmp r5, #3
	bhi _080056EE
	b _080055D0
_080056EE:
	movs r0, #1
	rsbs r0, r0, #0
	ldr r4, _080057E8 @ =0x0600C000
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r4, #0
	bl sub_8008EB8
	movs r7, #0
	mov r8, r7
	movs r1, #0x64
_08005704:
	movs r5, #0
	mov r2, r8
	lsls r0, r2, #6
	adds r0, r0, r4
_0800570C:
	strh r1, [r0]
	adds r0, #2
	adds r5, #1
	cmp r5, #0x1d
	bls _0800570C
	movs r3, #1
	add r8, r3
	mov r5, r8
	cmp r5, #0x13
	bls _08005704
	movs r5, #2
	ldr r6, _080057EC @ =0x0600C080
_08005724:
	movs r7, #0
	mov r8, r7
	lsls r1, r5, #1
	adds r4, r5, #0
	adds r4, #0x6c
	adds r3, r5, #0
	adds r3, #0x5e
	ldr r0, _080057F0 @ =0x0600C040
	adds r2, r1, r0
_08005736:
	strh r3, [r2]
	adds r0, r1, r6
	strh r4, [r0]
	adds r4, #0x1c
	adds r3, #0x1c
	adds r2, #0xc0
	adds r1, #0xc0
	movs r7, #1
	add r8, r7
	mov r0, r8
	cmp r0, #3
	bls _08005736
	adds r5, #1
	cmp r5, #0xf
	bls _08005724
	movs r5, #0x10
	ldr r1, _080057F4 @ =0x0000FFF0
	adds r7, r1, #0
	ldr r2, _080057EC @ =0x0600C080
	mov sb, r2
_0800575E:
	movs r3, #0
	mov r8, r3
	lsls r1, r5, #1
	adds r6, r5, #1
	adds r0, r5, #0
	adds r0, #0xc
	adds r4, r0, r7
	adds r3, r5, r7
	ldr r5, _080057F0 @ =0x0600C040
	adds r2, r1, r5
_08005772:
	strh r3, [r2]
	mov r5, sb
	adds r0, r1, r5
	strh r4, [r0]
	adds r4, #0x18
	adds r3, #0x18
	adds r2, #0xc0
	adds r1, #0xc0
	movs r0, #1
	add r8, r0
	mov r5, r8
	cmp r5, #3
	bls _08005772
	adds r5, r6, #0
	cmp r5, #0x1b
	bls _0800575E
	ldr r0, _080057F8 @ =0x00001A2C
	add r0, sl
	ldr r0, [r0]
	mov sb, r0
	mov r0, sl
	bl sub_80088DC
	mov r8, r0
	mov r0, sl
	bl sub_8008920
	adds r6, r0, #0
	mov r0, sl
	bl sub_8008918
	adds r5, r0, #0
	mov r0, sl
	bl sub_8008940
	adds r4, r0, #0
	mov r0, sl
	bl sub_800894C
	ldr r1, _080057FC @ =0x00001A30
	add r1, sl
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_8050D3C
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080057E8: .4byte 0x0600C000
_080057EC: .4byte 0x0600C080
_080057F0: .4byte 0x0600C040
_080057F4: .4byte 0x0000FFF0
_080057F8: .4byte 0x00001A2C
_080057FC: .4byte 0x00001A30

	thumb_func_start sub_8005800
sub_8005800: @ 0x08005800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, _0800586C @ =0x00001A2C
	adds r4, r7, r0
	ldr r0, [r4]
	bl sub_8050D34
	adds r6, r0, #0
	ldr r4, [r4]
	mov sb, r4
	adds r0, r7, #0
	bl sub_80088DC
	mov r8, r0
	adds r0, r7, #0
	bl sub_8008920
	mov sl, r0
	adds r0, r7, #0
	bl sub_8008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl sub_8008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_800894C
	ldr r2, _08005870 @ =0x00001A30
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	mov r2, sl
	adds r3, r5, #0
	bl sub_8050D3C
	cmp r0, #6
	bls _08005860
	b _08005974
_08005860:
	lsls r0, r0, #2
	ldr r1, _08005874 @ =_08005878
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800586C: .4byte 0x00001A2C
_08005870: .4byte 0x00001A30
_08005874: .4byte _08005878
_08005878: @ jump table
	.4byte _08005894 @ case 0
	.4byte _08005974 @ case 1
	.4byte _08005974 @ case 2
	.4byte _080058C0 @ case 3
	.4byte _08005974 @ case 4
	.4byte _08005974 @ case 5
	.4byte _08005974 @ case 6
_08005894:
	ldr r1, _080058B4 @ =0x00001A75
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080058A6
	ldr r2, _080058B8 @ =0x00001A74
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
_080058A6:
	ldr r1, _080058BC @ =0x00001A2C
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_8050D5C
	b _08005974
	.align 2, 0
_080058B4: .4byte 0x00001A75
_080058B8: .4byte 0x00001A74
_080058BC: .4byte 0x00001A2C
_080058C0:
	cmp r6, #5
	bgt _080058CE
	cmp r6, #4
	bge _08005974
	cmp r6, #1
	beq _080058E4
	b _080058D2
_080058CE:
	cmp r6, #6
	beq _08005910
_080058D2:
	ldr r2, _080058E0 @ =0x00001A2C
	adds r0, r7, r2
	ldr r0, [r0]
	bl sub_8050D74
	b _08005974
	.align 2, 0
_080058E0: .4byte 0x00001A2C
_080058E4:
	ldr r1, _08005900 @ =0x00001A2C
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, _08005904 @ =0x080E8998
	ldr r2, _08005908 @ =0x080E89A4
	ldr r3, _0800590C @ =0x080E89A8
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_8050E30
	b _08005974
	.align 2, 0
_08005900: .4byte 0x00001A2C
_08005904: .4byte 0x080E8998
_08005908: .4byte 0x080E89A4
_0800590C: .4byte 0x080E89A8
_08005910:
	ldr r2, _08005928 @ =0x00001A2C
	adds r0, r7, r2
	ldr r0, [r0]
	bl sub_8050DF0
	cmp r0, #6
	bhi _08005974
	lsls r0, r0, #2
	ldr r1, _0800592C @ =_08005930
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08005928: .4byte 0x00001A2C
_0800592C: .4byte _08005930
_08005930: @ jump table
	.4byte _08005974 @ case 0
	.4byte _0800594C @ case 1
	.4byte _08005964 @ case 2
	.4byte _08005974 @ case 3
	.4byte _08005974 @ case 4
	.4byte _08005974 @ case 5
	.4byte _08005974 @ case 6
_0800594C:
	ldr r1, _0800595C @ =0x00001A75
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	ldr r2, _08005960 @ =0x00001A76
	adds r0, r7, r2
	strb r1, [r0]
	b _08005974
	.align 2, 0
_0800595C: .4byte 0x00001A75
_08005960: .4byte 0x00001A76
_08005964:
	ldr r0, _08005984 @ =0x00001A75
	adds r1, r7, r0
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08005988 @ =0x00001A76
	adds r0, r7, r1
	strb r2, [r0]
_08005974:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005984: .4byte 0x00001A75
_08005988: .4byte 0x00001A76

	thumb_func_start sub_800598C
sub_800598C: @ 0x0800598C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r5, [sp, #0x1c]
	ldr r0, _080059C8 @ =0x080E5AA4
	str r0, [r4]
	ldr r0, _080059CC @ =0x00001A78
	bl sub_80005D4
	str r5, [sp]
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl sub_8004EFC
	str r0, [r4, #4]
	adds r0, r4, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080059C8: .4byte 0x080E5AA4
_080059CC: .4byte 0x00001A78

	thumb_func_start sub_80059D0
sub_80059D0: @ 0x080059D0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080059FC @ =0x080E5AA4
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _080059EC
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_080059EC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080059FC: .4byte 0x080E5AA4

	thumb_func_start sub_8005A00
sub_8005A00: @ 0x08005A00
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl sub_80050F8
	ldr r2, [sp]
	mov r0, sp
	str r0, [sp, #4]
	str r2, [sp, #8]
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1]
	str r2, [r4]
	ldr r1, [sp]
	cmp r1, #0
	beq _08005A30
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08005A30:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8005A3C
sub_8005A3C: @ 0x08005A3C
	ldr r0, [r0, #4]
	ldr r1, _08005A48 @ =0x00001A76
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08005A48: .4byte 0x00001A76
_08005A4C:
	.byte 0x01, 0x49, 0x40, 0x18
	.byte 0x00, 0x78, 0x70, 0x47, 0x76, 0x1A, 0x00, 0x00

	thumb_func_start sub_8005A58
sub_8005A58: @ 0x08005A58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r5, r0, #0
	mov r8, r1
	adds r7, r2, #0
	bl sub_8008444
	ldr r0, _08005B1C @ =0x080E5AB4
	str r0, [r5, #4]
	movs r0, #7
	add r6, sp, #0x10
	movs r1, #1
	rsbs r1, r1, #0
_08005A76:
	subs r0, #1
	cmp r0, r1
	bne _08005A76
	ldr r1, _08005B20 @ =0x000045F0
	adds r0, r5, r1
	movs r1, #1
	bl sub_8008B54
	ldr r2, _08005B24 @ =0x000045F4
	adds r0, r5, r2
	movs r1, #2
	bl sub_8008B54
	movs r0, #4
	bl sub_80005D4
	adds r4, r0, #0
	add r0, sp, #0xc
	bl sub_800835C
	adds r0, r6, #0
	bl sub_800770C
	movs r0, #0
	str r0, [sp]
	add r3, sp, #0xc
	str r3, [sp, #4]
	str r6, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #4
	bl sub_8050CC0
	ldr r4, _08005B28 @ =0x000045F8
	adds r1, r5, r4
	str r0, [r1]
	adds r0, r6, #0
	movs r1, #2
	bl sub_8007714
	add r0, sp, #0xc
	movs r1, #2
	bl sub_8008364
	ldr r6, _08005B2C @ =0x000045FC
	adds r0, r5, r6
	mov r1, r8
	str r1, [r0]
	ldr r3, _08005B30 @ =0x0000461C
	adds r2, r5, r3
	adds r1, r2, #0
	ldr r0, _08005B34 @ =0x080E8BE4
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldrb r0, [r0]
	strb r0, [r1]
	cmp r7, #0
	beq _08005B0C
	movs r3, #0
	ldrb r0, [r7]
	cmp r0, #0
	beq _08005B0C
	adds r4, r2, #0
	adds r2, r7, #0
_08005AF8:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r3, #1
	cmp r3, #0xc
	bgt _08005B0C
	ldrb r0, [r2]
	cmp r0, #0
	bne _08005AF8
_08005B0C:
	adds r0, r5, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005B1C: .4byte 0x080E5AB4
_08005B20: .4byte 0x000045F0
_08005B24: .4byte 0x000045F4
_08005B28: .4byte 0x000045F8
_08005B2C: .4byte 0x000045FC
_08005B30: .4byte 0x0000461C
_08005B34: .4byte 0x080E8BE4

	thumb_func_start sub_8005B38
sub_8005B38: @ 0x08005B38
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08005B60 @ =0x080E5AB4
	str r0, [r4, #4]
	ldr r1, _08005B64 @ =0x000045F8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08005B52
	movs r1, #3
	bl sub_8050D0C
_08005B52:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80086BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005B60: .4byte 0x080E5AB4
_08005B64: .4byte 0x000045F8

	thumb_func_start sub_8005B68
sub_8005B68: @ 0x08005B68
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	adds r6, r1, #0
	adds r0, r6, #0
	bl sub_8008724
	mov r0, sp
	bl sub_8007874
	movs r5, #0
	str r5, [sp, #4]
	mov r0, sp
	movs r1, #0
	bl sub_8007C28
	mov r0, sp
	movs r1, #3
	bl sub_8007B54
	adds r1, r0, #0
	str r1, [sp, #4]
	mov r0, sp
	bl sub_8007D4C
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_8005CDC
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80061A0
	adds r0, r6, #0
	bl sub_8006334
	adds r0, r6, #0
	bl sub_800637C
	adds r0, r6, #0
	bl sub_8008918
	add r1, sp, #8
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	adds r0, r6, #0
	bl sub_8008918
	adds r1, r0, #0
	add r4, sp, #0xc
	str r5, [sp, #0xc]
	str r5, [r4, #4]
	ldr r0, _08005C20 @ =0x080E5B80
	str r0, [sp, #0x14]
	add r0, sp, #0x18
	bl sub_8009300
	ldr r1, _08005C24 @ =0x00000889
	add r0, sp, #0x18
	movs r2, #1
	movs r3, #1
	bl sub_800934C
	adds r0, r6, #0
	bl sub_8008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl sub_80D3914
	ldr r0, [sp, #0xc]
	rsbs r1, r0, #0
	orrs r1, r0
	mov r8, r4
	add r5, sp, #0x1c
	add r4, sp, #0x20
	cmp r1, #0
	bge _08005C58
_08005C0E:
	adds r0, r6, #0
	bl sub_80087C8
	ldr r0, [sp, #0xc]
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt _08005C0E
	b _08005C58
	.align 2, 0
_08005C20: .4byte 0x080E5B80
_08005C24: .4byte 0x00000889
_08005C28:
	adds r0, r6, #0
	bl sub_80088B8
	adds r0, r6, #0
	bl sub_8006CDC
	adds r0, r6, #0
	bl sub_80068CC
	adds r0, r6, #0
	bl sub_800637C
	adds r0, r6, #0
	bl sub_80064E8
	adds r0, r6, #0
	bl sub_8006858
	adds r0, r6, #0
	bl sub_8006ED8
	adds r0, r6, #0
	bl sub_80087C8
_08005C58:
	ldr r1, _08005C80 @ =0x00004636
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08005C28
	ldr r1, _08005C84 @ =0x00000889
	add r0, sp, #0x18
	movs r2, #1
	movs r3, #1
	bl sub_8009378
	adds r0, r6, #0
	bl sub_8008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	mov r1, r8
	bl sub_80D3914
	b _08005C8E
	.align 2, 0
_08005C80: .4byte 0x00004636
_08005C84: .4byte 0x00000889
_08005C88:
	adds r0, r6, #0
	bl sub_80087C8
_08005C8E:
	ldr r1, [sp, #0xc]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _08005C88
	movs r0, #0
	str r0, [sp, #0x1c]
	str r5, [sp, #0x20]
	str r0, [r4, #4]
	str r0, [r5]
	str r0, [r7]
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _08005CB6
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08005CB6:
	mov r0, r8
	movs r1, #2
	bl sub_80094B8
	ldr r1, [sp, #4]
	mov r0, sp
	bl sub_8007C28
	mov r0, sp
	movs r1, #2
	bl sub_80079E8
	adds r0, r7, #0
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8005CDC
sub_8005CDC: @ 0x08005CDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	mov sl, r0
	ldr r0, _08005EC8 @ =0x080F9F70
	ldr r0, [r0]
	ldr r1, _08005ECC @ =0x06004B00
	ldr r2, _08005ED0 @ =0x080F9F74
	ldr r2, [r2]
	bl sub_8008E64
	ldr r0, _08005ED4 @ =0x080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl sub_8008E64
	mov r0, sl
	bl sub_8008918
	add r1, sp, #0xc
	movs r3, #0xba
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r4, #0
	strh r2, [r0]
	mov r0, sl
	bl sub_8008918
	add r2, sp, #0xc
	ldr r5, _08005ED8 @ =0x00001841
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	mov r0, sl
	bl sub_8008918
	add r2, sp, #0xc
	ldr r7, _08005EDC @ =0x00001F02
	adds r1, r7, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	ldr r0, _08005EE0 @ =0x0600F800
	movs r1, #0x14
	str r1, [sp]
	movs r1, #0x96
	lsls r1, r1, #2
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_8051320
	movs r0, #1
	rsbs r0, r0, #0
	ldr r4, _08005EE4 @ =0x0600C000
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r4, #0
	bl sub_8008EB8
	movs r1, #0
	add r0, sp, #0x20
	mov r8, r0
	add r2, sp, #0x24
	mov sb, r2
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x44]
	mov r5, sp
	adds r5, #0x30
	str r5, [sp, #0x48]
	mov r7, sl
	adds r7, #0xc
	ldr r0, _08005EE8 @ =0x000043B0
	add r0, sl
	str r0, [sp, #0x40]
	movs r2, #0xd1
	lsls r2, r2, #1
	adds r6, r2, #0
_08005D88:
	movs r3, #0
	lsls r2, r1, #6
	adds r5, r1, #1
	adds r0, r2, r4
_08005D90:
	strh r6, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, #0x1d
	bls _08005D90
	adds r1, r5, #0
	cmp r1, #0x13
	bls _08005D88
	movs r3, #0xa
	ldr r2, _08005EEC @ =0x0600C094
	ldr r1, _08005EF0 @ =0x0600C054
_08005DA6:
	strh r3, [r1]
	adds r0, r3, #0
	adds r0, #0x1e
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0xf
	bls _08005DA6
	movs r3, #3
	movs r4, #0xd2
	lsls r4, r4, #1
	adds r5, r4, #0
	movs r0, #0xe1
	lsls r0, r0, #1
	adds r4, r0, #0
	ldr r2, _08005EF4 @ =0x0600C486
	ldr r1, _08005EF8 @ =0x0600C446
_08005DCA:
	adds r0, r3, r5
	strh r0, [r1]
	adds r0, r3, r4
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x1a
	bls _08005DCA
	movs r1, #4
	ldr r4, _08005EE4 @ =0x0600C000
_08005DE0:
	movs r3, #0
	lsls r2, r1, #6
	adds r5, r1, #1
	subs r1, #2
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #1
	adds r2, r2, r4
_08005DF0:
	adds r0, r1, r3
	strh r0, [r2]
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1d
	bls _08005DF0
	adds r1, r5, #0
	cmp r1, #0xf
	bls _08005DE0
	movs r3, #0x12
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r5, r1, #0
	movs r2, #0xff
	lsls r2, r2, #1
	adds r4, r2, #0
	ldr r2, _08005EFC @ =0x0600C0A4
	ldr r1, _08005F00 @ =0x0600C064
_08005E14:
	adds r0, r3, r5
	strh r0, [r1]
	adds r0, r3, r4
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x1d
	bls _08005E14
	ldr r0, _08005F04 @ =0x000045FC
	add r0, sl
	ldr r0, [r0]
	cmp r0, #0
	beq _08005E52
	movs r3, #1
	ldr r4, _08005F08 @ =0x0000021B
	adds r5, r4, #0
	movs r0, #0x89
	lsls r0, r0, #2
	adds r4, r0, #0
	ldr r2, _08005F0C @ =0x0600C082
	ldr r1, _08005F10 @ =0x0600C042
_08005E40:
	adds r0, r3, r5
	strh r0, [r1]
	adds r0, r3, r4
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #9
	bls _08005E40
_08005E52:
	ldr r1, _08005F14 @ =0x06FFC000
	movs r0, #0
	movs r2, #0x20
	bl sub_8008EB8
	movs r4, #0x1e
	movs r5, #2
	add r0, sp, #0x20
	strh r4, [r0]
	mov r1, r8
	strh r5, [r1, #2]
	ldr r0, [sp, #0x20]
	adds r1, r7, #0
	movs r2, #0
	bl sub_804E7A0
	ldr r1, _08005F18 @ =0x080E8BF4
	add r0, sp, #0x24
	strh r4, [r0]
	mov r2, sb
	strh r5, [r2, #2]
	ldr r0, [sp, #0x24]
	str r1, [sp]
	adds r1, r7, #0
	movs r2, #0x58
	movs r3, #0
	bl sub_804E8F0
	mov r0, sl
	bl sub_8008910
	movs r3, #0xf0
	lsls r3, r3, #3
	adds r6, r0, #0
	add r0, sp, #0x10
	adds r1, r7, #0
	movs r2, #0xc0
	lsls r2, r2, #0x13
	bl sub_8008F0C
	ldr r3, [sp, #0x44]
	mov r8, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq _08005F1C
	cmp r1, #0
	beq _08005EBE
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_08005EBE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b _08005FE0
	.align 2, 0
_08005EC8: .4byte 0x080F9F70
_08005ECC: .4byte 0x06004B00
_08005ED0: .4byte 0x080F9F74
_08005ED4: .4byte 0x080F9F78
_08005ED8: .4byte 0x00001841
_08005EDC: .4byte 0x00001F02
_08005EE0: .4byte 0x0600F800
_08005EE4: .4byte 0x0600C000
_08005EE8: .4byte 0x000043B0
_08005EEC: .4byte 0x0600C094
_08005EF0: .4byte 0x0600C054
_08005EF4: .4byte 0x0600C486
_08005EF8: .4byte 0x0600C446
_08005EFC: .4byte 0x0600C0A4
_08005F00: .4byte 0x0600C064
_08005F04: .4byte 0x000045FC
_08005F08: .4byte 0x0000021B
_08005F0C: .4byte 0x0600C082
_08005F10: .4byte 0x0600C042
_08005F14: .4byte 0x06FFC000
_08005F18: .4byte 0x080E8BF4
_08005F1C:
	str r1, [sp, #0x4c]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs _08005F34
	adds r0, r1, #0
_08005F34:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _08005F52
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov sb, r4
	cmp r0, #0
	bne _08005F56
	mov r0, sb
	bl sub_80D3BC0
	b _08005F56
_08005F52:
	movs r0, #0
	mov sb, r0
_08005F56:
	adds r5, r0, #0
	str r5, [sp, #0x50]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x4c]
	cmp r2, r4
	beq _08005F7E
_08005F64:
	cmp r3, #0
	beq _08005F74
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_08005F74:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x4c]
	cmp r2, r5
	bne _08005F64
_08005F7E:
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _08005F9A
	cmp r5, #0
	beq _08005F96
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
_08005F96:
	adds r5, #0x10
	b _08005FBC
_08005F9A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq _08005FBA
_08005FA2:
	cmp r2, #0
	beq _08005FB2
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_08005FB2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne _08005FA2
_08005FBA:
	adds r5, r2, #0
_08005FBC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq _08005FCC
_08005FC6:
	adds r1, #0x10
	cmp r1, r2
	bne _08005FC6
_08005FCC:
	cmp r0, #0
	beq _08005FD4
	bl sub_80D0260
_08005FD4:
	ldr r0, [sp, #0x50]
	add r0, sb
	ldr r1, [sp, #0x50]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
_08005FE0:
	movs r1, #0x8c
	lsls r1, r1, #7
	add r1, sl
	movs r0, #0
	str r0, [r1]
	ldr r0, _08006074 @ =0x00004637
	add r0, sl
	movs r2, #1
	mov r8, r2
	mov r3, r8
	strb r3, [r0]
	mov r0, sl
	bl sub_80064E8
	movs r5, #9
	movs r6, #2
	add r0, sp, #0x30
	strh r5, [r0]
	ldr r4, [sp, #0x48]
	strh r6, [r4, #2]
	ldr r0, [sp, #0x30]
	ldr r4, [sp, #0x40]
	adds r1, r4, #0
	movs r2, #0
	bl sub_804E7A0
	ldr r0, _08006078 @ =0x000045FC
	add r0, sl
	ldr r1, [r0]
	cmp r1, #0
	beq _08006032
	add r0, sp, #0x34
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x34]
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_804E8F0
_08006032:
	mov r0, sl
	bl sub_8008910
	movs r3, #0x90
	lsls r3, r3, #2
	adds r6, r0, #0
	movs r2, #0xf0
	lsls r2, r2, #3
	lsls r2, r2, #3
	ldr r5, _0800607C @ =0x06000780
	adds r2, r2, r5
	add r0, sp, #0xc
	ldr r1, [sp, #0x40]
	bl sub_8008F0C
	add r7, sp, #0xc
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq _08006080
	cmp r1, #0
	beq _0800606C
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_0800606C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b _08006142
	.align 2, 0
_08006074: .4byte 0x00004637
_08006078: .4byte 0x000045FC
_0800607C: .4byte 0x06000780
_08006080:
	str r1, [sp, #0x4c]
	mov r5, r8
	str r5, [sp, #0x3c]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs _0800609A
	adds r0, r1, #0
_0800609A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _080060B8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov r8, r4
	cmp r0, #0
	bne _080060BC
	mov r0, r8
	bl sub_80D3BC0
	b _080060BC
_080060B8:
	movs r0, #0
	mov r8, r0
_080060BC:
	adds r5, r0, #0
	str r5, [sp, #0x50]
	ldr r2, [r6]
	adds r3, r5, #0
	b _080060DA
_080060C6:
	cmp r3, #0
	beq _080060D6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_080060D6:
	adds r2, #0x10
	adds r3, #0x10
_080060DA:
	ldr r0, [sp, #0x4c]
	cmp r2, r0
	bne _080060C6
	adds r5, r3, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne _080060FC
	cmp r5, #0
	beq _080060F8
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_080060F8:
	adds r5, #0x10
	b _0800611E
_080060FC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq _0800611C
_08006104:
	cmp r2, #0
	beq _08006114
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_08006114:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne _08006104
_0800611C:
	adds r5, r2, #0
_0800611E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq _0800612E
_08006128:
	adds r1, #0x10
	cmp r1, r2
	bne _08006128
_0800612E:
	cmp r0, #0
	beq _08006136
	bl sub_80D0260
_08006136:
	ldr r0, [sp, #0x50]
	add r0, r8
	ldr r7, [sp, #0x50]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
_08006142:
	ldr r0, _08006198 @ =0x000045F8
	add r0, sl
	ldr r0, [r0]
	mov sb, r0
	mov r0, sl
	bl sub_80088DC
	mov r8, r0
	mov r0, sl
	bl sub_8008920
	adds r6, r0, #0
	mov r0, sl
	bl sub_8008918
	adds r5, r0, #0
	mov r0, sl
	bl sub_8008940
	adds r4, r0, #0
	mov r0, sl
	bl sub_800894C
	ldr r1, _0800619C @ =0x000045F0
	add r1, sl
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_8050D3C
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006198: .4byte 0x000045F8
_0800619C: .4byte 0x000045F0

	thumb_func_start sub_80061A0
sub_80061A0: @ 0x080061A0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, _080062E4 @ =0x00004608
	adds r1, r7, r0
	movs r0, #0
	movs r2, #8
	bl sub_8008EB8
	ldr r2, _080062E8 @ =0x00004614
	adds r1, r7, r2
	movs r0, #0
	movs r2, #8
	bl sub_8008EB8
	ldr r4, _080062EC @ =0x0000460B
	adds r3, r7, r4
	ldrb r2, [r3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	ldr r0, _080062F0 @ =0x00004617
	adds r3, r7, r0
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	ldr r2, _080062F4 @ =0x00004615
	adds r3, r7, r2
	ldrb r0, [r3]
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r3]
	ldr r0, _080062F8 @ =0x00004609
	adds r4, r7, r0
	ldrb r2, [r4]
	movs r1, #0xd
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	movs r2, #4
	orrs r0, r2
	strb r0, [r4]
	ldrb r0, [r3]
	ands r1, r0
	orrs r1, r2
	strb r1, [r3]
	ldr r2, _080062FC @ =0x0000460C
	adds r4, r7, r2
	ldr r0, _08006300 @ =0x000003FF
	adds r5, r0, #0
	adds r2, r6, #0
	ands r2, r5
	ldrh r3, [r4]
	ldr r1, _08006304 @ =0xFFFFFC00
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strh r0, [r4]
	ldr r4, _08006308 @ =0x00004618
	adds r3, r7, r4
	ands r2, r5
	ldrh r0, [r3]
	ands r1, r0
	orrs r1, r2
	strh r1, [r3]
	ldr r0, _0800630C @ =0x0000460D
	adds r3, r7, r0
	ldrb r2, [r3]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	movs r4, #0x40
	orrs r0, r4
	strb r0, [r3]
	ldr r0, _08006310 @ =0x00004619
	adds r2, r7, r0
	ldrb r0, [r2]
	ands r1, r0
	orrs r1, r4
	strb r1, [r2]
	movs r3, #0
	lsls r6, r6, #5
	ldr r2, _08006314 @ =0x88888888
_0800624C:
	lsls r1, r3, #2
	adds r1, r6, r1
	ldr r4, _08006318 @ =0x06010000
	adds r0, r1, r4
	str r2, [r0]
	adds r4, #0x20
	adds r0, r1, r4
	str r2, [r0]
	adds r4, #0x20
	adds r0, r1, r4
	str r2, [r0]
	adds r4, #0x20
	adds r0, r1, r4
	str r2, [r0]
	adds r4, #0x20
	adds r0, r1, r4
	str r2, [r0]
	adds r4, #0x20
	adds r0, r1, r4
	str r2, [r0]
	adds r4, #0x20
	adds r0, r1, r4
	str r2, [r0]
	ldr r0, _0800631C @ =0x060100E0
	adds r1, r1, r0
	str r2, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0800624C
	ldr r1, _08006320 @ =0x05000290
	ldr r2, _08006324 @ =0x0000027F
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _08006328 @ =0x00004616
	adds r3, r7, r4
	ldrh r1, [r3]
	ldr r2, _0800632C @ =0xFFFFFE00
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x90
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _080062E8 @ =0x00004614
	adds r1, r7, r0
	movs r4, #8
	movs r0, #8
	strb r0, [r1]
	ldr r0, _08006330 @ =0x0000460A
	adds r1, r7, r0
	ldrh r0, [r1]
	ands r2, r0
	strh r2, [r1]
	ldr r2, _080062E4 @ =0x00004608
	adds r1, r7, r2
	movs r0, #0x20
	strb r0, [r1]
	ldr r0, _08006310 @ =0x00004619
	adds r3, r7, r0
	ldrb r2, [r3]
	movs r1, #0xd
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r3]
	ldr r0, _0800630C @ =0x0000460D
	adds r2, r7, r0
	ldrb r0, [r2]
	ands r1, r0
	orrs r1, r4
	strb r1, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080062E4: .4byte 0x00004608
_080062E8: .4byte 0x00004614
_080062EC: .4byte 0x0000460B
_080062F0: .4byte 0x00004617
_080062F4: .4byte 0x00004615
_080062F8: .4byte 0x00004609
_080062FC: .4byte 0x0000460C
_08006300: .4byte 0x000003FF
_08006304: .4byte 0xFFFFFC00
_08006308: .4byte 0x00004618
_0800630C: .4byte 0x0000460D
_08006310: .4byte 0x00004619
_08006314: .4byte 0x88888888
_08006318: .4byte 0x06010000
_0800631C: .4byte 0x060100E0
_08006320: .4byte 0x05000290
_08006324: .4byte 0x0000027F
_08006328: .4byte 0x00004616
_0800632C: .4byte 0xFFFFFE00
_08006330: .4byte 0x0000460A

	thumb_func_start sub_8006334
sub_8006334: @ 0x08006334
	ldr r2, _08006370 @ =0x00004639
	adds r1, r0, r2
	movs r2, #0
	strb r2, [r1]
	ldr r3, _08006374 @ =0x00004638
	adds r1, r0, r3
	strb r2, [r1]
	subs r3, #2
	adds r1, r0, r3
	strb r2, [r1]
	adds r3, #1
	adds r1, r0, r3
	strb r2, [r1]
	subs r3, #0x32
	adds r1, r0, r3
	strb r2, [r1]
	subs r3, #1
	adds r1, r0, r3
	strb r2, [r1]
	subs r3, #4
	adds r1, r0, r3
	str r2, [r1]
	adds r3, #0x10
	adds r1, r0, r3
	strb r2, [r1]
	ldr r1, _08006378 @ =0x0000463C
	adds r0, r0, r1
	str r2, [r0]
	bx lr
	.align 2, 0
_08006370: .4byte 0x00004639
_08006374: .4byte 0x00004638
_08006378: .4byte 0x0000463C

	thumb_func_start sub_800637C
sub_800637C: @ 0x0800637C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r5, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #3
	mov sb, r0
	movs r1, #0x60
	movs r2, #0x10
	movs r3, #0
	add r0, sp, #0x1c
	movs r6, #0x1e
	movs r4, #2
	mov r8, r4
	strh r6, [r0]
	mov r7, r8
	strh r7, [r0, #2]
	ldr r0, [sp, #0x1c]
	ldr r7, _08006410 @ =0x00003C2C
	adds r4, r5, r7
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	adds r1, r4, #0
	movs r2, #0
	bl sub_804E7DC
	ldr r0, _08006414 @ =0x0000461C
	adds r1, r5, r0
	add r0, sp, #0x20
	strh r6, [r0]
	mov r2, r8
	strh r2, [r0, #2]
	ldr r0, [sp, #0x20]
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #0x90
	movs r3, #0
	bl sub_804E8F0
	adds r0, r5, #0
	bl sub_8008910
	adds r6, r0, #0
	mov r3, sb
	lsls r2, r3, #3
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0xc
	adds r1, r4, #0
	bl sub_8008F0C
	add r4, sp, #0xc
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq _08006418
	cmp r1, #0
	beq _08006408
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_08006408:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b _080064D8
	.align 2, 0
_08006410: .4byte 0x00003C2C
_08006414: .4byte 0x0000461C
_08006418:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r1, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs _08006430
	adds r0, r1, #0
_08006430:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _0800644E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov r8, r4
	cmp r0, #0
	bne _08006452
	mov r0, r8
	bl sub_80D3BC0
	b _08006452
_0800644E:
	movs r0, #0
	mov r8, r0
_08006452:
	adds r5, r0, #0
	str r5, [sp, #0x2c]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq _08006476
_0800645E:
	cmp r3, #0
	beq _0800646E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_0800646E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne _0800645E
_08006476:
	adds r5, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne _08006492
	cmp r5, #0
	beq _0800648E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_0800648E:
	adds r5, #0x10
	b _080064B4
_08006492:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq _080064B2
_0800649A:
	cmp r2, #0
	beq _080064AA
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
_080064AA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne _0800649A
_080064B2:
	adds r5, r2, #0
_080064B4:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq _080064C4
_080064BE:
	adds r1, #0x10
	cmp r1, r2
	bne _080064BE
_080064C4:
	cmp r0, #0
	beq _080064CC
	bl sub_80D0260
_080064CC:
	ldr r0, [sp, #0x2c]
	add r0, r8
	ldr r7, [sp, #0x2c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
_080064D8:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80064E8
sub_80064E8: @ 0x080064E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	mov sl, r0
	ldr r0, _080065D0 @ =0x00004637
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08006502
	b _08006842
_08006502:
	movs r0, #1
	mov r8, r0
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x40]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x44]
	mov r3, sp
	adds r3, #0x24
	str r3, [sp, #0x48]
	ldr r4, _080065D4 @ =0x000034A8
	add r4, sl
	str r4, [sp, #0x50]
	mov r6, sp
	adds r6, #4
	str r6, [sp, #0x3c]
_08006524:
	mov r7, r8
	lsls r4, r7, #4
	subs r4, r4, r7
	lsls r4, r4, #5
	add r4, r8
	lsls r4, r4, #2
	mov r0, sl
	adds r1, r4, r0
	add r0, sp, #0x14
	movs r2, #0x1e
	strh r2, [r0]
	movs r6, #2
	ldr r3, [sp, #0x40]
	strh r6, [r3, #2]
	ldr r0, [sp, #0x14]
	adds r1, #0xc
	movs r2, #0
	bl sub_804E7A0
	movs r0, #0x8c
	lsls r0, r0, #7
	add r0, sl
	ldr r3, [r0]
	mov r7, sl
	adds r1, r4, r7
	mov r0, r8
	lsls r2, r0, #5
	subs r2, r2, r0
	movs r0, #0xba
	muls r0, r3, r0
	adds r2, r2, r0
	ldr r0, _080065D8 @ =0x080E8997
	adds r2, r2, r0
	add r0, sp, #0x18
	movs r3, #0x1e
	strh r3, [r0]
	ldr r7, [sp, #0x44]
	strh r6, [r7, #2]
	ldr r0, [sp, #0x18]
	adds r1, #0xc
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl sub_804E8F0
	mov r0, sl
	bl sub_8008910
	add r4, sl
	adds r4, #0xc
	movs r1, #0xf0
	lsls r1, r1, #3
	mov r2, r8
	muls r2, r1, r2
	adds r5, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	add r0, sp, #4
	adds r1, r4, #0
	movs r3, #0xf0
	lsls r3, r3, #3
	bl sub_8008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _080065DC
	cmp r1, #0
	beq _080065BC
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
_080065BC:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	movs r0, #1
	add r8, r0
	movs r1, #0xf0
	lsls r1, r1, #3
	lsls r1, r1, #3
	str r1, [sp, #0x4c]
	b _080066AE
	.align 2, 0
_080065D0: .4byte 0x00004637
_080065D4: .4byte 0x000034A8
_080065D8: .4byte 0x080E8997
_080065DC:
	str r1, [sp, #0x54]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r0, [r5]
	adds r2, r1, #0
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r1, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs _080065F6
	adds r0, r1, #0
_080065F6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _08006614
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov sb, r4
	cmp r0, #0
	bne _08006618
	mov r0, sb
	bl sub_80D3BC0
	b _08006618
_08006614:
	movs r0, #0
	mov sb, r0
_08006618:
	adds r4, r0, #0
	str r4, [sp, #0x58]
	ldr r2, [r5]
	adds r3, r4, #0
	movs r4, #1
	add r8, r4
	movs r6, #0xf0
	lsls r6, r6, #3
	lsls r6, r6, #3
	str r6, [sp, #0x4c]
	ldr r7, [sp, #0x54]
	cmp r2, r7
	beq _0800664C
_08006632:
	cmp r3, #0
	beq _08006642
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
_08006642:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x54]
	cmp r2, r0
	bne _08006632
_0800664C:
	adds r4, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _08006668
	cmp r4, #0
	beq _08006664
	adds r0, r4, #0
	ldr r1, [sp, #0x3c]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
_08006664:
	adds r4, #0x10
	b _0800668A
_08006668:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq _08006688
_08006670:
	cmp r2, #0
	beq _08006680
	adds r0, r2, #0
	ldr r1, [sp, #0x3c]
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
_08006680:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne _08006670
_08006688:
	adds r4, r2, #0
_0800668A:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq _0800669A
_08006694:
	adds r1, #0x10
	cmp r1, r2
	bne _08006694
_0800669A:
	cmp r0, #0
	beq _080066A2
	bl sub_80D0260
_080066A2:
	ldr r0, [sp, #0x58]
	add r0, sb
	ldr r7, [sp, #0x58]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
_080066AE:
	mov r0, r8
	cmp r0, #6
	bhi _080066B6
	b _08006524
_080066B6:
	movs r4, #0x1e
	movs r5, #2
	add r0, sp, #0x24
	strh r4, [r0]
	ldr r1, [sp, #0x48]
	strh r5, [r1, #2]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x50]
	movs r2, #0
	bl sub_804E7A0
	movs r0, #0x8c
	lsls r0, r0, #7
	add r0, sl
	ldr r2, [r0]
	cmp r2, #1
	beq _080066F8
	cmp r2, #1
	bgt _080066E2
	cmp r2, #0
	beq _080066E8
	b _0800672A
_080066E2:
	cmp r2, #2
	beq _08006714
	b _0800672A
_080066E8:
	ldr r1, _080066F4 @ =0x080E8BFC
	add r0, sp, #0x28
	strh r4, [r0]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x28]
	b _08006702
	.align 2, 0
_080066F4: .4byte 0x080E8BFC
_080066F8:
	ldr r1, _08006710 @ =0x080E8C14
	add r0, sp, #0x2c
	strh r4, [r0]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x2c]
_08006702:
	str r1, [sp]
	ldr r1, [sp, #0x50]
	movs r2, #0x18
	movs r3, #0
	bl sub_804E8F0
	b _0800672A
	.align 2, 0
_08006710: .4byte 0x080E8C14
_08006714:
	ldr r1, _08006770 @ =0x080E8C14
	add r0, sp, #0x30
	strh r4, [r0]
	strh r2, [r0, #2]
	ldr r0, [sp, #0x30]
	str r1, [sp]
	ldr r1, [sp, #0x50]
	movs r2, #0x18
	movs r3, #0
	bl sub_804E8F0
_0800672A:
	mov r0, sl
	bl sub_8008910
	adds r5, r0, #0
	ldr r3, [sp, #0x4c]
	movs r4, #0xf0
	lsls r4, r4, #3
	subs r2, r3, r4
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r2, r2, r6
	add r0, sp, #4
	ldr r1, [sp, #0x50]
	adds r3, r4, #0
	bl sub_8008F0C
	add r7, sp, #4
	mov sb, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq _08006774
	cmp r1, #0
	beq _08006766
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
_08006766:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b _0800683A
	.align 2, 0
_08006770: .4byte 0x080E8C14
_08006774:
	str r1, [sp, #0x54]
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x34]
	add r1, sp, #0x38
	add r0, sp, #0x34
	cmp r4, #1
	bhs _0800678E
	adds r0, r1, #0
_0800678E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq _080067AC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl sub_80D01F8
	mov r8, r4
	cmp r0, #0
	bne _080067B0
	mov r0, r8
	bl sub_80D3BC0
	b _080067B0
_080067AC:
	movs r0, #0
	mov r8, r0
_080067B0:
	adds r4, r0, #0
	str r4, [sp, #0x58]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r7, [sp, #0x54]
	cmp r2, r7
	beq _080067D8
_080067BE:
	cmp r3, #0
	beq _080067CE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
_080067CE:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x54]
	cmp r2, r0
	bne _080067BE
_080067D8:
	adds r4, r3, #0
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne _080067F4
	cmp r4, #0
	beq _080067F0
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
_080067F0:
	adds r4, #0x10
	b _08006816
_080067F4:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq _08006814
_080067FC:
	cmp r2, #0
	beq _0800680C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
_0800680C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne _080067FC
_08006814:
	adds r4, r2, #0
_08006816:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq _08006826
_08006820:
	adds r1, #0x10
	cmp r1, r2
	bne _08006820
_08006826:
	cmp r0, #0
	beq _0800682E
	bl sub_80D0260
_0800682E:
	ldr r0, [sp, #0x58]
	add r0, r8
	ldr r7, [sp, #0x58]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
_0800683A:
	ldr r1, _08006854 @ =0x00004637
	add r1, sl
	movs r0, #0
	strb r0, [r1]
_08006842:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006854: .4byte 0x00004637

	thumb_func_start sub_8006858
sub_8006858: @ 0x08006858
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080068BC @ =0x0000463C
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0800688E
	adds r0, r4, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r5, _080068C0 @ =0x00004608
	adds r1, r4, r5
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi _0800688E
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r1]
	str r1, [r0]
	adds r5, #4
	adds r1, r4, r5
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
_0800688E:
	adds r0, r4, #0
	bl sub_8008920
	adds r3, r0, #0
	ldr r0, _080068C4 @ =0x00004614
	adds r1, r4, r0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi _080068B6
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r1]
	str r1, [r0]
	ldr r5, _080068C8 @ =0x00004618
	adds r1, r4, r5
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
_080068B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080068BC: .4byte 0x0000463C
_080068C0: .4byte 0x00004608
_080068C4: .4byte 0x00004614
_080068C8: .4byte 0x00004618

	thumb_func_start sub_80068CC
sub_80068CC: @ 0x080068CC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, _08006948 @ =0x00004610
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r1, #0x90
	ldr r2, _0800694C @ =0x00004616
	adds r3, r4, r2
	ldr r0, _08006950 @ =0x000001FF
	adds r7, r0, #0
	ands r1, r7
	ldrh r2, [r3]
	ldr r6, _08006954 @ =0xFFFFFE00
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r2, _08006958 @ =0x00004614
	adds r1, r4, r2
	movs r0, #8
	strb r0, [r1]
	ldr r0, _0800695C @ =0x00004605
	adds r5, r4, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #5
	bgt _08006970
	ldr r1, _08006960 @ =0x00004604
	adds r0, r4, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #4
	subs r2, #0xa
	adds r3, r4, r2
	ands r1, r7
	ldrh r2, [r3]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #4
	adds r0, #0x20
	ldr r2, _08006964 @ =0x00004608
	adds r1, r4, r2
	strb r0, [r1]
	ldr r0, _08006968 @ =0x0000460B
	adds r3, r4, r0
	ldrb r2, [r3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	ldr r0, _0800696C @ =0x00004609
	adds r2, r4, r0
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #0x80
	b _080069CC
	.align 2, 0
_08006948: .4byte 0x00004610
_0800694C: .4byte 0x00004616
_08006950: .4byte 0x000001FF
_08006954: .4byte 0xFFFFFE00
_08006958: .4byte 0x00004614
_0800695C: .4byte 0x00004605
_08006960: .4byte 0x00004604
_08006964: .4byte 0x00004608
_08006968: .4byte 0x0000460B
_0800696C: .4byte 0x00004609
_08006970:
	movs r2, #0
	ldr r1, _080069D8 @ =0x00004604
	adds r0, r4, r1
	ldrb r1, [r0]
	cmp r1, #4
	bls _0800698C
_0800697C:
	subs r0, r1, #5
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r1, #4
	bhi _0800697C
_0800698C:
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, #0x18
	ldr r2, _080069DC @ =0x0000460A
	adds r3, r4, r2
	ldr r2, _080069E0 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r3]
	ldr r0, _080069E4 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r0, _080069E8 @ =0x00004608
	adds r1, r4, r0
	movs r0, #0x88
	strb r0, [r1]
	ldr r1, _080069EC @ =0x0000460B
	adds r3, r4, r1
	ldrb r2, [r3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r3]
	ldr r0, _080069F0 @ =0x00004609
	adds r2, r4, r0
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #0x40
_080069CC:
	orrs r1, r0
	strb r1, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080069D8: .4byte 0x00004604
_080069DC: .4byte 0x0000460A
_080069E0: .4byte 0x000001FF
_080069E4: .4byte 0xFFFFFE00
_080069E8: .4byte 0x00004608
_080069EC: .4byte 0x0000460B
_080069F0: .4byte 0x00004609

	thumb_func_start sub_80069F4
sub_80069F4: @ 0x080069F4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_80088D4
	adds r1, r0, #0
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	beq _08006A60
	ldr r1, _08006A54 @ =0x000045F4
	adds r0, r4, r1
	movs r1, #0xcb
	bl sub_8008B6C
	ldr r3, _08006A58 @ =0x00004605
	adds r2, r4, r3
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08006A30
	movs r0, #6
	strb r0, [r2]
	ldr r0, _08006A5C @ =0x00004604
	adds r1, r4, r0
	movs r0, #0xc
	strb r0, [r1]
_08006A30:
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #5
	beq _08006A3C
	b _08006B8A
_08006A3C:
	ldr r3, _08006A5C @ =0x00004604
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bgt _08006A4C
	b _08006B8A
_08006A4C:
	subs r0, r1, #1
	strb r0, [r2]
	b _08006B8A
	.align 2, 0
_08006A54: .4byte 0x000045F4
_08006A58: .4byte 0x00004605
_08006A5C: .4byte 0x00004604
_08006A60:
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _08006AC8
	ldr r1, _08006ABC @ =0x000045F4
	adds r0, r4, r1
	movs r1, #0xcb
	bl sub_8008B6C
	ldr r3, _08006AC0 @ =0x00004605
	adds r1, r4, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #6
	ble _08006A8A
	strb r6, [r1]
_08006A8A:
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	bne _08006AA6
	ldr r3, _08006AC4 @ =0x00004604
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	ble _08006AA6
	adds r0, r2, #1
	strb r0, [r1]
_08006AA6:
	ldr r1, _08006AC0 @ =0x00004605
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #6
	bne _08006B8A
	ldr r3, _08006AC4 @ =0x00004604
	adds r1, r4, r3
	movs r0, #0xc
	b _08006B88
	.align 2, 0
_08006ABC: .4byte 0x000045F4
_08006AC0: .4byte 0x00004605
_08006AC4: .4byte 0x00004604
_08006AC8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08006B2C
	ldr r1, _08006AF0 @ =0x000045F4
	adds r0, r4, r1
	movs r1, #0xcb
	bl sub_8008B6C
	ldr r0, _08006AF4 @ =0x00004605
	adds r3, r4, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #6
	bne _08006AFC
	ldr r3, _08006AF8 @ =0x00004604
	adds r1, r4, r3
	movs r0, #0xc
	b _08006B88
	.align 2, 0
_08006AF0: .4byte 0x000045F4
_08006AF4: .4byte 0x00004605
_08006AF8: .4byte 0x00004604
_08006AFC:
	ldr r0, _08006B1C @ =0x00004604
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bne _08006B20
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xc
	ble _08006B8A
	strb r5, [r1]
	b _08006B8A
	.align 2, 0
_08006B1C: .4byte 0x00004604
_08006B20:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xe
	ble _08006B8A
	strb r5, [r1]
	b _08006B8A
_08006B2C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08006B8A
	ldr r1, _08006B54 @ =0x000045F4
	adds r0, r4, r1
	movs r1, #0xcb
	bl sub_8008B6C
	ldr r0, _08006B58 @ =0x00004605
	adds r3, r4, r0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #6
	bne _08006B60
	ldr r3, _08006B5C @ =0x00004604
	adds r1, r4, r3
	movs r0, #0xc
	b _08006B88
	.align 2, 0
_08006B54: .4byte 0x000045F4
_08006B58: .4byte 0x00004605
_08006B5C: .4byte 0x00004604
_08006B60:
	ldr r0, _08006B7C @ =0x00004604
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bne _08006B80
	lsls r0, r2, #0x18
	cmp r0, #0
	bge _08006B8A
	movs r0, #0xc
	b _08006B88
	.align 2, 0
_08006B7C: .4byte 0x00004604
_08006B80:
	lsls r0, r2, #0x18
	cmp r0, #0
	bge _08006B8A
	movs r0, #0xe
_08006B88:
	strb r0, [r1]
_08006B8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8006B90
sub_8006B90: @ 0x08006B90
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	ldr r3, _08006BDC @ =0x080E89B6
	ldr r1, _08006BE0 @ =0x00004604
	adds r0, r5, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #1
	ldr r2, _08006BE4 @ =0x00004605
	adds r0, r5, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r0, r2, #5
	subs r0, r0, r2
	adds r1, r1, r0
	movs r2, #0x8c
	lsls r2, r2, #7
	adds r0, r5, r2
	ldr r2, [r0]
	movs r0, #0xba
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	strb r1, [r4]
	ldr r3, _08006BE8 @ =0x00004610
	adds r2, r5, r3
	ldrb r4, [r2]
	adds r3, #0xc
	adds r0, r5, r3
	adds r3, r0, r4
	ldrb r0, [r3]
	cmp r0, r1
	bne _08006BEC
	adds r0, r4, #1
	b _08006BF2
	.align 2, 0
_08006BDC: .4byte 0x080E89B6
_08006BE0: .4byte 0x00004604
_08006BE4: .4byte 0x00004605
_08006BE8: .4byte 0x00004610
_08006BEC:
	strb r1, [r3]
	ldrb r0, [r2]
	adds r0, #1
_08006BF2:
	strb r0, [r2]
	ldr r0, _08006C1C @ =0x00004610
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0xb
	bls _08006C12
	ldr r3, _08006C20 @ =0x00004604
	adds r1, r5, r3
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, _08006C24 @ =0x00004605
	adds r1, r5, r0
	movs r0, #6
	strb r0, [r1]
	movs r0, #0xb
	strb r0, [r2]
_08006C12:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006C1C: .4byte 0x00004610
_08006C20: .4byte 0x00004604
_08006C24: .4byte 0x00004605

	thumb_func_start sub_8006C28
sub_8006C28: @ 0x08006C28
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xa
	bhi _08006C4A
	ldr r0, _08006C58 @ =0x0000461C
	adds r3, r4, r0
_08006C38:
	adds r2, r3, r1
	adds r1, #1
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0xa
	bls _08006C38
_08006C4A:
	ldr r0, _08006C5C @ =0x00004627
	adds r1, r4, r0
	movs r0, #0x5f
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006C58: .4byte 0x0000461C
_08006C5C: .4byte 0x00004627

	thumb_func_start sub_8006C60
sub_8006C60: @ 0x08006C60
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
	movs r5, #0
	ldr r0, _08006C88 @ =0x00004629
	adds r4, r7, r0
	subs r0, #0xd
	adds r1, r7, r0
	adds r0, r4, #0
	bl sub_80D3B28
	movs r1, #0
_08006C78:
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x5f
	bne _08006C8C
	adds r5, #1
	adds r0, r1, #1
	b _08006C96
	.align 2, 0
_08006C88: .4byte 0x00004629
_08006C8C:
	cmp r0, #0x20
	bne _08006C92
	adds r5, #1
_08006C92:
	adds r6, r1, #1
	adds r0, r6, #0
_08006C96:
	adds r1, r0, #0
	cmp r1, #0xb
	ble _08006C78
	cmp r5, #0xc
	bne _08006CA4
	movs r6, #0
	b _08006CC0
_08006CA4:
	movs r2, #0
	cmp r2, r6
	bge _08006CC0
	ldr r1, _08006CD8 @ =0x00004629
	adds r3, r7, r1
	movs r4, #0x20
_08006CB0:
	adds r1, r3, r2
	ldrb r0, [r1]
	cmp r0, #0x5f
	bne _08006CBA
	strb r4, [r1]
_08006CBA:
	adds r2, #1
	cmp r2, r6
	blt _08006CB0
_08006CC0:
	ldr r1, _08006CD8 @ =0x00004629
	adds r0, r7, r1
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	rsbs r0, r6, #0
	orrs r0, r6
	lsrs r0, r0, #0x1f
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08006CD8: .4byte 0x00004629

	thumb_func_start sub_8006CDC
sub_8006CDC: @ 0x08006CDC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08006D2C @ =0x0000463C
	adds r5, r4, r0
	ldr r6, [r5]
	cmp r6, #0
	beq _08006CEE
	b _08006EC8
_08006CEE:
	adds r0, r4, #0
	bl sub_80069F4
	adds r0, r4, #0
	bl sub_80088D4
	str r0, [sp]
	mov r0, sp
	ldrb r1, [r0]
	movs r7, #1
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08006DA6
	ldr r1, _08006D30 @ =0x00004605
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #5
	bgt _08006D34
	subs r1, #0x11
	adds r0, r4, r1
	movs r1, #0x6a
	bl sub_8008B6C
	adds r0, r4, #0
	bl sub_8006B90
	b _08006EC8
	.align 2, 0
_08006D2C: .4byte 0x0000463C
_08006D30: .4byte 0x00004605
_08006D34:
	ldr r1, _08006D54 @ =0x00004604
	adds r0, r4, r1
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bgt _08006D5C
	movs r0, #0x8c
	lsls r0, r0, #7
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #2
	bne _08006D58
	str r6, [r1]
	b _08006D7A
	.align 2, 0
_08006D54: .4byte 0x00004604
_08006D58:
	adds r0, #1
	b _08006D78
_08006D5C:
	subs r0, r1, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08006D98
	movs r0, #0x8c
	lsls r0, r0, #7
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08006D76
	movs r0, #2
	b _08006D78
_08006D76:
	subs r0, #1
_08006D78:
	str r0, [r1]
_08006D7A:
	ldr r1, _08006D90 @ =0x00004637
	adds r0, r4, r1
	movs r1, #1
	strb r1, [r0]
	ldr r1, _08006D94 @ =0x000045F4
	adds r0, r4, r1
	movs r1, #0xca
	bl sub_8008B6C
	b _08006EC8
	.align 2, 0
_08006D90: .4byte 0x00004637
_08006D94: .4byte 0x000045F4
_08006D98:
	adds r0, r4, #0
	bl sub_8006C60
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08006E48
	b _08006DE8
_08006DA6:
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08006E14
	ldr r0, _08006DC4 @ =0x00004610
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08006DC8
	subs r0, #1
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	b _08006E00
	.align 2, 0
_08006DC4: .4byte 0x00004610
_08006DC8:
	movs r2, #0
	movs r1, #0
	ldr r0, _08006DF4 @ =0x0000461C
	adds r3, r4, r0
_08006DD0:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0x5f
	bne _08006DDE
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08006DDE:
	adds r1, #1
	cmp r1, #0xb
	ble _08006DD0
	cmp r2, #0xc
	bne _08006DFC
_08006DE8:
	ldr r1, _08006DF8 @ =0x000045F4
	adds r0, r4, r1
	movs r1, #0xc7
	bl sub_8008B6C
	b _08006EC8
	.align 2, 0
_08006DF4: .4byte 0x0000461C
_08006DF8: .4byte 0x000045F4
_08006DFC:
	adds r0, r4, #0
	movs r1, #0
_08006E00:
	bl sub_8006C28
	ldr r1, _08006E10 @ =0x000045F4
	adds r0, r4, r1
	movs r1, #0x6c
	bl sub_8008B6C
	b _08006EC8
	.align 2, 0
_08006E10: .4byte 0x000045F4
_08006E14:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08006E78
	ldr r1, _08006E58 @ =0x00004605
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #6
	bne _08006E60
	subs r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08006E60
	cmp r0, #0xe
	bgt _08006E60
	adds r0, r4, #0
	bl sub_8006C60
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006E4A
_08006E48:
	str r7, [r5]
_08006E4A:
	ldr r1, _08006E5C @ =0x000045F4
	adds r0, r4, r1
	movs r1, #0xc5
	bl sub_8008B6C
	b _08006EC8
	.align 2, 0
_08006E58: .4byte 0x00004605
_08006E5C: .4byte 0x000045F4
_08006E60:
	ldr r0, _08006E70 @ =0x00004604
	adds r1, r4, r0
	movs r0, #0xc
	strb r0, [r1]
	ldr r0, _08006E74 @ =0x00004605
	adds r1, r4, r0
	movs r0, #6
	b _08006E90
	.align 2, 0
_08006E70: .4byte 0x00004604
_08006E74: .4byte 0x00004605
_08006E78:
	mov r0, sp
	ldrb r1, [r0, #1]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08006EA8
	ldr r0, _08006EA0 @ =0x00004610
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08006E92
	subs r0, #1
_08006E90:
	strb r0, [r1]
_08006E92:
	ldr r1, _08006EA4 @ =0x000045F4
	adds r0, r4, r1
	movs r1, #0xcb
	bl sub_8008B6C
	b _08006EC8
	.align 2, 0
_08006EA0: .4byte 0x00004610
_08006EA4: .4byte 0x000045F4
_08006EA8:
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08006EC8
	ldr r0, _08006ED0 @ =0x00004610
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0xb
	beq _08006EBE
	adds r0, #1
	strb r0, [r1]
_08006EBE:
	ldr r1, _08006ED4 @ =0x000045F4
	adds r0, r4, r1
	movs r1, #0xcb
	bl sub_8008B6C
_08006EC8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006ED0: .4byte 0x00004610
_08006ED4: .4byte 0x000045F4

	thumb_func_start sub_8006ED8
sub_8006ED8: @ 0x08006ED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r1, _08006F50 @ =0x0000463C
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08006EF2
	b _08007064
_08006EF2:
	ldr r2, _08006F54 @ =0x000045F8
	adds r4, r7, r2
	ldr r0, [r4]
	bl sub_8050D34
	adds r6, r0, #0
	ldr r4, [r4]
	mov sb, r4
	adds r0, r7, #0
	bl sub_80088DC
	mov r8, r0
	adds r0, r7, #0
	bl sub_8008920
	mov sl, r0
	adds r0, r7, #0
	bl sub_8008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl sub_8008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_800894C
	ldr r2, _08006F58 @ =0x000045F0
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	mov r2, sl
	adds r3, r5, #0
	bl sub_8050D3C
	cmp r0, #6
	bls _08006F44
	b _08007064
_08006F44:
	lsls r0, r0, #2
	ldr r1, _08006F5C @ =_08006F60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006F50: .4byte 0x0000463C
_08006F54: .4byte 0x000045F8
_08006F58: .4byte 0x000045F0
_08006F5C: .4byte _08006F60
_08006F60: @ jump table
	.4byte _08006F7C @ case 0
	.4byte _08007064 @ case 1
	.4byte _08007064 @ case 2
	.4byte _08006FD8 @ case 3
	.4byte _08007064 @ case 4
	.4byte _08007064 @ case 5
	.4byte _08007064 @ case 6
_08006F7C:
	ldr r0, _08006FC0 @ =0x00004638
	adds r2, r7, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08006F90
	ldr r0, _08006FC4 @ =0x0000463C
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	strb r0, [r2]
_08006F90:
	ldr r2, _08006FC8 @ =0x00004639
	adds r1, r7, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08006FB2
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08006FCC @ =0x00004636
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08006FD0 @ =0x0000461C
	adds r0, r7, r1
	subs r2, #0x10
	adds r1, r7, r2
	bl sub_80D3B28
_08006FB2:
	ldr r1, _08006FD4 @ =0x000045F8
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_8050D5C
	b _08007064
	.align 2, 0
_08006FC0: .4byte 0x00004638
_08006FC4: .4byte 0x0000463C
_08006FC8: .4byte 0x00004639
_08006FCC: .4byte 0x00004636
_08006FD0: .4byte 0x0000461C
_08006FD4: .4byte 0x000045F8
_08006FD8:
	cmp r6, #5
	bgt _08006FE6
	cmp r6, #4
	bge _08007064
	cmp r6, #1
	beq _08006FFC
	b _08006FEA
_08006FE6:
	cmp r6, #6
	beq _08007034
_08006FEA:
	ldr r2, _08006FF8 @ =0x000045F8
	adds r0, r7, r2
	ldr r0, [r0]
	bl sub_8050D74
	b _08007064
	.align 2, 0
_08006FF8: .4byte 0x000045F8
_08006FFC:
	ldr r1, _08007020 @ =0x0000463C
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08007064
	ldr r2, _08007024 @ =0x000045F8
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r1, _08007028 @ =0x080E8C2C
	ldr r2, _0800702C @ =0x080E8C44
	ldr r3, _08007030 @ =0x080E8C48
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_8050E30
	b _08007064
	.align 2, 0
_08007020: .4byte 0x0000463C
_08007024: .4byte 0x000045F8
_08007028: .4byte 0x080E8C2C
_0800702C: .4byte 0x080E8C44
_08007030: .4byte 0x080E8C48
_08007034:
	ldr r1, _0800704C @ =0x000045F8
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_8050DF0
	adds r2, r0, #0
	cmp r2, #1
	beq _08007050
	cmp r2, #2
	beq _0800705C
	b _08007064
	.align 2, 0
_0800704C: .4byte 0x000045F8
_08007050:
	ldr r1, _08007058 @ =0x00004639
	adds r0, r7, r1
	strb r2, [r0]
	b _08007064
	.align 2, 0
_08007058: .4byte 0x00004639
_0800705C:
	ldr r2, _08007074 @ =0x00004638
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
_08007064:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007074: .4byte 0x00004638

	thumb_func_start sub_8007078
sub_8007078: @ 0x08007078
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _0800709C @ =0x080E5AC0
	str r0, [r4]
	ldr r0, _080070A0 @ =0x00004640
	bl sub_80005D4
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_8005A58
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800709C: .4byte 0x080E5AC0
_080070A0: .4byte 0x00004640

	thumb_func_start sub_80070A4
sub_80070A4: @ 0x080070A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080070D0 @ =0x080E5AC0
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _080070C0
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_080070C0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080070D0: .4byte 0x080E5AC0

	thumb_func_start sub_80070D4
sub_80070D4: @ 0x080070D4
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl sub_8005B68
	ldr r2, [sp]
	mov r0, sp
	str r0, [sp, #4]
	str r2, [sp, #8]
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1]
	str r2, [r4]
	ldr r1, [sp]
	cmp r1, #0
	beq _08007104
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl sub_80D3914
_08007104:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8007110
sub_8007110: @ 0x08007110
	ldr r0, [r0, #4]
	ldr r1, _08007118 @ =0x0000461C
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08007118: .4byte 0x0000461C
_0800711C:
	.byte 0x01, 0x49, 0x40, 0x18
	.byte 0x70, 0x47, 0x00, 0x00, 0x1C, 0x46, 0x00, 0x00

	thumb_func_start sub_8007128
sub_8007128: @ 0x08007128
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r6, _08007170 @ =0x03000404
	ldr r5, [r6]
	cmp r5, #0
	bne _08007160
	movs r0, #0x54
	bl sub_80005D4
	adds r4, r0, #0
	adds r0, r4, #4
	movs r1, #0x10
	movs r2, #0
	bl sub_80D6D98
	str r0, [r4]
	str r5, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0
	strh r5, [r0]
	str r5, [r4, #0x4c]
	adds r0, #8
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	str r5, [r4, #0x44]
	str r4, [r6]
_08007160:
	ldr r1, [r6]
	ldr r0, [r1, #0x4c]
	adds r0, #1
	str r0, [r1, #0x4c]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007170: .4byte 0x03000404
_08007174:
	.byte 0x02, 0x49, 0x0A, 0x68, 0xD1, 0x6C, 0x01, 0x31, 0xD1, 0x64, 0x70, 0x47
	.byte 0x04, 0x04, 0x00, 0x03

	thumb_func_start sub_8007184
sub_8007184: @ 0x08007184
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r6, _080071B8 @ =0x03000404
	ldr r1, [r6]
	ldr r0, [r1, #0x4c]
	subs r4, r0, #1
	str r4, [r1, #0x4c]
	cmp r4, #0
	bne _080071A4
	cmp r1, #0
	beq _080071A2
	adds r0, r1, #0
	bl sub_8000608
_080071A2:
	str r4, [r6]
_080071A4:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080071B2
	adds r0, r7, #0
	bl sub_8000608
_080071B2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080071B8: .4byte 0x03000404

	thumb_func_start sub_80071BC
sub_80071BC: @ 0x080071BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r1
	str r2, [sp]
	ldr r0, _08007368 @ =0x03000404
	ldr r4, [r0]
	adds r1, r4, #0
	adds r1, #0x51
	ldrb r0, [r1]
	cmp r0, #0
	beq _08007238
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r3, [r0]
	ldrb r0, [r1]
	adds r6, r3, r0
	str r1, [sp, #8]
	cmp r3, r6
	bhs _08007232
	movs r7, #0x1f
	movs r0, #1
	mov ip, r0
	lsls r0, r3, #2
	adds r0, #4
	adds r5, r0, r4
_080071F6:
	movs r0, #0
	cmp r3, #0xf
	bhi _0800720E
	adds r0, r3, #0
	ands r0, r7
	mov r2, ip
	lsls r2, r0
	ldr r1, [r4, #0x44]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0800720E:
	cmp r0, #0
	beq _0800722A
	ldr r0, [r4]
	str r0, [r5]
	str r5, [r4]
	cmp r3, #0xf
	bhi _0800722A
	adds r0, r3, #0
	ands r0, r7
	mov r1, ip
	lsls r1, r0
	ldr r0, [r4, #0x44]
	bics r0, r1
	str r0, [r4, #0x44]
_0800722A:
	adds r5, #4
	adds r3, #1
	cmp r3, r6
	blo _080071F6
_08007232:
	movs r0, #0
	ldr r1, [sp, #8]
	strb r0, [r1]
_08007238:
	ldr r0, [sp]
	cmp r0, #0
	bne _08007240
	b _08007358
_08007240:
	add r0, sb
	mov sl, r0
	movs r3, #0
	adds r1, r4, #0
	adds r1, #0x51
	str r1, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x50
	str r0, [sp, #4]
	movs r1, #0x1f
	mov ip, r1
	movs r0, #1
	mov r8, r0
	adds r7, r4, #0
	adds r7, #0x48
	adds r6, r4, #4
	adds r5, r6, #0
_08007262:
	movs r0, #0
	cmp r3, #0xf
	bhi _0800727C
	adds r0, r3, #0
	mov r1, ip
	ands r0, r1
	mov r2, r8
	lsls r2, r0
	ldr r1, [r4, #0x44]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_0800727C:
	cmp r0, #0
	beq _080072AC
	cmp sb, r3
	bhi _080072AC
	cmp r3, sl
	bhs _080072AC
	movs r0, #0
	strh r0, [r5, #2]
	ldr r0, [r4]
	str r0, [r5]
	str r6, [r4]
	cmp r3, #0xf
	bhi _080072A6
	adds r0, r3, #0
	mov r1, ip
	ands r0, r1
	mov r1, r8
	lsls r1, r0
	ldr r0, [r4, #0x44]
	bics r0, r1
	str r0, [r4, #0x44]
_080072A6:
	ldrh r0, [r7]
	subs r0, #1
	strh r0, [r7]
_080072AC:
	adds r5, #4
	adds r6, #4
	adds r3, #1
	cmp r3, #0xf
	bls _08007262
	movs r6, #0
	movs r0, #1
	ldr r1, [sp]
	lsls r0, r1
	subs r3, r0, #1
	mov r0, sb
	lsls r3, r0
	movs r5, #1
	movs r7, #0x1f
_080072C8:
	ldr r0, [r4]
	adds r1, r0, #0
	cmp r0, #0
	beq _080072D4
	ldr r0, [r0]
	str r0, [r4]
_080072D4:
	cmp r1, #0
	beq _080072FE
	subs r0, r1, #4
	subs r0, r0, r4
	asrs r2, r0, #2
	cmp r2, #0xf
	bhi _080072F0
	adds r0, r2, #0
	ands r0, r7
	adds r1, r5, #0
	lsls r1, r0
	ldr r0, [r4, #0x44]
	orrs r0, r1
	str r0, [r4, #0x44]
_080072F0:
	adds r0, r5, #0
	lsls r0, r2
	orrs r6, r0
	adds r0, r6, #0
	ands r0, r3
	cmp r0, r3
	bne _080072C8
_080072FE:
	movs r5, #0
	mvns r1, r3
	adds r0, r6, #0
	ands r0, r1
	mov r8, r1
	cmp r0, #0
	beq _0800734A
	movs r7, #1
	adds r3, r4, #4
_08007310:
	adds r2, r7, #0
	lsls r2, r5
	adds r0, r6, #0
	ands r0, r2
	ands r0, r1
	cmp r0, #0
	beq _08007338
	ldr r0, [r4]
	str r0, [r3]
	str r3, [r4]
	cmp r5, #0xf
	bhi _08007336
	movs r0, #0x1f
	ands r0, r5
	adds r1, r7, #0
	lsls r1, r0
	ldr r0, [r4, #0x44]
	bics r0, r1
	str r0, [r4, #0x44]
_08007336:
	bics r6, r2
_08007338:
	adds r3, #4
	adds r5, #1
	mov r1, r8
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0800734A
	cmp r5, #0xf
	bls _08007310
_0800734A:
	mov r0, sb
	ldr r1, [sp, #4]
	strb r0, [r1]
	mov r1, sp
	ldrb r0, [r1]
	ldr r1, [sp, #8]
	strb r0, [r1]
_08007358:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007368: .4byte 0x03000404

	thumb_func_start sub_800736C
sub_800736C: @ 0x0800736C
	push {r4, r5, lr}
	ldr r0, _080073CC @ =0x03000404
	ldr r2, [r0]
	ldr r3, [r2]
	adds r5, r3, #0
	cmp r3, #0
	beq _080073D4
	ldr r0, [r3]
	str r0, [r2]
	cmp r3, #0
	beq _080073D4
	subs r0, r3, #4
	subs r0, r0, r2
	asrs r4, r0, #2
	cmp r4, #0xf
	bhi _0800739A
	movs r0, #0x1f
	ands r0, r4
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x44]
	orrs r0, r1
	str r0, [r2, #0x44]
_0800739A:
	adds r1, r2, #0
	adds r1, #0x48
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r0, #1
	strh r0, [r3]
	adds r1, #2
	ldrh r0, [r1]
	adds r0, #1
	ldr r2, _080073D0 @ =0x0000FFFF
	cmp r0, r2
	bls _080073B6
	movs r0, #1
_080073B6:
	strh r0, [r5, #2]
	strh r0, [r1]
	movs r1, #0xf
	ldrh r0, [r5, #2]
	ands r0, r2
	lsls r0, r0, #4
	adds r2, r4, #0
	ands r2, r1
	orrs r2, r0
	b _080073D6
	.align 2, 0
_080073CC: .4byte 0x03000404
_080073D0: .4byte 0x0000FFFF
_080073D4:
	movs r2, #0
_080073D6:
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80073E0
sub_80073E0: @ 0x080073E0
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r0, _08007458 @ =0x03000404
	ldr r3, [r0]
	cmp r4, #0
	beq _08007450
	lsls r0, r4, #0x1c
	lsrs r2, r0, #0x1c
	adds r5, r2, #0
	movs r0, #0
	cmp r2, #0xf
	bhi _08007406
	movs r0, #1
	lsls r0, r2
	ldr r1, [r3, #0x44]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08007406:
	cmp r0, #0
	beq _08007450
	lsls r0, r2, #2
	adds r0, #4
	adds r1, r3, r0
	movs r2, #0
	lsls r0, r4, #0xc
	lsrs r0, r0, #0x10
	ldrh r4, [r1, #2]
	cmp r0, r4
	bne _0800741E
	movs r2, #1
_0800741E:
	cmp r2, #0
	beq _08007450
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08007450
	strh r0, [r1, #2]
	ldr r0, [r3]
	str r0, [r1]
	str r1, [r3]
	cmp r5, #0xf
	bhi _08007446
	movs r1, #1
	lsls r1, r5
	ldr r0, [r3, #0x44]
	bics r0, r1
	str r0, [r3, #0x44]
_08007446:
	adds r1, r3, #0
	adds r1, #0x48
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_08007450:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007458: .4byte 0x03000404

	thumb_func_start sub_800745C
sub_800745C: @ 0x0800745C
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, _080074B0 @ =0x03000404
	ldr r2, [r0]
	cmp r3, #0
	beq _080074B6
	lsls r0, r3, #0x1c
	lsrs r1, r0, #0x1c
	adds r4, r1, #0
	movs r0, #0
	cmp r1, #0xf
	bhi _08007482
	movs r0, #1
	lsls r0, r1
	ldr r1, [r2, #0x44]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08007482:
	cmp r0, #0
	beq _080074B6
	lsls r0, r4, #2
	adds r0, #4
	adds r1, r2, r0
	movs r2, #0
	lsls r0, r3, #0xc
	lsrs r0, r0, #0x10
	ldrh r4, [r1, #2]
	cmp r0, r4
	bne _0800749A
	movs r2, #1
_0800749A:
	cmp r2, #0
	beq _080074B6
	ldrh r2, [r1]
	adds r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080074B4
	adds r0, r3, #0
	b _080074B8
	.align 2, 0
_080074B0: .4byte 0x03000404
_080074B4:
	strh r2, [r1]
_080074B6:
	movs r0, #0
_080074B8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80074C0
sub_80074C0: @ 0x080074C0
	push {r4, r5, lr}
	adds r3, r1, #0
	ldr r0, _0800750C @ =0x03000404
	ldr r4, [r0]
	cmp r3, #0
	beq _08007502
	lsls r0, r3, #0x1c
	lsrs r2, r0, #0x1c
	adds r5, r2, #0
	movs r0, #0
	cmp r2, #0xf
	bhi _080074E6
	movs r0, #1
	lsls r0, r2
	ldr r1, [r4, #0x44]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_080074E6:
	cmp r0, #0
	beq _08007502
	lsls r1, r2, #2
	adds r1, r1, r4
	movs r2, #0
	lsls r0, r3, #0xc
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #6]
	cmp r0, r1
	bne _080074FC
	movs r2, #1
_080074FC:
	adds r0, r5, #0
	cmp r2, #0
	bne _08007506
_08007502:
	movs r0, #1
	rsbs r0, r0, #0
_08007506:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800750C: .4byte 0x03000404

	thumb_func_start sub_8007510
sub_8007510: @ 0x08007510
	push {r4, lr}
	adds r2, r1, #0
	ldr r0, _08007558 @ =0x03000404
	ldr r3, [r0]
	cmp r2, #0
	beq _0800755C
	lsls r0, r2, #0x1c
	lsrs r1, r0, #0x1c
	adds r4, r1, #0
	movs r0, #0
	cmp r1, #0xf
	bhi _08007536
	movs r0, #1
	lsls r0, r1
	ldr r1, [r3, #0x44]
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08007536:
	cmp r0, #0
	beq _0800755C
	lsls r0, r4, #2
	adds r0, #4
	adds r1, r3, r0
	movs r3, #0
	lsls r0, r2, #0xc
	lsrs r0, r0, #0x10
	ldrh r2, [r1, #2]
	cmp r0, r2
	bne _0800754E
	movs r3, #1
_0800754E:
	cmp r3, #0
	beq _0800755C
	ldrh r0, [r1]
	b _0800755E
	.align 2, 0
_08007558: .4byte 0x03000404
_0800755C:
	movs r0, #0
_0800755E:
	pop {r4}
	pop {r1}
	bx r1
_08007564:
	.byte 0x02, 0x48, 0x00, 0x68, 0x48, 0x30, 0x00, 0x88, 0x70, 0x47, 0x00, 0x00
	.byte 0x04, 0x04, 0x00, 0x03, 0x10, 0x20, 0x70, 0x47, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
	.byte 0xE0, 0xB4, 0x88, 0xB0, 0x05, 0x90, 0x0C, 0x1C, 0x14, 0x20, 0xF9, 0xF7, 0x23, 0xF8, 0x07, 0x1C
	.byte 0x00, 0x20, 0x38, 0x60, 0x78, 0x60, 0x39, 0x1C, 0x08, 0x31, 0x48, 0x60, 0x26, 0x78, 0x38, 0x1C
	.byte 0x31, 0x1C, 0xCF, 0xF0, 0x09, 0xFC, 0x70, 0x1E, 0x00, 0x06, 0x06, 0x0E, 0xFF, 0x2E, 0x00, 0xD1
	.byte 0x9F, 0xE0, 0x01, 0xA8, 0x81, 0x46, 0x48, 0x46, 0xFF, 0xF7, 0xB6, 0xFD, 0x48, 0x46, 0xFF, 0xF7
	.byte 0xD5, 0xFE, 0x02, 0x90, 0x7C, 0x68, 0xF8, 0x68, 0x84, 0x42, 0x10, 0xD0, 0x00, 0x2C, 0x08, 0xD0
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0xA9, 0xFD, 0x4A, 0x46, 0x51, 0x68, 0x20, 0x1C, 0xFF, 0xF7, 0x3E, 0xFF
	.byte 0x60, 0x60, 0x78, 0x68, 0x08, 0x30, 0x78, 0x60, 0x01, 0x3E, 0x07, 0x96, 0x73, 0xE0, 0xA0, 0x46
	.byte 0x01, 0x20, 0x04, 0x90, 0x39, 0x68, 0x60, 0x1A, 0xC4, 0x10, 0x03, 0x94, 0x04, 0xAA, 0x03, 0xA8
	.byte 0x01, 0x2C, 0x00, 0xD2, 0x10, 0x1C, 0x00, 0x68, 0x20, 0x18, 0x00, 0x28, 0x0B, 0xD0, 0xC4, 0x00
	.byte 0x20, 0x1C, 0xC8, 0xF0, 0xF1, 0xFD, 0x06, 0x94, 0x00, 0x28, 0x02, 0xD1, 0x20, 0x1C, 0xCC, 0xF0
	.byte 0xCF, 0xFA, 0x39, 0x68, 0x02, 0xE0, 0x00, 0x20, 0x00, 0x22, 0x06, 0x92, 0x05, 0x1C, 0xAA, 0x46
	.byte 0x0D, 0x1C, 0x54, 0x46, 0x01, 0x3E, 0x07, 0x96, 0x45, 0x45, 0x0D, 0xD0, 0x00, 0x2C, 0x07, 0xD0
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0x71, 0xFD, 0x69, 0x68, 0x20, 0x1C, 0xFF, 0xF7, 0x07, 0xFF, 0x60, 0x60
	.byte 0x08, 0x35, 0x08, 0x34, 0x45, 0x45, 0xF1, 0xD1, 0x25, 0x1C, 0x04, 0x98, 0x01, 0x28, 0x0C, 0xD1
	.byte 0x00, 0x2D, 0x08, 0xD0, 0x28, 0x1C, 0xFF, 0xF7, 0x5F, 0xFD, 0x48, 0x46, 0x41, 0x68, 0x28, 0x1C
	.byte 0xFF, 0xF7, 0xF4, 0xFE, 0x68, 0x60, 0x08, 0x35, 0x13, 0xE0, 0x06, 0x1C, 0x2C, 0x1C, 0x00, 0x2E
	.byte 0x0E, 0xD0, 0x00, 0x2C, 0x08, 0xD0, 0x20, 0x1C, 0xFF, 0xF7, 0x4E, 0xFD, 0x4A, 0x46, 0x51, 0x68
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0xE3, 0xFE, 0x60, 0x60, 0x01, 0x3E, 0x08, 0x34, 0x00, 0x2E, 0xF0, 0xD1
	.byte 0x25, 0x1C, 0x7E, 0x68, 0x3C, 0x68, 0xB4, 0x42, 0x0A, 0xD0, 0x61, 0x68, 0x20, 0x1C, 0xFF, 0xF7
	.byte 0x97, 0xFE, 0x20, 0x1C, 0x02, 0x21, 0xFF, 0xF7, 0x65, 0xFD, 0x08, 0x34, 0xB4, 0x42, 0xF4, 0xD1
	.byte 0x38, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xC8, 0xF0, 0xCB, 0xFD, 0x06, 0x98, 0x50, 0x44, 0x51, 0x46
	.byte 0x39, 0x60, 0x7D, 0x60, 0xF8, 0x60, 0x02, 0x99, 0x48, 0x46, 0xFF, 0xF7, 0x81, 0xFE, 0x48, 0x46
	.byte 0x02, 0x21, 0xFF, 0xF7, 0x4F, 0xFD, 0x07, 0x9A, 0x10, 0x06, 0x06, 0x0E, 0xFF, 0x2E, 0x00, 0xD0
	.byte 0x61, 0xE7, 0x38, 0x68, 0x38, 0x61, 0x05, 0x98, 0x07, 0x60, 0x08, 0xB0, 0x38, 0xBC, 0x98, 0x46
	.byte 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start sub_800770C
sub_800770C: @ 0x0800770C
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_8007714
sub_8007714: @ 0x08007714
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, [r7]
	cmp r0, #0
	beq _08007754
	adds r6, r0, #0
	ldr r5, [r6, #4]
	ldr r4, [r6]
	cmp r4, r5
	beq _08007744
_0800772E:
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_80073E0
	adds r0, r4, #0
	movs r1, #2
	bl sub_8007184
	adds r4, #8
	cmp r4, r5
	bne _0800772E
_08007744:
	ldr r0, [r6]
	cmp r0, #0
	beq _0800774E
	bl sub_80D0260
_0800774E:
	adds r0, r6, #0
	bl sub_8000608
_08007754:
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08007764
	adds r0, r7, #0
	bl sub_8000608
_08007764:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8007770
sub_8007770: @ 0x08007770
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r1, [r1]
	cmp r1, #0
	beq _080077BE
	adds r6, r1, #0
	ldr r0, [r6, #4]
	mov r8, r0
	ldr r4, [r6, #0x10]
	cmp r4, r8
	beq _080077A8
	mov sb, r4
_0800778E:
	adds r5, r4, #0
	adds r4, #8
	cmp r4, r8
	bne _08007798
	ldr r4, [r6]
_08007798:
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8007510
	cmp r0, #1
	beq _080077B8
	cmp r4, sb
	bne _0800778E
_080077A8:
	adds r0, r7, #0
	bl sub_8007128
	ldr r1, [r4, #4]
	adds r0, r7, #0
	bl sub_800745C
	b _080077CA
_080077B8:
	str r4, [r6, #0x10]
	adds r4, r5, #0
	b _080077A8
_080077BE:
	adds r0, r7, #0
	bl sub_8007128
	adds r0, r7, #0
	bl sub_800736C
_080077CA:
	str r0, [r7, #4]
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80077DC
sub_80077DC: @ 0x080077DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0
	ldr r3, [r5]
	adds r0, r3, #1
	cmp r0, #0
	bne _080077EE
	movs r1, #1
_080077EE:
	cmp r1, #0
	bne _0800783A
	movs r0, #0
	cmp r3, #0
	bne _080077FA
	movs r0, #1
_080077FA:
	cmp r0, #0
	beq _0800781A
	movs r0, #1
	adds r1, r0, #0
	lsls r1, r4
	lsls r0, r1
	subs r0, #1
	orrs r3, r0
	str r3, [r5]
	movs r0, #0
	b _0800783C
_08007810:
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	adds r0, r4, #0
	b _0800783C
_0800781A:
	cmp r4, #4
	bhi _0800783A
	movs r0, #1
	adds r2, r0, #0
	lsls r2, r4
	movs r4, #0
	lsls r0, r2
	subs r1, r0, #1
_0800782A:
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08007810
	adds r4, r4, r2
	lsls r1, r2
	cmp r1, #0
	bne _0800782A
_0800783A:
	movs r0, #0x20
_0800783C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8007844
sub_8007844: @ 0x08007844
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	cmp r2, #4
	bhi _08007864
	movs r1, #1
	adds r0, r1, #0
	lsls r0, r2
	lsls r1, r0
	subs r1, #1
	movs r0, #0x1f
	ands r0, r4
	lsls r1, r0
	ldr r0, [r3]
	bics r0, r1
	b _0800786A
_08007864:
	cmp r2, #5
	bne _0800786C
	movs r0, #0
_0800786A:
	str r0, [r3]
_0800786C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8007874
sub_8007874: @ 0x08007874
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #8]
	ldr r0, _080079B4 @ =0x03000408
	ldr r4, [r0]
	cmp r4, #0
	beq _0800788C
	b _08007992
_0800788C:
	ldr r0, _080079B8 @ =0x0000092C
	bl sub_80005D4
	mov r8, r0
	str r4, [sp]
	mov r1, r8
	adds r1, #0x20
	mov r2, sp
	adds r2, #4
	str r2, [sp, #0x2c]
	cmp r8, r1
	beq _080078AC
	movs r2, #0
_080078A6:
	stm r0!, {r2}
	cmp r0, r1
	bne _080078A6
_080078AC:
	mov r0, r8
	adds r0, #0x24
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0
	bl sub_80D770C
	mov r1, r8
	str r0, [r1, #0x20]
	ldr r1, _080079BC @ =0x00000824
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	strb r0, [r1, #1]
	ldr r2, _080079C0 @ =0x00000828
	add r2, r8
	movs r4, #1
	mov r0, r8
	adds r0, #0x20
	str r0, [sp, #0x20]
	str r1, [sp, #0xc]
	movs r1, #0x92
	lsls r1, r1, #4
	add r1, r8
	str r1, [sp, #0x10]
	ldr r0, _080079C4 @ =0x00000924
	add r0, r8
	str r0, [sp, #0x14]
	ldr r1, _080079C8 @ =0x00000928
	add r1, r8
	str r1, [sp, #0x18]
	ldr r0, _080079CC @ =0x0000092A
	add r0, r8
	str r0, [sp, #0x1c]
	movs r7, #0
	mov ip, r4
	movs r6, #1
	rsbs r6, r6, #0
_080078FA:
	strb r7, [r2]
	mov r1, ip
	strb r1, [r2, #1]
	adds r0, r2, #4
	movs r3, #1
	adds r2, #0x7c
	str r2, [sp, #0x28]
	subs r4, #1
	str r4, [sp, #0x24]
_0800790C:
	strb r7, [r0]
	mov r2, ip
	strb r2, [r0, #1]
	adds r2, r0, #4
	movs r1, #1
	adds r0, #0x3c
	mov sb, r0
	subs r3, #1
	mov sl, r3
_0800791E:
	strb r7, [r2]
	mov r0, ip
	strb r0, [r2, #1]
	adds r0, r2, #4
	movs r3, #1
	adds r4, r2, #0
	adds r4, #0x1c
	subs r5, r1, #1
_0800792E:
	strb r7, [r0]
	mov r1, ip
	strb r1, [r0, #1]
	adds r1, r0, #4
	movs r2, #1
	adds r0, #0xc
	subs r3, #1
_0800793C:
	stm r1!, {r7}
	subs r2, #1
	cmp r2, r6
	bne _0800793C
	cmp r3, r6
	bne _0800792E
	adds r2, r4, #0
	adds r1, r5, #0
	cmp r1, r6
	bne _0800791E
	mov r0, sb
	mov r3, sl
	cmp r3, r6
	bne _0800790C
	ldr r2, [sp, #0x28]
	ldr r4, [sp, #0x24]
	cmp r4, r6
	bne _080078FA
	movs r0, #0
	ldr r2, [sp, #0x10]
	strh r0, [r2]
	ldr r1, [sp, #0x14]
	str r0, [r1]
	ldr r2, [sp, #0x18]
	strh r0, [r2]
	ldr r1, [sp, #0x1c]
	strh r0, [r1]
	str r0, [sp, #4]
	mov r0, r8
	ldr r2, [sp, #0x20]
	cmp r8, r2
	beq _08007986
	ldr r1, [sp, #0x2c]
	ldr r3, [r1]
_08007980:
	stm r0!, {r3}
	cmp r0, r2
	bne _08007980
_08007986:
	ldr r0, [sp, #0xc]
	bl sub_8007EC8
	mov r2, r8
	ldr r0, _080079B4 @ =0x03000408
	str r2, [r0]
_08007992:
	ldr r0, _080079B4 @ =0x03000408
	ldr r1, [r0]
	ldr r2, _080079C4 @ =0x00000924
	adds r1, r1, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, [sp, #8]
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080079B4: .4byte 0x03000408
_080079B8: .4byte 0x0000092C
_080079BC: .4byte 0x00000824
_080079C0: .4byte 0x00000828
_080079C4: .4byte 0x00000924
_080079C8: .4byte 0x00000928
_080079CC: .4byte 0x0000092A
_080079D0:
	.byte 0x03, 0x49, 0x0A, 0x68, 0x03, 0x49, 0x52, 0x18, 0x11, 0x68, 0x01, 0x31, 0x11, 0x60, 0x70, 0x47
	.byte 0x08, 0x04, 0x00, 0x03, 0x24, 0x09, 0x00, 0x00

	thumb_func_start sub_80079E8
sub_80079E8: @ 0x080079E8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r6, _08007A20 @ =0x03000408
	ldr r2, [r6]
	ldr r0, _08007A24 @ =0x00000924
	adds r1, r2, r0
	ldr r0, [r1]
	subs r4, r0, #1
	str r4, [r1]
	cmp r4, #0
	bne _08007A0C
	cmp r2, #0
	beq _08007A0A
	adds r0, r2, #0
	bl sub_8000608
_08007A0A:
	str r4, [r6]
_08007A0C:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08007A1A
	adds r0, r7, #0
	bl sub_8000608
_08007A1A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007A20: .4byte 0x03000408
_08007A24: .4byte 0x00000924

	thumb_func_start sub_8007A28
sub_8007A28: @ 0x08007A28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	str r2, [sp, #4]
	ldr r0, _08007B44 @ =0x03000408
	ldr r5, [r0]
	ldr r0, _08007B48 @ =0x0000092A
	adds r4, r5, r0
	ldrh r0, [r4]
	cmp r0, #0
	beq _08007A5A
	ldr r1, _08007B4C @ =0x00000824
	adds r0, r5, r1
	ldr r2, _08007B50 @ =0x00000928
	adds r1, r5, r2
	ldrh r1, [r1]
	ldrh r2, [r4]
	bl sub_8007F84
	movs r0, #0
	strh r0, [r4]
_08007A5A:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08007B32
	ldr r1, [sp]
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r7, #0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r0, r5, r2
	ldrh r1, [r0]
	str r4, [sp, #0x14]
	subs r2, #0xfc
	adds r2, r5, r2
	str r2, [sp, #0xc]
	ldr r2, _08007B50 @ =0x00000928
	adds r2, r5, r2
	str r2, [sp, #0x10]
	mov sl, r0
	cmp r1, #0
	beq _08007B18
	movs r0, #0x24
	adds r0, r0, r5
	mov r8, r0
	mov r6, r8
_08007A8C:
	movs r0, #0
	cmp r7, #0xff
	bhi _08007AAA
	lsrs r1, r7, #5
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r0, #0x1f
	ands r0, r7
	movs r2, #1
	lsls r2, r0
	ldr r1, [r1]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08007AAA:
	cmp r0, #0
	beq _08007B04
	ldrh r0, [r6]
	lsls r4, r0, #0x16
	lsrs r3, r4, #0x16
	ldrb r0, [r6, #1]
	lsls r2, r0, #0x1a
	lsrs r1, r2, #0x1c
	movs r0, #1
	mov sb, r0
	lsls r0, r1
	adds r0, r3, r0
	ldr r1, [sp]
	cmp r1, r0
	bhs _08007B04
	ldr r0, [sp, #8]
	cmp r3, r0
	bhs _08007B04
	adds r1, r3, #0
	lsrs r2, r2, #0x1c
	ldr r0, [sp, #0xc]
	bl sub_80080A0
	movs r0, #0
	strh r0, [r6, #4]
	ldr r0, [r5, #0x20]
	str r0, [r6]
	mov r1, r8
	str r1, [r5, #0x20]
	cmp r7, #0xff
	bhi _08007AFC
	lsrs r2, r7, #5
	lsls r2, r2, #2
	adds r2, r5, r2
	movs r0, #0x1f
	ands r0, r7
	mov r1, sb
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_08007AFC:
	mov r2, sl
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
_08007B04:
	adds r6, #8
	movs r0, #8
	add r8, r0
	adds r7, #1
	mov r1, sl
	ldrh r0, [r1]
	cmp r0, #0
	beq _08007B18
	cmp r7, #0xff
	bls _08007A8C
_08007B18:
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl sub_8007EE8
	mov r2, sp
	ldrh r0, [r2]
	ldr r2, [sp, #0x10]
	strh r0, [r2]
	mov r1, sp
	ldrh r2, [r1, #4]
	ldr r1, [sp, #0x14]
	strh r2, [r1]
_08007B32:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007B44: .4byte 0x03000408
_08007B48: .4byte 0x0000092A
_08007B4C: .4byte 0x00000824
_08007B50: .4byte 0x00000928

	thumb_func_start sub_8007B54
sub_8007B54: @ 0x08007B54
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	ldr r0, _08007BFC @ =0x03000408
	ldr r4, [r0]
	ldr r0, _08007C00 @ =0x00000824
	adds r6, r4, r0
	adds r0, r6, #0
	bl sub_8008020
	adds r5, r0, #0
	adds r1, r5, #0
	movs r0, #0
	ldr r2, _08007C04 @ =0x000003FF
	mov ip, r2
	cmp r5, ip
	bhi _08007B76
	movs r0, #1
_08007B76:
	cmp r0, #0
	beq _08007C1C
	adds r2, r4, #0
	adds r2, #0x20
	ldr r3, [r4, #0x20]
	cmp r3, #0
	beq _08007C14
	ldr r0, [r3]
	str r0, [r4, #0x20]
	cmp r3, #0
	beq _08007C14
	subs r0, r3, #4
	subs r0, r0, r2
	asrs r6, r0, #3
	cmp r6, #0xff
	bhi _08007BAA
	lsrs r2, r6, #5
	lsls r2, r2, #2
	adds r2, r4, r2
	movs r0, #0x1f
	ands r0, r6
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_08007BAA:
	movs r0, #0x92
	lsls r0, r0, #4
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	mov r2, ip
	ands r5, r2
	ldrh r1, [r3]
	ldr r0, _08007C08 @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r5
	strh r0, [r3]
	movs r0, #0xf
	ands r7, r0
	lsls r2, r7, #2
	ldrb r1, [r3, #1]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #1]
	movs r0, #1
	strh r0, [r3, #2]
	ldr r0, _08007C0C @ =0x00000922
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	ldr r2, _08007C10 @ =0x0000FFFF
	cmp r0, r2
	bls _08007BEA
	movs r0, #1
_08007BEA:
	strh r0, [r3, #4]
	strh r0, [r1]
	lsls r1, r6, #0x18
	ldrh r0, [r3, #4]
	ands r0, r2
	lsls r0, r0, #8
	lsrs r1, r1, #0x18
	orrs r1, r0
	b _08007C1E
	.align 2, 0
_08007BFC: .4byte 0x03000408
_08007C00: .4byte 0x00000824
_08007C04: .4byte 0x000003FF
_08007C08: .4byte 0xFFFFFC00
_08007C0C: .4byte 0x00000922
_08007C10: .4byte 0x0000FFFF
_08007C14:
	adds r0, r6, #0
	adds r2, r7, #0
	bl sub_80080A0
_08007C1C:
	movs r1, #0
_08007C1E:
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8007C28
sub_8007C28: @ 0x08007C28
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r3, r1, #0
	ldr r0, _08007CD0 @ =0x03000408
	ldr r6, [r0]
	cmp r3, #0
	beq _08007CC8
	str r3, [sp]
	mov r0, sp
	ldrb r5, [r0]
	movs r0, #0
	cmp r5, #0xff
	bhi _08007C5A
	lsrs r1, r5, #5
	lsls r1, r1, #2
	adds r1, r6, r1
	movs r0, #0x1f
	ands r0, r5
	movs r2, #1
	lsls r2, r0
	ldr r1, [r1]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08007C5A:
	cmp r0, #0
	beq _08007CC8
	adds r0, r6, #0
	adds r0, #0x20
	lsls r1, r5, #3
	adds r1, #4
	adds r4, r0, r1
	movs r1, #0
	lsls r0, r3, #8
	lsrs r0, r0, #0x10
	ldrh r2, [r4, #4]
	cmp r0, r2
	bne _08007C76
	movs r1, #1
_08007C76:
	cmp r1, #0
	beq _08007CC8
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	bne _08007CC8
	ldr r1, _08007CD4 @ =0x00000824
	adds r0, r6, r1
	ldrh r1, [r4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r2, [r4, #1]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1c
	bl sub_80080A0
	strh r7, [r4, #4]
	ldr r0, [r6, #0x20]
	str r0, [r4]
	str r4, [r6, #0x20]
	cmp r5, #0xff
	bhi _08007CBC
	lsrs r2, r5, #5
	lsls r2, r2, #2
	adds r2, r6, r2
	movs r0, #0x1f
	ands r5, r0
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_08007CBC:
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r6, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_08007CC8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007CD0: .4byte 0x03000408
_08007CD4: .4byte 0x00000824

	thumb_func_start sub_8007CD8
sub_8007CD8: @ 0x08007CD8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r0, _08007D3C @ =0x03000408
	ldr r5, [r0]
	cmp r4, #0
	beq _08007D42
	str r4, [sp]
	mov r0, sp
	ldrb r3, [r0]
	movs r0, #0
	cmp r3, #0xff
	bhi _08007D0A
	lsrs r1, r3, #5
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r0, #0x1f
	ands r0, r3
	movs r2, #1
	lsls r2, r0
	ldr r1, [r1]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08007D0A:
	cmp r0, #0
	beq _08007D42
	adds r0, r5, #0
	adds r0, #0x20
	lsls r1, r3, #3
	adds r1, #4
	adds r1, r0, r1
	movs r2, #0
	lsls r0, r4, #8
	lsrs r0, r0, #0x10
	ldrh r3, [r1, #4]
	cmp r0, r3
	bne _08007D26
	movs r2, #1
_08007D26:
	cmp r2, #0
	beq _08007D42
	ldrh r2, [r1, #2]
	adds r0, r2, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08007D40
	adds r0, r4, #0
	b _08007D44
	.align 2, 0
_08007D3C: .4byte 0x03000408
_08007D40:
	strh r2, [r1, #2]
_08007D42:
	movs r0, #0
_08007D44:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8007D4C
sub_8007D4C: @ 0x08007D4C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r0, _08007DA8 @ =0x03000408
	ldr r5, [r0]
	cmp r4, #0
	beq _08007DAC
	str r4, [sp]
	mov r0, sp
	ldrb r3, [r0]
	movs r0, #0
	cmp r3, #0xff
	bhi _08007D7E
	lsrs r1, r3, #5
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r0, #0x1f
	ands r0, r3
	movs r2, #1
	lsls r2, r0
	ldr r1, [r1]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08007D7E:
	cmp r0, #0
	beq _08007DAC
	adds r0, r5, #0
	adds r0, #0x20
	lsls r1, r3, #3
	adds r1, #4
	adds r1, r0, r1
	movs r2, #0
	lsls r0, r4, #8
	lsrs r0, r0, #0x10
	ldrh r3, [r1, #4]
	cmp r0, r3
	bne _08007D9A
	movs r2, #1
_08007D9A:
	cmp r2, #0
	beq _08007DAC
	ldrh r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	b _08007DB0
	.align 2, 0
_08007DA8: .4byte 0x03000408
_08007DAC:
	movs r0, #1
	rsbs r0, r0, #0
_08007DB0:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8007DB8
sub_8007DB8: @ 0x08007DB8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r0, _08007E14 @ =0x03000408
	ldr r5, [r0]
	cmp r4, #0
	beq _08007E18
	str r4, [sp]
	mov r0, sp
	ldrb r3, [r0]
	movs r0, #0
	cmp r3, #0xff
	bhi _08007DEA
	lsrs r1, r3, #5
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r0, #0x1f
	ands r0, r3
	movs r2, #1
	lsls r2, r0
	ldr r1, [r1]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08007DEA:
	cmp r0, #0
	beq _08007E18
	adds r0, r5, #0
	adds r0, #0x20
	lsls r1, r3, #3
	adds r1, #4
	adds r1, r0, r1
	movs r2, #0
	lsls r0, r4, #8
	lsrs r0, r0, #0x10
	ldrh r3, [r1, #4]
	cmp r0, r3
	bne _08007E06
	movs r2, #1
_08007E06:
	cmp r2, #0
	beq _08007E18
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1c
	b _08007E1A
	.align 2, 0
_08007E14: .4byte 0x03000408
_08007E18:
	movs r0, #0xb
_08007E1A:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8007E24
sub_8007E24: @ 0x08007E24
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r0, _08007E7C @ =0x03000408
	ldr r5, [r0]
	cmp r4, #0
	beq _08007E80
	str r4, [sp]
	mov r0, sp
	ldrb r3, [r0]
	movs r0, #0
	cmp r3, #0xff
	bhi _08007E56
	lsrs r1, r3, #5
	lsls r1, r1, #2
	adds r1, r5, r1
	movs r0, #0x1f
	ands r0, r3
	movs r2, #1
	lsls r2, r0
	ldr r1, [r1]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
_08007E56:
	cmp r0, #0
	beq _08007E80
	adds r0, r5, #0
	adds r0, #0x20
	lsls r1, r3, #3
	adds r1, #4
	adds r1, r0, r1
	movs r2, #0
	lsls r0, r4, #8
	lsrs r0, r0, #0x10
	ldrh r3, [r1, #4]
	cmp r0, r3
	bne _08007E72
	movs r2, #1
_08007E72:
	cmp r2, #0
	beq _08007E80
	ldrh r0, [r1, #2]
	b _08007E82
	.align 2, 0
_08007E7C: .4byte 0x03000408
_08007E80:
	movs r0, #0
_08007E82:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08007E8C:
	.byte 0x03, 0x48, 0x00, 0x68
	.byte 0x92, 0x21, 0x09, 0x01, 0x40, 0x18, 0x00, 0x88, 0x70, 0x47, 0x00, 0x00, 0x08, 0x04, 0x00, 0x03
	.byte 0x80, 0x20, 0x40, 0x00, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8007EA8
sub_8007EA8: @ 0x08007EA8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	bl sub_80D6EEC
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_80D6EEC
	movs r1, #0
	movs r0, #1
	strb r0, [r4]
	strb r1, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8007EC8
sub_8007EC8: @ 0x08007EC8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	bl sub_80D6F5C
	adds r0, r4, #4
	bl sub_80D6F5C
	movs r0, #0
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8007EE8
sub_8007EE8: @ 0x08007EE8
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	ldr r1, _08007F10 @ =0x000003FF
	cmp r4, r1
	bhi _08007F72
	adds r0, r2, #0
	cmp r0, #0
	beq _08007F72
	cmp r4, #0
	bne _08007F14
	cmp r0, r1
	bls _08007F14
	adds r0, r5, #0
	bl sub_8007EA8
	b _08007F72
	.align 2, 0
_08007F10: .4byte 0x000003FF
_08007F14:
	ldr r0, _08007F7C @ =0x000001FF
	cmp r4, r0
	bhi _08007F36
	adds r0, #1
	subs r0, r0, r4
	str r0, [sp, #4]
	add r3, sp, #4
	ldr r1, [sp]
	mov r2, sp
	cmp r1, r0
	bls _08007F2C
	adds r2, r3, #0
_08007F2C:
	ldr r2, [r2]
	adds r0, r5, #4
	adds r1, r4, #0
	bl sub_80D7118
_08007F36:
	ldr r0, [sp]
	adds r2, r4, r0
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r2, r3
	bls _08007F5A
	ldr r0, _08007F7C @ =0x000001FF
	movs r1, #0
	cmp r4, r0
	bls _08007F4E
	ldr r0, _08007F80 @ =0xFFFFFE00
	adds r1, r4, r0
_08007F4E:
	subs r2, r2, r3
	subs r2, r2, r1
	adds r0, r5, #0
	adds r0, #0x80
	bl sub_80D7118
_08007F5A:
	movs r1, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08007F6C
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
_08007F6C:
	movs r0, #0
	strb r1, [r5]
	strb r0, [r5, #1]
_08007F72:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007F7C: .4byte 0x000001FF
_08007F80: .4byte 0xFFFFFE00

	thumb_func_start sub_8007F84
sub_8007F84: @ 0x08007F84
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	ldr r1, _08007FAC @ =0x000003FF
	cmp r4, r1
	bhi _08008010
	adds r0, r2, #0
	cmp r0, #0
	beq _08008010
	cmp r4, #0
	bne _08007FB0
	cmp r0, r1
	bls _08007FB0
	adds r0, r5, #0
	bl sub_8007EC8
	b _08008010
	.align 2, 0
_08007FAC: .4byte 0x000003FF
_08007FB0:
	ldr r0, _08008018 @ =0x000001FF
	adds r6, r5, #4
	cmp r4, r0
	bhi _08007FD4
	adds r0, #1
	subs r0, r0, r4
	str r0, [sp, #4]
	add r3, sp, #4
	ldr r1, [sp]
	mov r2, sp
	cmp r1, r0
	bls _08007FCA
	adds r2, r3, #0
_08007FCA:
	ldr r2, [r2]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80D734C
_08007FD4:
	ldr r0, [sp]
	adds r2, r4, r0
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r2, r3
	bls _08007FF8
	ldr r0, _08008018 @ =0x000001FF
	movs r1, #0
	cmp r4, r0
	bls _08007FEC
	ldr r0, _0800801C @ =0xFFFFFE00
	adds r1, r4, r0
_08007FEC:
	subs r2, r2, r3
	subs r2, r2, r1
	adds r0, r5, #0
	adds r0, #0x80
	bl sub_80D734C
_08007FF8:
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _0800800E
	adds r0, r5, #0
	adds r0, #0x80
	ldrb r0, [r0, #1]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
_0800800E:
	strb r1, [r5, #1]
_08008010:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08008018: .4byte 0x000001FF
_0800801C: .4byte 0xFFFFFE00

	thumb_func_start sub_8008020
sub_8008020: @ 0x08008020
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	cmp r7, #9
	bhi _0800807E
	movs r3, #0
	adds r4, r6, #4
_08008030:
	ldrb r5, [r4]
	cmp r5, #0
	bne _08008074
	adds r0, r4, #0
	adds r1, r7, #0
	str r3, [sp]
	bl sub_80D7568
	adds r2, r0, #0
	movs r1, #0
	ldr r0, _08008070 @ =0x000001FF
	ldr r3, [sp]
	cmp r2, r0
	bhi _0800804E
	movs r1, #1
_0800804E:
	cmp r1, #0
	beq _08008074
	strb r5, [r6, #1]
	movs r1, #0
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _08008066
	adds r0, r6, #0
	adds r0, #0x80
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
_08008066:
	strb r1, [r6]
	lsls r0, r3, #9
	orrs r0, r2
	b _08008096
	.align 2, 0
_08008070: .4byte 0x000001FF
_08008074:
	adds r4, #0x7c
	adds r3, #1
	cmp r3, #1
	ble _08008030
	b _08008092
_0800807E:
	cmp r7, #0xa
	bne _08008092
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq _08008092
	adds r0, r6, #0
	bl sub_8007EA8
	movs r0, #0
	b _08008096
_08008092:
	movs r0, #0x80
	lsls r0, r0, #3
_08008096:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80080A0
sub_80080A0: @ 0x080080A0
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r2, #9
	bhi _080080DA
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	adds r5, r4, #4
	adds r3, r5, #0
	cmp r0, #0
	beq _080080BA
	adds r3, r4, #0
	adds r3, #0x80
_080080BA:
	adds r0, r3, #0
	bl sub_80D76C0
	movs r0, #0
	strb r0, [r4]
	movs r1, #0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080080D6
	adds r0, r4, #0
	adds r0, #0x80
	ldrb r0, [r0, #1]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
_080080D6:
	strb r1, [r4, #1]
	b _080080E4
_080080DA:
	cmp r2, #0xa
	bne _080080E4
	adds r0, r4, #0
	bl sub_8007EC8
_080080E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080080EC:
	.byte 0x40, 0x78, 0x70, 0x47
	.byte 0x00, 0x78, 0x70, 0x47, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x82, 0xB0
	.byte 0x00, 0x90, 0x00, 0x20, 0x00, 0x99, 0x08, 0x70, 0x01, 0x20, 0x48, 0x70, 0x04, 0x31, 0x01, 0x23
	.byte 0x00, 0x27, 0x9C, 0x46, 0x01, 0x26, 0x76, 0x42, 0x0F, 0x70, 0x60, 0x46, 0x48, 0x70, 0x08, 0x1D
	.byte 0x01, 0x22, 0x7C, 0x31, 0x8A, 0x46, 0x01, 0x3B, 0x01, 0x93, 0x07, 0x70, 0x61, 0x46, 0x41, 0x70
	.byte 0x01, 0x1D, 0x01, 0x23, 0x3C, 0x30, 0x80, 0x46, 0x01, 0x3A, 0x91, 0x46, 0x0F, 0x70, 0x60, 0x46
	.byte 0x48, 0x70, 0x08, 0x1D, 0x01, 0x22, 0x0C, 0x1C, 0x1C, 0x34, 0x5D, 0x1E, 0x07, 0x70, 0x61, 0x46
	.byte 0x41, 0x70, 0x03, 0x1D, 0x01, 0x21, 0x0C, 0x30, 0x01, 0x3A, 0x80, 0xC3, 0x01, 0x39, 0xB1, 0x42
	.byte 0xFB, 0xD1, 0xB2, 0x42, 0xF2, 0xD1, 0x21, 0x1C, 0x2B, 0x1C, 0xB3, 0x42, 0xE6, 0xD1, 0x40, 0x46
	.byte 0x4A, 0x46, 0xB2, 0x42, 0xD9, 0xD1, 0x51, 0x46, 0x01, 0x9B, 0xB3, 0x42, 0xCC, 0xD1, 0x00, 0x98
	.byte 0x02, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x8C, 0xB0, 0x05, 0x90, 0x06, 0x91
	.byte 0xA0, 0x20, 0xF8, 0xF7, 0x17, 0xFA, 0x07, 0x90, 0x01, 0x1C, 0x07, 0x23, 0x00, 0x22, 0x01, 0x24
	.byte 0x64, 0x42, 0x0A, 0x60, 0x4A, 0x60, 0x08, 0x1C, 0x08, 0x30, 0x42, 0x60, 0x14, 0x31, 0x01, 0x3B
	.byte 0xA3, 0x42, 0xF6, 0xD1, 0x00, 0x20, 0x08, 0x90, 0x06, 0x99, 0x08, 0x9A, 0x88, 0x18, 0x91, 0x00
	.byte 0x89, 0x18, 0x89, 0x00, 0x07, 0x9A, 0x8F, 0x18, 0x06, 0x78, 0x38, 0x1C, 0x31, 0x1C, 0xCF, 0xF0
	.byte 0xA5, 0xFA, 0x70, 0x1E, 0x00, 0x06, 0x06, 0x0E, 0x08, 0x98, 0x01, 0x30, 0x09, 0x90, 0xFF, 0x2E
	.byte 0x00, 0xD1, 0xA0, 0xE0, 0x01, 0xA9, 0x89, 0x46, 0x48, 0x46, 0xFF, 0xF7, 0x3B, 0xFB, 0x48, 0x46
	.byte 0x08, 0x99, 0xFF, 0xF7, 0xA7, 0xFC, 0x02, 0x90, 0x7C, 0x68, 0xF8, 0x68, 0x84, 0x42, 0x10, 0xD0
	.byte 0x00, 0x2C, 0x08, 0xD0, 0x20, 0x1C, 0xFF, 0xF7, 0x2D, 0xFB, 0x4A, 0x46, 0x51, 0x68, 0x20, 0x1C
	.byte 0xFF, 0xF7, 0x5A, 0xFD, 0x60, 0x60, 0x78, 0x68, 0x08, 0x30, 0x78, 0x60, 0x01, 0x3E, 0x0A, 0x96
	.byte 0x73, 0xE0, 0xA0, 0x46, 0x01, 0x20, 0x04, 0x90, 0x39, 0x68, 0x60, 0x1A, 0xC4, 0x10, 0x03, 0x94
	.byte 0x04, 0xAA, 0x03, 0xA8, 0x01, 0x2C, 0x00, 0xD2, 0x10, 0x1C, 0x00, 0x68, 0x20, 0x18, 0x00, 0x28
	.byte 0x0B, 0xD0, 0xC4, 0x00, 0x20, 0x1C, 0xC7, 0xF0, 0xCF, 0xFF, 0x0B, 0x94, 0x00, 0x28, 0x02, 0xD1
	.byte 0x20, 0x1C, 0xCB, 0xF0, 0xAD, 0xFC, 0x39, 0x68, 0x02, 0xE0, 0x00, 0x20, 0x00, 0x22, 0x0B, 0x92
	.byte 0x05, 0x1C, 0xAA, 0x46, 0x0D, 0x1C, 0x54, 0x46, 0x01, 0x3E, 0x0A, 0x96, 0x45, 0x45, 0x0D, 0xD0
	.byte 0x00, 0x2C, 0x07, 0xD0, 0x20, 0x1C, 0xFF, 0xF7, 0xF5, 0xFA, 0x69, 0x68, 0x20, 0x1C, 0xFF, 0xF7
	.byte 0x23, 0xFD, 0x60, 0x60, 0x08, 0x35, 0x08, 0x34, 0x45, 0x45, 0xF1, 0xD1, 0x25, 0x1C, 0x04, 0x98
	.byte 0x01, 0x28, 0x0C, 0xD1, 0x00, 0x2D, 0x08, 0xD0, 0x28, 0x1C, 0xFF, 0xF7, 0xE3, 0xFA, 0x48, 0x46
	.byte 0x41, 0x68, 0x28, 0x1C, 0xFF, 0xF7, 0x10, 0xFD, 0x68, 0x60, 0x08, 0x35, 0x13, 0xE0, 0x06, 0x1C
	.byte 0x2C, 0x1C, 0x00, 0x2E, 0x0E, 0xD0, 0x00, 0x2C, 0x08, 0xD0, 0x20, 0x1C, 0xFF, 0xF7, 0xD2, 0xFA
	.byte 0x4A, 0x46, 0x51, 0x68, 0x20, 0x1C, 0xFF, 0xF7, 0xFF, 0xFC, 0x60, 0x60, 0x01, 0x3E, 0x08, 0x34
	.byte 0x00, 0x2E, 0xF0, 0xD1, 0x25, 0x1C, 0x7E, 0x68, 0x3C, 0x68, 0xB4, 0x42, 0x0A, 0xD0, 0x61, 0x68
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0x99, 0xFC, 0x20, 0x1C, 0x02, 0x21, 0xFF, 0xF7, 0x75, 0xFB, 0x08, 0x34
	.byte 0xB4, 0x42, 0xF4, 0xD1, 0x38, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xC7, 0xF0, 0xA9, 0xFF, 0x0B, 0x98
	.byte 0x50, 0x44, 0x51, 0x46, 0x39, 0x60, 0x7D, 0x60, 0xF8, 0x60, 0x02, 0x99, 0x48, 0x46, 0xFF, 0xF7
	.byte 0x83, 0xFC, 0x48, 0x46, 0x02, 0x21, 0xFF, 0xF7, 0x5F, 0xFB, 0x0A, 0x9A, 0x10, 0x06, 0x06, 0x0E
	.byte 0xFF, 0x2E, 0x00, 0xD0, 0x60, 0xE7, 0x38, 0x68, 0x38, 0x61, 0x09, 0x98, 0x08, 0x90, 0x07, 0x28
	.byte 0x00, 0xD8, 0x41, 0xE7, 0x07, 0x99, 0x05, 0x9A, 0x11, 0x60, 0x10, 0x1C, 0x0C, 0xB0, 0x38, 0xBC
	.byte 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start sub_800835C
sub_800835C: @ 0x0800835C
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_8008364
sub_8008364: @ 0x08008364
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov sb, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080083B2
	adds r7, r0, #0
	adds r5, r7, #0
	adds r5, #0xa0
_0800837C:
	cmp r7, r5
	beq _080083AC
	subs r5, #0x14
	ldr r6, [r5, #4]
	ldr r4, [r5]
	cmp r4, r6
	beq _080083A0
_0800838A:
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl sub_8007C28
	adds r0, r4, #0
	movs r1, #2
	bl sub_80079E8
	adds r4, #8
	cmp r4, r6
	bne _0800838A
_080083A0:
	ldr r0, [r5]
	cmp r0, #0
	beq _0800837C
	bl sub_80D0260
	b _0800837C
_080083AC:
	adds r0, r7, #0
	bl sub_8000608
_080083B2:
	movs r0, #1
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080083C2
	mov r0, r8
	bl sub_8000608
_080083C2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80083D0
sub_80083D0: @ 0x080083D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r4, r2, #0
	ldr r1, [r1]
	cmp r1, #0
	beq _08008426
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r6, r0, r1
	ldr r0, [r6, #4]
	mov r8, r0
	ldr r4, [r6, #0x10]
	cmp r4, r8
	beq _08008410
	mov sb, r4
_080083F6:
	adds r5, r4, #0
	adds r4, #8
	cmp r4, r8
	bne _08008400
	ldr r4, [r6]
_08008400:
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl sub_8007E24
	cmp r0, #1
	beq _08008420
	cmp r4, sb
	bne _080083F6
_08008410:
	adds r0, r7, #0
	bl sub_8007874
	ldr r1, [r4, #4]
	adds r0, r7, #0
	bl sub_8007CD8
	b _08008434
_08008420:
	str r4, [r6, #0x10]
	adds r4, r5, #0
	b _08008410
_08008426:
	adds r0, r7, #0
	bl sub_8007874
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_8007B54
_08008434:
	str r0, [r7, #4]
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8008444
sub_8008444: @ 0x08008444
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _080084C4 @ =0x080E5B00
	str r0, [r6, #4]
	movs r0, #0x96
	lsls r0, r0, #3
	bl sub_80005D4
	adds r4, r0, #0
	movs r1, #0x1e
	movs r2, #4
	bl sub_80091A4
	movs r5, #0
	str r5, [r4, #0x24]
	str r5, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x2c
	str r5, [r0, #4]
	adds r0, #8
	bl sub_80096B0
	adds r0, r4, #0
	adds r0, #0x8c
	movs r1, #0
	movs r2, #0x20
	bl sub_8009744
	movs r1, #0x92
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_8008980
	ldr r3, _080084C8 @ =0x00000494
	adds r2, r4, r3
	str r5, [r2]
	str r5, [r2, #4]
	ldr r0, _080084CC @ =0x080E5BB4
	str r0, [r2, #8]
	ldr r0, _080084D0 @ =0x000004A4
	adds r1, r4, r0
	str r1, [r2, #0xc]
	str r5, [r1]
	str r5, [r1, #4]
	ldr r0, _080084D4 @ =0x080E5BD8
	str r0, [r1, #8]
	adds r3, #0xc
	adds r0, r4, r3
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	ldrh r0, [r4, #0x38]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #0x38]
	ldr r1, _080084D8 @ =0x04000004
	strh r0, [r1]
	str r4, [r6]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080084C4: .4byte 0x080E5B00
_080084C8: .4byte 0x00000494
_080084CC: .4byte 0x080E5BB4
_080084D0: .4byte 0x000004A4
_080084D4: .4byte 0x080E5BD8
_080084D8: .4byte 0x04000004

	thumb_func_start sub_80084DC
sub_80084DC: @ 0x080084DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, _0800855C @ =0x080E5B00
	str r0, [r6, #4]
	movs r0, #0x96
	lsls r0, r0, #3
	bl sub_80005D4
	adds r5, r0, #0
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	bl sub_80091A4
	movs r4, #0
	str r4, [r5, #0x24]
	str r4, [r5, #0x28]
	adds r0, r5, #0
	adds r0, #0x2c
	str r4, [r0, #4]
	adds r0, #8
	bl sub_80096B0
	adds r0, r5, #0
	adds r0, #0x8c
	movs r1, #0
	movs r2, #0x20
	bl sub_8009744
	movs r1, #0x92
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_8008980
	ldr r3, _08008560 @ =0x00000494
	adds r2, r5, r3
	str r4, [r2]
	str r4, [r2, #4]
	ldr r0, _08008564 @ =0x080E5BB4
	str r0, [r2, #8]
	ldr r0, _08008568 @ =0x000004A4
	adds r1, r5, r0
	str r1, [r2, #0xc]
	str r4, [r1]
	str r4, [r1, #4]
	ldr r0, _0800856C @ =0x080E5BD8
	str r0, [r1, #8]
	adds r3, #0xc
	adds r0, r5, r3
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	ldrh r0, [r5, #0x38]
	movs r1, #8
	orrs r0, r1
	strh r0, [r5, #0x38]
	ldr r1, _08008570 @ =0x04000004
	strh r0, [r1]
	str r5, [r6]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800855C: .4byte 0x080E5B00
_08008560: .4byte 0x00000494
_08008564: .4byte 0x080E5BB4
_08008568: .4byte 0x000004A4
_0800856C: .4byte 0x080E5BD8
_08008570: .4byte 0x04000004

	thumb_func_start sub_8008574
sub_8008574: @ 0x08008574
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	ldr r0, _08008600 @ =0x080E5B00
	str r0, [r6, #4]
	movs r0, #0x96
	lsls r0, r0, #3
	bl sub_80005D4
	adds r4, r0, #0
	movs r1, #0x1e
	movs r2, #4
	bl sub_80091A4
	movs r5, #0
	str r5, [r4, #0x24]
	str r5, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x2c
	str r5, [r0, #4]
	adds r0, #8
	bl sub_80096B0
	adds r0, r4, #0
	adds r0, #0x8c
	mov r2, r8
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	bl sub_8009744
	movs r3, #0x92
	lsls r3, r3, #3
	adds r0, r4, r3
	bl sub_8008980
	ldr r0, _08008604 @ =0x00000494
	adds r2, r4, r0
	str r5, [r2]
	str r5, [r2, #4]
	ldr r0, _08008608 @ =0x080E5BB4
	str r0, [r2, #8]
	ldr r3, _0800860C @ =0x000004A4
	adds r1, r4, r3
	str r1, [r2, #0xc]
	str r5, [r1]
	str r5, [r1, #4]
	ldr r0, _08008610 @ =0x080E5BD8
	str r0, [r1, #8]
	subs r3, #4
	adds r0, r4, r3
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	ldrh r0, [r4, #0x38]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4, #0x38]
	ldr r1, _08008614 @ =0x04000004
	strh r0, [r1]
	str r4, [r6]
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08008600: .4byte 0x080E5B00
_08008604: .4byte 0x00000494
_08008608: .4byte 0x080E5BB4
_0800860C: .4byte 0x000004A4
_08008610: .4byte 0x080E5BD8
_08008614: .4byte 0x04000004
_08008618:
	.byte 0x70, 0xB5, 0x46, 0x46, 0x40, 0xB4, 0x81, 0xB0
	.byte 0x06, 0x1C, 0x0D, 0x1C, 0x90, 0x46, 0x1F, 0x48, 0x70, 0x60, 0x96, 0x20, 0xC0, 0x00, 0xF7, 0xF7
	.byte 0xD1, 0xFF, 0x04, 0x1C, 0x29, 0x88, 0x6A, 0x88, 0x00, 0xF0, 0xB4, 0xFD, 0x00, 0x25, 0x65, 0x62
	.byte 0xA5, 0x62, 0x20, 0x1C, 0x2C, 0x30, 0x45, 0x60, 0x08, 0x30, 0x01, 0xF0, 0x31, 0xF8, 0x20, 0x1C
	.byte 0x8C, 0x30, 0x42, 0x46, 0x11, 0x78, 0x52, 0x78, 0x01, 0xF0, 0x74, 0xF8, 0x92, 0x23, 0xDB, 0x00
	.byte 0xE0, 0x18, 0x00, 0xF0, 0x8D, 0xF9, 0x10, 0x48, 0x22, 0x18, 0x15, 0x60, 0x55, 0x60, 0x0F, 0x48
	.byte 0x90, 0x60, 0x0F, 0x4B, 0xE1, 0x18, 0xD1, 0x60, 0x0D, 0x60, 0x4D, 0x60, 0x0D, 0x48, 0x88, 0x60
	.byte 0x04, 0x3B, 0xE0, 0x18, 0x10, 0x61, 0x51, 0x61, 0x20, 0x8F, 0x08, 0x21, 0x08, 0x43, 0x20, 0x87
	.byte 0x09, 0x49, 0x08, 0x80, 0x34, 0x60, 0x30, 0x1C, 0x01, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0x5B, 0x0E, 0x08, 0x94, 0x04, 0x00, 0x00, 0xB4, 0x5B, 0x0E, 0x08
	.byte 0xA4, 0x04, 0x00, 0x00, 0xD8, 0x5B, 0x0E, 0x08, 0x04, 0x00, 0x00, 0x04

	thumb_func_start sub_80086BC
sub_80086BC: @ 0x080086BC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0800871C @ =0x080E5B00
	str r0, [r5, #4]
	ldr r0, [r5]
	cmp r0, #0
	beq _08008706
	adds r4, r0, #0
	ldr r1, _08008720 @ =0x00000494
	adds r0, r4, r1
	movs r1, #2
	bl sub_80098DC
	movs r1, #0x92
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r1, #2
	bl sub_8008A68
	adds r0, r4, #0
	adds r0, #0x24
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x24]
	cmp r1, r2
	beq _080086F6
_080086F0:
	adds r1, #0x10
	cmp r1, r2
	bne _080086F0
_080086F6:
	ldr r0, [r0]
	cmp r0, #0
	beq _08008700
	bl sub_80D0260
_08008700:
	adds r0, r4, #0
	bl sub_8000608
_08008706:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08008714
	adds r0, r5, #0
	bl sub_8000608
_08008714:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800871C: .4byte 0x080E5B00
_08008720: .4byte 0x00000494

	thumb_func_start sub_8008724
sub_8008724: @ 0x08008724
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [r0]
	adds r3, r4, #0
	adds r3, #0x34
	movs r2, #0
	ldrh r0, [r4, #0x34]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4, #0x34]
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, _08008770 @ =0x080E5AF0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0x92
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8008AE0
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	mov r1, sp
	bl sub_80D3914
	adds r0, r4, #0
	bl sub_8008AF0
	mov r0, sp
	movs r1, #2
	bl sub_80098AC
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008770: .4byte 0x080E5AF0
_08008774:
	.byte 0x10, 0xB5, 0x84, 0xB0, 0x04, 0x68, 0x23, 0x1C, 0x34, 0x33, 0x00, 0x22
	.byte 0xA1, 0x8E, 0x0F, 0x48, 0x08, 0x40, 0xA0, 0x86, 0x00, 0x92, 0x01, 0x92, 0x0D, 0x48, 0x02, 0x90
	.byte 0x03, 0x93, 0x92, 0x20, 0xC0, 0x00, 0x24, 0x18, 0x20, 0x1C, 0x00, 0xF0, 0xA1, 0xF9, 0x81, 0x68
	.byte 0x0A, 0x69, 0x69, 0x46, 0xCB, 0xF0, 0xB6, 0xF8, 0x20, 0x1C, 0x00, 0xF0, 0xA1, 0xF9, 0x68, 0x46
	.byte 0x02, 0x21, 0x01, 0xF0, 0x7B, 0xF8, 0x04, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x7F, 0xFF, 0x00, 0x00, 0xF0, 0x5A, 0x0E, 0x08

	thumb_func_start sub_80087C8
sub_80087C8: @ 0x080087C8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x4c
	ldr r5, [r0]
	adds r2, r5, #0
	adds r2, #0x34
	ldr r3, _0800889C @ =0x080E5BE8
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _080088A0 @ =0x080E5AF0
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	add r0, sp, #0x10
	mov r8, r0
	adds r2, #0x58
	str r1, [sp, #0x10]
	str r1, [r0, #4]
	ldr r0, _080088A4 @ =0x080E5AE0
	str r0, [sp, #0x18]
	str r2, [sp, #0x1c]
	add r6, sp, #0x20
	subs r2, #0x68
	str r1, [sp, #0x20]
	str r1, [r6, #4]
	ldr r0, _080088A8 @ =0x080E5AD0
	str r0, [sp, #0x28]
	str r2, [sp, #0x2c]
	add r4, sp, #0x30
	str r1, [sp, #0x30]
	str r1, [r4, #4]
	ldr r0, _080088AC @ =0x080E5BB4
	str r0, [sp, #0x38]
	add r2, sp, #0x40
	str r2, [r4, #0xc]
	str r3, [sp, #0x48]
	str r1, [sp, #0x40]
	str r1, [r2, #4]
	ldr r0, _080088B0 @ =0x080E5BD8
	str r0, [r2, #8]
	add r0, sp, #0x3c
	str r0, [r4, #0x10]
	str r2, [r4, #0x14]
	ldr r0, _080088B4 @ =0x00000494
	adds r1, r5, r0
	adds r0, r4, #0
	bl sub_8009940
	adds r0, r4, #0
	mov r1, sp
	bl sub_8009940
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_8009940
	adds r0, r4, #0
	mov r1, r8
	bl sub_8009940
	movs r0, #0x92
	lsls r0, r0, #3
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_8008AE0
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl sub_80D3914
	adds r0, r5, #0
	bl sub_8008AF0
	adds r0, r5, #0
	bl sub_8008AE0
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x14]
	adds r1, r4, #0
	bl sub_80D3914
	adds r0, r4, #0
	movs r1, #2
	bl sub_80098DC
	adds r0, r6, #0
	movs r1, #2
	bl sub_80098AC
	mov r0, r8
	movs r1, #2
	bl sub_80098AC
	mov r0, sp
	movs r1, #2
	bl sub_80098AC
	add sp, #0x4c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800889C: .4byte 0x080E5BE8
_080088A0: .4byte 0x080E5AF0
_080088A4: .4byte 0x080E5AE0
_080088A8: .4byte 0x080E5AD0
_080088AC: .4byte 0x080E5BB4
_080088B0: .4byte 0x080E5BD8
_080088B4: .4byte 0x00000494

	thumb_func_start sub_80088B8
sub_80088B8: @ 0x080088B8
	push {lr}
	ldr r0, [r0]
	bl sub_8009268
	pop {r0}
	bx r0

	thumb_func_start sub_80088C4
sub_80088C4: @ 0x080088C4
	ldr r0, [r0]
	ldrh r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_80088CC
sub_80088CC: @ 0x080088CC
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	bx lr
	.align 2, 0

	thumb_func_start sub_80088D4
sub_80088D4: @ 0x080088D4
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_80088DC
sub_80088DC: @ 0x080088DC
	ldr r0, [r0]
	bx lr
_080088E0:
	.byte 0x00, 0xB5, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x68, 0x00, 0xF0, 0xEE, 0xFC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x68, 0x00, 0xF0, 0x00, 0xFD, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0x68, 0x40, 0x89, 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0x80, 0x89, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8008910
sub_8008910: @ 0x08008910
	ldr r0, [r0]
	adds r0, #0x24
	bx lr
	.align 2, 0

	thumb_func_start sub_8008918
sub_8008918: @ 0x08008918
	ldr r0, [r0]
	adds r0, #0x34
	bx lr
	.align 2, 0

	thumb_func_start sub_8008920
sub_8008920: @ 0x08008920
	ldr r0, [r0]
	adds r0, #0x8c
	bx lr
	.align 2, 0
_08008928:
	.byte 0x00, 0x68, 0x24, 0x30, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x68, 0x34, 0x30, 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0x8C, 0x30, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8008940
sub_8008940: @ 0x08008940
	ldr r0, [r0]
	ldr r1, _08008948 @ =0x00000494
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08008948: .4byte 0x00000494

	thumb_func_start sub_800894C
sub_800894C: @ 0x0800894C
	push {lr}
	ldr r0, [r0]
	movs r1, #0x92
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_8008AE0
	pop {r1}
	bx r1
	.align 2, 0
_08008960:
	.byte 0x00, 0x68, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x94, 0x04, 0x00, 0x00, 0x00, 0xB5, 0x00, 0x68
	.byte 0x92, 0x21, 0xC9, 0x00, 0x40, 0x18, 0x00, 0xF0, 0xB3, 0xF8, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start sub_8008980
sub_8008980: @ 0x08008980
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	movs r0, #0x6c
	bl sub_80005D4
	adds r6, r0, #0
	movs r2, #0
	str r2, [r6]
	str r2, [r6, #4]
	ldr r0, _08008A4C @ =0x080E5B70
	str r0, [r6, #8]
	adds r5, r6, #0
	adds r5, #0xc
	str r2, [r6, #0xc]
	str r2, [r5, #4]
	ldr r0, _08008A50 @ =0x080E5BB4
	mov ip, r0
	str r0, [r5, #8]
	adds r1, r6, #0
	adds r1, #0x1c
	str r1, [r5, #0xc]
	str r2, [r6, #0x1c]
	str r2, [r1, #4]
	ldr r4, _08008A54 @ =0x080E5BD8
	str r4, [r1, #8]
	adds r0, r6, #0
	adds r0, #0x18
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	ldr r3, _08008A58 @ =0x080E5B90
	str r3, [r5, #8]
	movs r1, #0x28
	adds r1, r1, r6
	mov r8, r1
	str r2, [r6, #0x28]
	str r2, [r1, #4]
	ldr r0, _08008A5C @ =0x080E5B60
	str r0, [r1, #8]
	adds r7, r6, #0
	adds r7, #0x34
	str r2, [r6, #0x34]
	str r2, [r7, #4]
	mov r0, ip
	str r0, [r7, #8]
	adds r1, r6, #0
	adds r1, #0x44
	str r1, [r7, #0xc]
	str r2, [r6, #0x44]
	str r2, [r1, #4]
	str r4, [r1, #8]
	adds r0, r6, #0
	adds r0, #0x40
	str r0, [r7, #0x10]
	str r1, [r7, #0x14]
	str r3, [r7, #8]
	adds r0, #0x10
	str r7, [sp]
	mov r1, sp
	bl sub_80D78F8
	ldr r0, _08008A60 @ =0x080E5B0C
	str r0, [r7, #0x30]
	ldr r0, _08008A64 @ =0x080E5B18
	str r0, [r7, #8]
	adds r4, r6, #0
	adds r4, #0x68
	bl sub_8008D9C
	movs r1, #1
	eors r0, r1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08008A20
	bl sub_8008D84
_08008A20:
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_80095C0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_80095C0
	adds r0, r7, #0
	mov r1, r8
	bl sub_80095C0
	mov r1, sb
	str r6, [r1]
	mov r0, sb
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008A4C: .4byte 0x080E5B70
_08008A50: .4byte 0x080E5BB4
_08008A54: .4byte 0x080E5BD8
_08008A58: .4byte 0x080E5B90
_08008A5C: .4byte 0x080E5B60
_08008A60: .4byte 0x080E5B0C
_08008A64: .4byte 0x080E5B18

	thumb_func_start sub_8008A68
sub_8008A68: @ 0x08008A68
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r5, [r6]
	cmp r5, #0
	beq _08008AC2
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0
	beq _08008A82
	bl sub_8008D90
_08008A82:
	adds r4, r5, #0
	adds r4, #0x34
	ldr r0, _08008AD8 @ =0x080E5B0C
	str r0, [r4, #0x30]
	ldr r0, _08008ADC @ =0x080E5B18
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	bl sub_80D7944
	adds r0, r4, #0
	movs r1, #2
	bl sub_800959C
	adds r0, r5, #0
	adds r0, #0x28
	movs r1, #2
	bl sub_80098AC
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #2
	bl sub_800959C
	adds r0, r5, #0
	movs r1, #2
	bl sub_80098AC
	adds r0, r5, #0
	bl sub_8000608
_08008AC2:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08008AD0
	adds r0, r6, #0
	bl sub_8000608
_08008AD0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008AD8: .4byte 0x080E5B0C
_08008ADC: .4byte 0x080E5B18

	thumb_func_start sub_8008AE0
sub_8008AE0: @ 0x08008AE0
	ldr r0, [r0]
	adds r0, #0xc
	bx lr
	.align 2, 0
_08008AE8:
	.byte 0x00, 0x68, 0x0C, 0x30, 0x70, 0x47, 0x00, 0x00

	thumb_func_start sub_8008AF0
sub_8008AF0: @ 0x08008AF0
	push {lr}
	movs r0, #1
	bl sub_8000568
	pop {r0}
	bx r0

	thumb_func_start sub_8008AFC
sub_8008AFC: @ 0x08008AFC
	push {lr}
	bl sub_80D2254
	bl sub_80D28DC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008B0C
sub_8008B0C: @ 0x08008B0C
	push {lr}
	bl sub_80D1BF8
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_8008B18
sub_8008B18: @ 0x08008B18
	push {lr}
	bl sub_80D22CC
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_8008B24
sub_8008B24: @ 0x08008B24
	push {lr}
	adds r2, r0, #0
	ldr r0, _08008B4C @ =0x00000005
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r2, r1
	blo _08008B3A
	adds r0, r2, #0
	bl sub_80D0F4E
	adds r2, r0, #0
_08008B3A:
	ldr r0, _08008B50 @ =0x0813ABB4
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
_08008B4C: .4byte 0x00000005
_08008B50: .4byte 0x0813ABB4

	thumb_func_start sub_8008B54
sub_8008B54: @ 0x08008B54
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	bl sub_8008B24
	str r0, [r4]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008B6C
sub_8008B6C: @ 0x08008B6C
	push {lr}
	lsls r1, r1, #0x10
	ldr r0, [r0]
	ldr r2, _08008B84 @ =0x0813ABF0
	lsrs r1, r1, #0xd
	adds r1, r1, r2
	ldr r1, [r1]
	bl sub_80D2A0C
	pop {r0}
	bx r0
	.align 2, 0
_08008B84: .4byte 0x0813ABF0

	thumb_func_start sub_8008B88
sub_8008B88: @ 0x08008B88
	push {lr}
	lsls r1, r1, #0x10
	ldr r2, _08008BAC @ =0x0813ABF0
	lsrs r1, r1, #0xd
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r0]
	ldr r0, [r2]
	cmp r0, r1
	bne _08008BA2
	ldr r0, [r2, #4]
	cmp r0, #0
	bge _08008BA8
_08008BA2:
	adds r0, r2, #0
	bl sub_80D2A0C
_08008BA8:
	pop {r0}
	bx r0
	.align 2, 0
_08008BAC: .4byte 0x0813ABF0

	thumb_func_start sub_8008BB0
sub_8008BB0: @ 0x08008BB0
	push {lr}
	lsls r1, r1, #0x10
	ldr r2, _08008BCC @ =0x0813ABF0
	lsrs r1, r1, #0xd
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [r0]
	ldr r0, [r2]
	cmp r0, r1
	beq _08008BD0
	adds r0, r2, #0
	bl sub_80D2A0C
	b _08008BDC
	.align 2, 0
_08008BCC: .4byte 0x0813ABF0
_08008BD0:
	ldr r0, [r2, #4]
	cmp r0, #0
	bge _08008BDC
	adds r0, r2, #0
	bl sub_80D2438
_08008BDC:
	pop {r0}
	bx r0

	thumb_func_start sub_8008BE0
sub_8008BE0: @ 0x08008BE0
	push {lr}
	ldr r0, [r0]
	bl sub_80D2AF0
	pop {r0}
	bx r0
_08008BEC:
	.byte 0x00, 0xB5, 0x00, 0x68
	.byte 0xC9, 0xF0, 0x22, 0xFC, 0x01, 0xBC, 0x00, 0x47

	thumb_func_start sub_8008BF8
sub_8008BF8: @ 0x08008BF8
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0]
	bl sub_80D2470
	pop {r0}
	bx r0
_08008C08:
	.byte 0x00, 0xB5, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x68
	.byte 0xC9, 0xF0, 0x36, 0xFC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x68
	.byte 0xC9, 0xF0, 0x3E, 0xFC, 0x01, 0xBC, 0x00, 0x47

	thumb_func_start sub_8008C28
sub_8008C28: @ 0x08008C28
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0]
	bl sub_80D3258
	pop {r0}
	bx r0

	thumb_func_start sub_8008C38
sub_8008C38: @ 0x08008C38
	push {lr}
	adds r3, r1, #0
	adds r1, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0]
	adds r2, r3, #0
	bl sub_80D3280
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008C54
sub_8008C54: @ 0x08008C54
	push {lr}
	adds r3, r1, #0
	adds r1, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r2, r3, #0
	bl sub_80D32E8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008C70
sub_8008C70: @ 0x08008C70
	push {lr}
	adds r3, r1, #0
	adds r1, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	adds r2, r3, #0
	bl sub_80D335C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008C8C
sub_8008C8C: @ 0x08008C8C
	push {lr}
	adds r3, r1, #0
	adds r1, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0]
	adds r2, r3, #0
	bl sub_80D33E4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008CA8
sub_8008CA8: @ 0x08008CA8
	push {lr}
	adds r3, r1, #0
	adds r1, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r0]
	adds r2, r3, #0
	bl sub_80D3458
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008CC4
sub_8008CC4: @ 0x08008CC4
	push {lr}
	ldr r0, [r0]
	bl sub_80D24C8
	pop {r0}
	bx r0

	thumb_func_start sub_8008CD0
sub_8008CD0: @ 0x08008CD0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	bx lr
_08008CDC:
	.byte 0x00, 0x68, 0x80, 0x88
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0x00, 0x7A, 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0x40, 0x7A
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0xC0, 0x68, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x81, 0xB0
	.byte 0x68, 0x46, 0x00, 0x21, 0xFF, 0xF7, 0x26, 0xFF, 0x00, 0x98, 0x01, 0xB0, 0x02, 0xBC, 0x08, 0x47
	.byte 0x00, 0xB5, 0x81, 0xB0, 0x04, 0x49, 0x09, 0x06, 0x09, 0x0E, 0x68, 0x46, 0xFF, 0xF7, 0x1A, 0xFF
	.byte 0x00, 0x98, 0x01, 0xB0, 0x02, 0xBC, 0x08, 0x47, 0x05, 0x00, 0x00, 0x00, 0x01, 0x68, 0x40, 0x31
	.byte 0x01, 0x60, 0x70, 0x47, 0x01, 0x68, 0x40, 0x39, 0x01, 0x60, 0x70, 0x47

	thumb_func_start sub_8008D3C
sub_8008D3C: @ 0x08008D3C
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x10
	ldr r1, _08008D58 @ =0x0813ABF0
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrb r1, [r0, #4]
	mov r0, sp
	bl sub_8008B54
	ldr r0, [sp]
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_08008D58: .4byte 0x0813ABF0
_08008D5C:
	.byte 0x00, 0x04, 0x03, 0x49
	.byte 0x40, 0x0B, 0x40, 0x18, 0x00, 0x68, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0xF0, 0xAB, 0x13, 0x08
	.byte 0x00, 0x04, 0x03, 0x49, 0x40, 0x0B, 0x40, 0x18, 0x00, 0x68, 0x80, 0x78, 0x70, 0x47, 0x00, 0x00
	.byte 0xF0, 0xAB, 0x13, 0x08

	thumb_func_start sub_8008D84
sub_8008D84: @ 0x08008D84
	push {lr}
	bl sub_80D2958
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008D90
sub_8008D90: @ 0x08008D90
	push {lr}
	bl sub_80D28DC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008D9C
sub_8008D9C: @ 0x08008D9C
	ldr r0, _08008DA4 @ =0x040000C4
	ldr r0, [r0]
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_08008DA4: .4byte 0x040000C4

	thumb_func_start sub_8008DA8
sub_8008DA8: @ 0x08008DA8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_80D22D8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008DB8
sub_8008DB8: @ 0x08008DB8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_80D2304
	pop {r0}
	bx r0
	.align 2, 0
_08008DC8:
	.byte 0x00, 0xB5, 0x00, 0x04, 0x00, 0x0C, 0xC9, 0xF0
	.byte 0xBF, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x00, 0x04, 0x00, 0x0C, 0xC9, 0xF0
	.byte 0xE1, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	thumb_func_start sub_8008DE8
sub_8008DE8: @ 0x08008DE8
	push {lr}
	bl sub_80D240C
	pop {r0}
	bx r0
	.align 2, 0
_08008DF4:
	.byte 0x00, 0xB5, 0x00, 0x04, 0x00, 0x0C, 0xC9, 0xF0, 0xED, 0xFA, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x00, 0xB5, 0xC9, 0xF0, 0x1D, 0xFB, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x01, 0x48, 0x00, 0x06, 0x00, 0x0E, 0x70, 0x47, 0x05, 0x00, 0x00, 0x00, 0x01, 0x48, 0x00, 0x06
	.byte 0x00, 0x0E, 0x70, 0x47, 0xD3, 0x00, 0x00, 0x00, 0x00, 0xB5, 0x00, 0x2A, 0x15, 0xD0, 0x01, 0x43
	.byte 0x11, 0x43, 0x01, 0x20, 0x08, 0x40, 0x00, 0x28, 0x0F, 0xD1, 0x03, 0x20, 0x01, 0x40, 0x00, 0x29
	.byte 0x05, 0xD1, 0x90, 0x03, 0x02, 0x0C, 0x84, 0x20, 0x00, 0x06, 0x02, 0x43, 0x06, 0xE0, 0xD0, 0x03
	.byte 0x02, 0x0C, 0x80, 0x20, 0x00, 0x06, 0x02, 0x43, 0x00, 0xE0, 0x00, 0x22, 0x10, 0x1C, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	thumb_func_start sub_8008E64
sub_8008E64: @ 0x08008E64
	push {r4, lr}
	cmp r0, #0
	beq _08008EAC
	cmp r1, #0
	beq _08008EAC
	adds r4, r0, #0
	cmp r2, #0
	beq _08008EA2
	adds r3, r4, #0
	orrs r3, r1
	orrs r3, r2
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _08008EA2
	movs r0, #3
	ands r3, r0
	cmp r3, #0
	bne _08008E96
	lsls r0, r2, #0xe
	lsrs r2, r0, #0x10
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r2, r0
	b _08008EA4
_08008E96:
	lsls r0, r2, #0xf
	lsrs r2, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	b _08008EA4
_08008EA2:
	movs r2, #0
_08008EA4:
	ldr r3, _08008EB4 @ =0x040000D4
	adds r0, r4, #0
	bl sub_80D0EBC
_08008EAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008EB4: .4byte 0x040000D4

	thumb_func_start sub_8008EB8
sub_8008EB8: @ 0x08008EB8
	push {lr}
	sub sp, #4
	str r0, [sp]
	cmp r1, #0
	beq _08008F02
	cmp r2, #0
	beq _08008EF2
	adds r3, r1, #0
	orrs r3, r2
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _08008EF2
	movs r0, #3
	ands r3, r0
	cmp r3, #0
	bne _08008EE6
	lsls r0, r2, #0xe
	lsrs r2, r0, #0x10
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r2, r0
	b _08008EF4
_08008EE6:
	lsls r0, r2, #0xf
	lsrs r2, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	b _08008EF4
_08008EF2:
	movs r2, #0
_08008EF4:
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	ldr r3, _08008F08 @ =0x040000D4
	mov r0, sp
	bl sub_80D0EBC
_08008F02:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08008F08: .4byte 0x040000D4

	thumb_func_start sub_8008F0C
sub_8008F0C: @ 0x08008F0C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r5, #0
	beq _08008F4A
	cmp r2, #0
	beq _08008F4A
	cmp r3, #0
	beq _08008F4A
	orrs r1, r2
	orrs r1, r3
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08008F4A
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08008F3E
	lsls r0, r3, #0xe
	lsrs r3, r0, #0x10
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r3, r0
	b _08008F4C
_08008F3E:
	lsls r0, r3, #0xf
	lsrs r3, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	b _08008F4C
_08008F4A:
	movs r3, #0
_08008F4C:
	movs r0, #0
	str r0, [r4]
	str r5, [r4, #4]
	str r2, [r4, #8]
	str r3, [r4, #0xc]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8008F60
sub_8008F60: @ 0x08008F60
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r2, #0
	beq _08008FA4
	cmp r3, #0
	beq _08008F9A
	adds r1, r2, #0
	orrs r1, r3
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08008F9A
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08008F8E
	lsls r0, r3, #0xe
	lsrs r3, r0, #0x10
	movs r0, #0x84
	lsls r0, r0, #0x18
	orrs r3, r0
	b _08008F9C
_08008F8E:
	lsls r0, r3, #0xf
	lsrs r3, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r3, r0
	b _08008F9C
_08008F9A:
	movs r3, #0
_08008F9C:
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r1, r3
	b _08008FA6
_08008FA4:
	movs r1, #0
_08008FA6:
	movs r0, #1
	str r0, [r4]
	str r5, [r4, #4]
	str r2, [r4, #8]
	str r1, [r4, #0xc]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
_08008FB8:
	.byte 0x10, 0xB5, 0x81, 0xB0, 0x02, 0x1C, 0x54, 0x68
	.byte 0x10, 0x68, 0x01, 0x28, 0x01, 0xD1, 0x00, 0x94, 0x6C, 0x46, 0x91, 0x68, 0xD2, 0x68, 0x04, 0x4B
	.byte 0x20, 0x1C, 0xC7, 0xF0, 0x73, 0xFF, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xD4, 0x00, 0x00, 0x04

	thumb_func_start sub_8008FE4
sub_8008FE4: @ 0x08008FE4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	ldr r6, _08009018 @ =0x040000D4
	adds r4, r0, #0
	cmp r4, r5
	beq _08009010
_08008FF2:
	ldr r3, [r4, #4]
	ldr r0, [r4]
	cmp r0, #1
	bne _08008FFE
	str r3, [sp]
	mov r3, sp
_08008FFE:
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	adds r0, r3, #0
	adds r3, r6, #0
	bl sub_80D0EBC
	adds r4, #0x10
	cmp r4, r5
	bne _08008FF2
_08009010:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009018: .4byte 0x040000D4
_0800901C:
	.byte 0xF0, 0xB5, 0x82, 0xB0
	.byte 0x01, 0x1C, 0x4C, 0x68, 0x08, 0x68, 0x01, 0x28, 0x01, 0xD1, 0x00, 0x94, 0x6C, 0x46, 0xCE, 0x68
	.byte 0x8F, 0x68, 0x80, 0x20, 0xC0, 0x04, 0x30, 0x40, 0x00, 0x28, 0x21, 0xD0, 0x0F, 0x4D, 0x35, 0x40
	.byte 0x07, 0x23, 0x2B, 0x40, 0xED, 0x1A, 0x00, 0x2D, 0x01, 0xD1, 0x00, 0x2B, 0x10, 0xD1, 0xF2, 0x1A
	.byte 0x20, 0x1C, 0x39, 0x1C, 0x01, 0x93, 0xCA, 0xF0, 0x79, 0xFB, 0xA9, 0x00, 0x7F, 0x18, 0x80, 0x20
	.byte 0x40, 0x04, 0x30, 0x40, 0x01, 0x9B, 0x00, 0x28, 0x00, 0xD1, 0x64, 0x18, 0x00, 0x2B, 0x0C, 0xD0
	.byte 0x72, 0x1B, 0x20, 0x1C, 0x39, 0x1C, 0xCA, 0xF0, 0x6B, 0xFB, 0x06, 0xE0, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x20, 0x1C, 0x39, 0x1C, 0x32, 0x1C, 0xCA, 0xF0, 0x63, 0xFB, 0x02, 0xB0, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	thumb_func_start sub_8009094
sub_8009094: @ 0x08009094
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r1
	adds r7, r0, #0
	cmp r7, sb
	beq _0800911C
_080090A6:
	ldr r4, [r7, #4]
	ldr r0, [r7]
	cmp r0, #1
	bne _080090B2
	str r4, [sp]
	mov r4, sp
_080090B2:
	ldr r6, [r7, #0xc]
	ldr r3, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r6
	cmp r0, #0
	beq _0800910C
	ldr r5, _08009108 @ =0x0000FFFF
	ands r5, r6
	movs r0, #7
	mov r8, r0
	ands r0, r5
	mov r8, r0
	subs r5, r5, r0
	cmp r5, #0
	bne _080090D6
	cmp r0, #0
	bne _080090FC
_080090D6:
	mov r0, r8
	subs r2, r6, r0
	adds r0, r4, #0
	adds r1, r3, #0
	str r3, [sp, #4]
	bl sub_80D374C
	lsls r1, r5, #2
	ldr r3, [sp, #4]
	adds r3, r3, r1
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r6
	cmp r0, #0
	bne _080090F6
	adds r4, r4, r1
_080090F6:
	mov r0, r8
	cmp r0, #0
	beq _08009116
_080090FC:
	subs r2, r6, r5
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80D3750
	b _08009116
	.align 2, 0
_08009108: .4byte 0x0000FFFF
_0800910C:
	adds r0, r4, #0
	adds r1, r3, #0
	adds r2, r6, #0
	bl sub_80D3750
_08009116:
	adds r7, #0x10
	cmp r7, sb
	bne _080090A6
_0800911C:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800912C
sub_800912C: @ 0x0800912C
	ldr r0, _08009138 @ =0x04000130
	ldrh r1, [r0]
	ldr r0, _0800913C @ =0x000003FF
	bics r0, r1
	bx lr
	.align 2, 0
_08009138: .4byte 0x04000130
_0800913C: .4byte 0x000003FF

	thumb_func_start sub_8009140
sub_8009140: @ 0x08009140
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800912C
	strh r0, [r4]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8009154
sub_8009154: @ 0x08009154
	strh r1, [r0]
	bx lr

	thumb_func_start sub_8009158
sub_8009158: @ 0x08009158
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800912C
	strh r0, [r4]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8009168
sub_8009168: @ 0x08009168
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8009140
	ldrh r0, [r4]
	strh r0, [r4, #4]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800917C
sub_800917C: @ 0x0800917C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8009154
	ldrh r0, [r4]
	strh r0, [r4, #4]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8009190
sub_8009190: @ 0x08009190
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r5, [r4]
	bl sub_8009158
	bics r0, r5
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80091A4
sub_80091A4: @ 0x080091A4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_8009168
	ldrh r0, [r6, #4]
	movs r1, #0
	strh r0, [r6, #8]
	strh r4, [r6, #0xa]
	strh r5, [r6, #0xc]
	str r1, [sp]
	adds r0, r6, #0
	adds r0, #0xe
	adds r1, r6, #0
	adds r1, #0x22
	cmp r0, r1
	beq _080091DC
	movs r2, #0
_080091D4:
	strh r2, [r0]
	adds r0, #2
	cmp r0, r1
	bne _080091D4
_080091DC:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80091E8
sub_80091E8: @ 0x080091E8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_800917C
	ldrh r0, [r4, #4]
	movs r1, #0
	strh r0, [r4, #8]
	movs r0, #0x1e
	strh r0, [r4, #0xa]
	movs r0, #4
	strh r0, [r4, #0xc]
	str r1, [sp]
	adds r0, r4, #0
	adds r0, #0xe
	adds r1, r4, #0
	adds r1, #0x22
	cmp r0, r1
	beq _08009218
	movs r2, #0
_08009210:
	strh r2, [r0]
	adds r0, #2
	cmp r0, r1
	bne _08009210
_08009218:
	adds r0, r4, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009224:
	.byte 0x70, 0xB5, 0x81, 0xB0, 0x06, 0x1C, 0x0C, 0x1C, 0x15, 0x1C, 0x19, 0x1C
	.byte 0x24, 0x04, 0x24, 0x0C, 0x2D, 0x04, 0x2D, 0x0C, 0xFF, 0xF7, 0xA0, 0xFF, 0xB0, 0x88, 0x00, 0x21
	.byte 0x30, 0x81, 0x74, 0x81, 0xB5, 0x81, 0x00, 0x91, 0x30, 0x1C, 0x0E, 0x30, 0x31, 0x1C, 0x22, 0x31
	.byte 0x88, 0x42, 0x04, 0xD0, 0x00, 0x22, 0x02, 0x80, 0x02, 0x30, 0x88, 0x42, 0xFB, 0xD1, 0x30, 0x1C
	.byte 0x01, 0xB0, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start sub_8009268
sub_8009268: @ 0x08009268
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	bl sub_8009190
	mov ip, r0
	ldrh r0, [r4]
	mov r8, r0
	ldrh r6, [r4, #0xc]
	ldrh r5, [r4, #0xa]
	movs r3, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r4, #0
	adds r1, #0x20
_08009288:
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _080092B0
	mov r0, ip
	ands r0, r2
	cmp r0, #0
	bne _080092AA
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, r5
	beq _080092A4
	adds r0, #1
	b _080092AE
_080092A4:
	orrs r3, r2
	subs r0, r0, r6
	b _080092AE
_080092AA:
	orrs r3, r2
	movs r0, #0
_080092AE:
	strh r0, [r1]
_080092B0:
	subs r1, #2
	lsrs r2, r2, #1
	cmp r2, #0
	bne _08009288
	strh r3, [r4, #8]
	adds r0, r3, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80092C8
sub_80092C8: @ 0x080092C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldrh r5, [r4]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r4, #0
	adds r2, #0x20
	ldrh r0, [r4, #0xa]
	subs r1, r6, r0
_080092DE:
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _080092EC
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080092EC:
	subs r2, #2
	lsrs r3, r3, #1
	cmp r3, #0
	bne _080092DE
	strh r6, [r4, #0xa]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80092FC
sub_80092FC: @ 0x080092FC
	strh r1, [r0, #0xc]
	bx lr

	thumb_func_start sub_8009300
sub_8009300: @ 0x08009300
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0x10
	bl sub_80005D4
	str r4, [r0]
	movs r2, #0
	movs r1, #0
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strb r2, [r0, #0xc]
	strh r1, [r0, #0xe]
	str r0, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_8009324
sub_8009324: @ 0x08009324
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5]
	bl sub_8000608
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800933E
	adds r0, r5, #0
	bl sub_8000608
_0800933E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8009344
sub_8009344: @ 0x08009344
	ldr r2, [r0]
	ldr r0, [r2]
	str r1, [r2]
	bx lr

	thumb_func_start sub_800934C
sub_800934C: @ 0x0800934C
	push {r4, lr}
	adds r4, r2, #0
	ldr r2, [r0]
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0800935C
	rsbs r0, r0, #0
_0800935C:
	rsbs r0, r0, #0
	rsbs r1, r3, #0
	orrs r1, r3
	lsrs r1, r1, #0x1f
	strh r0, [r2, #4]
	str r4, [r2, #8]
	strb r1, [r2, #0xc]
	ldr r0, _08009374 @ =0x0000FFFF
	strh r0, [r2, #0xe]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009374: .4byte 0x0000FFFF

	thumb_func_start sub_8009378
sub_8009378: @ 0x08009378
	push {r4, r5, lr}
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r3, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0
	bge _0800938A
	rsbs r2, r2, #0
_0800938A:
	rsbs r0, r4, #0
	orrs r0, r4
	lsrs r0, r0, #0x1f
	movs r1, #0
	strh r2, [r3, #4]
	str r5, [r3, #8]
	strb r0, [r3, #0xc]
	strh r1, [r3, #0xe]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80093A0
sub_80093A0: @ 0x080093A0
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	strh r1, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr

	thumb_func_start sub_80093AC
sub_80093AC: @ 0x080093AC
	push {r4, r5, r6, r7, lr}
	ldr r5, [r0]
	movs r0, #4
	ldrsh r7, [r5, r0]
	cmp r7, #0
	beq _0800949C
	ldrh r4, [r5, #0xe]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08009422
	movs r6, #0
	cmp r0, #1
	beq _080093CE
	cmp r0, #2
	bne _080093D0
	movs r6, #0xc0
	b _080093D0
_080093CE:
	movs r6, #0x80
_080093D0:
	ldr r3, [r5]
	cmp r3, #0
	beq _080093DC
	adds r2, r3, #0
	adds r2, #0x50
	b _080093DE
_080093DC:
	ldr r2, _080093F4 @ =0x04000050
_080093DE:
	ldrh r1, [r2]
	ldr r0, _080093F8 @ =0x0000FF3F
	ands r0, r1
	orrs r0, r6
	strh r0, [r2]
	cmp r3, #0
	beq _080093FC
	adds r1, r3, #0
	adds r1, #0x54
	b _080093FE
	.align 2, 0
_080093F4: .4byte 0x04000050
_080093F8: .4byte 0x0000FF3F
_080093FC:
	ldr r1, _08009408 @ =0x04000054
_080093FE:
	ldr r0, _0800940C @ =0x0000FFFE
	cmp r4, r0
	bls _08009410
	movs r0, #0x10
	b _08009420
	.align 2, 0
_08009408: .4byte 0x04000054
_0800940C: .4byte 0x0000FFFE
_08009410:
	cmp r4, #0
	bne _08009418
	movs r0, #0
	b _08009420
_08009418:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsrs r0, r0, #0x10
	adds r0, #1
_08009420:
	strh r0, [r1]
_08009422:
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	beq _08009460
	ldr r0, _08009434 @ =0x0000FFFE
	cmp r4, r0
	bls _08009438
	movs r1, #0xf
	b _0800944A
	.align 2, 0
_08009434: .4byte 0x0000FFFE
_08009438:
	cmp r4, #0
	bne _08009440
	movs r1, #0
	b _0800944A
_08009440:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #1
	lsrs r0, r0, #0x10
	adds r1, r0, #1
_0800944A:
	lsls r0, r1, #4
	orrs r1, r0
	lsls r0, r1, #8
	orrs r1, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _0800945C
	adds r0, #0x4c
	b _0800945E
_0800945C:
	ldr r0, _0800946C @ =0x0400004C
_0800945E:
	strh r1, [r0]
_08009460:
	cmp r7, #0
	blt _08009474
	ldr r0, _08009470 @ =0x0000FFFF
	cmp r4, r0
	beq _08009478
	b _0800947E
	.align 2, 0
_0800946C: .4byte 0x0400004C
_08009470: .4byte 0x0000FFFF
_08009474:
	cmp r4, #0
	bne _0800947E
_08009478:
	movs r0, #0
	strh r0, [r5, #4]
	b _0800949E
_0800947E:
	adds r0, r4, r7
	cmp r0, #0
	bge _08009488
	movs r0, #0
	b _08009490
_08009488:
	ldr r1, _08009498 @ =0x0000FFFF
	cmp r0, r1
	ble _08009490
	adds r0, r1, #0
_08009490:
	strh r0, [r5, #0xe]
	movs r0, #1
	b _0800949E
	.align 2, 0
_08009498: .4byte 0x0000FFFF
_0800949C:
	movs r0, #0
_0800949E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80094A4
sub_80094A4: @ 0x080094A4
	ldr r0, [r0]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr

	thumb_func_start sub_80094AC
sub_80094AC: @ 0x080094AC
	push {lr}
	adds r0, #0xc
	bl sub_80093AC
	pop {r1}
	bx r1

	thumb_func_start sub_80094B8
sub_80094B8: @ 0x080094B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080094DC @ =0x080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	movs r1, #2
	bl sub_8009324
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80098AC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080094DC: .4byte 0x080E5B80
_080094E0:
	.byte 0x00, 0xB5, 0x0C, 0x30, 0xFF, 0xF7, 0xDE, 0xFF, 0x01, 0x1C, 0x09, 0x04, 0x09, 0x14, 0x48, 0x42
	.byte 0x08, 0x43, 0xC0, 0x0F, 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x0C, 0x30, 0xFF, 0xF7, 0xD2, 0xFF
	.byte 0x00, 0x04, 0x00, 0x14, 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x0C, 0x30, 0x09, 0x04, 0x09, 0x14
	.byte 0xFF, 0xF7, 0x46, 0xFF

	thumb_func_start sub_8009514
sub_8009514: @ 0x08009514
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
_0800951C:
	.byte 0x00, 0xB5, 0x0C, 0x30
	.byte 0x09, 0x04, 0x09, 0x14, 0xFF, 0xF7, 0x28, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x0C, 0x30
	.byte 0x09, 0x04, 0x09, 0x14, 0xFF, 0xF7, 0x0A, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x0C, 0x30
	.byte 0xFF, 0xF7, 0x00, 0xFF, 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0x00, 0x20, 0x20, 0x60
	.byte 0x60, 0x60, 0x05, 0x48, 0xA0, 0x60, 0x20, 0x1C, 0x0C, 0x30, 0xFF, 0xF7, 0xD1, 0xFE, 0x20, 0x1C
	.byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x80, 0x5B, 0x0E, 0x08

	thumb_func_start sub_800956C
sub_800956C: @ 0x0800956C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	mov r5, sp
	movs r4, #1
	movs r0, #1
	bl sub_8000528
	ands r4, r0
	strh r4, [r5]
	adds r0, r6, #0
	bl sub_8009984
	mov r1, sp
	ldrh r0, [r1]
	cmp r0, #0
	beq _08009592
	bl sub_80004F4
_08009592:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800959C
sub_800959C: @ 0x0800959C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080095BC @ =0x080E5B90
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_800956C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80098DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080095BC: .4byte 0x080E5B90

	thumb_func_start sub_80095C0
sub_80095C0: @ 0x080095C0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov r5, sp
	movs r4, #1
	movs r0, #1
	bl sub_8000528
	ands r4, r0
	strh r4, [r5]
	adds r0, r6, #0
	mov r1, r8
	bl sub_8009940
	mov r1, sp
	ldrh r0, [r1]
	cmp r0, #0
	beq _080095EE
	bl sub_80004F4
_080095EE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80095FC
sub_80095FC: @ 0x080095FC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov r5, sp
	movs r4, #1
	movs r0, #1
	bl sub_8000528
	ands r4, r0
	strh r4, [r5]
	adds r0, r6, #0
	mov r1, r8
	bl sub_8009968
	mov r1, sp
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800962A
	bl sub_80004F4
_0800962A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8009638
sub_8009638: @ 0x08009638
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov r5, sp
	movs r4, #1
	movs r0, #1
	bl sub_8000528
	ands r4, r0
	strh r4, [r5]
	adds r0, r6, #0
	mov r1, r8
	bl sub_80099B0
	mov r1, sp
	ldrh r0, [r1]
	cmp r0, #0
	beq _08009666
	bl sub_80004F4
_08009666:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8009674
sub_8009674: @ 0x08009674
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	mov r5, sp
	movs r4, #1
	movs r0, #1
	bl sub_8000528
	ands r4, r0
	strh r4, [r5]
	adds r0, r6, #0
	mov r1, r8
	bl sub_80099D4
	mov r1, sp
	ldrh r0, [r1]
	cmp r0, #0
	beq _080096A2
	bl sub_80004F4
_080096A2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80096B0
sub_80096B0: @ 0x080096B0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080096EC @ =0x0100002B
	mov r0, sp
	adds r1, r4, #0
	bl sub_80D3750
	movs r0, #0x80
	str r0, [r4]
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r4, #0x20]
	strh r0, [r4, #0x22]
	strh r0, [r4, #0x24]
	strh r1, [r4, #0x26]
	strh r1, [r4, #0x30]
	strh r0, [r4, #0x32]
	strh r0, [r4, #0x34]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080096EC: .4byte 0x0100002B

	thumb_func_start sub_80096F0
sub_80096F0: @ 0x080096F0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x54
	bl sub_8008E64
	ldr r1, _0800970C @ =0x04000054
	adds r4, #0x54
	ldrh r0, [r4]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800970C: .4byte 0x04000054
_08009710:
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x80, 0x21, 0xC9, 0x04, 0x10, 0x22, 0xCA, 0xF0, 0x17, 0xF8, 0x20, 0x1C
	.byte 0x40, 0x30, 0x05, 0x49, 0x05, 0x4A, 0xCA, 0xF0, 0x13, 0xF8, 0x05, 0x49, 0xA0, 0x8A, 0x08, 0x80
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x40, 0x00, 0x00, 0x04, 0x05, 0x00, 0x00, 0x04
	.byte 0x14, 0x00, 0x00, 0x04

	thumb_func_start sub_8009744
sub_8009744: @ 0x08009744
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0x7f
	ands r1, r0
	strb r1, [r3, #1]
	strb r1, [r3]
	movs r0, #0x1f
	ands r2, r0
	strb r2, [r3, #3]
	strb r2, [r3, #2]
	adds r0, r3, #4
	ldr r2, _08009778 @ =0x00000404
	adds r1, r3, r2
	movs r2, #2
_08009768:
	strb r2, [r0, #1]
	adds r0, #8
	cmp r0, r1
	bne _08009768
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
_08009778: .4byte 0x00000404

	thumb_func_start sub_800977C
sub_800977C: @ 0x0800977C
	push {lr}
	adds r0, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_8008E64
	pop {r0}
	bx r0
_08009790:
	.byte 0x00, 0xB5, 0x04, 0x30, 0xE0, 0x21, 0xC9, 0x04, 0x80, 0x22, 0x52, 0x00, 0xC9, 0xF0, 0xD6, 0xFF
	.byte 0x01, 0xBC, 0x00, 0x47

	thumb_func_start sub_80097A4
sub_80097A4: @ 0x080097A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r3, sl
	adds r3, #4
	movs r4, #0xe0
	lsls r4, r4, #0x13
	mov r1, sl
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, #4
	adds r6, r1, r0
	movs r5, #0
	movs r7, #0x80
	lsls r7, r7, #3
	mov sb, r7
	ldr r0, _0800982C @ =0x00000FFF
	mov r8, r0
_080097CE:
	mov r1, sl
	adds r1, #4
	cmp r1, r6
	beq _080097FC
	movs r7, #0xc0
	lsls r7, r7, #4
	mov ip, r7
_080097DC:
	ldrh r2, [r1, #4]
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	cmp r0, r5
	bne _080097F6
	ldr r0, [r1]
	str r0, [r4]
	strh r2, [r4, #4]
	ldrh r0, [r3, #6]
	strh r0, [r4, #6]
	adds r3, #8
	adds r4, #8
_080097F6:
	adds r1, #8
	cmp r1, r6
	bne _080097DC
_080097FC:
	add r5, sb
	cmp r5, r8
	bls _080097CE
	ldr r0, _08009830 @ =0x07000400
	cmp r4, r0
	beq _0800981C
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r0, #0
_0800980E:
	str r2, [r4]
	ldrh r0, [r3, #6]
	strh r0, [r4, #6]
	adds r3, #8
	adds r4, #8
	cmp r4, r1
	bne _0800980E
_0800981C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800982C: .4byte 0x00000FFF
_08009830: .4byte 0x07000400

	thumb_func_start sub_8009834
sub_8009834: @ 0x08009834
	push {r4, lr}
	adds r2, r0, #0
	ldrb r4, [r2]
	ldrb r3, [r2, #1]
	cmp r4, r3
	bls _08009856
	lsls r0, r3, #3
	adds r0, #4
	adds r1, r2, r0
	lsls r0, r4, #3
	adds r0, #4
	adds r0, r2, r0
	movs r4, #2
_0800984E:
	strb r4, [r1, #1]
	adds r1, #8
	cmp r1, r0
	bne _0800984E
_08009856:
	strb r3, [r2]
	ldrb r0, [r2, #3]
	strb r0, [r2, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8009864
sub_8009864: @ 0x08009864
	push {r4, lr}
	adds r4, r0, #0
	bl sub_800977C
	adds r0, r4, #0
	bl sub_8009834
	pop {r4}
	pop {r0}
	bx r0
_08009878:
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x20, 0x1D, 0xE0, 0x21
	.byte 0xC9, 0x04, 0x80, 0x22, 0x52, 0x00, 0xC9, 0xF0, 0x61, 0xFF, 0x20, 0x1C, 0xFF, 0xF7, 0xD2, 0xFF
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x04, 0x1C, 0xFF, 0xF7, 0x82, 0xFF
	.byte 0x20, 0x1C, 0xFF, 0xF7, 0xC7, 0xFF, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47

	thumb_func_start sub_80098AC
sub_80098AC: @ 0x080098AC
	push {lr}
	adds r3, r0, #0
	ldr r0, _080098D4 @ =0x080E5BE8
	str r0, [r3, #8]
	ldr r2, [r3]
	cmp r2, #0
	beq _080098C2
	ldr r0, [r3, #4]
	str r0, [r2]
	ldr r0, [r3, #4]
	str r2, [r0]
_080098C2:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080098D0
	adds r0, r3, #0
	bl sub_8000608
_080098D0:
	pop {r0}
	bx r0
	.align 2, 0
_080098D4: .4byte 0x080E5BE8
_080098D8:
	.byte 0x01, 0x20, 0x70, 0x47

	thumb_func_start sub_80098DC
sub_80098DC: @ 0x080098DC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08009904 @ =0x080E5BB4
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_8009984
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #2
	bl sub_80098AC
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_80098AC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009904: .4byte 0x080E5BB4

	thumb_func_start sub_8009908
sub_8009908: @ 0x08009908
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, [r6, #0xc]
	adds r7, r6, #0
	adds r7, #0x10
_08009912:
	cmp r5, r7
	beq _08009938
	adds r4, r5, #0
	ldr r5, [r5, #4]
	ldr r0, [r4, #8]
	ldr r1, [r0, #8]
	adds r0, r4, #0
	bl sub_80D3910
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08009912
	ldr r0, [r6, #8]
	ldr r2, [r0, #0x14]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_80D3914
	b _08009912
_08009938:
	movs r0, #1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8009940
sub_8009940: @ 0x08009940
	push {lr}
	adds r3, r0, #0
	ldr r2, [r1]
	cmp r2, #0
	beq _08009952
	ldr r0, [r1, #4]
	str r0, [r2]
	ldr r0, [r1, #4]
	str r2, [r0]
_08009952:
	ldr r0, [r3, #0x10]
	str r1, [r0]
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r1, #4]
	adds r0, r1, #4
	str r0, [r3, #0x10]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8009968
sub_8009968: @ 0x08009968
	push {lr}
	ldr r2, [r1]
	cmp r2, #0
	beq _0800997E
	ldr r0, [r1, #4]
	str r0, [r2]
	ldr r0, [r1, #4]
	str r2, [r0]
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
_0800997E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8009984
sub_8009984: @ 0x08009984
	push {r4, lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0x10
	cmp r1, r3
	beq _080099A0
	movs r4, #0
_08009994:
	adds r0, r1, #0
	ldr r1, [r1, #4]
	str r4, [r0]
	str r4, [r0, #4]
	cmp r1, r3
	bne _08009994
_080099A0:
	adds r0, r2, #0
	adds r0, #0x10
	str r0, [r2, #0xc]
	subs r0, #4
	str r0, [r2, #0x10]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80099B0
sub_80099B0: @ 0x080099B0
	adds r3, r1, #0
	ldr r2, [r0, #0x10]
	ldr r1, [r3, #0xc]
	str r1, [r2]
	ldr r1, [r3, #0xc]
	str r2, [r1]
	ldr r2, [r3, #0x10]
	adds r1, r0, #0
	adds r1, #0x10
	str r1, [r2]
	str r2, [r0, #0x10]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r3, #0xc]
	subs r0, #4
	str r0, [r3, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_80099D4
sub_80099D4: @ 0x080099D4
	ldr r3, [r0, #0xc]
	ldr r2, [r1, #0xc]
	str r2, [r0, #0xc]
	str r3, [r1, #0xc]
	ldr r2, [r0, #0x10]
	ldr r1, [r1, #0x10]
	ldr r3, [r2]
	ldr r0, [r1]
	str r0, [r2]
	str r3, [r1]
	bx lr
	.align 2, 0
_080099EC:
	.byte 0x00, 0xB5, 0x00, 0x22
	.byte 0x01, 0x1C, 0x10, 0x31, 0xC0, 0x68, 0x88, 0x42, 0x00, 0xD1, 0x01, 0x22, 0x10, 0x1C, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x00, 0x23, 0x03, 0x60, 0x43, 0x60, 0x06, 0x49, 0x81, 0x60, 0x02, 0x1C
	.byte 0x10, 0x32, 0xC2, 0x60, 0x53, 0x60, 0x04, 0x49, 0x91, 0x60, 0x01, 0x1C, 0x0C, 0x31, 0x01, 0x61
	.byte 0x42, 0x61, 0x70, 0x47, 0xB4, 0x5B, 0x0E, 0x08, 0xD8, 0x5B, 0x0E, 0x08, 0x01, 0x68, 0x48, 0x42
	.byte 0x08, 0x43, 0xC0, 0x0F, 0x70, 0x47, 0x00, 0x00, 0x02, 0x49, 0x81, 0x60, 0x00, 0x21, 0x01, 0x60
	.byte 0x41, 0x60, 0x70, 0x47, 0xE8, 0x5B, 0x0E, 0x08

	thumb_func_start sub_8009A48
sub_8009A48: @ 0x08009A48
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	bl sub_80D3B78
	adds r4, r0, #0
	cmp r4, #0xc
	bls _08009A5C
	movs r4, #0xc
_08009A5C:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80D3994
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	ldrh r1, [r6, #0x10]
	ldr r0, _08009ACC @ =0xFFFFFC00
	ands r0, r1
	strh r0, [r6, #0x10]
	ldrb r1, [r6, #0x11]
	movs r0, #5
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r6, #0x11]
	adds r0, r6, #0
	adds r0, #0x40
	bl sub_800B0DC
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_800BE70
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_800C450
	ldr r1, _08009AD0 @ =0x000005DC
	adds r0, r6, r1
	bl sub_800CDBC
	ldr r0, _08009AD4 @ =0x000009C8
	adds r4, r6, r0
	ldr r5, _08009AD8 @ =0x00000432
	movs r7, #1
	rsbs r7, r7, #0
_08009AB6:
	adds r0, r4, #0
	bl sub_8009F8C
	adds r4, #4
	subs r5, #1
	cmp r5, r7
	bne _08009AB6
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009ACC: .4byte 0xFFFFFC00
_08009AD0: .4byte 0x000005DC
_08009AD4: .4byte 0x000009C8
_08009AD8: .4byte 0x00000432

	thumb_func_start sub_8009ADC
sub_8009ADC: @ 0x08009ADC
	movs r1, #0xfc
	lsls r1, r1, #1
	movs r2, #0x84
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr

	thumb_func_start sub_8009AE8
sub_8009AE8: @ 0x08009AE8
	movs r1, #0x8f
	movs r2, #0x83
	lsls r2, r2, #2
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr

	thumb_func_start sub_8009AF4
sub_8009AF4: @ 0x08009AF4
	bx lr
	.align 2, 0

	thumb_func_start sub_8009AF8
sub_8009AF8: @ 0x08009AF8
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	bx lr

	thumb_func_start sub_8009B00
sub_8009B00: @ 0x08009B00
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1d
	movs r2, #0
	cmp r0, #0
	bge _08009B12
	adds r2, r1, #0
	adds r2, #0x14
_08009B12:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_8009B18
sub_8009B18: @ 0x08009B18
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_8009B20
sub_8009B20: @ 0x08009B20
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r1, _08009B44 @ =0x000009C8
	adds r6, r0, r1
	movs r4, #0
_08009B2A:
	movs r3, #0
	adds r2, r4, r6
_08009B2E:
	ldr r1, [r2]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _08009B48
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x1a
	bne _08009B48
	movs r0, #1
	b _08009B5A
	.align 2, 0
_08009B44: .4byte 0x000009C8
_08009B48:
	adds r2, #4
	adds r3, #1
	cmp r3, #0x2a
	bls _08009B2E
	adds r4, #0xac
	adds r5, #1
	cmp r5, #0x18
	bls _08009B2A
	movs r0, #0
_08009B5A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8009B60
sub_8009B60: @ 0x08009B60
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	bx lr

	thumb_func_start sub_8009B68
sub_8009B68: @ 0x08009B68
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, _08009BA0 @ =0x000003E7
	str r2, [sp]
	ldrh r4, [r5, #0x10]
	lsls r0, r4, #0x16
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	str r0, [sp, #4]
	add r3, sp, #4
	mov r1, sp
	cmp r2, r0
	bls _08009B86
	adds r1, r3, #0
_08009B86:
	ldr r1, [r1]
	ldr r2, _08009BA4 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	ldr r0, _08009BA8 @ =0xFFFFFC00
	ands r0, r4
	orrs r0, r1
	strh r0, [r5, #0x10]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009BA0: .4byte 0x000003E7
_08009BA4: .4byte 0x000003FF
_08009BA8: .4byte 0xFFFFFC00

	thumb_func_start sub_8009BAC
sub_8009BAC: @ 0x08009BAC
	push {r4, lr}
	adds r3, r0, #0
	ldrh r2, [r3, #0x10]
	lsls r0, r2, #0x16
	lsrs r0, r0, #0x16
	cmp r0, r1
	bhi _08009BC4
	ldr r0, _08009BC0 @ =0xFFFFFC00
	ands r0, r2
	b _08009BD2
	.align 2, 0
_08009BC0: .4byte 0xFFFFFC00
_08009BC4:
	subs r1, r0, r1
	ldr r4, _08009BDC @ =0x000003FF
	adds r0, r4, #0
	ands r1, r0
	ldr r0, _08009BE0 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
_08009BD2:
	strh r0, [r3, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009BDC: .4byte 0x000003FF
_08009BE0: .4byte 0xFFFFFC00

	thumb_func_start sub_8009BE4
sub_8009BE4: @ 0x08009BE4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldrb r0, [r6, #0x11]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08009C36
	adds r4, r6, #0
	adds r4, #0x14
	cmp r4, #0
	beq _08009C2E
	adds r0, r4, #0
	bl sub_80D684C
	ldrb r0, [r5, #0x1c]
	strb r0, [r4, #0x1c]
	ldrb r3, [r5, #0x1d]
	lsls r1, r3, #0x1f
	lsrs r1, r1, #0x1f
	ldrb r2, [r4, #0x1d]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	movs r1, #2
	ands r1, r3
	movs r2, #3
	rsbs r2, r2, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldr r0, [r5, #0x20]
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
_08009C2E:
	ldrb r0, [r6, #0x11]
	movs r1, #4
	orrs r0, r1
	strb r0, [r6, #0x11]
_08009C36:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8009C3C
sub_8009C3C: @ 0x08009C3C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1d
	movs r2, #0
	cmp r0, #0
	bge _08009C4E
	adds r2, r1, #0
	adds r2, #0x14
_08009C4E:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_8009C54
sub_8009C54: @ 0x08009C54
	ldrb r2, [r0, #0x11]
	movs r1, #5
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0x11]
	bx lr

	thumb_func_start sub_8009C60
sub_8009C60: @ 0x08009C60
	ldrb r2, [r0, #0x11]
	movs r1, #9
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0x11]
	bx lr

	thumb_func_start sub_8009C6C
sub_8009C6C: @ 0x08009C6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	ldrb r0, [r5, #0x11]
	movs r1, #8
	orrs r0, r1
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	bl sub_8009C3C
	cmp r0, #0
	beq _08009C94
	bl sub_809BC48
_08009C94:
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r1, [r6]
	lsls r1, r1, #0x1e
	lsrs r1, r1, #0x1e
	bl sub_800C390
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_800C9EC
	ldr r1, _08009D2C @ =0x000005DC
	adds r0, r5, r1
	bl sub_800D5B0
	ldr r2, _08009D30 @ =0x000009C8
	adds r2, r2, r5
	mov r8, r2
	mov r4, r8
	ldr r1, _08009D34 @ =0x00001A94
	adds r0, r5, r1
	subs r2, r7, #3
	mov sb, r2
	cmp r8, r0
	bhs _08009CDC
	adds r5, r0, #0
_08009CCC:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_800A7B0
	adds r4, #4
	cmp r4, r5
	blo _08009CCC
_08009CDC:
	mov r0, sb
	cmp r0, #1
	bls _08009CE4
	b _08009F6E
_08009CE4:
	bl sub_80D11E4
	movs r1, #1
	ands r1, r0
	movs r2, #0x23
	str r2, [sp, #0x10]
	cmp r1, #0
	beq _08009CF8
	movs r0, #0x1f
	str r0, [sp, #0x10]
_08009CF8:
	mov r1, sp
	str r1, [sp, #0x14]
	movs r0, #0
	ldr r2, [sp, #0x10]
	cmp r2, #0x1a
	ble _08009D06
	movs r0, #1
_08009D06:
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0x18]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x24]
_08009D12:
	mov r2, sl
	cmp r2, #0
	beq _08009D38
	bl sub_80D11E4
	movs r1, #0x2a
	bl sub_80D0F4E
	adds r6, r0, #0
	bl sub_80D11E4
	movs r1, #0x18
	b _08009D4A
	.align 2, 0
_08009D2C: .4byte 0x000005DC
_08009D30: .4byte 0x000009C8
_08009D34: .4byte 0x00001A94
_08009D38:
	bl sub_80D11E4
	movs r1, #0x2b
	bl sub_80D0F4E
	adds r6, r0, #0
	bl sub_80D11E4
	movs r1, #0x19
_08009D4A:
	bl sub_80D0F4E
	adds r5, r0, #0
	movs r0, #0x2b
	mov sb, r0
	mov r4, sb
	muls r4, r5, r4
	adds r0, r6, r4
	lsls r0, r0, #2
	add r0, r8
	bl sub_800A78C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08009DB0
	mov r1, sl
	cmp r1, #0
	beq _08009DA6
	adds r7, r6, #1
	adds r0, r7, r4
	lsls r0, r0, #2
	add r0, r8
	bl sub_800A78C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08009DB0
	adds r0, r5, #1
	mov r4, sb
	muls r4, r0, r4
	adds r0, r6, r4
	lsls r0, r0, #2
	add r0, r8
	bl sub_800A78C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08009DB0
	adds r0, r7, r4
	lsls r0, r0, #2
	add r0, r8
	bl sub_800A78C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08009DB0
_08009DA6:
	ldr r2, [sp, #0x14]
	str r6, [r2]
	str r5, [r2, #4]
	movs r0, #1
	b _08009DBC
_08009DB0:
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x63
	bls _08009D12
	movs r0, #0
_08009DBC:
	cmp r0, #0
	beq _08009E2E
	movs r5, #0
	ldr r1, [sp, #0x10]
	cmp r1, #0x1a
	ble _08009DCA
	movs r5, #1
_08009DCA:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	movs r4, #0x2b
	muls r1, r4, r1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [sp, #0x10]
	movs r2, #8
	bl sub_800A134
	cmp r5, #0
	beq _08009E2E
	ldr r0, [sp]
	adds r0, #1
	ldr r1, [sp, #4]
	muls r1, r4, r1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [sp, #0x10]
	adds r1, #1
	movs r2, #8
	bl sub_800A134
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r1, #1
	muls r1, r4, r1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [sp, #0x10]
	adds r1, #2
	movs r2, #8
	bl sub_800A134
	ldr r0, [sp]
	adds r0, #1
	ldr r1, [sp, #4]
	adds r1, #1
	muls r1, r4, r1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [sp, #0x10]
	adds r1, #3
	movs r2, #8
	bl sub_800A134
_08009E2E:
	bl sub_80D11E4
	movs r1, #1
	ands r1, r0
	movs r2, #0x23
	str r2, [sp, #0x10]
	cmp r1, #0
	beq _08009E42
	movs r0, #0x1f
	str r0, [sp, #0x10]
_08009E42:
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x1c]
	movs r0, #0
	ldr r2, [sp, #0x10]
	cmp r2, #0x1a
	ble _08009E50
	movs r0, #1
_08009E50:
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0x20]
_08009E56:
	mov r1, sl
	cmp r1, #0
	beq _08009E70
	bl sub_80D11E4
	movs r1, #0x2a
	bl sub_80D0F4E
	adds r6, r0, #0
	bl sub_80D11E4
	movs r1, #0x18
	b _08009E82
_08009E70:
	bl sub_80D11E4
	movs r1, #0x2b
	bl sub_80D0F4E
	adds r6, r0, #0
	bl sub_80D11E4
	movs r1, #0x19
_08009E82:
	bl sub_80D0F4E
	adds r5, r0, #0
	movs r2, #0x2b
	mov sb, r2
	mov r4, sb
	muls r4, r5, r4
	adds r0, r6, r4
	lsls r0, r0, #2
	add r0, r8
	bl sub_800A78C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08009EE8
	mov r0, sl
	cmp r0, #0
	beq _08009EDE
	adds r7, r6, #1
	adds r0, r7, r4
	lsls r0, r0, #2
	add r0, r8
	bl sub_800A78C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08009EE8
	adds r0, r5, #1
	mov r4, sb
	muls r4, r0, r4
	adds r0, r6, r4
	lsls r0, r0, #2
	add r0, r8
	bl sub_800A78C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08009EE8
	adds r0, r7, r4
	lsls r0, r0, #2
	add r0, r8
	bl sub_800A78C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08009EE8
_08009EDE:
	ldr r1, [sp, #0x1c]
	str r6, [r1]
	str r5, [r1, #4]
	movs r0, #1
	b _08009EF4
_08009EE8:
	ldr r2, [sp, #0x20]
	adds r2, #1
	str r2, [sp, #0x20]
	cmp r2, #0x63
	bls _08009E56
	movs r0, #0
_08009EF4:
	cmp r0, #0
	beq _08009F6E
	movs r5, #0
	ldr r0, [sp, #0x10]
	cmp r0, #0x1a
	ble _08009F02
	movs r5, #1
_08009F02:
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x24]
	ldr r1, [r2, #4]
	movs r4, #0x2b
	muls r1, r4, r1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [sp, #0x10]
	movs r2, #8
	bl sub_800A134
	cmp r5, #0
	beq _08009F6E
	ldr r0, [sp, #8]
	adds r0, #1
	ldr r2, [sp, #0x24]
	ldr r1, [r2, #4]
	muls r1, r4, r1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [sp, #0x10]
	adds r1, #1
	movs r2, #8
	bl sub_800A134
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x24]
	ldr r1, [r2, #4]
	adds r1, #1
	muls r1, r4, r1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [sp, #0x10]
	adds r1, #2
	movs r2, #8
	bl sub_800A134
	ldr r0, [sp, #8]
	adds r0, #1
	ldr r2, [sp, #0x24]
	ldr r1, [r2, #4]
	adds r1, #1
	muls r1, r4, r1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [sp, #0x10]
	adds r1, #3
	movs r2, #8
	bl sub_800A134
_08009F6E:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8009F80
sub_8009F80: @ 0x08009F80
	ldrb r1, [r0, #0x11]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x11]
	bx lr
	.align 2, 0

	thumb_func_start sub_8009F8C
sub_8009F8C: @ 0x08009F8C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4]
	ldrb r1, [r4, #1]
	subs r0, #0x10
	ands r0, r1
	strb r0, [r4, #1]
	ldr r0, [r4]
	ldr r1, _08009FC4 @ =0xFFFE0FFF
	ands r0, r1
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800A014
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	ldrb r2, [r4, #2]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #2]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08009FC4: .4byte 0xFFFE0FFF

	thumb_func_start sub_8009FC8
sub_8009FC8: @ 0x08009FC8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #3
	lsls r2, r2, #2
	ands r1, r0
	orrs r2, r1
	strb r2, [r4]
	movs r0, #0xf
	ands r3, r0
	ldrb r1, [r4, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #1]
	ldr r0, [r4]
	ldr r1, _0800A010 @ =0xFFFE0FFF
	ands r0, r1
	str r0, [r4]
	adds r0, r4, #0
	bl sub_800A014
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	ldrb r2, [r4, #2]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #2]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0800A010: .4byte 0xFFFE0FFF

	thumb_func_start sub_800A014
sub_800A014: @ 0x0800A014
	push {lr}
	movs r2, #1
	ldr r1, [r0]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800A076
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	subs r0, #0x1a
	cmp r0, #0xc
	bhi _0800A076
	lsls r0, r0, #2
	ldr r1, _0800A038 @ =_0800A03C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A038: .4byte _0800A03C
_0800A03C: @ jump table
	.4byte _0800A070 @ case 0
	.4byte _0800A070 @ case 1
	.4byte _0800A070 @ case 2
	.4byte _0800A070 @ case 3
	.4byte _0800A070 @ case 4
	.4byte _0800A074 @ case 5
	.4byte _0800A074 @ case 6
	.4byte _0800A074 @ case 7
	.4byte _0800A074 @ case 8
	.4byte _0800A070 @ case 9
	.4byte _0800A070 @ case 10
	.4byte _0800A070 @ case 11
	.4byte _0800A070 @ case 12
_0800A070:
	movs r2, #6
	b _0800A076
_0800A074:
	movs r2, #3
_0800A076:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start sub_800A07C
sub_800A07C: @ 0x0800A07C
	push {lr}
	ldr r1, [r0]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	blt _0800A09C
	cmp r0, #1
	ble _0800A09C
	cmp r0, #8
	bgt _0800A09C
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x14
	beq _0800A09C
	movs r0, #1
	b _0800A09E
_0800A09C:
	movs r0, #0
_0800A09E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A0A4
sub_800A0A4: @ 0x0800A0A4
	push {lr}
	ldr r1, [r0]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	blt _0800A118
	cmp r0, #7
	ble _0800A118
	cmp r0, #8
	bne _0800A118
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	subs r0, #0x1b
	cmp r0, #0xb
	bhi _0800A118
	lsls r0, r0, #2
	ldr r1, _0800A0CC @ =_0800A0D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A0CC: .4byte _0800A0D0
_0800A0D0: @ jump table
	.4byte _0800A100 @ case 0
	.4byte _0800A100 @ case 1
	.4byte _0800A100 @ case 2
	.4byte _0800A100 @ case 3
	.4byte _0800A110 @ case 4
	.4byte _0800A110 @ case 5
	.4byte _0800A110 @ case 6
	.4byte _0800A110 @ case 7
	.4byte _0800A106 @ case 8
	.4byte _0800A106 @ case 9
	.4byte _0800A106 @ case 10
	.4byte _0800A106 @ case 11
_0800A100:
	movs r0, #0xf3
	lsls r0, r0, #2
	b _0800A11A
_0800A106:
	ldr r0, _0800A10C @ =0x000003CB
	b _0800A11A
	.align 2, 0
_0800A10C: .4byte 0x000003CB
_0800A110:
	ldr r0, _0800A114 @ =0x000003CA
	b _0800A11A
	.align 2, 0
_0800A114: .4byte 0x000003CA
_0800A118:
	movs r0, #0
_0800A11A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A120
sub_800A120: @ 0x0800A120
	movs r2, #3
	ands r1, r2
	ldrb r3, [r0]
	movs r2, #4
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_800A134
sub_800A134: @ 0x0800A134
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	lsls r1, r1, #2
	ldrb r2, [r5]
	movs r0, #3
	ands r0, r2
	orrs r0, r1
	strb r0, [r5]
	movs r0, #0xf
	adds r1, r4, #0
	ands r1, r0
	ldrb r2, [r5, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	adds r0, r5, #0
	bl sub_800A014
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	ldrb r2, [r5, #2]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #2]
	cmp r4, #8
	bne _0800A188
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _0800A188
	ldrb r1, [r5]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5]
_0800A188:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800A190
sub_800A190: @ 0x0800A190
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	movs r4, #0
	ldr r2, [r3]
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #0
	bne _0800A1F8
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800A1CE
	movs r2, #2
	cmp r1, #0
	beq _0800A1B6
	movs r2, #1
_0800A1B6:
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
	movs r4, #1
_0800A1CE:
	cmp r4, #1
	bne _0800A230
	bl sub_80D11E4
	adds r1, r0, #0
	movs r0, #0xff
	ands r1, r0
	cmp r1, #9
	bhi _0800A1E4
	movs r4, #2
	b _0800A230
_0800A1E4:
	subs r1, #0xa
	cmp r1, #2
	bhi _0800A1EE
	movs r4, #4
	b _0800A230
_0800A1EE:
	subs r1, #3
	cmp r1, #4
	bhi _0800A230
	movs r4, #3
	b _0800A230
_0800A1F8:
	subs r0, #1
	cmp r0, #1
	bhi _0800A230
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #7
	beq _0800A210
	cmp r0, #7
	bgt _0800A230
	cmp r0, #1
	bne _0800A230
	b _0800A224
_0800A210:
	movs r2, #2
	cmp r5, #0
	beq _0800A218
	movs r2, #1
_0800A218:
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
_0800A224:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
	movs r4, #1
_0800A230:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_800A238
sub_800A238: @ 0x0800A238
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r1, [r3]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800A260
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	subs r0, #1
	cmp r0, #1
	bhi _0800A25C
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_0800A25C:
	movs r0, #1
	b _0800A336
_0800A260:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	subs r0, #0x16
	cmp r0, #0x10
	bhi _0800A2BC
	lsls r0, r0, #2
	ldr r1, _0800A274 @ =_0800A278
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A274: .4byte _0800A278
_0800A278: @ jump table
	.4byte _0800A2C0 @ case 0
	.4byte _0800A2BC @ case 1
	.4byte _0800A2C6 @ case 2
	.4byte _0800A2CC @ case 3
	.4byte _0800A2D2 @ case 4
	.4byte _0800A2BC @ case 5
	.4byte _0800A2BC @ case 6
	.4byte _0800A2BC @ case 7
	.4byte _0800A2BC @ case 8
	.4byte _0800A2D8 @ case 9
	.4byte _0800A2D8 @ case 10
	.4byte _0800A2D8 @ case 11
	.4byte _0800A2D8 @ case 12
	.4byte _0800A2DE @ case 13
	.4byte _0800A2DE @ case 14
	.4byte _0800A2DE @ case 15
	.4byte _0800A2DE @ case 16
_0800A2BC:
	movs r0, #0
	b _0800A336
_0800A2C0:
	movs r1, #0
	movs r4, #3
	b _0800A2E2
_0800A2C6:
	movs r1, #0
	movs r4, #5
	b _0800A2E2
_0800A2CC:
	movs r1, #0
	movs r4, #6
	b _0800A2E2
_0800A2D2:
	movs r1, #3
	movs r4, #4
	b _0800A2E2
_0800A2D8:
	movs r1, #1
	movs r4, #7
	b _0800A2E2
_0800A2DE:
	movs r1, #2
	movs r4, #8
_0800A2E2:
	subs r2, r2, r1
	cmp r2, #0
	ble _0800A334
	ldr r0, [r3]
	lsls r1, r0, #0xc
	lsrs r0, r1, #0x1d
	cmp r2, r0
	blo _0800A31E
	ldrb r1, [r3, #2]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #2]
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _0800A31A
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_0800A31A:
	adds r0, r4, #0
	b _0800A336
_0800A31E:
	lsrs r1, r1, #0x1d
	subs r1, r1, r2
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #2]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #2]
_0800A334:
	movs r0, #2
_0800A336:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_800A33C
sub_800A33C: @ 0x0800A33C
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r2, [r3]
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800A360
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x17
	beq _0800A364
	cmp r0, #0x17
	blt _0800A360
	cmp r0, #0x1e
	bgt _0800A360
	cmp r0, #0x1b
	bge _0800A36A
_0800A360:
	movs r0, #0
	b _0800A3C2
_0800A364:
	movs r1, #0
	movs r5, #1
	b _0800A36E
_0800A36A:
	movs r1, #1
	movs r5, #2
_0800A36E:
	subs r2, r4, r1
	cmp r2, #0
	ble _0800A3C0
	ldr r0, [r3]
	lsls r1, r0, #0xc
	lsrs r0, r1, #0x1d
	cmp r2, r0
	blo _0800A3AA
	ldrb r1, [r3, #2]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #2]
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _0800A3A6
	ldrb r1, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
_0800A3A6:
	adds r0, r5, #0
	b _0800A3C2
_0800A3AA:
	lsrs r1, r1, #0x1d
	subs r1, r1, r2
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #2]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #2]
_0800A3C0:
	movs r0, #3
_0800A3C2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_800A3C8
sub_800A3C8: @ 0x0800A3C8
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3]
	lsls r0, r2, #0x14
	lsrs r1, r0, #0x1c
	cmp r1, #0
	beq _0800A430
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x14
	bne _0800A400
	cmp r1, #5
	bne _0800A430
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	ldr r1, _0800A3FC @ =0xFFFE0FFF
	ands r0, r1
	str r0, [r3]
	movs r0, #1
	b _0800A432
	.align 2, 0
_0800A3FC: .4byte 0xFFFE0FFF
_0800A400:
	cmp r0, #0x15
	beq _0800A422
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	subs r0, #1
	cmp r0, #1
	bhi _0800A430
	cmp r1, #6
	beq _0800A422
	cmp r1, #2
	beq _0800A422
	cmp r1, #3
	beq _0800A422
	cmp r1, #4
	beq _0800A422
	cmp r1, #5
	bne _0800A430
_0800A422:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
	movs r0, #2
	b _0800A432
_0800A430:
	movs r0, #0
_0800A432:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A438
sub_800A438: @ 0x0800A438
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800A44A
	movs r0, #0
	b _0800A45A
_0800A44A:
	ldrb r0, [r2]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	movs r0, #1
_0800A45A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A460
sub_800A460: @ 0x0800A460
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r1, [r3]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	subs r0, #1
	cmp r0, #1
	bhi _0800A49C
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800A49C
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3, #1]
	lsls r2, r2, #2
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r0, [r3]
	ldr r1, _0800A4A0 @ =0xFFFE0FFF
	ands r0, r1
	str r0, [r3]
_0800A49C:
	pop {r0}
	bx r0
	.align 2, 0
_0800A4A0: .4byte 0xFFFE0FFF

	thumb_func_start sub_800A4A4
sub_800A4A4: @ 0x0800A4A4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r3, r1, #0
	ldr r1, [r3]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _0800A4BE
	cmp r0, #8
	bne _0800A4BC
	b _0800A644
_0800A4BC:
	b _0800A678
_0800A4BE:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	subs r0, #2
	cmp r0, #0x12
	bls _0800A4CA
	b _0800A624
_0800A4CA:
	lsls r0, r0, #2
	ldr r1, _0800A4D4 @ =_0800A4D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A4D4: .4byte _0800A4D8
_0800A4D8: @ jump table
	.4byte _0800A524 @ case 0
	.4byte _0800A544 @ case 1
	.4byte _0800A624 @ case 2
	.4byte _0800A564 @ case 3
	.4byte _0800A584 @ case 4
	.4byte _0800A624 @ case 5
	.4byte _0800A624 @ case 6
	.4byte _0800A5A4 @ case 7
	.4byte _0800A5C4 @ case 8
	.4byte _0800A624 @ case 9
	.4byte _0800A5E4 @ case 10
	.4byte _0800A624 @ case 11
	.4byte _0800A604 @ case 12
	.4byte _0800A624 @ case 13
	.4byte _0800A624 @ case 14
	.4byte _0800A624 @ case 15
	.4byte _0800A624 @ case 16
	.4byte _0800A624 @ case 17
	.4byte _0800A678 @ case 18
_0800A524:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	ldr r1, _0800A540 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	b _0800A634
	.align 2, 0
_0800A540: .4byte 0xFFFE0FFF
_0800A544:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	ldr r1, _0800A560 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #7
	orrs r0, r1
	b _0800A634
	.align 2, 0
_0800A560: .4byte 0xFFFE0FFF
_0800A564:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	ldr r1, _0800A580 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #7
	orrs r0, r1
	b _0800A634
	.align 2, 0
_0800A580: .4byte 0xFFFE0FFF
_0800A584:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	ldr r1, _0800A5A0 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0xb0
	lsls r1, r1, #8
	orrs r0, r1
	b _0800A634
	.align 2, 0
_0800A5A0: .4byte 0xFFFE0FFF
_0800A5A4:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	ldr r1, _0800A5C0 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	orrs r0, r1
	b _0800A634
	.align 2, 0
_0800A5C0: .4byte 0xFFFE0FFF
_0800A5C4:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	ldr r1, _0800A5E0 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #7
	orrs r0, r1
	b _0800A634
	.align 2, 0
_0800A5E0: .4byte 0xFFFE0FFF
_0800A5E4:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	ldr r1, _0800A600 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	orrs r0, r1
	b _0800A634
	.align 2, 0
_0800A600: .4byte 0xFFFE0FFF
_0800A604:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	ldr r1, _0800A620 @ =0xFFFE0FFF
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #7
	orrs r0, r1
	b _0800A634
	.align 2, 0
_0800A620: .4byte 0xFFFE0FFF
_0800A624:
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
	ldr r0, [r3]
	ldr r1, _0800A63C @ =0xFFFE0FFF
	ands r0, r1
_0800A634:
	str r0, [r3]
	ldr r2, _0800A640 @ =0x080E93F8
	b _0800A662
	.align 2, 0
_0800A63C: .4byte 0xFFFE0FFF
_0800A640: .4byte 0x080E93F8
_0800A644:
	ldr r2, _0800A680 @ =0x080E93F8
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1a
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0xa]
	cmp r0, #0xff
	beq _0800A662
	ldrb r1, [r3, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3, #1]
_0800A662:
	ldr r0, [r3]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x1a
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0xa]
	adds r2, r1, #0
	cmp r1, #0xff
	bne _0800A684
_0800A678:
	adds r0, r5, #0
	bl sub_800EFEC
	b _0800A6BE
	.align 2, 0
_0800A680: .4byte 0x080E93F8
_0800A684:
	cmp r3, #0xe
	bgt _0800A6AC
	mov r0, sp
	bl sub_800DCA8
	mov r0, sp
	ldrb r1, [r0]
	adds r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #2
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	bl sub_800F004
	b _0800A6BE
_0800A6AC:
	add r4, sp, #4
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_800DF50
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_800F040
_0800A6BE:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_800A6C8
sub_800A6C8: @ 0x0800A6C8
	push {lr}
	ldr r0, [r0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800A6EE
	adds r0, r1, #0
	bl sub_800DF54
	cmp r0, #0x31
	blt _0800A6EE
	cmp r0, #0x32
	ble _0800A6EA
	cmp r0, #0x5a
	bgt _0800A6EE
	cmp r0, #0x59
	blt _0800A6EE
_0800A6EA:
	movs r0, #1
	b _0800A6F0
_0800A6EE:
	movs r0, #0
_0800A6F0:
	pop {r1}
	bx r1

	thumb_func_start sub_800A6F4
sub_800A6F4: @ 0x0800A6F4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_800A6C8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800A786
	adds r0, r5, #0
	bl sub_800DF54
	cmp r0, #0x32
	beq _0800A740
	cmp r0, #0x32
	bgt _0800A718
	cmp r0, #0x31
	beq _0800A722
	b _0800A786
_0800A718:
	cmp r0, #0x59
	beq _0800A72C
	cmp r0, #0x5a
	beq _0800A736
	b _0800A786
_0800A722:
	ldrb r0, [r4]
	movs r1, #3
	ands r1, r0
	movs r0, #0x58
	b _0800A748
_0800A72C:
	ldrb r0, [r4]
	movs r1, #3
	ands r1, r0
	movs r0, #0x60
	b _0800A748
_0800A736:
	ldrb r0, [r4]
	movs r1, #3
	ands r1, r0
	movs r0, #0x68
	b _0800A748
_0800A740:
	ldrb r0, [r4]
	movs r1, #3
	ands r1, r0
	movs r0, #0x5c
_0800A748:
	orrs r1, r0
	strb r1, [r4]
	ldrb r1, [r4, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _0800A76E
	ldrb r1, [r4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
_0800A76E:
	adds r0, r4, #0
	bl sub_800A014
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	ldrb r2, [r4, #2]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #2]
_0800A786:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_800A78C
sub_800A78C: @ 0x0800A78C
	push {lr}
	ldr r1, [r0]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800A7A8
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x26
	bgt _0800A7A8
	cmp r0, #0x1b
	blt _0800A7A8
	movs r0, #1
	b _0800A7AA
_0800A7A8:
	movs r0, #0
_0800A7AA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800A7B0
sub_800A7B0: @ 0x0800A7B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldr r1, [r5]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0800A856
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x13
	bhi _0800A856
	lsls r0, r0, #2
	ldr r1, _0800A7D8 @ =_0800A7DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A7D8: .4byte _0800A7DC
_0800A7DC: @ jump table
	.4byte _0800A82C @ case 0
	.4byte _0800A82C @ case 1
	.4byte _0800A82C @ case 2
	.4byte _0800A82C @ case 3
	.4byte _0800A82C @ case 4
	.4byte _0800A836 @ case 5
	.4byte _0800A836 @ case 6
	.4byte _0800A836 @ case 7
	.4byte _0800A836 @ case 8
	.4byte _0800A836 @ case 9
	.4byte _0800A842 @ case 10
	.4byte _0800A842 @ case 11
	.4byte _0800A842 @ case 12
	.4byte _0800A842 @ case 13
	.4byte _0800A842 @ case 14
	.4byte _0800A82C @ case 15
	.4byte _0800A836 @ case 16
	.4byte _0800A842 @ case 17
	.4byte _0800A842 @ case 18
	.4byte _0800A82C @ case 19
_0800A82C:
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _0800A856
	b _0800A84C
_0800A836:
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800A856
	b _0800A84C
_0800A842:
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq _0800A856
_0800A84C:
	ldrb r1, [r5, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
_0800A856:
	ldr r1, [r5]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	bne _0800A862
	b _0800A9B2
_0800A862:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x26
	bls _0800A86C
	b _0800A9B2
_0800A86C:
	lsls r0, r0, #2
	ldr r1, _0800A878 @ =_0800A87C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A878: .4byte _0800A87C
_0800A87C: @ jump table
	.4byte _0800A918 @ case 0
	.4byte _0800A918 @ case 1
	.4byte _0800A918 @ case 2
	.4byte _0800A918 @ case 3
	.4byte _0800A918 @ case 4
	.4byte _0800A918 @ case 5
	.4byte _0800A918 @ case 6
	.4byte _0800A918 @ case 7
	.4byte _0800A918 @ case 8
	.4byte _0800A918 @ case 9
	.4byte _0800A918 @ case 10
	.4byte _0800A918 @ case 11
	.4byte _0800A918 @ case 12
	.4byte _0800A918 @ case 13
	.4byte _0800A918 @ case 14
	.4byte _0800A918 @ case 15
	.4byte _0800A918 @ case 16
	.4byte _0800A918 @ case 17
	.4byte _0800A918 @ case 18
	.4byte _0800A918 @ case 19
	.4byte _0800A94C @ case 20
	.4byte _0800A9B2 @ case 21
	.4byte _0800A9B2 @ case 22
	.4byte _0800A9B2 @ case 23
	.4byte _0800A9B2 @ case 24
	.4byte _0800A9B2 @ case 25
	.4byte _0800A9B2 @ case 26
	.4byte _0800A9B2 @ case 27
	.4byte _0800A9B2 @ case 28
	.4byte _0800A9B2 @ case 29
	.4byte _0800A9B2 @ case 30
	.4byte _0800A9B2 @ case 31
	.4byte _0800A9B2 @ case 32
	.4byte _0800A9B2 @ case 33
	.4byte _0800A9B2 @ case 34
	.4byte _0800A9B2 @ case 35
	.4byte _0800A9B2 @ case 36
	.4byte _0800A9B2 @ case 37
	.4byte _0800A9B2 @ case 38
_0800A918:
	ldr r2, [r5]
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #1
	blt _0800A9B2
	cmp r0, #4
	bgt _0800A9B2
	lsls r0, r2, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0800A9CA
	lsls r0, r2, #0xf
	lsrs r0, r0, #0x1b
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, _0800A948 @ =0xFFFE0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r5]
	lsls r3, r1, #0x14
	lsrs r3, r3, #0x1c
	b _0800A97E
	.align 2, 0
_0800A948: .4byte 0xFFFE0FFF
_0800A94C:
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	beq _0800A9B2
	ldr r2, [r5]
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _0800A9B2
	lsls r0, r2, #0xf
	lsrs r0, r0, #0x1b
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, _0800A9F0 @ =0xFFFE0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r5]
	lsls r0, r1, #0x14
	lsrs r3, r0, #0x1c
	cmp r3, #7
	bne _0800A97E
	movs r3, #1
_0800A97E:
	ldr r6, _0800A9F4 @ =0x080E8D14
	lsls r4, r1, #0xf
	lsrs r0, r4, #0x1b
	lsls r0, r0, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1a
	movs r2, #0x54
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r3, r0
	beq _0800A9B2
	lsrs r0, r4, #0x1b
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, r0, r6
	ldr r1, [r0]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r5, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
_0800A9B2:
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0800A9CA
	ldrb r0, [r5]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r5]
_0800A9CA:
	mov r0, r8
	cmp r0, #3
	beq _0800A9FC
	cmp r0, #3
	ble _0800A9D8
	cmp r0, #4
	beq _0800AA04
_0800A9D8:
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1a
	ldr r1, _0800A9F8 @ =0x080E8CC4
	adds r0, r0, r1
	mov r1, r8
	cmp r1, #0
	bne _0800A9EA
	adds r0, #8
_0800A9EA:
	adds r4, r0, #0
	b _0800AA06
	.align 2, 0
_0800A9F0: .4byte 0xFFFE0FFF
_0800A9F4: .4byte 0x080E8D14
_0800A9F8: .4byte 0x080E8CC4
_0800A9FC:
	ldr r4, _0800AA00 @ =0x080E8D04
	b _0800AA06
	.align 2, 0
_0800AA00: .4byte 0x080E8D04
_0800AA04:
	ldr r4, _0800AA30 @ =0x080E8D0C
_0800AA06:
	ldr r1, [r5]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800AA52
	cmp r0, #1
	bne _0800AA34
	bl sub_80D11E4
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	ldrb r4, [r4, #7]
	cmp r0, r4
	bhs _0800AAD2
	ldrb r1, [r5, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
	b _0800AAD2
	.align 2, 0
_0800AA30: .4byte 0x080E8D0C
_0800AA34:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x18
	bne _0800AAD2
	bl sub_80D11E4
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	ldrb r4, [r4]
	cmp r0, r4
	bhs _0800AAD2
	adds r0, r5, #0
	movs r1, #0x19
	b _0800AAB6
_0800AA52:
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #0
	beq _0800AA5E
	cmp r0, #3
	bne _0800AA8C
_0800AA5E:
	bl sub_80D11E4
	asrs r1, r0, #3
	movs r0, #0xff
	ands r1, r0
	ldrb r2, [r4, #4]
	cmp r1, r2
	blt _0800AAB2
	ldrb r3, [r4, #5]
	adds r0, r3, r2
	cmp r1, r0
	bge _0800AA7C
	adds r0, r5, #0
	movs r1, #0x16
	b _0800AAB6
_0800AA7C:
	ldrb r0, [r4, #6]
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r1, r0
	bge _0800AAD2
	adds r0, r5, #0
	movs r1, #0x17
	b _0800AAB6
_0800AA8C:
	cmp r0, #1
	bne _0800AAD2
	bl sub_80D11E4
	asrs r1, r0, #3
	movs r0, #0xff
	ands r1, r0
	ldrb r2, [r4, #1]
	cmp r1, r2
	bge _0800AAAA
	adds r0, r5, #0
	movs r1, #0
	bl sub_800A120
	b _0800AAD2
_0800AAAA:
	ldrb r3, [r4, #2]
	adds r0, r3, r2
	cmp r1, r0
	bge _0800AABE
_0800AAB2:
	adds r0, r5, #0
	movs r1, #0x15
_0800AAB6:
	movs r2, #8
	bl sub_800A134
	b _0800AAD2
_0800AABE:
	ldrb r0, [r4, #3]
	adds r0, r0, r3
	adds r0, r0, r2
	cmp r1, r0
	bge _0800AAD2
	adds r0, r5, #0
	movs r1, #0x16
	movs r2, #8
	bl sub_800A134
_0800AAD2:
	mov r0, r8
	cmp r0, #0
	bne _0800AAEC
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne _0800AAFE
	adds r0, r5, #0
	movs r1, #1
	bl sub_800A120
	b _0800AAFE
_0800AAEC:
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0800AAFE
	adds r0, r5, #0
	movs r1, #2
	bl sub_800A120
_0800AAFE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800AB08
sub_800AB08: @ 0x0800AB08
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne _0800AB12
	b _0800AC54
_0800AB12:
	cmp r1, #1
	bgt _0800AB1C
	cmp r1, #0
	beq _0800AB2A
	b _0800AF1A
_0800AB1C:
	cmp r1, #2
	bne _0800AB22
	b _0800AD22
_0800AB22:
	cmp r1, #3
	bne _0800AB28
	b _0800AE30
_0800AB28:
	b _0800AF1A
_0800AB2A:
	adds r0, r4, #0
	movs r1, #0
	bl sub_800A120
	ldr r1, [r4]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800AC26
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x26
	bhi _0800AC26
	lsls r0, r0, #2
	ldr r1, _0800AB50 @ =_0800AB54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AB50: .4byte _0800AB54
_0800AB54: @ jump table
	.4byte _0800AC1C @ case 0
	.4byte _0800AC1C @ case 1
	.4byte _0800AC1C @ case 2
	.4byte _0800AC1C @ case 3
	.4byte _0800AC1C @ case 4
	.4byte _0800AC1C @ case 5
	.4byte _0800AC1C @ case 6
	.4byte _0800AC1C @ case 7
	.4byte _0800AC1C @ case 8
	.4byte _0800AC1C @ case 9
	.4byte _0800AC1C @ case 10
	.4byte _0800AC1C @ case 11
	.4byte _0800AC1C @ case 12
	.4byte _0800AC1C @ case 13
	.4byte _0800AC1C @ case 14
	.4byte _0800AC1C @ case 15
	.4byte _0800AC1C @ case 16
	.4byte _0800AC1C @ case 17
	.4byte _0800AC1C @ case 18
	.4byte _0800AC1C @ case 19
	.4byte _0800ABF0 @ case 20
	.4byte _0800AC1C @ case 21
	.4byte _0800AC26 @ case 22
	.4byte _0800AC26 @ case 23
	.4byte _0800AC26 @ case 24
	.4byte _0800AC26 @ case 25
	.4byte _0800AC26 @ case 26
	.4byte _0800AC26 @ case 27
	.4byte _0800AC26 @ case 28
	.4byte _0800AC26 @ case 29
	.4byte _0800AC26 @ case 30
	.4byte _0800AC26 @ case 31
	.4byte _0800AC26 @ case 32
	.4byte _0800AC26 @ case 33
	.4byte _0800AC26 @ case 34
	.4byte _0800AC26 @ case 35
	.4byte _0800AC26 @ case 36
	.4byte _0800AC26 @ case 37
	.4byte _0800AC26 @ case 38
_0800ABF0:
	ldrb r1, [r4, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	ldr r0, [r4]
	ldr r1, _0800AC18 @ =0xFFFE0FFF
	ands r0, r1
	str r0, [r4]
	b _0800AC26
	.align 2, 0
_0800AC18: .4byte 0xFFFE0FFF
_0800AC1C:
	ldrb r1, [r4, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #1]
_0800AC26:
	ldrh r1, [r4]
	ldr r0, _0800AC50 @ =0x00000F03
	ands r0, r1
	cmp r0, #0
	beq _0800AC32
	b _0800AF1A
_0800AC32:
	bl sub_80D11E4
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	cmp r0, #9
	bls _0800AC42
	b _0800AF1A
_0800AC42:
	adds r0, r4, #0
	movs r1, #0x15
	movs r2, #8
	bl sub_800A134
	b _0800AF1A
	.align 2, 0
_0800AC50: .4byte 0x00000F03
_0800AC54:
	ldr r1, [r4]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	adds r2, r1, #0
	cmp r0, #0
	bne _0800AC62
	b _0800AF1A
_0800AC62:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x26
	bls _0800AC6C
	b _0800AF1A
_0800AC6C:
	lsls r0, r0, #2
	ldr r1, _0800AC78 @ =_0800AC7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AC78: .4byte _0800AC7C
_0800AC7C: @ jump table
	.4byte _0800AD18 @ case 0
	.4byte _0800AD18 @ case 1
	.4byte _0800AD18 @ case 2
	.4byte _0800AD18 @ case 3
	.4byte _0800AD18 @ case 4
	.4byte _0800AE16 @ case 5
	.4byte _0800AE16 @ case 6
	.4byte _0800AE16 @ case 7
	.4byte _0800AE16 @ case 8
	.4byte _0800AE16 @ case 9
	.4byte _0800AE16 @ case 10
	.4byte _0800AE16 @ case 11
	.4byte _0800AE16 @ case 12
	.4byte _0800AE16 @ case 13
	.4byte _0800AE16 @ case 14
	.4byte _0800AD18 @ case 15
	.4byte _0800AE16 @ case 16
	.4byte _0800AE16 @ case 17
	.4byte _0800AE16 @ case 18
	.4byte _0800AD18 @ case 19
	.4byte _0800AF1A @ case 20
	.4byte _0800AF1A @ case 21
	.4byte _0800AF1A @ case 22
	.4byte _0800AF1A @ case 23
	.4byte _0800AF1A @ case 24
	.4byte _0800AF1A @ case 25
	.4byte _0800AF1A @ case 26
	.4byte _0800AF1A @ case 27
	.4byte _0800AF1A @ case 28
	.4byte _0800AF1A @ case 29
	.4byte _0800AF1A @ case 30
	.4byte _0800AF1A @ case 31
	.4byte _0800AF1A @ case 32
	.4byte _0800AF1A @ case 33
	.4byte _0800AF1A @ case 34
	.4byte _0800AF1A @ case 35
	.4byte _0800AF1A @ case 36
	.4byte _0800AF1A @ case 37
	.4byte _0800AF1A @ case 38
_0800AD18:
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0800ADEC
	b _0800ADF8
_0800AD22:
	ldr r1, [r4]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	adds r2, r1, #0
	cmp r0, #0
	bne _0800AD30
	b _0800AF1A
_0800AD30:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x26
	bls _0800AD3A
	b _0800AF1A
_0800AD3A:
	lsls r0, r0, #2
	ldr r1, _0800AD44 @ =_0800AD48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AD44: .4byte _0800AD48
_0800AD48: @ jump table
	.4byte _0800AE16 @ case 0
	.4byte _0800AE16 @ case 1
	.4byte _0800AE16 @ case 2
	.4byte _0800AE16 @ case 3
	.4byte _0800AE16 @ case 4
	.4byte _0800ADE4 @ case 5
	.4byte _0800ADE4 @ case 6
	.4byte _0800ADE4 @ case 7
	.4byte _0800ADE4 @ case 8
	.4byte _0800ADE4 @ case 9
	.4byte _0800AE16 @ case 10
	.4byte _0800AE16 @ case 11
	.4byte _0800AE16 @ case 12
	.4byte _0800AE16 @ case 13
	.4byte _0800AE16 @ case 14
	.4byte _0800AE16 @ case 15
	.4byte _0800ADE4 @ case 16
	.4byte _0800AE16 @ case 17
	.4byte _0800AE16 @ case 18
	.4byte _0800AE16 @ case 19
	.4byte _0800AF1A @ case 20
	.4byte _0800AF1A @ case 21
	.4byte _0800AF1A @ case 22
	.4byte _0800AF1A @ case 23
	.4byte _0800AF1A @ case 24
	.4byte _0800AF1A @ case 25
	.4byte _0800AF1A @ case 26
	.4byte _0800AF1A @ case 27
	.4byte _0800AF1A @ case 28
	.4byte _0800AF1A @ case 29
	.4byte _0800AF1A @ case 30
	.4byte _0800AF1A @ case 31
	.4byte _0800AF1A @ case 32
	.4byte _0800AF1A @ case 33
	.4byte _0800AF1A @ case 34
	.4byte _0800AF1A @ case 35
	.4byte _0800AF1A @ case 36
	.4byte _0800AF1A @ case 37
	.4byte _0800AF1A @ case 38
_0800ADE4:
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0800ADF8
_0800ADEC:
	ldrb r1, [r4, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #1]
	b _0800AE06
_0800ADF8:
	ldrb r0, [r4, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	strb r1, [r4, #1]
_0800AE06:
	ldrb r0, [r4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r4]
	b _0800AF1A
_0800AE16:
	ldrb r1, [r4, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	b _0800AF1A
_0800AE30:
	ldrb r0, [r4]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4]
	ldr r1, [r4]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800AF1A
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x26
	bhi _0800AF1A
	lsls r0, r0, #2
	ldr r1, _0800AE54 @ =_0800AE58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AE54: .4byte _0800AE58
_0800AE58: @ jump table
	.4byte _0800AF10 @ case 0
	.4byte _0800AF10 @ case 1
	.4byte _0800AF10 @ case 2
	.4byte _0800AF10 @ case 3
	.4byte _0800AF10 @ case 4
	.4byte _0800AF10 @ case 5
	.4byte _0800AF10 @ case 6
	.4byte _0800AF10 @ case 7
	.4byte _0800AF10 @ case 8
	.4byte _0800AF10 @ case 9
	.4byte _0800AF10 @ case 10
	.4byte _0800AF10 @ case 11
	.4byte _0800AF10 @ case 12
	.4byte _0800AF10 @ case 13
	.4byte _0800AF10 @ case 14
	.4byte _0800AF10 @ case 15
	.4byte _0800AF10 @ case 16
	.4byte _0800AF10 @ case 17
	.4byte _0800AF10 @ case 18
	.4byte _0800AF10 @ case 19
	.4byte _0800AEF4 @ case 20
	.4byte _0800AF10 @ case 21
	.4byte _0800AF1A @ case 22
	.4byte _0800AF1A @ case 23
	.4byte _0800AF1A @ case 24
	.4byte _0800AF1A @ case 25
	.4byte _0800AF1A @ case 26
	.4byte _0800AF1A @ case 27
	.4byte _0800AF1A @ case 28
	.4byte _0800AF1A @ case 29
	.4byte _0800AF1A @ case 30
	.4byte _0800AF1A @ case 31
	.4byte _0800AF1A @ case 32
	.4byte _0800AF1A @ case 33
	.4byte _0800AF1A @ case 34
	.4byte _0800AF1A @ case 35
	.4byte _0800AF1A @ case 36
	.4byte _0800AF1A @ case 37
	.4byte _0800AF1A @ case 38
_0800AEF4:
	ldrb r1, [r4, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r0, [r4]
	ldr r1, _0800AF0C @ =0xFFFE0FFF
	ands r0, r1
	str r0, [r4]
	b _0800AF1A
	.align 2, 0
_0800AF0C: .4byte 0xFFFE0FFF
_0800AF10:
	ldrb r1, [r4, #1]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #1]
_0800AF1A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_800AF20
sub_800AF20: @ 0x0800AF20
	push {lr}
	ldr r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0800AF44
	cmp r0, #1
	bgt _0800AF36
	cmp r0, #0
	beq _0800AF3C
	b _0800AF54
_0800AF36:
	cmp r0, #2
	beq _0800AF4C
	b _0800AF54
_0800AF3C:
	ldr r0, _0800AF40 @ =0x086D6518
	b _0800AF56
	.align 2, 0
_0800AF40: .4byte 0x086D6518
_0800AF44:
	ldr r0, _0800AF48 @ =0x086D6520
	b _0800AF56
	.align 2, 0
_0800AF48: .4byte 0x086D6520
_0800AF4C:
	ldr r0, _0800AF50 @ =0x086D6528
	b _0800AF56
	.align 2, 0
_0800AF50: .4byte 0x086D6528
_0800AF54:
	movs r0, #0
_0800AF56:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_800AF5C
sub_800AF5C: @ 0x0800AF5C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r2, _0800AF88 @ =0x080E93F8
	ldr r1, [r5]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x1a
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov ip, r0
	movs r4, #0xff
	lsls r1, r1, #0x14
	lsrs r0, r1, #0x1c
	cmp r0, #0
	bne _0800AF90
	ldr r0, _0800AF8C @ =0x086D6458
	b _0800B0D4
	.align 2, 0
_0800AF88: .4byte 0x080E93F8
_0800AF8C: .4byte 0x086D6458
_0800AF90:
	cmp r0, #1
	bne _0800AF9C
	ldr r0, _0800AF98 @ =0x086D6608
	b _0800B0D4
	.align 2, 0
_0800AF98: .4byte 0x086D6608
_0800AF9C:
	cmp r3, #0x14
	beq _0800B03E
	subs r0, #2
	cmp r0, #6
	bls _0800AFA8
	b _0800B0CC
_0800AFA8:
	lsls r0, r0, #2
	ldr r1, _0800AFB4 @ =_0800AFB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800AFB4: .4byte _0800AFB8
_0800AFB8: @ jump table
	.4byte _0800AFD4 @ case 0
	.4byte _0800AFE6 @ case 1
	.4byte _0800AFF8 @ case 2
	.4byte _0800B00A @ case 3
	.4byte _0800B01C @ case 4
	.4byte _0800B0CC @ case 5
	.4byte _0800B02E @ case 6
_0800AFD4:
	ldr r1, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1a
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r4, [r0, #4]
	b _0800B0CC
_0800AFE6:
	ldr r1, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1a
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r4, [r0, #5]
	b _0800B0CC
_0800AFF8:
	ldr r1, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1a
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r4, [r0, #6]
	b _0800B0CC
_0800B00A:
	ldr r1, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1a
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r4, [r0, #7]
	b _0800B0CC
_0800B01C:
	ldr r1, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1a
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r4, [r0, #8]
	b _0800B0CC
_0800B02E:
	ldr r0, [r5]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r4, #1
	cmp r0, #3
	beq _0800B0CC
	movs r4, #0
	b _0800B0CC
_0800B03E:
	cmp r0, #7
	bne _0800B046
	movs r4, #0xc
	b _0800B0CC
_0800B046:
	cmp r0, #4
	beq _0800B05E
	cmp r0, #4
	bgt _0800B054
	cmp r0, #3
	beq _0800B05A
	b _0800B064
_0800B054:
	cmp r0, #5
	beq _0800B062
	b _0800B064
_0800B05A:
	movs r4, #0
	b _0800B064
_0800B05E:
	movs r4, #4
	b _0800B064
_0800B062:
	movs r4, #8
_0800B064:
	cmp r7, #0
	beq _0800B084
	ldr r1, [r7]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x14
	bne _0800B084
	lsls r0, r1, #0x14
	lsrs r1, r0, #0x1c
	cmp r1, #7
	beq _0800B084
	ldr r0, [r5]
	lsls r0, r0, #0x14
	lsrs r3, r0, #0x1c
	cmp r1, r3
	bge _0800B0A8
_0800B084:
	cmp r6, #0
	beq _0800B0CC
	ldr r2, [r6]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x14
	bne _0800B0CC
	lsls r0, r2, #0x14
	lsrs r2, r0, #0x1c
	cmp r2, #7
	beq _0800B0CC
	ldr r0, [r5]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	cmp r2, r0
	blt _0800B0CC
	adds r0, r4, #1
	b _0800B0C8
_0800B0A8:
	cmp r6, #0
	beq _0800B0C2
	ldr r2, [r6]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1a
	cmp r0, #0x14
	bne _0800B0C2
	lsls r0, r2, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #7
	beq _0800B0C2
	cmp r0, r3
	bge _0800B0C6
_0800B0C2:
	adds r0, r4, #2
	b _0800B0C8
_0800B0C6:
	adds r0, r4, #3
_0800B0C8:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0800B0CC:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, ip
_0800B0D4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
