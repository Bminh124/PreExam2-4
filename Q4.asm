INCLUDE Irvine32.inc
.data
Msg BYTE "Goodbye Hue University",0
again byte "Try again (Y/N)? ",0
charIn BYTE ?
.code
main proc
mov edx,offset Msg
mov ecx,10

l1: 
call writestring
call crlf
loop l1

mov edx, offset again
call writeString    
call readChar
mov charIn, al


cmp al, 'Y'
je l1



call Readchar
invoke ExitProcess,0
main endp
end main