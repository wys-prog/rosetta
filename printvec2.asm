.intel_syntax noprefix

.extern printf
.global printvec2

printvec2:
  push rbx
  sub	 rsp, 0x20
  mov	 r8d, 0x8
  lea	 rdx, [rip + 0x2b96]     # 0x140004038 <__func__.1>
  mov	 rbx, rcx
  lea	 rcx, [rip + 0x2b54]     # 0x140004000 <.rdata>
  call printf
  mov	 r9, rbx
  mov	 r8d, ebx
  lea	 rdx, [rip + 0x2b7a]     # 0x140004038 <__func__.1>
  shr	 r9, 0x20
  lea	 rcx, [rip + 0x2b4e]     # 0x140004017 <.rdata+0x17>
  add	 rsp, 0x20
  pop	 rbx
  jmp	 printf
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
