; ================================================================
; ===== 99snake.asm ==============================================
; ===== Snake and Maze ===========================================

Start:
	MOV	AL,FF	; Special code to reset the snake.
	OUT	04	; Send AL to port 04 to control the snake.

Rep:	
	IN	00
	CMP	AL,73
	JNZ	Rep1
	JMP	Down

Rep1:
	CMP	AL,64
	JNZ	Rep2
	JMP	Right

Rep2:
	CMP	AL,61
	JNZ	Rep3
	JMP	Left

Rep3:
	CMP	AL,77
	JNZ	Rep
	JMP	Up

Down:
	MOV	AL,4F
	OUT	04
	JMP	Rep

Up:
	MOV	AL,8F
	OUT	04
	JMP	Rep

Left:
	MOV	AL,2F
	OUT	04
	JMP	Rep

Right:
	MOV	AL,1F
	OUT	04
	JMP	Rep

	END
; ================================================================