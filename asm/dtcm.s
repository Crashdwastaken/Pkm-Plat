
	.text

	.section .dtcm, 4

	.public OSi_IntrTable
OSi_IntrTable:
    .byte 0x28, 0x13, 0x0C, 0x02, 0x28, 0x13, 0x0C, 0x02, 0x28, 0x13, 0x0C, 0x02, 0xF4, 0x13, 0x0C, 0x02
    .byte 0x04, 0x14, 0x0C, 0x02, 0x14, 0x14, 0x0C, 0x02, 0x24, 0x14, 0x0C, 0x02, 0x28, 0x13, 0x0C, 0x02
    .byte 0xB4, 0x13, 0x0C, 0x02, 0xC4, 0x13, 0x0C, 0x02, 0xD4, 0x13, 0x0C, 0x02, 0xE4, 0x13, 0x0C, 0x02
    .byte 0x28, 0x13, 0x0C, 0x02, 0x28, 0x13, 0x0C, 0x02, 0x28, 0x13, 0x0C, 0x02, 0x28, 0x13, 0x0C, 0x02
    .byte 0x28, 0x13, 0x0C, 0x02, 0x28, 0x13, 0x0C, 0x02, 0x28, 0x13, 0x0C, 0x02, 0x28, 0x13, 0x0C, 0x02
    .byte 0x28, 0x13, 0x0C, 0x02, 0x28, 0x13, 0x0C, 0x02

	.bss
	.space 0x20
