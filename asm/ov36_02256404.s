	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov36_02256404
ov36_02256404: ; 0x02256404
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x64
	bl sub_02018144
	add r4, r0, #0
	beq _0225643A
	add r0, #8
	mov r1, #4
	bl ov25_02255090
	str r5, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	bl ov36_02256454
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225643A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov36_02256404

	thumb_func_start ov36_02256440
ov36_02256440: ; 0x02256440
	push {r4, lr}
	add r4, r0, #0
	beq _02256450
	bl ov36_02256508
	add r0, r4, #0
	bl sub_020181C4
_02256450:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov36_02256440

	thumb_func_start ov36_02256454
ov36_02256454: ; 0x02256454
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r7, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #2
	bl sub_02006EC0
	mov r0, #0
	str r0, [sp]
	mov r2, #1
	mov r3, #0xa
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x34
	lsl r3, r3, #8
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x3c
	mov r1, #0xc
	mov r2, #0x32
	mov r3, #0x33
	bl ov25_02255958
	mov r0, #8
	str r0, [sp]
	add r0, r7, #0
	add r0, #0x50
	mov r1, #0xc
	mov r2, #3
	mov r3, #4
	bl ov25_02255958
	add r2, r7, #0
	ldr r0, [r7, #0x20]
	ldr r1, _02256500 ; =0x02256728
	add r2, #0x3c
	bl ov25_02255810
	mov r1, #0x50
	str r0, [r7, #0x24]
	bl ov25_02255940
	add r0, r7, #0
	mov r5, #5
	str r0, [sp, #0x10]
	add r0, #0x50
	mov r6, #0
	add r4, r7, #0
	lsl r5, r5, #0x10
	str r0, [sp, #0x10]
_022564D0:
	ldr r0, [r7, #0x20]
	ldr r1, _02256504 ; =0x02256738
	ldr r2, [sp, #0x10]
	bl ov25_02255810
	mov r2, #1
	add r1, r5, #0
	lsl r2, r2, #0x12
	str r0, [r4, #0x28]
	bl ov25_02255900
	mov r0, #1
	lsl r0, r0, #0x10
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, r0
	cmp r6, #5
	blt _022564D0
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov36_0225669C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02256500: .word 0x02256728
_02256504: .word 0x02256738
	thumb_func_end ov36_02256454

	thumb_func_start ov36_02256508
ov36_02256508: ; 0x02256508
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x20]
	ldr r1, [r6, #0x24]
	bl ov25_022558B0
	mov r4, #0
	add r5, r6, #0
_02256518:
	ldr r0, [r6, #0x20]
	ldr r1, [r5, #0x28]
	bl ov25_022558B0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _02256518
	add r0, r6, #0
	add r0, #0x3c
	bl ov25_022559B0
	add r6, #0x50
	add r0, r6, #0
	bl ov25_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov36_02256508

	thumb_func_start ov36_0225653C
ov36_0225653C: ; 0x0225653C
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _0225655C ; =0x02256764
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_0225655C: .word 0x02256764
	thumb_func_end ov36_0225653C

	thumb_func_start ov36_02256560
ov36_02256560: ; 0x02256560
	ldr r3, _02256568 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256568: .word ov25_02255130
	thumb_func_end ov36_02256560

	thumb_func_start ov36_0225656C
ov36_0225656C: ; 0x0225656C
	ldr r3, _02256574 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256574: .word ov25_02255154
	thumb_func_end ov36_0225656C

	thumb_func_start ov36_02256578
ov36_02256578: ; 0x02256578
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov36_02256578

	thumb_func_start ov36_0225658C
ov36_0225658C: ; 0x0225658C
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256610 ; =0x02256748
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x31
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x30
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _02256614 ; =0x04001000
	ldr r0, _02256618 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov36_02256578
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02256610: .word 0x02256748
_02256614: .word 0x04001000
_02256618: .word 0xFFFFE0FF
	thumb_func_end ov36_0225658C

	thumb_func_start ov36_0225661C
ov36_0225661C: ; 0x0225661C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov36_02256578
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov36_0225661C

	thumb_func_start ov36_02256638
ov36_02256638: ; 0x02256638
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02256652
	cmp r0, #1
	beq _02256662
	b _0225666A
_02256652:
	ldr r0, _02256674 ; =0x00000669
	bl ov25_02254424
	ldr r0, [r4, #0x24]
	mov r1, #1
	bl ov25_022558C4
	b _0225666A
_02256662:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov25_022558C4
_0225666A:
	add r0, r5, #0
	bl ov36_02256578
	pop {r3, r4, r5, pc}
	nop
_02256674: .word 0x00000669
	thumb_func_end ov36_02256638

	thumb_func_start ov36_02256678
ov36_02256678: ; 0x02256678
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r1, r0, #0
	add r0, r4, #0
	bl ov36_0225669C
	add r0, r5, #0
	bl ov36_02256578
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov36_02256678

	thumb_func_start ov36_0225669C
ov36_0225669C: ; 0x0225669C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [r1, #0]
	ldr r5, _02256700 ; =0x04000280
	str r0, [sp, #4]
	ldr r0, _02256704 ; =0x00002710
	lsr r4, r5, #0xb
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	lsr r6, r5, #0xb
_022566B4:
	mov r0, #0
	strh r0, [r5]
	ldr r1, [sp, #4]
	ldr r0, _02256708 ; =0x04000290
	str r1, [r0, #0]
	ldr r1, [sp]
	str r1, [r0, #8]
	ldr r0, _0225670C ; =0x04000298
	mov r1, #0
	str r1, [r0, #4]
_022566C8:
	ldrh r0, [r5]
	tst r0, r4
	bne _022566C8
	ldr r1, _02256710 ; =0x040002A0
	ldr r0, [r7, #0x28]
	ldr r1, [r1, #0]
	bl ov25_022558C4
_022566D8:
	ldrh r0, [r5]
	tst r0, r6
	bne _022566D8
	ldr r0, _02256714 ; =0x040002A8
	mov r1, #0xa
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	ldr r0, [sp]
	bl sub_020E2178
	str r0, [sp]
	ldr r0, [sp, #8]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _022566B4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02256700: .word 0x04000280
_02256704: .word 0x00002710
_02256708: .word 0x04000290
_0225670C: .word 0x04000298
_02256710: .word 0x040002A0
_02256714: .word 0x040002A8
	thumb_func_end ov36_0225669C

	.rodata


	.global Unk_ov36_02256728
Unk_ov36_02256728: ; 0x02256728
	.incbin "incbin/overlay36_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov36_02256738
Unk_ov36_02256738: ; 0x02256738
	.incbin "incbin/overlay36_rodata.bin", 0x20, 0x30 - 0x20

	.global Unk_ov36_02256748
Unk_ov36_02256748: ; 0x02256748
	.incbin "incbin/overlay36_rodata.bin", 0x30, 0x4C - 0x30

	.global Unk_ov36_02256764
Unk_ov36_02256764: ; 0x02256764
	.incbin "incbin/overlay36_rodata.bin", 0x4C, 0x3C
