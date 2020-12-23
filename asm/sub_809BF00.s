    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

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
