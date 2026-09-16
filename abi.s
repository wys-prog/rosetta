.intel_syntax noprefix

.global __mingw_invalidParameterHandler
.global WinMainCRTStartup
.global .l_startw
.global .l_endw
.global mainCRTStartup
.global .l_start
.global .l_end
.global __tmainCRTStartup
.global check_managed_app
.global duplicate_ppstrings
.global atexit
.global .weak.__register_frame_info.hmod_libgcc
.global .weak.__deregister_frame_info.hmod_libgcc
.global __gcc_register_frame
.global __gcc_deregister_frame
.global printvec2
.global __do_global_dtors
.global __do_global_ctors
.global __main
.global _setargv
.global __dyn_tls_init
.global __tlregdtor
.global __dyn_tls_dtor
.global _matherr
.global __report_error
.global mark_section_writable
.global restore_modified_sections
.global __write_memory
.global do_pseudo_reloc
.global _pei386_runtime_relocator
.global __mingw_raise_matherr
.global __mingw_setusermatherr
.global _gnu_exception_handler
.global ___w64_mingwthr_add_key_dtor
.global ___w64_mingwthr_remove_key_dtor
.global __mingwthr_run_key_dtors
.global __mingw_TLScallback
.global fpreset
.global _ValidateImageBase
.global _FindPESection
.global _FindPESectionByName
.global __mingw_GetSectionForAddress
.global __mingw_GetSectionCount
.global _FindPESectionExec
.global _GetPEImageBase
.global _IsNonwritableInCurrentImage
.global __mingw_enum_import_library_names
.global ___chkstk_ms
.global __mingw_printf
.global __pformat_putc
.global __pformat_putchars
.global __pformat_puts
.global __pformat_wputchars
.global __pformat_wcputs
.global __pformat_int_bufsiz
.global __pformat_int
.global __pformat_xint
.global init_fpreg_ldouble
.global __pformat_cvt
.global __pformat_ecvt
.global __pformat_fcvt
.global __pformat_emit_radix_point
.global __pformat_emit_numeric_value
.global __pformat_emit_inf_or_nan
.global __pformat_emit_float
.global __pformat_emit_efloat
.global __pformat_float
.global __pformat_efloat
.global __pformat_gfloat
.global __pformat_emit_xfloat
.global __pformat_xldouble
.global __pformat_xdouble
.global __mingw_pformat
.global __rv_alloc_D2A
.global __nrv_alloc_D2A
.global __freedtoa
.global __quorem_D2A
.global __hi0bits_D2A
.global bitstob
.global __gdtoa
.global __lo0bits_D2A
.global __rshift_D2A
.global __trailz_D2A
.global dtoa_lock_cleanup
.global dtoa_lock
.global dtoa_unlock
.global __lo0bits_D2A
.global __hi0bits_D2A
.global __Balloc_D2A
.global __Bfree_D2A
.global __multadd_D2A
.global __i2b_D2A
.global __mult_D2A
.global __pow5mult_D2A
.global __lshift_D2A
.global __cmp_D2A
.global __diff_D2A
.global __b2d_D2A
.global __d2b_D2A
.global __strcp_D2A
.global __fpclassify
.global __fpclassifyl
.global isnan
.global isnanl
.global wcsnlen
.global __wcrtomb_cp
.global wcrtomb
.global wcsrtombs
.global strnlen
.global __mbrtowc_cp
.global mbrtowc
.global mbsrtowcs
.global mbrlen
.global _initterm_e
.global __p__fmode
.global __p__commode
.global __p___initenv
.global _lock_file
.global _unlock_file
.global mingw_set_invalid_parameter_handler
.global mingw_get_invalid_parameter_handler
.global _configthreadlocale
.global __acrt_iob_func
.global __C_specific_handler
.global ___lc_codepage_func
.global ___mb_cur_max_func
.global __getmainargs
.global __iob_func
.global __set_app_type
.global __setusermatherr
.global _amsg_exit
.global _cexit
.global _errno
.global _initterm
.global _lock
.global _unlock
.global abort
.global _crt_atexit
.global calloc
.global exit
.global fprintf
.global fputc
.global free
.global localeconv
.global malloc
.global memcpy
.global signal
.global strerror
.global strlen
.global strncmp
.global vfprintf
.global wcslen
.global WideCharToMultiByte
.global VirtualQuery
.global VirtualProtect
.global TlsGetValue
.global Sleep
.global SetUnhandledExceptionFilter
.global MultiByteToWideChar
.global LoadLibraryA
.global LeaveCriticalSection
.global IsDBCSLeadByteEx
.global InitializeCriticalSection
.global GetProcAddress
.global GetModuleHandleA
.global GetLastError
.global FreeLibrary
.global EnterCriticalSection
.global DeleteCriticalSection
.global main
.global register_frame_ctor


# text begin (decompiled)

__mingw_invalidParameterHandler:
               	push	rbp
               	mov	rbp, rsp
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	qword ptr [rbp + 0x20], r8
               	mov	dword ptr [rbp + 0x28], r9d
               	nop
               	pop	rbp
               	ret

WinMainCRTStartup:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	dword ptr [rbp - 0x4], 0xff

.l_startw:
               	mov	rax, qword ptr [rip + 0xa5f3] # 0x14000b620 .refptr.__mingw_app_type
               	mov	dword ptr [rax], 0x1
               	call	0x140001075 # __tmainCRTStartup
               	mov	dword ptr [rbp - 0x4], eax
               	nop

.l_endw:
               	nop
               	mov	eax, dword ptr [rbp - 0x4]
               	add	rsp, 0x30
               	pop	rbp
               	ret

mainCRTStartup:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	dword ptr [rbp - 0x4], 0xff

.l_start:
               	mov	rax, qword ptr [rip + 0xa5c4] # 0x14000b620 .refptr.__mingw_app_type
               	mov	dword ptr [rax], 0x0
               	call	0x140001075 __tmainCRTStartup
               	mov	dword ptr [rbp - 0x4], eax
               	nop

.l_end:
               	nop
               	mov	eax, dword ptr [rbp - 0x4]
               	add	rsp, 0x30
               	pop	rbp
               	ret

__tmainCRTStartup:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x90
               	mov	qword ptr [rbp - 0x10], 0x0
               	mov	dword ptr [rbp - 0x20], 0x30
               	mov	eax, dword ptr [rbp - 0x20]
               	mov	rax, qword ptr gs:[eax]
               	mov	qword ptr [rbp - 0x28], rax
               	mov	rax, qword ptr [rbp - 0x28]
               	mov	rax, qword ptr [rax + 0x8]
               	mov	qword ptr [rbp - 0x18], rax
               	mov	dword ptr [rbp - 0x4], 0x0
               	mov	dword ptr [rbp - 0x1c], 0x0
               	jmp	0x1400010d8 __tmainCRTStartup+0x63
               	mov	rax, qword ptr [rbp - 0x10]
               	cmp	rax, qword ptr [rbp - 0x18]
               	jne	0x1400010ca __tmainCRTStartup+0x55
               	mov	dword ptr [rbp - 0x4], 0x1
               	jmp	0x14000110f __tmainCRTStartup+0x9a
               	mov	ecx, 0x3e8
               	mov	rax, qword ptr [rip + 0x10162] # 0x140011238 __imp_Sleep
               	call	rax
               	mov	rax, qword ptr [rip + 0xa591] # 0x14000b670 .refptr.__native_startup_lock
               	mov	qword ptr [rbp - 0x30], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	qword ptr [rbp - 0x38], rax
               	mov	qword ptr [rbp - 0x40], 0x0
               	mov	rcx, qword ptr [rbp - 0x38]
               	mov	rax, qword ptr [rbp - 0x40]
               	mov	rdx, qword ptr [rbp - 0x30]
               	lock
               	cmpxchg	qword ptr [rdx], rcx
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x0
               	jne	0x1400010b7 __tmainCRTStartup+0x42
               	mov	rax, qword ptr [rip + 0xa56a] # 0x14000b680 .refptr.__native_startup_state
               	mov	eax, dword ptr [rax]
               	cmp	eax, 0x1
               	jne	0x140001127 __tmainCRTStartup+0xb2
               	mov	ecx, 0x1f
               	call	0x1400093d8 _amsg_exit
               	mov	rax, qword ptr [rip + 0xa552] # 0x14000b680 .refptr.__native_startup_state
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	jne	0x1400012e0 __tmainCRTStartup+0x26b
               	mov	rax, qword ptr [rip + 0xa541] # 0x14000b680 .refptr.__native_startup_state
               	mov	dword ptr [rax], 0x1
               	call	0x140002260 _pei386_runtime_relocator
               	mov	rax, qword ptr [rip + 0xa5bf] # 0x14000b710 .refptr._gnu_exception_handler
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0x100d5] # 0x140011230 __imp_SetUnhandledExceptionFilter
               	call	rax
               	mov	rdx, qword ptr [rip + 0xa4fc] # 0x14000b660 .refptr.__mingw_oldexcpt_handler
               	mov	qword ptr [rdx], rax
               	lea	rax, [rip - 0x16e]      # 0x140001000 __mingw_invalidParameterHandler
               	mov	rcx, rax
               	call	0x140009310 mingw_set_invalid_parameter_handler
               	call	0x140002930 fpreset
               	call	0x140001398 check_managed_app
               	mov	dword ptr [rip + 0xee92], eax # 0x140010018 managedapp
               	mov	rax, qword ptr [rip + 0xa493] # 0x14000b620 .refptr.__mingw_app_type
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x14000119f __tmainCRTStartup+0x12a
               	mov	ecx, 0x2
               	call	0x1400093c8 __set_app_type
               	jmp	0x1400011a9 __tmainCRTStartup+0x134
               	mov	ecx, 0x1
               	call	0x1400093c8 __set_app_type
               	call	0x1400091c0 __p__fmode
               	mov	rdx, qword ptr [rip + 0xa54b] # 0x14000b700 .refptr._fmode
               	mov	edx, dword ptr [rdx]
               	mov	dword ptr [rax], edx
               	call	0x1400091d0 __p__commode
               	mov	rdx, qword ptr [rip + 0xa51b] # 0x14000b6e0 .refptr._commode
               	mov	edx, dword ptr [rdx]
               	mov	dword ptr [rax], edx
               	call	0x140001840 _setargv
               	mov	dword ptr [rbp - 0x1c], eax
               	cmp	dword ptr [rbp - 0x1c], 0x0
               	jns	0x1400011e1 __tmainCRTStartup+0x16c
               	mov	ecx, 0x8
               	call	0x1400093d8 _amsg_exit
               	mov	rax, qword ptr [rip + 0xa388] # 0x14000b570 .refptr._MINGW_INSTALL_DEBUG_MATHERR
               	mov	eax, dword ptr [rax]
               	cmp	eax, 0x1
               	jne	0x1400011fe __tmainCRTStartup+0x189
               	mov	rax, qword ptr [rip + 0xa52a] # 0x14000b720 .refptr._matherr
               	mov	rcx, rax
               	call	0x14000237a __mingw_setusermatherr
               	mov	rax, qword ptr [rip + 0xa3db] # 0x14000b5e0 .refptr.__globallocalestatus
               	mov	eax, dword ptr [rax]
               	cmp	eax, -0x1
               	jne	0x140001216 __tmainCRTStartup+0x1a1
               	mov	ecx, 0xffffffff
               	call	0x140009350 _configthreadlocale
               	mov	rdx, qword ptr [rip + 0xa4b3] # 0x14000b6d0 .refptr.__xi_z
               	mov	rax, qword ptr [rip + 0xa49c] # 0x14000b6c0 .refptr.__xi_a
               	mov	rcx, rax
               	call	0x140009160 _initterm_e
               	test	eax, eax
               	je	0x14000123a __tmainCRTStartup+0x1c5
               	mov	eax, 0xff
               	jmp	0x14000138f __tmainCRTStartup+0x31a
               	mov	rax, qword ptr [rip + 0xa4ef] # 0x14000b730 .refptr._newmode
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0x54], eax
               	mov	rax, qword ptr [rip + 0xa4a3] # 0x14000b6f0 .refptr._dowildcard
               	mov	r8d, dword ptr [rax]
               	lea	r10, [rip + 0xedb9]     # 0x140010010 envp
               	lea	rdx, [rip + 0xedaa]     # 0x140010008 argv
               	lea	rax, [rip + 0xed9f]     # 0x140010004 argc
               	lea	rcx, [rbp - 0x54]
               	mov	qword ptr [rsp + 0x20], rcx
               	mov	r9d, r8d
               	mov	r8, r10
               	mov	rcx, rax
               	call	0x1400093b8 __getmainargs
               	mov	dword ptr [rbp - 0x1c], eax
               	cmp	dword ptr [rbp - 0x1c], 0x0
               	jns	0x14000128f __tmainCRTStartup+0x21a
               	mov	ecx, 0x8
               	call	0x1400093d8 _amsg_exit
               	mov	eax, dword ptr [rip + 0xed6f] # 0x140010004 argc
               	lea	rdx, [rip + 0xed6c]     # 0x140010008 argv
               	mov	ecx, eax
               	call	0x14000149c duplicate_ppstrings
               	mov	dword ptr [rbp - 0x1c], eax
               	cmp	dword ptr [rbp - 0x1c], 0x0
               	je	0x1400012b6 __tmainCRTStartup+0x241
               	mov	ecx, 0x8
               	call	0x1400093d8 _amsg_exit
               	mov	rdx, qword ptr [rip + 0xa3f3] # 0x14000b6b0 .refptr.__xc_z
               	mov	rax, qword ptr [rip + 0xa3dc] # 0x14000b6a0 .refptr.__xc_a
               	mov	rcx, rax
               	call	0x1400093f0 _initterm
               	call	0x140001817 __main
               	mov	rax, qword ptr [rip + 0xa3a8] # 0x14000b680 .refptr.__native_startup_state
               	mov	dword ptr [rax], 0x2
               	jmp	0x1400012ea __tmainCRTStartup+0x275
               	mov	dword ptr [rip + 0xed32], 0x1 # 0x14001001c has_cctor
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x14000130e __tmainCRTStartup+0x299
               	mov	rax, qword ptr [rip + 0xa379] # 0x14000b670 .refptr.__native_startup_lock
               	mov	qword ptr [rbp - 0x48], rax
               	mov	qword ptr [rbp - 0x50], 0x0
               	mov	rdx, qword ptr [rbp - 0x50]
               	mov	rax, qword ptr [rbp - 0x48]
               	xchg	qword ptr [rax], rdx
               	mov	rax, qword ptr [rip + 0xa2bb] # 0x14000b5d0 .refptr.__dyn_tls_init_callback
               	mov	rax, qword ptr [rax]
               	test	rax, rax
               	je	0x140001339 __tmainCRTStartup+0x2c4
               	mov	rax, qword ptr [rip + 0xa2ac] # 0x14000b5d0 .refptr.__dyn_tls_init_callback
               	mov	rax, qword ptr [rax]
               	mov	r8d, 0x0
               	mov	edx, 0x2
               	mov	ecx, 0x0
               	call	rax
               	call	0x1400091e0 __p___initenv
               	mov	rdx, qword ptr [rip + 0xeccb] # 0x140010010 envp
               	mov	qword ptr [rax], rdx
               	mov	rcx, qword ptr [rip + 0xecc1] # 0x140010010 envp
               	mov	rdx, qword ptr [rip + 0xecb2] # 0x140010008 argv
               	mov	eax, dword ptr [rip + 0xeca8] # 0x140010004 argc
               	mov	r8, rcx
               	mov	ecx, eax
               	call	0x140009520 main
               	mov	dword ptr [rbp - 0x1c], eax
               	mov	eax, dword ptr [rip + 0xeca9] # 0x140010018 managedapp
               	test	eax, eax
               	jne	0x14000137d __tmainCRTStartup+0x308
               	mov	eax, dword ptr [rbp - 0x1c]
               	mov	ecx, eax
               	call	0x140009420 exit
               	mov	eax, dword ptr [rip + 0xec99] # 0x14001001c has_cctor
               	test	eax, eax
               	jne	0x14000138c __tmainCRTStartup+0x317
               	call	0x1400093e0 _cexit
               	mov	eax, dword ptr [rbp - 0x1c]
               	add	rsp, 0x90
               	pop	rbp
               	ret

check_managed_app:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	rax, qword ptr [rip + 0xa289] # 0x14000b630 .refptr.__mingw_initltsdrot_force
               	mov	dword ptr [rax], 0x1
               	mov	rax, qword ptr [rip + 0xa28c] # 0x14000b640 .refptr.__mingw_initltsdyn_force
               	mov	dword ptr [rax], 0x1
               	mov	rax, qword ptr [rip + 0xa28f] # 0x14000b650 .refptr.__mingw_initltssuo_force
               	mov	dword ptr [rax], 0x1
               	mov	rax, qword ptr [rip + 0xa1c2] # 0x14000b590 .refptr.__ImageBase
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp - 0x8]
               	movzx	eax, word ptr [rax]
               	cmp	ax, 0x5a4d
               	je	0x1400013e9 check_managed_app+0x51
               	mov	eax, 0x0
               	jmp	0x140001496 check_managed_app+0xfe
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x3c]
               	movsxd	rdx, eax
               	mov	rax, qword ptr [rbp - 0x8]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	cmp	eax, 0x4550
               	je	0x140001415 check_managed_app+0x7d
               	mov	eax, 0x0
               	jmp	0x140001496 check_managed_app+0xfe
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	movzx	eax, word ptr [rax]
               	movzx	eax, ax
               	cmp	eax, 0x10b
               	je	0x14000143b check_managed_app+0xa3
               	cmp	eax, 0x20b
               	je	0x140001462 check_managed_app+0xca
               	jmp	0x140001491 check_managed_app+0xf9
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax + 0x5c]
               	cmp	eax, 0xe
               	ja	0x14000144e check_managed_app+0xb6
               	mov	eax, 0x0
               	jmp	0x140001496 check_managed_app+0xfe
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax + 0xd0]
               	test	eax, eax
               	setne	al
               	movzx	eax, al
               	jmp	0x140001496 check_managed_app+0xfe
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	qword ptr [rbp - 0x20], rax
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	eax, dword ptr [rax + 0x6c]
               	cmp	eax, 0xe
               	ja	0x14000147d check_managed_app+0xe5
               	mov	eax, 0x0
               	jmp	0x140001496 check_managed_app+0xfe
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	eax, dword ptr [rax + 0xe0]
               	test	eax, eax
               	setne	al
               	movzx	eax, al
               	jmp	0x140001496 check_managed_app+0xfe
               	mov	eax, 0x0
               	add	rsp, 0x20
               	pop	rbp
               	ret

duplicate_ppstrings:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x48
               	lea	rbp, [rsp + 0x40]
               	mov	dword ptr [rbp + 0x20], ecx
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	eax, dword ptr [rbp + 0x20]
               	add	eax, 0x1
               	cdqe
               	shl	rax, 0x3
               	mov	rcx, rax
               	call	0x140009448 malloc
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x0
               	jne	0x1400014d7 duplicate_ppstrings+0x3b
               	mov	eax, 0x1
               	jmp	0x1400015d4 duplicate_ppstrings+0x138
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rax, qword ptr [rax]
               	mov	qword ptr [rbp - 0x18], rax
               	mov	dword ptr [rbp - 0x4], 0x0
               	jmp	0x14000159d duplicate_ppstrings+0x101
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	lea	rdx, [8*rax]
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, rdx
               	mov	rax, qword ptr [rax]
               	mov	rcx, rax
               	call	0x140009468 strlen
               	add	rax, 0x1
               	mov	qword ptr [rbp - 0x20], rax
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	lea	rdx, [8*rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rbx, [rdx + rax]
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	rcx, rax
               	call	0x140009448 malloc
               	mov	qword ptr [rbx], rax
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	lea	rdx, [8*rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, rdx
               	mov	rax, qword ptr [rax]
               	test	rax, rax
               	jne	0x14000155c duplicate_ppstrings+0xc0
               	mov	eax, 0x1
               	jmp	0x1400015d4 duplicate_ppstrings+0x138
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	lea	rdx, [8*rax]
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, rdx
               	mov	rdx, qword ptr [rax]
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	lea	rcx, [8*rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, rcx
               	mov	rax, qword ptr [rax]
               	mov	rcx, qword ptr [rbp - 0x20]
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140009450 memcpy
               	add	dword ptr [rbp - 0x4], 0x1
               	mov	eax, dword ptr [rbp - 0x4]
               	cmp	eax, dword ptr [rbp + 0x20]
               	jl	0x1400014ee duplicate_ppstrings+0x52
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	lea	rdx, [8*rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, rdx
               	mov	qword ptr [rax], 0x0
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, qword ptr [rbp - 0x10]
               	mov	qword ptr [rax], rdx
               	mov	eax, 0x0
               	add	rsp, 0x48
               	pop	rbx
               	pop	rbp
               	ret

atexit:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140009410 _crt_atexit
               	add	rsp, 0x20
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop

.weak.__register_frame_info.hmod_libgcc:
               	ret
               	nop	dword ptr [rax]
               	nop	word ptr cs:[rax + rax]

.weak.__deregister_frame_info.hmod_libgcc:
               	xor	eax, eax
               	ret
               	nop
               	nop	word ptr cs:[rax + rax]

__gcc_register_frame:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x38
               	lea	rbp, [rsp + 0x30]
               	lea	rcx, [rip + 0x99ce]     # 0x14000b000 .rdata
               	call	qword ptr [rip + 0xfbc0] # 0x1400111f8 __imp_GetModuleHandleA
               	mov	rbx, rax
               	test	rax, rax
               	je	0x1400016b0 __gcc_register_frame+0x90
               	lea	rcx, [rip + 0x99b9]     # 0x14000b000 .rdata
               	call	qword ptr [rip + 0xfbd3] # 0x140011220 __imp_LoadLibraryA
               	mov	r9, qword ptr [rip + 0xfbac] # 0x140011200 __imp_GetProcAddress
               	lea	rdx, [rip + 0x99b8]     # 0x14000b013 .rdata+0x13
               	mov	rcx, rbx
               	mov	qword ptr [rip + 0xe9bb], rax # 0x140010020 hmod_libgcc
               	mov	qword ptr [rbp - 0x10], r9
               	call	r9
               	lea	rdx, [rip + 0x99b6]     # 0x14000b029 .rdata+0x29
               	mov	rcx, rbx
               	mov	qword ptr [rbp - 0x8], rax
               	call	qword ptr [rbp - 0x10]
               	mov	r8, qword ptr [rbp - 0x8]
               	mov	qword ptr [rip + 0x8978], rax # 0x14000a000 deregister_frame_fn
               	test	r8, r8
               	je	0x14000169e __gcc_register_frame+0x7e
               	lea	rdx, [rip + 0xe9ac]     # 0x140010040 obj
               	lea	rcx, [rip + 0xb965]     # 0x14000d000 __FRAME_END__
               	call	r8
               	lea	rcx, [rip + 0x2b]       # 0x1400016d0 __gcc_deregister_frame
               	add	rsp, 0x38
               	pop	rbx
               	pop	rbp
               	jmp	0x1400015db atexit
               	lea	rax, [rip - 0xa7]       # 0x140001610 .weak.__deregister_frame_info.hmod_libgcc
               	lea	r8, [rip - 0xbe]        # 0x140001600 .weak.__register_frame_info.hmod_libgcc
               	mov	qword ptr [rip + 0x893b], rax # 0x14000a000 deregister_frame_fn
               	jmp	0x14000168d __gcc_register_frame+0x6d
               	nop	word ptr [rax + rax]

__gcc_deregister_frame:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	rax, qword ptr [rip + 0x8921] # 0x14000a000 deregister_frame_fn
               	test	rax, rax
               	je	0x1400016ed __gcc_deregister_frame+0x1d
               	lea	rcx, [rip + 0xb915]     # 0x14000d000 __FRAME_END__
               	call	rax
               	mov	rcx, qword ptr [rip + 0xe92c] # 0x140010020 hmod_libgcc
               	test	rcx, rcx
               	je	0x140001708 __gcc_deregister_frame+0x38
               	add	rsp, 0x20
               	pop	rbp
               	jmp	qword ptr [rip + 0xfae3] # 0x1400111e8 __imp_FreeLibrary
               	nop	dword ptr [rax]
               	add	rsp, 0x20
               	pop	rbp
               	ret
               	nop
               	nop

printvec2:
               	push	rbx
               	sub	rsp, 0x20
               	mov	r8d, 0x8
               	lea	rdx, [rip + 0x9966]     # 0x14000b088 __func__.1
               	mov	rbx, rcx
               	lea	rcx, [rip + 0x9924]     # 0x14000b050 .rdata
               	call	0x140002e30 __mingw_printf
               	mov	r9, rbx
               	mov	r8d, ebx
               	lea	rdx, [rip + 0x994a]     # 0x14000b088 __func__.1
               	shr	r9, 0x20
               	lea	rcx, [rip + 0x991e]     # 0x14000b067 .rdata+0x17
               	add	rsp, 0x20
               	pop	rbx
               	jmp	0x140002e30 __mingw_printf
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

__do_global_dtors:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	jmp	0x140001788 __do_global_dtors+0x28
               	mov	rax, qword ptr [rip + 0x889f] # 0x14000a010 p.0
               	mov	rax, qword ptr [rax]
               	call	rax
               	mov	rax, qword ptr [rip + 0x8893] # 0x14000a010 p.0
               	add	rax, 0x8
               	mov	qword ptr [rip + 0x8888], rax # 0x14000a010 p.0
               	mov	rax, qword ptr [rip + 0x8881] # 0x14000a010 p.0
               	mov	rax, qword ptr [rax]
               	test	rax, rax
               	jne	0x14000176a __do_global_dtors+0xa
               	nop
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret

__do_global_ctors:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	rax, qword ptr [rip + 0x9dd2] # 0x14000b580 .refptr.__CTOR_LIST__
               	mov	rax, qword ptr [rax]
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], -0x1
               	jne	0x1400017df __do_global_ctors+0x40
               	mov	dword ptr [rbp - 0x4], 0x0
               	jmp	0x1400017c7 __do_global_ctors+0x28
               	add	dword ptr [rbp - 0x4], 0x1
               	mov	eax, dword ptr [rbp - 0x4]
               	lea	edx, [rax + 0x1]
               	mov	rax, qword ptr [rip + 0x9dac] # 0x14000b580 .refptr.__CTOR_LIST__
               	mov	edx, edx
               	mov	rax, qword ptr [rax + 8*rdx]
               	test	rax, rax
               	jne	0x1400017c3 __do_global_ctors+0x24
               	mov	eax, dword ptr [rbp - 0x4]
               	mov	dword ptr [rbp - 0x8], eax
               	jmp	0x1400017fb __do_global_ctors+0x5c
               	mov	rax, qword ptr [rip + 0x9d92] # 0x14000b580 .refptr.__CTOR_LIST__
               	mov	edx, dword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rax + 8*rdx]
               	call	rax
               	sub	dword ptr [rbp - 0x8], 0x1
               	cmp	dword ptr [rbp - 0x8], 0x0
               	jne	0x1400017e7 __do_global_ctors+0x48
               	lea	rax, [rip - 0xa8]       # 0x140001760 __do_global_dtors
               	mov	rcx, rax
               	call	0x1400015db atexit
               	nop
               	add	rsp, 0x30
               	pop	rbp
               	ret

__main:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	eax, dword ptr [rip + 0xe85b] # 0x140010080 initialized
               	test	eax, eax
               	jne	0x140001838 __main+0x21
               	mov	dword ptr [rip + 0xe84d], 0x1 # 0x140010080 initialized
               	call	0x14000179f __do_global_ctors
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret
               	nop

_setargv:
               	push	rbp
               	mov	rbp, rsp
               	mov	eax, 0x0
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop
               	nop

__dyn_tls_init:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp + 0x18], edx
               	mov	qword ptr [rbp + 0x20], r8
               	mov	rax, qword ptr [rip + 0x9cf6] # 0x14000b560 .refptr._CRT_MT
               	mov	eax, dword ptr [rax]
               	cmp	eax, 0x2
               	je	0x14000187e __dyn_tls_init+0x2e
               	mov	rax, qword ptr [rip + 0x9ce8] # 0x14000b560 .refptr._CRT_MT
               	mov	dword ptr [rax], 0x2
               	cmp	dword ptr [rbp + 0x18], 0x2
               	je	0x1400018a2 __dyn_tls_init+0x52
               	cmp	dword ptr [rbp + 0x18], 0x1
               	jne	0x1400018e5 __dyn_tls_init+0x95
               	mov	rcx, qword ptr [rbp + 0x20]
               	mov	edx, dword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140002831 __mingw_TLScallback
               	jmp	0x1400018e5 __dyn_tls_init+0x95
               	lea	rax, [rip + 0xadff]     # 0x14000c6a8 __xd_a
               	mov	qword ptr [rbp - 0x8], rax
               	add	qword ptr [rbp - 0x8], 0x8
               	jmp	0x1400018d6 __dyn_tls_init+0x86
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	rax, qword ptr [rax]
               	test	rax, rax
               	je	0x1400018d1 __dyn_tls_init+0x81
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	rax, qword ptr [rax]
               	call	rax
               	add	qword ptr [rbp - 0x8], 0x8
               	lea	rax, [rip + 0xadd3]     # 0x14000c6b0 __xd_z
               	cmp	qword ptr [rbp - 0x8], rax
               	jne	0x1400018b4 __dyn_tls_init+0x64
               	jmp	0x1400018e6 __dyn_tls_init+0x96
               	nop
               	add	rsp, 0x30
               	pop	rbp
               	ret

__tlregdtor:
               	push	rbp
               	mov	rbp, rsp
               	mov	qword ptr [rbp + 0x10], rcx
               	cmp	qword ptr [rbp + 0x10], 0x0
               	jne	0x140001902 __tlregdtor+0x16
               	mov	eax, 0x0
               	jmp	0x140001907 __tlregdtor+0x1b
               	mov	eax, 0x0
               	pop	rbp
               	ret

__dyn_tls_dtor:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp + 0x18], edx
               	mov	qword ptr [rbp + 0x20], r8
               	cmp	dword ptr [rbp + 0x18], 0x3
               	je	0x140001928 __dyn_tls_dtor+0x1f
               	cmp	dword ptr [rbp + 0x18], 0x0
               	jne	0x140001940 __dyn_tls_dtor+0x37
               	mov	rcx, qword ptr [rbp + 0x20]
               	mov	edx, dword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140002831 __mingw_TLScallback
               	jmp	0x140001941 __dyn_tls_dtor+0x38
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop

_matherr:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x88
               	lea	rbp, [rsp + 0x50]
               	movaps	xmmword ptr [rbp], xmm6
               	movaps	xmmword ptr [rbp + 0x10], xmm7
               	movaps	xmmword ptr [rbp + 0x20], xmm8
               	mov	qword ptr [rbp + 0x50], rcx
               	mov	rax, qword ptr [rbp + 0x50]
               	mov	eax, dword ptr [rax]
               	cmp	eax, 0x6
               	je	0x1400019d0 _matherr+0x80
               	cmp	eax, 0x6
               	jg	0x1400019f7 _matherr+0xa7
               	cmp	eax, 0x5
               	je	0x1400019dd _matherr+0x8d
               	cmp	eax, 0x5
               	jg	0x1400019f7 _matherr+0xa7
               	cmp	eax, 0x4
               	je	0x1400019ea _matherr+0x9a
               	cmp	eax, 0x4
               	jg	0x1400019f7 _matherr+0xa7
               	cmp	eax, 0x3
               	je	0x1400019c3 _matherr+0x73
               	cmp	eax, 0x3
               	jg	0x1400019f7 _matherr+0xa7
               	cmp	eax, 0x1
               	je	0x1400019a9 _matherr+0x59
               	cmp	eax, 0x2
               	je	0x1400019b6 _matherr+0x66
               	jmp	0x1400019f7 _matherr+0xa7
               	lea	rax, [rip + 0x9730]     # 0x14000b0e0 .rdata
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140001a03 _matherr+0xb3
               	lea	rax, [rip + 0x9742]     # 0x14000b0ff .rdata+0x1f
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140001a03 _matherr+0xb3
               	lea	rax, [rip + 0x9756]     # 0x14000b120 .rdata+0x40
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140001a03 _matherr+0xb3
               	lea	rax, [rip + 0x9769]     # 0x14000b140 .rdata+0x60
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140001a03 _matherr+0xb3
               	lea	rax, [rip + 0x9784]     # 0x14000b168 .rdata+0x88
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140001a03 _matherr+0xb3
               	lea	rax, [rip + 0x979f]     # 0x14000b190 .rdata+0xb0
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140001a03 _matherr+0xb3
               	lea	rax, [rip + 0x97c8]     # 0x14000b1c6 .rdata+0xe6
               	mov	qword ptr [rbp - 0x8], rax
               	nop
               	mov	rax, qword ptr [rbp + 0x50]
               	movsd	xmm8, qword ptr [rax + 0x20]
               	mov	rax, qword ptr [rbp + 0x50]
               	movsd	xmm7, qword ptr [rax + 0x18]
               	mov	rax, qword ptr [rbp + 0x50]
               	movsd	xmm6, qword ptr [rax + 0x10]
               	mov	rax, qword ptr [rbp + 0x50]
               	mov	rbx, qword ptr [rax + 0x8]
               	mov	ecx, 0x2
               	call	0x140009370 __acrt_iob_func
               	mov	rcx, rax
               	mov	rdx, qword ptr [rbp - 0x8]
               	lea	rax, [rip + 0x9799]     # 0x14000b1d8 .rdata+0xf8
               	movsd	qword ptr [rsp + 0x30], xmm8
               	movsd	qword ptr [rsp + 0x28], xmm7
               	movsd	qword ptr [rsp + 0x20], xmm6
               	mov	r9, rbx
               	mov	r8, rdx
               	mov	rdx, rax
               	call	0x140009428 fprintf
               	mov	eax, 0x0
               	movaps	xmm6, xmmword ptr [rbp]
               	movaps	xmm7, xmmword ptr [rbp + 0x10]
               	movaps	xmm8, xmmword ptr [rbp + 0x20]
               	add	rsp, 0x88
               	pop	rbx
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop

__report_error:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x38
               	lea	rbp, [rsp + 0x30]
               	mov	qword ptr [rbp + 0x20], rcx
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	qword ptr [rbp + 0x30], r8
               	mov	qword ptr [rbp + 0x38], r9
               	lea	rax, [rbp + 0x28]
               	mov	qword ptr [rbp - 0x8], rax
               	mov	ecx, 0x2
               	call	0x140009370 __acrt_iob_func
               	mov	rcx, rax
               	lea	rax, [rip + 0x9759]     # 0x14000b210 .rdata
               	mov	rdx, rax
               	call	0x140009428 fprintf
               	mov	rbx, qword ptr [rbp - 0x8]
               	mov	ecx, 0x2
               	call	0x140009370 __acrt_iob_func
               	mov	rcx, rax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	r8, rbx
               	mov	rdx, rax
               	call	0x140009478 vfprintf
               	call	0x140009408 abort
               	nop

mark_section_writable:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x60
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp - 0x4], 0x0
               	jmp	0x140001b7f mark_section_writable+0x9a
               	mov	rcx, qword ptr [rip + 0xe5dc] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, rcx
               	mov	rax, qword ptr [rax + 0x18]
               	cmp	qword ptr [rbp + 0x10], rax
               	jb	0x140001b7b mark_section_writable+0x96
               	mov	rcx, qword ptr [rip + 0xe5b4] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, rcx
               	mov	rcx, qword ptr [rax + 0x18]
               	mov	r8, qword ptr [rip + 0xe592] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, r8
               	mov	rax, qword ptr [rax + 0x20]
               	mov	eax, dword ptr [rax + 0x8]
               	mov	eax, eax
               	add	rax, rcx
               	cmp	qword ptr [rbp + 0x10], rax
               	jb	0x140001dbc mark_section_writable+0x2d7
               	add	dword ptr [rbp - 0x4], 0x1
               	mov	eax, dword ptr [rip + 0xe563] # 0x1400100e8 maxSections
               	cmp	dword ptr [rbp - 0x4], eax
               	jl	0x140001afd mark_section_writable+0x18
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140002b1b __mingw_GetSectionForAddress
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x0
               	jne	0x140001bb8 mark_section_writable+0xd3
               	mov	rax, qword ptr [rbp + 0x10]
               	lea	rcx, [rip + 0x9680]     # 0x14000b230 .rdata+0x20
               	mov	rdx, rax
               	call	0x140001a80 __report_error
               	mov	rcx, qword ptr [rip + 0xe521] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	lea	rdx, [rcx + rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	qword ptr [rdx + 0x20], rax
               	mov	rcx, qword ptr [rip + 0xe4fa] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, rcx
               	mov	dword ptr [rax], 0x0
               	call	0x140002c67 _GetPEImageBase
               	mov	rcx, rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax + 0xc]
               	mov	r9d, eax
               	mov	r8, qword ptr [rip + 0xe4c4] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, r8
               	lea	rdx, [rcx + r9]
               	mov	qword ptr [rax + 0x18], rdx
               	mov	rcx, qword ptr [rip + 0xe49e] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, rcx
               	mov	rax, qword ptr [rax + 0x18]
               	lea	rdx, [rbp - 0x40]
               	mov	r8d, 0x30
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xf5df] # 0x140011250 __imp_VirtualQuery
               	call	rax
               	test	rax, rax
               	jne	0x140001cb7 mark_section_writable+0x1d2
               	mov	rcx, qword ptr [rip + 0xe461] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, rcx
               	mov	rdx, qword ptr [rax + 0x18]
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	mov	ecx, eax
               	lea	rax, [rip + 0x95a6]     # 0x14000b250 .rdata+0x40
               	mov	r8, rdx
               	mov	edx, ecx
               	mov	rcx, rax
               	call	0x140001a80 __report_error
               	mov	eax, dword ptr [rbp - 0x1c]
               	cmp	eax, 0x40
               	je	0x140001dab mark_section_writable+0x2c6
               	mov	eax, dword ptr [rbp - 0x1c]
               	cmp	eax, 0x4
               	je	0x140001dab mark_section_writable+0x2c6
               	mov	eax, dword ptr [rbp - 0x1c]
               	cmp	eax, 0x80
               	je	0x140001dab mark_section_writable+0x2c6
               	mov	eax, dword ptr [rbp - 0x1c]
               	cmp	eax, 0x8
               	je	0x140001dab mark_section_writable+0x2c6
               	mov	eax, dword ptr [rbp - 0x1c]
               	cmp	eax, 0x2
               	jne	0x140001cfa mark_section_writable+0x215
               	mov	dword ptr [rbp - 0x8], 0x4
               	jmp	0x140001d01 mark_section_writable+0x21c
               	mov	dword ptr [rbp - 0x8], 0x40
               	mov	rcx, qword ptr [rip + 0xe3d8] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	lea	rdx, [rcx + rax]
               	mov	rax, qword ptr [rbp - 0x40]
               	mov	qword ptr [rdx + 0x8], rax
               	mov	rcx, qword ptr [rip + 0xe3b1] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	lea	rdx, [rcx + rax]
               	mov	rax, qword ptr [rbp - 0x28]
               	mov	qword ptr [rdx + 0x10], rax
               	mov	rcx, qword ptr [rip + 0xe38a] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, rcx
               	mov	r8, rax
               	mov	rdx, qword ptr [rbp - 0x28]
               	mov	rax, qword ptr [rbp - 0x40]
               	mov	ecx, dword ptr [rbp - 0x8]
               	mov	r9, r8
               	mov	r8d, ecx
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xf4bd] # 0x140011248 __imp_VirtualProtect
               	call	rax
               	test	eax, eax
               	jne	0x140001dab mark_section_writable+0x2c6
               	mov	rax, qword ptr [rip + 0xf458] # 0x1400111f0 __imp_GetLastError
               	call	rax
               	mov	edx, eax
               	lea	rax, [rip + 0x94e5]     # 0x14000b288 .rdata+0x78
               	mov	rcx, rax
               	call	0x140001a80 __report_error
               	mov	eax, dword ptr [rip + 0xe337] # 0x1400100e8 maxSections
               	add	eax, 0x1
               	mov	dword ptr [rip + 0xe32e], eax # 0x1400100e8 maxSections
               	jmp	0x140001dbd mark_section_writable+0x2d8
               	nop
               	add	rsp, 0x60
               	pop	rbp
               	ret

restore_modified_sections:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	dword ptr [rbp - 0x4], 0x0
               	jmp	0x140001e84 restore_modified_sections+0xc1
               	mov	rcx, qword ptr [rip + 0xe302] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, rcx
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x140001e7f restore_modified_sections+0xbc
               	mov	rcx, qword ptr [rip + 0xe2da] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, rcx
               	mov	r10d, dword ptr [rax]
               	mov	rcx, qword ptr [rip + 0xe2b9] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, rcx
               	mov	rcx, qword ptr [rax + 0x10]
               	mov	r8, qword ptr [rip + 0xe297] # 0x1400100e0 the_secs
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, r8
               	mov	rax, qword ptr [rax + 0x8]
               	lea	rdx, [rbp - 0x8]
               	mov	r9, rdx
               	mov	r8d, r10d
               	mov	rdx, rcx
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xf3cd] # 0x140011248 __imp_VirtualProtect
               	call	rax
               	jmp	0x140001e80 restore_modified_sections+0xbd
               	nop
               	add	dword ptr [rbp - 0x4], 0x1
               	mov	eax, dword ptr [rip + 0xe25e] # 0x1400100e8 maxSections
               	cmp	dword ptr [rbp - 0x4], eax
               	jl	0x140001dd7 restore_modified_sections+0x14
               	nop
               	nop
               	add	rsp, 0x30
               	pop	rbp
               	ret

__write_memory:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	qword ptr [rbp + 0x20], r8
               	cmp	qword ptr [rbp + 0x20], 0x0
               	je	0x140001edb __write_memory+0x40
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140001ae5 mark_section_writable
               	mov	rcx, qword ptr [rbp + 0x20]
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140009450 memcpy
               	jmp	0x140001edc __write_memory+0x41
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret

do_pseudo_reloc:
               	push	rbp
               	mov	rbp, rsp
               	add	rsp, -0x80
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	qword ptr [rbp + 0x20], r8
               	mov	rax, qword ptr [rbp + 0x18]
               	sub	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rbp - 0x20], rax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x20], 0x7
               	jle	0x140002259 do_pseudo_reloc+0x377
               	cmp	qword ptr [rbp - 0x20], 0xb
               	jle	0x140001f41 do_pseudo_reloc+0x5f
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	jne	0x140001f41 do_pseudo_reloc+0x5f
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x4]
               	test	eax, eax
               	jne	0x140001f41 do_pseudo_reloc+0x5f
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x8]
               	test	eax, eax
               	jne	0x140001f41 do_pseudo_reloc+0x5f
               	add	qword ptr [rbp - 0x8], 0xc
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	jne	0x140001f56 do_pseudo_reloc+0x74
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x4]
               	test	eax, eax
               	je	0x140001faf do_pseudo_reloc+0xcd
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	qword ptr [rbp - 0x18], rax
               	jmp	0x140001fa0 do_pseudo_reloc+0xbe
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax + 0x4]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x20]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x20], rax
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	edx, dword ptr [rax]
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax]
               	add	eax, edx
               	mov	dword ptr [rbp - 0x4c], eax
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rdx, [rbp - 0x4c]
               	mov	r8d, 0x4
               	mov	rcx, rax
               	call	0x140001e9b __write_memory
               	add	qword ptr [rbp - 0x18], 0x8
               	mov	rax, qword ptr [rbp - 0x18]
               	cmp	rax, qword ptr [rbp + 0x18]
               	jb	0x140001f60 do_pseudo_reloc+0x7e
               	jmp	0x14000225a do_pseudo_reloc+0x378
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x8]
               	cmp	eax, 0x1
               	je	0x140001fd3 do_pseudo_reloc+0xf1
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x8]
               	mov	edx, eax
               	lea	rax, [rip + 0x92e5]     # 0x14000b2b0 .rdata+0xa0
               	mov	rcx, rax
               	call	0x140001a80 __report_error
               	mov	rax, qword ptr [rbp - 0x8]
               	add	rax, 0xc
               	mov	qword ptr [rbp - 0x10], rax
               	jmp	0x140002249 do_pseudo_reloc+0x367
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax + 0x4]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x20]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x20], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x20]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x28], rax
               	mov	rax, qword ptr [rbp - 0x28]
               	mov	rax, qword ptr [rax]
               	mov	qword ptr [rbp - 0x28], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	movzx	eax, al
               	cmp	eax, 0x40
               	je	0x1400020df do_pseudo_reloc+0x1fd
               	cmp	eax, 0x40
               	ja	0x1400020ec do_pseudo_reloc+0x20a
               	cmp	eax, 0x20
               	je	0x1400020ae do_pseudo_reloc+0x1cc
               	cmp	eax, 0x20
               	ja	0x1400020ec do_pseudo_reloc+0x20a
               	cmp	eax, 0x8
               	je	0x14000204f do_pseudo_reloc+0x16d
               	cmp	eax, 0x10
               	je	0x140002082 do_pseudo_reloc+0x1a0
               	jmp	0x1400020ec do_pseudo_reloc+0x20a
               	mov	rax, qword ptr [rbp - 0x20]
               	movzx	eax, byte ptr [rax]
               	movzx	eax, al
               	mov	qword ptr [rbp - 0x48], rax
               	mov	rax, qword ptr [rbp - 0x48]
               	and	eax, 0x80
               	test	rax, rax
               	je	0x14000210c do_pseudo_reloc+0x22a
               	mov	rax, qword ptr [rbp - 0x48]
               	or	rax, -0x100
               	mov	qword ptr [rbp - 0x48], rax
               	jmp	0x14000210c do_pseudo_reloc+0x22a
               	mov	rax, qword ptr [rbp - 0x20]
               	movzx	eax, word ptr [rax]
               	movzx	eax, ax
               	mov	qword ptr [rbp - 0x48], rax
               	mov	rax, qword ptr [rbp - 0x48]
               	and	eax, 0x8000
               	test	rax, rax
               	je	0x14000210f do_pseudo_reloc+0x22d
               	mov	rax, qword ptr [rbp - 0x48]
               	or	rax, -0x10000
               	mov	qword ptr [rbp - 0x48], rax
               	jmp	0x14000210f do_pseudo_reloc+0x22d
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	eax, dword ptr [rax]
               	mov	eax, eax
               	mov	qword ptr [rbp - 0x48], rax
               	mov	rax, qword ptr [rbp - 0x48]
               	and	eax, 0x80000000
               	test	rax, rax
               	je	0x140002112 do_pseudo_reloc+0x230
               	mov	rax, qword ptr [rbp - 0x48]
               	movabs	rdx, -0x100000000
               	or	rax, rdx
               	mov	qword ptr [rbp - 0x48], rax
               	jmp	0x140002112 do_pseudo_reloc+0x230
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	rax, qword ptr [rax]
               	mov	qword ptr [rbp - 0x48], rax
               	jmp	0x140002113 do_pseudo_reloc+0x231
               	mov	qword ptr [rbp - 0x48], 0x0
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	movzx	eax, al
               	lea	rcx, [rip + 0x91e3]     # 0x14000b2e8 .rdata+0xd8
               	mov	edx, eax
               	call	0x140001a80 __report_error
               	nop
               	jmp	0x140002113 do_pseudo_reloc+0x231
               	nop
               	jmp	0x140002113 do_pseudo_reloc+0x231
               	nop
               	mov	rcx, qword ptr [rbp - 0x48]
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x20]
               	add	rdx, rax
               	mov	rax, rcx
               	sub	rax, rdx
               	mov	qword ptr [rbp - 0x48], rax
               	mov	rdx, qword ptr [rbp - 0x48]
               	mov	rax, qword ptr [rbp - 0x28]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x48], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0xff
               	mov	dword ptr [rbp - 0x2c], eax
               	cmp	dword ptr [rbp - 0x2c], 0x3f
               	ja	0x1400021bb do_pseudo_reloc+0x2d9
               	mov	eax, dword ptr [rbp - 0x2c]
               	mov	edx, 0x1
               	mov	ecx, eax
               	shl	rdx, cl
               	mov	rax, rdx
               	sub	rax, 0x1
               	mov	qword ptr [rbp - 0x38], rax
               	mov	eax, dword ptr [rbp - 0x2c]
               	sub	eax, 0x1
               	mov	rdx, -0x1
               	mov	ecx, eax
               	shl	rdx, cl
               	mov	rax, rdx
               	mov	qword ptr [rbp - 0x40], rax
               	mov	rax, qword ptr [rbp - 0x48]
               	cmp	qword ptr [rbp - 0x38], rax
               	jl	0x140002199 do_pseudo_reloc+0x2b7
               	mov	rax, qword ptr [rbp - 0x48]
               	cmp	qword ptr [rbp - 0x40], rax
               	jle	0x1400021bb do_pseudo_reloc+0x2d9
               	mov	rdx, qword ptr [rbp - 0x48]
               	mov	r9, qword ptr [rbp - 0x28]
               	mov	r8, qword ptr [rbp - 0x20]
               	mov	eax, dword ptr [rbp - 0x2c]
               	lea	rcx, [rip + 0x9169]     # 0x14000b318 .rdata+0x108
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	edx, eax
               	call	0x140001a80 __report_error
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	movzx	eax, al
               	cmp	eax, 0x40
               	je	0x14000222d do_pseudo_reloc+0x34b
               	cmp	eax, 0x40
               	ja	0x140002244 do_pseudo_reloc+0x362
               	cmp	eax, 0x20
               	je	0x140002215 do_pseudo_reloc+0x333
               	cmp	eax, 0x20
               	ja	0x140002244 do_pseudo_reloc+0x362
               	cmp	eax, 0x8
               	je	0x1400021e5 do_pseudo_reloc+0x303
               	cmp	eax, 0x10
               	je	0x1400021fd do_pseudo_reloc+0x31b
               	jmp	0x140002244 do_pseudo_reloc+0x362
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rdx, [rbp - 0x48]
               	mov	r8d, 0x1
               	mov	rcx, rax
               	call	0x140001e9b __write_memory
               	jmp	0x140002244 do_pseudo_reloc+0x362
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rdx, [rbp - 0x48]
               	mov	r8d, 0x2
               	mov	rcx, rax
               	call	0x140001e9b __write_memory
               	jmp	0x140002244 do_pseudo_reloc+0x362
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rdx, [rbp - 0x48]
               	mov	r8d, 0x4
               	mov	rcx, rax
               	call	0x140001e9b __write_memory
               	jmp	0x140002244 do_pseudo_reloc+0x362
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rdx, [rbp - 0x48]
               	mov	r8d, 0x8
               	mov	rcx, rax
               	call	0x140001e9b __write_memory
               	nop
               	add	qword ptr [rbp - 0x10], 0xc
               	mov	rax, qword ptr [rbp - 0x10]
               	cmp	rax, qword ptr [rbp + 0x18]
               	jb	0x140001fe4 do_pseudo_reloc+0x102
               	jmp	0x14000225a do_pseudo_reloc+0x378
               	nop
               	sub	rsp, -0x80
               	pop	rbp
               	ret

_pei386_runtime_relocator:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	eax, dword ptr [rip + 0xde7e] # 0x1400100ec was_init.0
               	test	eax, eax
               	jne	0x1400022fe _pei386_runtime_relocator+0x9e
               	mov	eax, dword ptr [rip + 0xde70] # 0x1400100ec was_init.0
               	add	eax, 0x1
               	mov	dword ptr [rip + 0xde67], eax # 0x1400100ec was_init.0
               	call	0x140002b6b __mingw_GetSectionCount
               	mov	dword ptr [rbp - 0x4], eax
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	add	rax, 0xf
               	shr	rax, 0x4
               	shl	rax, 0x4
               	call	0x140002df0 ___chkstk_ms
               	sub	rsp, rax
               	lea	rax, [rsp + 0x20]
               	add	rax, 0xf
               	shr	rax, 0x4
               	shl	rax, 0x4
               	mov	qword ptr [rip + 0xde13], rax # 0x1400100e0 the_secs
               	mov	dword ptr [rip + 0xde11], 0x0 # 0x1400100e8 maxSections
               	mov	rcx, qword ptr [rip + 0x92b2] # 0x14000b590 .refptr.__ImageBase
               	mov	rdx, qword ptr [rip + 0x92bb] # 0x14000b5a0 .refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__
               	mov	rax, qword ptr [rip + 0x92c4] # 0x14000b5b0 .refptr.__RUNTIME_PSEUDO_RELOC_LIST__
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140001ee2 do_pseudo_reloc
               	call	0x140001dc3 restore_modified_sections
               	jmp	0x1400022ff _pei386_runtime_relocator+0x9f
               	nop
               	mov	rsp, rbp
               	pop	rbp
               	ret
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

__mingw_raise_matherr:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x50
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	qword ptr [rbp + 0x18], rdx
               	movsd	qword ptr [rbp + 0x20], xmm2
               	movsd	qword ptr [rbp + 0x28], xmm3
               	mov	rax, qword ptr [rip + 0xddc0] # 0x1400100f0 stUserMathErr
               	test	rax, rax
               	je	0x140002373 __mingw_raise_matherr+0x63
               	mov	eax, dword ptr [rbp + 0x10]
               	mov	dword ptr [rbp - 0x30], eax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rbp - 0x28], rax
               	movsd	xmm0, qword ptr [rbp + 0x20]
               	movsd	qword ptr [rbp - 0x20], xmm0
               	movsd	xmm0, qword ptr [rbp + 0x28]
               	movsd	qword ptr [rbp - 0x18], xmm0
               	movsd	xmm0, qword ptr [rbp + 0x30]
               	movsd	qword ptr [rbp - 0x10], xmm0
               	mov	rdx, qword ptr [rip + 0xdd88] # 0x1400100f0 stUserMathErr
               	lea	rax, [rbp - 0x30]
               	mov	rcx, rax
               	call	rdx
               	jmp	0x140002374 __mingw_raise_matherr+0x64
               	nop
               	add	rsp, 0x50
               	pop	rbp
               	ret

__mingw_setusermatherr:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rip + 0xdd5f], rax # 0x1400100f0 stUserMathErr
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x1400093d0 __setusermatherr
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret
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

_gnu_exception_handler:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp - 0x4], 0x0
               	mov	dword ptr [rbp - 0x8], 0x0
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rax]
               	mov	eax, dword ptr [rax]
               	and	eax, 0x20ffffff
               	cmp	eax, 0x20474343
               	jne	0x1400023fa _gnu_exception_handler+0x4a
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rax]
               	mov	eax, dword ptr [rax + 0x4]
               	and	eax, 0x1
               	test	eax, eax
               	jne	0x1400023fa _gnu_exception_handler+0x4a
               	mov	eax, 0xffffffff
               	jmp	0x140002624 _gnu_exception_handler+0x274
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rax]
               	mov	eax, dword ptr [rax]
               	cmp	eax, 0xc0000096
               	je	0x140002536 _gnu_exception_handler+0x186
               	cmp	eax, 0xc0000096
               	ja	0x1400025f2 _gnu_exception_handler+0x242
               	cmp	eax, 0xc0000095
               	je	0x1400025e9 _gnu_exception_handler+0x239
               	cmp	eax, 0xc0000095
               	ja	0x1400025f2 _gnu_exception_handler+0x242
               	cmp	eax, 0xc0000094
               	je	0x140002591 _gnu_exception_handler+0x1e1
               	cmp	eax, 0xc0000094
               	ja	0x1400025f2 _gnu_exception_handler+0x242
               	cmp	eax, 0xc0000093
               	je	0x14000258a _gnu_exception_handler+0x1da
               	cmp	eax, 0xc0000093
               	ja	0x1400025f2 _gnu_exception_handler+0x242
               	cmp	eax, 0xc0000092
               	je	0x1400025e9 _gnu_exception_handler+0x239
               	cmp	eax, 0xc0000092
               	ja	0x1400025f2 _gnu_exception_handler+0x242
               	cmp	eax, 0xc0000091
               	ja	0x1400025f2 _gnu_exception_handler+0x242
               	cmp	eax, 0xc000008d
               	jae	0x14000258a _gnu_exception_handler+0x1da
               	cmp	eax, 0xc000008c
               	je	0x1400025e9 _gnu_exception_handler+0x239
               	cmp	eax, 0xc000008c
               	ja	0x1400025f2 _gnu_exception_handler+0x242
               	cmp	eax, 0xc000001d
               	je	0x140002536 _gnu_exception_handler+0x186
               	cmp	eax, 0xc000001d
               	ja	0x1400025f2 _gnu_exception_handler+0x242
               	cmp	eax, 0xc0000008
               	je	0x1400025e9 _gnu_exception_handler+0x239
               	cmp	eax, 0xc0000008
               	ja	0x1400025f2 _gnu_exception_handler+0x242
               	cmp	eax, 0x80000002
               	je	0x1400025e9 _gnu_exception_handler+0x239
               	cmp	eax, 0xc0000005
               	jne	0x1400025f2 _gnu_exception_handler+0x242
               	mov	edx, 0x0
               	mov	ecx, 0xb
               	call	0x140009458 signal
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x1
               	jne	0x140002514 _gnu_exception_handler+0x164
               	mov	edx, 0x1
               	mov	ecx, 0xb
               	call	0x140009458 signal
               	mov	dword ptr [rbp - 0x4], 0xffffffff
               	jmp	0x1400025f5 _gnu_exception_handler+0x245
               	cmp	qword ptr [rbp - 0x10], 0x0
               	je	0x1400025f5 _gnu_exception_handler+0x245
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	ecx, 0xb
               	call	rax
               	mov	dword ptr [rbp - 0x4], 0xffffffff
               	jmp	0x1400025f5 _gnu_exception_handler+0x245
               	mov	edx, 0x0
               	mov	ecx, 0x4
               	call	0x140009458 signal
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x1
               	jne	0x14000256b _gnu_exception_handler+0x1bb
               	mov	edx, 0x1
               	mov	ecx, 0x4
               	call	0x140009458 signal
               	mov	dword ptr [rbp - 0x4], 0xffffffff
               	jmp	0x1400025f8 _gnu_exception_handler+0x248
               	cmp	qword ptr [rbp - 0x10], 0x0
               	je	0x1400025f8 _gnu_exception_handler+0x248
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	ecx, 0x4
               	call	rax
               	mov	dword ptr [rbp - 0x4], 0xffffffff
               	jmp	0x1400025f8 _gnu_exception_handler+0x248
               	mov	dword ptr [rbp - 0x8], 0x1
               	mov	edx, 0x0
               	mov	ecx, 0x8
               	call	0x140009458 signal
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x1
               	jne	0x1400025ce _gnu_exception_handler+0x21e
               	mov	edx, 0x1
               	mov	ecx, 0x8
               	call	0x140009458 signal
               	cmp	dword ptr [rbp - 0x8], 0x0
               	je	0x1400025c5 _gnu_exception_handler+0x215
               	call	0x140002930 fpreset
               	mov	dword ptr [rbp - 0x4], 0xffffffff
               	jmp	0x1400025fb _gnu_exception_handler+0x24b
               	cmp	qword ptr [rbp - 0x10], 0x0
               	je	0x1400025fb _gnu_exception_handler+0x24b
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	ecx, 0x8
               	call	rax
               	mov	dword ptr [rbp - 0x4], 0xffffffff
               	jmp	0x1400025fb _gnu_exception_handler+0x24b
               	mov	dword ptr [rbp - 0x4], 0xffffffff
               	jmp	0x1400025fc _gnu_exception_handler+0x24c
               	nop
               	jmp	0x1400025fc _gnu_exception_handler+0x24c
               	nop
               	jmp	0x1400025fc _gnu_exception_handler+0x24c
               	nop
               	jmp	0x1400025fc _gnu_exception_handler+0x24c
               	nop
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x140002621 _gnu_exception_handler+0x271
               	mov	rax, qword ptr [rip + 0xdb07] # 0x140010110 __mingw_oldexcpt_handler
               	test	rax, rax
               	je	0x140002621 _gnu_exception_handler+0x271
               	mov	rdx, qword ptr [rip + 0xdafb] # 0x140010110 __mingw_oldexcpt_handler
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	rdx
               	mov	dword ptr [rbp - 0x4], eax
               	mov	eax, dword ptr [rbp - 0x4]
               	add	rsp, 0x30
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop

___w64_mingwthr_add_key_dtor:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	eax, dword ptr [rip + 0xdb03] # 0x140010148 __mingwthr_cs_init
               	test	eax, eax
               	jne	0x140002650 ___w64_mingwthr_add_key_dtor+0x20
               	mov	eax, 0x0
               	jmp	0x1400026cb ___w64_mingwthr_add_key_dtor+0x9b
               	mov	edx, 0x18
               	mov	ecx, 0x1
               	call	0x140009418 calloc
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x8], 0x0
               	jne	0x140002671 ___w64_mingwthr_add_key_dtor+0x41
               	mov	eax, 0xffffffff
               	jmp	0x1400026cb ___w64_mingwthr_add_key_dtor+0x9b
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	edx, dword ptr [rbp + 0x10]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	qword ptr [rax + 0x8], rdx
               	lea	rax, [rip + 0xda93]     # 0x140010120 __mingwthr_cs
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xeb49] # 0x1400111e0 __imp_EnterCriticalSection
               	call	rax
               	mov	rdx, qword ptr [rip + 0xdab0] # 0x140010150 key_dtor_list
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	qword ptr [rax + 0x10], rdx
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	qword ptr [rip + 0xda9d], rax # 0x140010150 key_dtor_list
               	lea	rax, [rip + 0xda66]     # 0x140010120 __mingwthr_cs
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xeb54] # 0x140011218 __imp_LeaveCriticalSection
               	call	rax
               	mov	eax, 0x0
               	add	rsp, 0x30
               	pop	rbp
               	ret

___w64_mingwthr_remove_key_dtor:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	eax, dword ptr [rip + 0xda66] # 0x140010148 __mingwthr_cs_init
               	test	eax, eax
               	jne	0x1400026f0 ___w64_mingwthr_remove_key_dtor+0x1f
               	mov	eax, 0x0
               	jmp	0x14000278c ___w64_mingwthr_remove_key_dtor+0xbb
               	lea	rax, [rip + 0xda29]     # 0x140010120 __mingwthr_cs
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xeadf] # 0x1400111e0 __imp_EnterCriticalSection
               	call	rax
               	mov	qword ptr [rbp - 0x8], 0x0
               	mov	rax, qword ptr [rip + 0xda3e] # 0x140010150 key_dtor_list
               	mov	qword ptr [rbp - 0x10], rax
               	jmp	0x14000276d ___w64_mingwthr_remove_key_dtor+0x9c
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	cmp	dword ptr [rbp + 0x10], eax
               	jne	0x140002759 ___w64_mingwthr_remove_key_dtor+0x88
               	cmp	qword ptr [rbp - 0x8], 0x0
               	jne	0x14000273b ___w64_mingwthr_remove_key_dtor+0x6a
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	rax, qword ptr [rax + 0x10]
               	mov	qword ptr [rip + 0xda17], rax # 0x140010150 key_dtor_list
               	jmp	0x14000274b ___w64_mingwthr_remove_key_dtor+0x7a
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	rdx, qword ptr [rax + 0x10]
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	qword ptr [rax + 0x10], rdx
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	rcx, rax
               	call	0x140009438 free
               	jmp	0x140002774 ___w64_mingwthr_remove_key_dtor+0xa3
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	rax, qword ptr [rax + 0x10]
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x0
               	jne	0x140002718 ___w64_mingwthr_remove_key_dtor+0x47
               	lea	rax, [rip + 0xd9a5]     # 0x140010120 __mingwthr_cs
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xea93] # 0x140011218 __imp_LeaveCriticalSection
               	call	rax
               	mov	eax, 0x0
               	add	rsp, 0x30
               	pop	rbp
               	ret

__mingwthr_run_key_dtors:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	eax, dword ptr [rip + 0xd9a8] # 0x140010148 __mingwthr_cs_init
               	test	eax, eax
               	je	0x14000282a __mingwthr_run_key_dtors+0x98
               	lea	rax, [rip + 0xd971]     # 0x140010120 __mingwthr_cs
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xea27] # 0x1400111e0 __imp_EnterCriticalSection
               	call	rax
               	mov	rax, qword ptr [rip + 0xd98e] # 0x140010150 key_dtor_list
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x14000280e __mingwthr_run_key_dtors+0x7c
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax]
               	mov	ecx, eax
               	mov	rax, qword ptr [rip + 0xea69] # 0x140011240 __imp_TlsGetValue
               	call	rax
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rip + 0xea0c] # 0x1400111f0 __imp_GetLastError
               	call	rax
               	test	eax, eax
               	jne	0x140002802 __mingwthr_run_key_dtors+0x70
               	cmp	qword ptr [rbp - 0x10], 0x0
               	je	0x140002802 __mingwthr_run_key_dtors+0x70
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rdx, qword ptr [rax + 0x8]
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	rcx, rax
               	call	rdx
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rax + 0x10]
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x8], 0x0
               	jne	0x1400027c8 __mingwthr_run_key_dtors+0x36
               	lea	rax, [rip + 0xd904]     # 0x140010120 __mingwthr_cs
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xe9f2] # 0x140011218 __imp_LeaveCriticalSection
               	call	rax
               	jmp	0x14000282b __mingwthr_run_key_dtors+0x99
               	nop
               	add	rsp, 0x30
               	pop	rbp
               	ret

__mingw_TLScallback:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp + 0x18], edx
               	mov	qword ptr [rbp + 0x20], r8
               	cmp	dword ptr [rbp + 0x18], 0x3
               	je	0x14000291a __mingw_TLScallback+0xe9
               	cmp	dword ptr [rbp + 0x18], 0x3
               	ja	0x140002922 __mingw_TLScallback+0xf1
               	cmp	dword ptr [rbp + 0x18], 0x2
               	je	0x140002913 __mingw_TLScallback+0xe2
               	cmp	dword ptr [rbp + 0x18], 0x2
               	ja	0x140002922 __mingw_TLScallback+0xf1
               	cmp	dword ptr [rbp + 0x18], 0x0
               	je	0x1400028a5 __mingw_TLScallback+0x74
               	cmp	dword ptr [rbp + 0x18], 0x1
               	jne	0x140002922 __mingw_TLScallback+0xf1
               	mov	eax, dword ptr [rip + 0xd8c6] # 0x140010148 __mingwthr_cs_init
               	test	eax, eax
               	jne	0x140002899 __mingw_TLScallback+0x68
               	lea	rax, [rip + 0xd893]     # 0x140010120 __mingwthr_cs
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xe971] # 0x140011208 __imp_InitializeCriticalSection
               	call	rax
               	mov	dword ptr [rip + 0xd8a5], 0x1 # 0x140010148 __mingwthr_cs_init
               	jmp	0x140002922 __mingw_TLScallback+0xf1
               	call	0x140002792 __mingwthr_run_key_dtors
               	mov	eax, dword ptr [rip + 0xd898] # 0x140010148 __mingwthr_cs_init
               	cmp	eax, 0x1
               	jne	0x140002921 __mingw_TLScallback+0xf0
               	mov	rax, qword ptr [rip + 0xd894] # 0x140010150 key_dtor_list
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x1400028e2 __mingw_TLScallback+0xb1
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rax + 0x10]
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140009438 free
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x8], 0x0
               	jne	0x1400028c2 __mingw_TLScallback+0x91
               	mov	qword ptr [rip + 0xd85c], 0x0 # 0x140010150 key_dtor_list
               	mov	dword ptr [rip + 0xd84a], 0x0 # 0x140010148 __mingwthr_cs_init
               	lea	rax, [rip + 0xd81b]     # 0x140010120 __mingwthr_cs
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0xe8c9] # 0x1400111d8 fthunk
               	call	rax
               	jmp	0x140002921 __mingw_TLScallback+0xf0
               	call	0x140002930 fpreset
               	jmp	0x140002922 __mingw_TLScallback+0xf1
               	call	0x140002792 __mingwthr_run_key_dtors
               	jmp	0x140002922 __mingw_TLScallback+0xf1
               	nop
               	mov	eax, 0x1
               	add	rsp, 0x30
               	pop	rbp
               	ret
               	nop
               	nop
               	nop

fpreset:
               	push	rbp
               	mov	rbp, rsp
               	fninit
               	nop
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop

_ValidateImageBase:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp - 0x8]
               	movzx	eax, word ptr [rax]
               	cmp	ax, 0x5a4d
               	je	0x140002968 _ValidateImageBase+0x28
               	mov	eax, 0x0
               	jmp	0x1400029b6 _ValidateImageBase+0x76
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x3c]
               	movsxd	rdx, eax
               	mov	rax, qword ptr [rbp - 0x8]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	cmp	eax, 0x4550
               	je	0x140002991 _ValidateImageBase+0x51
               	mov	eax, 0x0
               	jmp	0x1400029b6 _ValidateImageBase+0x76
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	movzx	eax, word ptr [rax]
               	cmp	ax, 0x20b
               	je	0x1400029b1 _ValidateImageBase+0x71
               	mov	eax, 0x0
               	jmp	0x1400029b6 _ValidateImageBase+0x76
               	mov	eax, 0x1
               	add	rsp, 0x20
               	pop	rbp
               	ret

_FindPESection:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x3c]
               	movsxd	rdx, eax
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x18], rax
               	mov	dword ptr [rbp - 0xc], 0x0
               	mov	rax, qword ptr [rbp - 0x18]
               	movzx	eax, word ptr [rax + 0x14]
               	movzx	edx, ax
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, rdx
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140002a3a _FindPESection+0x7e
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0xc]
               	mov	eax, eax
               	cmp	qword ptr [rbp + 0x18], rax
               	jb	0x140002a31 _FindPESection+0x75
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	edx, dword ptr [rax + 0xc]
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x8]
               	add	eax, edx
               	mov	eax, eax
               	cmp	qword ptr [rbp + 0x18], rax
               	jae	0x140002a31 _FindPESection+0x75
               	mov	rax, qword ptr [rbp - 0x8]
               	jmp	0x140002a4f _FindPESection+0x93
               	add	dword ptr [rbp - 0xc], 0x1
               	add	qword ptr [rbp - 0x8], 0x28
               	mov	rax, qword ptr [rbp - 0x18]
               	movzx	eax, word ptr [rax + 0x6]
               	movzx	eax, ax
               	cmp	dword ptr [rbp - 0xc], eax
               	jb	0x140002a04 _FindPESection+0x48
               	mov	eax, 0x0
               	add	rsp, 0x20
               	pop	rbp
               	ret

_FindPESectionByName:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x40
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140009468 strlen
               	cmp	rax, 0x8
               	jbe	0x140002a7d _FindPESectionByName+0x28
               	mov	eax, 0x0
               	jmp	0x140002b15 _FindPESectionByName+0xc0
               	mov	rax, qword ptr [rip + 0x8b0c] # 0x14000b590 .refptr.__ImageBase
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	rcx, rax
               	call	0x140002940 _ValidateImageBase
               	test	eax, eax
               	jne	0x140002a9f _FindPESectionByName+0x4a
               	mov	eax, 0x0
               	jmp	0x140002b15 _FindPESectionByName+0xc0
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax + 0x3c]
               	movsxd	rdx, eax
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x20], rax
               	mov	dword ptr [rbp - 0xc], 0x0
               	mov	rax, qword ptr [rbp - 0x20]
               	movzx	eax, word ptr [rax + 0x14]
               	movzx	edx, ax
               	mov	rax, qword ptr [rbp - 0x20]
               	add	rax, rdx
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140002b00 _FindPESectionByName+0xab
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	r8d, 0x8
               	mov	rcx, rax
               	call	0x140009470 strncmp
               	test	eax, eax
               	jne	0x140002af7 _FindPESectionByName+0xa2
               	mov	rax, qword ptr [rbp - 0x8]
               	jmp	0x140002b15 _FindPESectionByName+0xc0
               	add	dword ptr [rbp - 0xc], 0x1
               	add	qword ptr [rbp - 0x8], 0x28
               	mov	rax, qword ptr [rbp - 0x20]
               	movzx	eax, word ptr [rax + 0x6]
               	movzx	eax, ax
               	cmp	dword ptr [rbp - 0xc], eax
               	jb	0x140002ad7 _FindPESectionByName+0x82
               	mov	eax, 0x0
               	add	rsp, 0x40
               	pop	rbp
               	ret

__mingw_GetSectionForAddress:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	rax, qword ptr [rip + 0x8a62] # 0x14000b590 .refptr.__ImageBase
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140002940 _ValidateImageBase
               	test	eax, eax
               	jne	0x140002b49 __mingw_GetSectionForAddress+0x2e
               	mov	eax, 0x0
               	jmp	0x140002b65 __mingw_GetSectionForAddress+0x4a
               	mov	rax, qword ptr [rbp + 0x10]
               	sub	rax, qword ptr [rbp - 0x8]
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rdx, qword ptr [rbp - 0x10]
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x1400029bc _FindPESection
               	add	rsp, 0x30
               	pop	rbp
               	ret

__mingw_GetSectionCount:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	rax, qword ptr [rip + 0x8a16] # 0x14000b590 .refptr.__ImageBase
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140002940 _ValidateImageBase
               	test	eax, eax
               	jne	0x140002b95 __mingw_GetSectionCount+0x2a
               	mov	eax, 0x0
               	jmp	0x140002bb5 __mingw_GetSectionCount+0x4a
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x3c]
               	movsxd	rdx, eax
               	mov	rax, qword ptr [rbp - 0x8]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	movzx	eax, word ptr [rax + 0x6]
               	movzx	eax, ax
               	add	rsp, 0x30
               	pop	rbp
               	ret

_FindPESectionExec:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x40
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	rax, qword ptr [rip + 0x89c2] # 0x14000b590 .refptr.__ImageBase
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	rcx, rax
               	call	0x140002940 _ValidateImageBase
               	test	eax, eax
               	jne	0x140002be9 _FindPESectionExec+0x2e
               	mov	eax, 0x0
               	jmp	0x140002c61 _FindPESectionExec+0xa6
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax + 0x3c]
               	movsxd	rdx, eax
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x20], rax
               	mov	dword ptr [rbp - 0xc], 0x0
               	mov	rax, qword ptr [rbp - 0x20]
               	movzx	eax, word ptr [rax + 0x14]
               	movzx	edx, ax
               	mov	rax, qword ptr [rbp - 0x20]
               	add	rax, rdx
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140002c4c _FindPESectionExec+0x91
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x24]
               	and	eax, 0x20000000
               	test	eax, eax
               	je	0x140002c43 _FindPESectionExec+0x88
               	cmp	qword ptr [rbp + 0x10], 0x0
               	jne	0x140002c3e _FindPESectionExec+0x83
               	mov	rax, qword ptr [rbp - 0x8]
               	jmp	0x140002c61 _FindPESectionExec+0xa6
               	sub	qword ptr [rbp + 0x10], 0x1
               	add	dword ptr [rbp - 0xc], 0x1
               	add	qword ptr [rbp - 0x8], 0x28
               	mov	rax, qword ptr [rbp - 0x20]
               	movzx	eax, word ptr [rax + 0x6]
               	movzx	eax, ax
               	cmp	dword ptr [rbp - 0xc], eax
               	jb	0x140002c21 _FindPESectionExec+0x66
               	mov	eax, 0x0
               	add	rsp, 0x40
               	pop	rbp
               	ret

_GetPEImageBase:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	rax, qword ptr [rip + 0x891a] # 0x14000b590 .refptr.__ImageBase
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140002940 _ValidateImageBase
               	test	eax, eax
               	jne	0x140002c91 _GetPEImageBase+0x2a
               	mov	eax, 0x0
               	jmp	0x140002c95 _GetPEImageBase+0x2e
               	mov	rax, qword ptr [rbp - 0x8]
               	add	rsp, 0x30
               	pop	rbp
               	ret

_IsNonwritableInCurrentImage:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x40
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	rax, qword ptr [rip + 0x88e2] # 0x14000b590 .refptr.__ImageBase
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140002940 _ValidateImageBase
               	test	eax, eax
               	jne	0x140002cc9 _IsNonwritableInCurrentImage+0x2e
               	mov	eax, 0x0
               	jmp	0x140002d06 _IsNonwritableInCurrentImage+0x6b
               	mov	rax, qword ptr [rbp + 0x10]
               	sub	rax, qword ptr [rbp - 0x8]
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rdx, qword ptr [rbp - 0x10]
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x1400029bc _FindPESection
               	mov	qword ptr [rbp - 0x18], rax
               	cmp	qword ptr [rbp - 0x18], 0x0
               	jne	0x140002cf7 _IsNonwritableInCurrentImage+0x5c
               	mov	eax, 0x0
               	jmp	0x140002d06 _IsNonwritableInCurrentImage+0x6b
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax + 0x24]
               	not	eax
               	shr	eax, 0x1f
               	movzx	eax, al
               	add	rsp, 0x40
               	pop	rbp
               	ret

__mingw_enum_import_library_names:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x50
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	rax, qword ptr [rip + 0x8872] # 0x14000b590 .refptr.__ImageBase
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	rcx, rax
               	call	0x140002940 _ValidateImageBase
               	test	eax, eax
               	jne	0x140002d3c __mingw_enum_import_library_names+0x30
               	mov	eax, 0x0
               	jmp	0x140002de7 __mingw_enum_import_library_names+0xdb
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax + 0x3c]
               	movsxd	rdx, eax
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax + 0x90]
               	mov	dword ptr [rbp - 0x1c], eax
               	cmp	dword ptr [rbp - 0x1c], 0x0
               	jne	0x140002d6b __mingw_enum_import_library_names+0x5f
               	mov	eax, 0x0
               	jmp	0x140002de7 __mingw_enum_import_library_names+0xdb
               	mov	edx, dword ptr [rbp - 0x1c]
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	rcx, rax
               	call	0x1400029bc _FindPESection
               	mov	qword ptr [rbp - 0x28], rax
               	cmp	qword ptr [rbp - 0x28], 0x0
               	jne	0x140002d8c __mingw_enum_import_library_names+0x80
               	mov	eax, 0x0
               	jmp	0x140002de7 __mingw_enum_import_library_names+0xdb
               	mov	edx, dword ptr [rbp - 0x1c]
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x8], 0x0
               	jne	0x140002da8 __mingw_enum_import_library_names+0x9c
               	mov	eax, 0x0
               	jmp	0x140002de7 __mingw_enum_import_library_names+0xdb
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x4]
               	test	eax, eax
               	jne	0x140002dbe __mingw_enum_import_library_names+0xb2
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	je	0x140002de1 __mingw_enum_import_library_names+0xd5
               	cmp	dword ptr [rbp + 0x10], 0x0
               	jg	0x140002dd6 __mingw_enum_import_library_names+0xca
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0xc]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, rdx
               	jmp	0x140002de7 __mingw_enum_import_library_names+0xdb
               	sub	dword ptr [rbp + 0x10], 0x1
               	add	qword ptr [rbp - 0x8], 0x14
               	jmp	0x140002da8 __mingw_enum_import_library_names+0x9c
               	nop
               	mov	eax, 0x0
               	add	rsp, 0x50
               	pop	rbp
               	ret
               	nop
               	nop
               	nop

___chkstk_ms:
               	push	rcx
               	push	rax
               	cmp	rax, 0x1000
               	lea	rcx, [rsp + 0x18]
               	jb	0x140002e18 ___chkstk_ms+0x28
               	sub	rcx, 0x1000
               	or	qword ptr [rcx], 0x0
               	sub	rax, 0x1000
               	cmp	rax, 0x1000
               	ja	0x140002dff ___chkstk_ms+0xf
               	sub	rcx, rax
               	or	qword ptr [rcx], 0x0
               	pop	rax
               	pop	rcx
               	ret
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
               	nop

__mingw_printf:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x48
               	lea	rbp, [rsp + 0x40]
               	mov	qword ptr [rbp + 0x20], rcx
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	qword ptr [rbp + 0x30], r8
               	mov	qword ptr [rbp + 0x38], r9
               	lea	rax, [rbp + 0x28]
               	mov	qword ptr [rbp - 0x8], rax
               	mov	ecx, 0x1
               	call	0x140009370 __acrt_iob_func
               	mov	rcx, rax
               	call	0x1400091f0 _lock_file
               	mov	rbx, qword ptr [rbp - 0x8]
               	mov	ecx, 0x1
               	call	0x140009370 __acrt_iob_func
               	mov	rdx, qword ptr [rbp + 0x20]
               	mov	qword ptr [rsp + 0x20], rbx
               	mov	r9, rdx
               	mov	r8d, 0x0
               	mov	rdx, rax
               	mov	ecx, 0x6000
               	call	0x140004e2b __mingw_pformat
               	mov	ebx, eax
               	mov	ecx, 0x1
               	call	0x140009370 __acrt_iob_func
               	mov	rcx, rax
               	call	0x14000927a _unlock_file
               	mov	eax, ebx
               	add	rsp, 0x48
               	pop	rbx
               	pop	rbp
               	ret
               	nop

__pformat_putc:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x4000
               	test	eax, eax
               	jne	0x140002ee1 __pformat_putc+0x31
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	edx, dword ptr [rax + 0x28]
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x24]
               	cmp	edx, eax
               	jle	0x140002f1c __pformat_putc+0x6c
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x2000
               	test	eax, eax
               	je	0x140002f04 __pformat_putc+0x54
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rdx, qword ptr [rax]
               	mov	eax, dword ptr [rbp + 0x10]
               	mov	ecx, eax
               	call	0x140009430 fputc
               	jmp	0x140002f1c __pformat_putc+0x6c
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rdx, qword ptr [rax]
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x24]
               	cdqe
               	add	rax, rdx
               	mov	edx, dword ptr [rbp + 0x10]
               	mov	byte ptr [rax], dl
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x24]
               	lea	edx, [rax + 0x1]
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	dword ptr [rax + 0x24], edx
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret

__pformat_putchars:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp + 0x18], edx
               	mov	qword ptr [rbp + 0x20], r8
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	js	0x140002f68 __pformat_putchars+0x34
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x10]
               	cmp	dword ptr [rbp + 0x18], eax
               	jle	0x140002f68 __pformat_putchars+0x34
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x10]
               	mov	dword ptr [rbp + 0x18], eax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0xc]
               	cmp	dword ptr [rbp + 0x18], eax
               	jge	0x140002f89 __pformat_putchars+0x55
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0xc]
               	sub	eax, dword ptr [rbp + 0x18]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	dword ptr [rax + 0xc], edx
               	jmp	0x140002f94 __pformat_putchars+0x60
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	dword ptr [rax + 0xc], 0xffffffff
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x140002ff6 __pformat_putchars+0xc2
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x400
               	test	eax, eax
               	jne	0x140002ff6 __pformat_putchars+0xc2
               	jmp	0x140002fc2 __pformat_putchars+0x8e
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x20]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jne	0x140002fb1 __pformat_putchars+0x7d
               	jmp	0x140002ff6 __pformat_putchars+0xc2
               	mov	rax, qword ptr [rbp + 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp + 0x10], rdx
               	movzx	eax, byte ptr [rax]
               	movsx	eax, al
               	mov	rdx, qword ptr [rbp + 0x20]
               	mov	ecx, eax
               	call	0x140002eb0 __pformat_putc
               	mov	eax, dword ptr [rbp + 0x18]
               	lea	edx, [rax - 0x1]
               	mov	dword ptr [rbp + 0x18], edx
               	test	eax, eax
               	jne	0x140002fd9 __pformat_putchars+0xa5
               	jmp	0x140003016 __pformat_putchars+0xe2
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x20]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x140003005 __pformat_putchars+0xd1
               	nop
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret

__pformat_puts:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	cmp	qword ptr [rbp + 0x10], 0x0
               	jne	0x140003055 __pformat_puts+0x22
               	lea	rax, [rip + 0x831f]     # 0x14000b370 .rdata
               	mov	qword ptr [rbp + 0x10], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	js	0x14000308f __pformat_puts+0x5c
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x10]
               	movsxd	rdx, eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140008cf0 strnlen
               	mov	ecx, eax
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	r8, rdx
               	mov	edx, ecx
               	mov	rcx, rax
               	call	0x140002f34 __pformat_putchars
               	jmp	0x1400030b2 __pformat_puts+0x7f
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140009468 strlen
               	mov	ecx, eax
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	r8, rdx
               	mov	edx, ecx
               	mov	rcx, rax
               	call	0x140002f34 __pformat_putchars
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret

__pformat_wputchars:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x50
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp + 0x18], edx
               	mov	qword ptr [rbp + 0x20], r8
               	lea	rdx, [rbp - 0x28]
               	lea	rax, [rbp - 0x20]
               	mov	r8, rdx
               	mov	edx, 0x0
               	mov	rcx, rax
               	call	0x140008b20 wcrtomb
               	mov	dword ptr [rbp - 0x4], eax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	js	0x140003108 __pformat_wputchars+0x4f
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x10]
               	cmp	dword ptr [rbp + 0x18], eax
               	jle	0x140003108 __pformat_wputchars+0x4f
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x10]
               	mov	dword ptr [rbp + 0x18], eax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0xc]
               	cmp	dword ptr [rbp + 0x18], eax
               	jge	0x140003129 __pformat_wputchars+0x70
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0xc]
               	sub	eax, dword ptr [rbp + 0x18]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	dword ptr [rax + 0xc], edx
               	jmp	0x140003134 __pformat_wputchars+0x7b
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	dword ptr [rax + 0xc], 0xffffffff
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x1400031ad __pformat_wputchars+0xf4
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x400
               	test	eax, eax
               	jne	0x1400031ad __pformat_wputchars+0xf4
               	jmp	0x140003162 __pformat_wputchars+0xa9
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x20]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jne	0x140003151 __pformat_wputchars+0x98
               	jmp	0x1400031ad __pformat_wputchars+0xf4
               	lea	rax, [rbp - 0x20]
               	mov	qword ptr [rbp - 0x10], rax
               	jmp	0x1400031a0 __pformat_wputchars+0xe7
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	movzx	eax, byte ptr [rax]
               	movsx	eax, al
               	mov	rdx, qword ptr [rbp + 0x20]
               	mov	ecx, eax
               	call	0x140002eb0 __pformat_putc
               	mov	eax, dword ptr [rbp - 0x4]
               	lea	edx, [rax - 0x1]
               	mov	dword ptr [rbp - 0x4], edx
               	test	eax, eax
               	jg	0x140003183 __pformat_wputchars+0xca
               	mov	eax, dword ptr [rbp + 0x18]
               	lea	edx, [rax - 0x1]
               	mov	dword ptr [rbp + 0x18], edx
               	test	eax, eax
               	jle	0x1400031fb __pformat_wputchars+0x142
               	mov	rax, qword ptr [rbp + 0x10]
               	lea	rdx, [rax + 0x2]
               	mov	qword ptr [rbp + 0x10], rdx
               	movzx	eax, word ptr [rax]
               	movzx	edx, ax
               	lea	rcx, [rbp - 0x28]
               	lea	rax, [rbp - 0x20]
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140008b20 wcrtomb
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jg	0x140003179 __pformat_wputchars+0xc0
               	jmp	0x1400031fb __pformat_wputchars+0x142
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x20]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x1400031ea __pformat_wputchars+0x131
               	nop
               	nop
               	add	rsp, 0x50
               	pop	rbp
               	ret

__pformat_wcputs:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	cmp	qword ptr [rbp + 0x10], 0x0
               	jne	0x14000323a __pformat_wcputs+0x22
               	lea	rax, [rip + 0x8142]     # 0x14000b378 .rdata+0x8
               	mov	qword ptr [rbp + 0x10], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	js	0x140003274 __pformat_wcputs+0x5c
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x10]
               	movsxd	rdx, eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140008a10 wcsnlen
               	mov	ecx, eax
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	r8, rdx
               	mov	edx, ecx
               	mov	rcx, rax
               	call	0x1400030b9 __pformat_wputchars
               	jmp	0x140003297 __pformat_wcputs+0x7f
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140009480 wcslen
               	mov	ecx, eax
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	r8, rdx
               	mov	edx, ecx
               	mov	rcx, rax
               	call	0x1400030b9 __pformat_wputchars
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret

__pformat_int_bufsiz:
               	push	rbp
               	mov	rbp, rsp
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	dword ptr [rbp + 0x18], edx
               	mov	qword ptr [rbp + 0x20], r8
               	mov	eax, dword ptr [rbp + 0x18]
               	sub	eax, 0x1
               	cdqe
               	add	rax, 0x40
               	mov	edx, dword ptr [rbp + 0x18]
               	movsxd	rcx, edx
               	mov	edx, 0x0
               	div	rcx
               	mov	edx, eax
               	mov	eax, dword ptr [rbp + 0x10]
               	add	eax, edx
               	mov	dword ptr [rbp + 0x18], eax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x10]
               	mov	edx, 0x0
               	test	eax, eax
               	cmovs	eax, edx
               	add	dword ptr [rbp + 0x18], eax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x1000
               	test	eax, eax
               	je	0x14000331d __pformat_int_bufsiz+0x7f
               	mov	rax, qword ptr [rbp + 0x20]
               	movzx	eax, word ptr [rax + 0x20]
               	test	ax, ax
               	je	0x14000331d __pformat_int_bufsiz+0x7f
               	mov	eax, dword ptr [rbp + 0x18]
               	movsxd	rdx, eax
               	imul	rdx, rdx, 0x55555556
               	mov	rcx, rdx
               	shr	rcx, 0x20
               	cdq
               	mov	eax, ecx
               	sub	eax, edx
               	add	dword ptr [rbp + 0x18], eax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	edx, dword ptr [rax + 0xc]
               	mov	eax, dword ptr [rbp + 0x18]
               	cmp	edx, eax
               	cmovge	eax, edx
               	pop	rbp
               	ret

__pformat_int:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x58
               	lea	rbp, [rsp + 0x50]
               	mov	rbx, rcx
               	mov	rcx, qword ptr [rbx]
               	mov	rbx, qword ptr [rbx + 0x8]
               	mov	qword ptr [rbp - 0x30], rcx
               	mov	qword ptr [rbp - 0x28], rbx
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	r8, rax
               	mov	edx, 0x3
               	mov	ecx, 0x1
               	call	0x14000329e __pformat_int_bufsiz
               	mov	dword ptr [rbp - 0x10], eax
               	mov	qword ptr [rbp - 0x18], 0x0
               	mov	eax, dword ptr [rbp - 0x10]
               	cdqe
               	add	rax, 0xf
               	shr	rax, 0x4
               	shl	rax, 0x4
               	call	0x140002df0 ___chkstk_ms
               	sub	rsp, rax
               	lea	rax, [rsp + 0x20]
               	add	rax, 0xf
               	shr	rax, 0x4
               	shl	rax, 0x4
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x80
               	test	eax, eax
               	je	0x1400034a4 __pformat_int+0x176
               	mov	rax, qword ptr [rbp - 0x30]
               	test	rax, rax
               	jns	0x1400033d3 __pformat_int+0xa5
               	mov	rax, qword ptr [rbp - 0x30]
               	neg	rax
               	mov	qword ptr [rbp - 0x30], rax
               	jmp	0x1400034a4 __pformat_int+0x176
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	al, 0x7f
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x8], edx
               	jmp	0x1400034a4 __pformat_int+0x176
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	rax, qword ptr [rbp - 0x18]
               	je	0x140003448 __pformat_int+0x11a
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x1000
               	test	eax, eax
               	je	0x140003448 __pformat_int+0x11a
               	mov	rax, qword ptr [rbp + 0x28]
               	movzx	eax, word ptr [rax + 0x20]
               	test	ax, ax
               	je	0x140003448 __pformat_int+0x11a
               	mov	rax, qword ptr [rbp - 0x8]
               	sub	rax, qword ptr [rbp - 0x18]
               	mov	rdx, rax
               	mov	rax, rdx
               	sar	rax, 0x3f
               	shr	rax, 0x3e
               	add	rdx, rax
               	and	edx, 0x3
               	sub	rdx, rax
               	mov	rax, rdx
               	cmp	rax, 0x3
               	jne	0x140003448 __pformat_int+0x11a
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], 0x2c
               	mov	rcx, qword ptr [rbp - 0x30]
               	movabs	rdx, -0x3333333333333333
               	mov	rax, rcx
               	mul	rdx
               	shr	rdx, 0x3
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	add	rax, rax
               	sub	rcx, rax
               	mov	rdx, rcx
               	mov	eax, edx
               	lea	ecx, [rax + 0x30]
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	edx, ecx
               	mov	byte ptr [rax], dl
               	mov	rax, qword ptr [rbp - 0x30]
               	movabs	rdx, -0x3333333333333333
               	mul	rdx
               	mov	rax, rdx
               	shr	rax, 0x3
               	mov	qword ptr [rbp - 0x30], rax
               	mov	rax, qword ptr [rbp - 0x30]
               	test	rax, rax
               	jne	0x1400033ea __pformat_int+0xbc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jle	0x1400034fa __pformat_int+0x1cc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	mov	ecx, eax
               	mov	rax, qword ptr [rbp - 0x8]
               	sub	rax, qword ptr [rbp - 0x18]
               	mov	edx, eax
               	mov	eax, ecx
               	sub	eax, edx
               	mov	dword ptr [rbp - 0xc], eax
               	cmp	dword ptr [rbp - 0xc], 0x0
               	jle	0x1400034fa __pformat_int+0x1cc
               	jmp	0x1400034ed __pformat_int+0x1bf
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], 0x30
               	mov	eax, dword ptr [rbp - 0xc]
               	lea	edx, [rax - 0x1]
               	mov	dword ptr [rbp - 0xc], edx
               	test	eax, eax
               	jg	0x1400034de __pformat_int+0x1b0
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	rax, qword ptr [rbp - 0x18]
               	jne	0x14000351e __pformat_int+0x1f0
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	je	0x14000351e __pformat_int+0x1f0
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], 0x30
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x1400035fb __pformat_int+0x2cd
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	mov	ecx, eax
               	mov	rax, qword ptr [rbp - 0x8]
               	sub	rax, qword ptr [rbp - 0x18]
               	mov	edx, eax
               	mov	eax, ecx
               	sub	eax, edx
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x1400035fb __pformat_int+0x2cd
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x1c0
               	test	eax, eax
               	je	0x14000357d __pformat_int+0x24f
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jns	0x1400035c3 __pformat_int+0x295
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x600
               	cmp	eax, 0x200
               	jne	0x1400035c3 __pformat_int+0x295
               	jmp	0x1400035ac __pformat_int+0x27e
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], 0x30
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x14000359d __pformat_int+0x26f
               	jmp	0x1400035fb __pformat_int+0x2cd
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x400
               	test	eax, eax
               	jne	0x1400035fb __pformat_int+0x2cd
               	jmp	0x1400035e6 __pformat_int+0x2b8
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x1400035d5 __pformat_int+0x2a7
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x80
               	test	eax, eax
               	je	0x14000361c __pformat_int+0x2ee
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], 0x2d
               	jmp	0x140003676 __pformat_int+0x348
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x100
               	test	eax, eax
               	je	0x14000363d __pformat_int+0x30f
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], 0x2b
               	jmp	0x140003676 __pformat_int+0x348
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x40
               	test	eax, eax
               	je	0x140003676 __pformat_int+0x348
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], 0x20
               	jmp	0x140003676 __pformat_int+0x348
               	sub	qword ptr [rbp - 0x8], 0x1
               	mov	rax, qword ptr [rbp - 0x8]
               	movzx	eax, byte ptr [rax]
               	movsx	eax, al
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	ecx, eax
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	qword ptr [rbp - 0x18], rax
               	jb	0x14000365c __pformat_int+0x32e
               	jmp	0x140003693 __pformat_int+0x365
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x140003682 __pformat_int+0x354
               	nop
               	nop
               	lea	rsp, [rbp + 0x8]
               	pop	rbx
               	pop	rbp
               	ret

__pformat_xint:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x68
               	lea	rbp, [rsp + 0x60]
               	mov	dword ptr [rbp + 0x20], ecx
               	mov	rbx, rdx
               	mov	rax, qword ptr [rbx]
               	mov	rdx, qword ptr [rbx + 0x8]
               	mov	qword ptr [rbp - 0x40], rax
               	mov	qword ptr [rbp - 0x38], rdx
               	mov	qword ptr [rbp + 0x30], r8
               	cmp	dword ptr [rbp + 0x20], 0x6f
               	jne	0x1400036e4 __pformat_xint+0x33
               	mov	dword ptr [rbp - 0x8], 0x3
               	jmp	0x1400036eb __pformat_xint+0x3a
               	mov	dword ptr [rbp - 0x8], 0x4
               	mov	rdx, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rbp - 0x8]
               	mov	r8, rdx
               	mov	edx, eax
               	mov	ecx, 0x2
               	call	0x14000329e __pformat_int_bufsiz
               	mov	dword ptr [rbp - 0x18], eax
               	mov	qword ptr [rbp - 0x20], 0x0
               	mov	eax, dword ptr [rbp - 0x18]
               	cdqe
               	add	rax, 0xf
               	shr	rax, 0x4
               	shl	rax, 0x4
               	call	0x140002df0 ___chkstk_ms
               	sub	rsp, rax
               	lea	rax, [rsp + 0x20]
               	add	rax, 0xf
               	shr	rax, 0x4
               	shl	rax, 0x4
               	mov	qword ptr [rbp - 0x20], rax
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	dword ptr [rbp + 0x20], 0x6f
               	jne	0x140003751 __pformat_xint+0xa0
               	mov	dword ptr [rbp - 0x14], 0x7
               	jmp	0x1400037b8 __pformat_xint+0x107
               	mov	dword ptr [rbp - 0x14], 0xf
               	jmp	0x1400037b8 __pformat_xint+0x107
               	mov	rax, qword ptr [rbp - 0x40]
               	mov	edx, eax
               	mov	eax, dword ptr [rbp - 0x14]
               	and	eax, edx
               	lea	ecx, [rax + 0x30]
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	qword ptr [rbp - 0x28], rax
               	mov	edx, ecx
               	mov	rax, qword ptr [rbp - 0x28]
               	mov	byte ptr [rax], dl
               	mov	rax, qword ptr [rbp - 0x28]
               	movzx	eax, byte ptr [rax]
               	cmp	al, 0x39
               	jle	0x1400037a5 __pformat_xint+0xf4
               	mov	rax, qword ptr [rbp - 0x28]
               	movzx	eax, byte ptr [rax]
               	add	eax, 0x7
               	mov	edx, eax
               	mov	eax, dword ptr [rbp + 0x20]
               	and	eax, 0x20
               	or	edx, eax
               	mov	rax, qword ptr [rbp - 0x28]
               	mov	byte ptr [rax], dl
               	mov	rdx, qword ptr [rbp - 0x40]
               	mov	eax, dword ptr [rbp - 0x8]
               	mov	ecx, eax
               	shr	rdx, cl
               	mov	rax, rdx
               	mov	qword ptr [rbp - 0x40], rax
               	mov	rax, qword ptr [rbp - 0x40]
               	test	rax, rax
               	jne	0x14000375a __pformat_xint+0xa9
               	mov	rax, qword ptr [rbp - 0x10]
               	cmp	rax, qword ptr [rbp - 0x20]
               	jne	0x1400037de __pformat_xint+0x12d
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0x8]
               	and	ah, -0x9
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	dword ptr [rax + 0x8], edx
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0x10]
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jle	0x140003828 __pformat_xint+0x177
               	mov	edx, dword ptr [rbp - 0x4]
               	mov	rax, qword ptr [rbp - 0x10]
               	sub	rax, qword ptr [rbp - 0x20]
               	mov	ecx, eax
               	mov	eax, edx
               	sub	eax, ecx
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jle	0x140003828 __pformat_xint+0x177
               	jmp	0x140003819 __pformat_xint+0x168
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	byte ptr [rax], 0x30
               	mov	eax, dword ptr [rbp - 0x4]
               	lea	edx, [rax - 0x1]
               	mov	dword ptr [rbp - 0x4], edx
               	test	eax, eax
               	jg	0x14000380a __pformat_xint+0x159
               	jmp	0x14000384d __pformat_xint+0x19c
               	cmp	dword ptr [rbp + 0x20], 0x6f
               	jne	0x14000384d __pformat_xint+0x19c
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x800
               	test	eax, eax
               	je	0x14000384d __pformat_xint+0x19c
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	byte ptr [rax], 0x30
               	mov	rax, qword ptr [rbp - 0x10]
               	cmp	rax, qword ptr [rbp - 0x20]
               	jne	0x140003871 __pformat_xint+0x1c0
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	je	0x140003871 __pformat_xint+0x1c0
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	byte ptr [rax], 0x30
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0xc]
               	mov	rdx, qword ptr [rbp - 0x10]
               	sub	rdx, qword ptr [rbp - 0x20]
               	mov	dword ptr [rbp - 0x4], edx
               	cmp	dword ptr [rbp - 0x4], eax
               	jge	0x14000389d __pformat_xint+0x1ec
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0xc]
               	sub	eax, dword ptr [rbp - 0x4]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	dword ptr [rax + 0xc], edx
               	jmp	0x1400038a8 __pformat_xint+0x1f7
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	dword ptr [rax + 0xc], 0xffffffff
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0xc]
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jle	0x1400038d2 __pformat_xint+0x221
               	cmp	dword ptr [rbp + 0x20], 0x6f
               	je	0x1400038d2 __pformat_xint+0x221
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x800
               	test	eax, eax
               	je	0x1400038d2 __pformat_xint+0x221
               	sub	dword ptr [rbp - 0x4], 0x2
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jle	0x140003914 __pformat_xint+0x263
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jns	0x140003914 __pformat_xint+0x263
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x600
               	cmp	eax, 0x200
               	jne	0x140003914 __pformat_xint+0x263
               	jmp	0x140003907 __pformat_xint+0x256
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	byte ptr [rax], 0x30
               	mov	eax, dword ptr [rbp - 0x4]
               	lea	edx, [rax - 0x1]
               	mov	dword ptr [rbp - 0x4], edx
               	test	eax, eax
               	jg	0x1400038f8 __pformat_xint+0x247
               	cmp	dword ptr [rbp + 0x20], 0x6f
               	je	0x14000394a __pformat_xint+0x299
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x800
               	test	eax, eax
               	je	0x14000394a __pformat_xint+0x299
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	edx, dword ptr [rbp + 0x20]
               	mov	byte ptr [rax], dl
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	byte ptr [rax], 0x30
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jle	0x14000399c __pformat_xint+0x2eb
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x400
               	test	eax, eax
               	jne	0x14000399c __pformat_xint+0x2eb
               	jmp	0x140003973 __pformat_xint+0x2c2
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	eax, dword ptr [rbp - 0x4]
               	lea	edx, [rax - 0x1]
               	mov	dword ptr [rbp - 0x4], edx
               	test	eax, eax
               	jg	0x140003962 __pformat_xint+0x2b1
               	jmp	0x14000399c __pformat_xint+0x2eb
               	sub	qword ptr [rbp - 0x10], 0x1
               	mov	rax, qword ptr [rbp - 0x10]
               	movzx	eax, byte ptr [rax]
               	movsx	eax, al
               	mov	rdx, qword ptr [rbp + 0x30]
               	mov	ecx, eax
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp - 0x10]
               	cmp	qword ptr [rbp - 0x20], rax
               	jb	0x140003982 __pformat_xint+0x2d1
               	jmp	0x1400039b9 __pformat_xint+0x308
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	eax, dword ptr [rbp - 0x4]
               	lea	edx, [rax - 0x1]
               	mov	dword ptr [rbp - 0x4], edx
               	test	eax, eax
               	jg	0x1400039a8 __pformat_xint+0x2f7
               	nop
               	nop
               	lea	rsp, [rbp + 0x8]
               	pop	rbx
               	pop	rbp
               	ret

init_fpreg_ldouble:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x28
               	lea	rbp, [rsp + 0x20]
               	mov	qword ptr [rbp + 0x20], rcx
               	mov	rbx, rdx
               	fld	tbyte ptr [rbx]
               	fstp	tbyte ptr [rbp - 0x20]
               	fld	tbyte ptr [rbp - 0x20]
               	fstp	tbyte ptr [rbp - 0x10]
               	mov	rcx, qword ptr [rbp + 0x20]
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	qword ptr [rcx], rax
               	mov	qword ptr [rcx + 0x8], rdx
               	mov	rax, qword ptr [rbp + 0x20]
               	add	rsp, 0x28
               	pop	rbx
               	pop	rbp
               	ret

__pformat_cvt:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x88
               	lea	rbp, [rsp + 0x80]
               	mov	dword ptr [rbp + 0x20], ecx
               	mov	rbx, rdx
               	fld	tbyte ptr [rbx]
               	fstp	tbyte ptr [rbp - 0x30]
               	mov	dword ptr [rbp + 0x30], r8d
               	mov	qword ptr [rbp + 0x38], r9
               	mov	dword ptr [rbp - 0x4], 0x0
               	lea	rax, [rbp - 0x20]
               	fld	tbyte ptr [rbp - 0x30]
               	fstp	tbyte ptr [rbp - 0x40]
               	lea	rdx, [rbp - 0x40]
               	mov	rcx, rax
               	call	0x1400039cf init_fpreg_ldouble
               	fld	tbyte ptr [rbp - 0x30]
               	fstp	tbyte ptr [rbp - 0x40]
               	lea	rax, [rbp - 0x40]
               	mov	rcx, rax
               	call	0x1400088b0 __fpclassifyl
               	mov	dword ptr [rbp - 0x8], eax
               	mov	eax, dword ptr [rbp - 0x8]
               	and	eax, 0x100
               	test	eax, eax
               	je	0x140003a89 __pformat_cvt+0x7f
               	mov	eax, dword ptr [rbp - 0x8]
               	and	eax, 0x400
               	test	eax, eax
               	je	0x140003a7f __pformat_cvt+0x75
               	mov	eax, 0x3
               	jmp	0x140003a84 __pformat_cvt+0x7a
               	mov	eax, 0x4
               	mov	dword ptr [rbp - 0x8], eax
               	jmp	0x140003ad3 __pformat_cvt+0xc9
               	mov	eax, dword ptr [rbp - 0x8]
               	and	eax, 0x400
               	test	eax, eax
               	je	0x140003acc __pformat_cvt+0xc2
               	mov	eax, dword ptr [rbp - 0x8]
               	and	eax, 0x4000
               	test	eax, eax
               	je	0x140003ab1 __pformat_cvt+0xa7
               	mov	dword ptr [rbp - 0x8], 0x2
               	mov	dword ptr [rbp - 0x4], 0xffffbfc3
               	jmp	0x140003ad3 __pformat_cvt+0xc9
               	mov	dword ptr [rbp - 0x8], 0x1
               	movzx	eax, word ptr [rbp - 0x18]
               	cwde
               	and	eax, 0x7fff
               	sub	eax, 0x403e
               	mov	dword ptr [rbp - 0x4], eax
               	jmp	0x140003ad3 __pformat_cvt+0xc9
               	mov	dword ptr [rbp - 0x8], 0x0
               	mov	eax, dword ptr [rbp - 0x8]
               	cmp	eax, 0x4
               	je	0x140003ae9 __pformat_cvt+0xdf
               	movzx	eax, word ptr [rbp - 0x18]
               	cwde
               	and	eax, 0x8000
               	mov	edx, eax
               	jmp	0x140003aee __pformat_cvt+0xe4
               	mov	edx, 0x0
               	mov	rax, qword ptr [rbp + 0x40]
               	mov	dword ptr [rax], edx
               	mov	eax, dword ptr [rbp - 0x4]
               	lea	r9, [rbp - 0x8]
               	lea	r8, [rbp - 0x20]
               	lea	rcx, [rip + 0x656a]     # 0x14000a070 fpi.0
               	lea	rdx, [rbp - 0x10]
               	mov	qword ptr [rsp + 0x38], rdx
               	mov	rdx, qword ptr [rbp + 0x38]
               	mov	qword ptr [rsp + 0x30], rdx
               	mov	edx, dword ptr [rbp + 0x30]
               	mov	dword ptr [rsp + 0x28], edx
               	mov	edx, dword ptr [rbp + 0x20]
               	mov	dword ptr [rsp + 0x20], edx
               	mov	edx, eax
               	call	0x140005f7a __gdtoa
               	add	rsp, 0x88
               	pop	rbx
               	pop	rbp
               	ret

__pformat_ecvt:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x58
               	lea	rbp, [rsp + 0x50]
               	mov	rbx, rcx
               	fld	tbyte ptr [rbx]
               	fstp	tbyte ptr [rbp - 0x10]
               	mov	dword ptr [rbp + 0x28], edx
               	mov	qword ptr [rbp + 0x30], r8
               	mov	qword ptr [rbp + 0x38], r9
               	fld	tbyte ptr [rbp - 0x10]
               	fstp	tbyte ptr [rbp - 0x20]
               	mov	r8, qword ptr [rbp + 0x30]
               	mov	ecx, dword ptr [rbp + 0x28]
               	lea	rax, [rbp - 0x20]
               	mov	rdx, qword ptr [rbp + 0x38]
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	r9, r8
               	mov	r8d, ecx
               	mov	rdx, rax
               	mov	ecx, 0x2
               	call	0x140003a0a __pformat_cvt
               	add	rsp, 0x58
               	pop	rbx
               	pop	rbp
               	ret

__pformat_fcvt:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x58
               	lea	rbp, [rsp + 0x50]
               	mov	rbx, rcx
               	fld	tbyte ptr [rbx]
               	fstp	tbyte ptr [rbp - 0x10]
               	mov	dword ptr [rbp + 0x28], edx
               	mov	qword ptr [rbp + 0x30], r8
               	mov	qword ptr [rbp + 0x38], r9
               	fld	tbyte ptr [rbp - 0x10]
               	fstp	tbyte ptr [rbp - 0x20]
               	mov	r8, qword ptr [rbp + 0x30]
               	mov	ecx, dword ptr [rbp + 0x28]
               	lea	rax, [rbp - 0x20]
               	mov	rdx, qword ptr [rbp + 0x38]
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	r9, r8
               	mov	r8d, ecx
               	mov	rdx, rax
               	mov	ecx, 0x3
               	call	0x140003a0a __pformat_cvt
               	add	rsp, 0x58
               	pop	rbx
               	pop	rbp
               	ret

__pformat_emit_radix_point:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x68
               	lea	rbp, [rsp + 0x60]
               	mov	qword ptr [rbp + 0x20], rcx
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x14]
               	cmp	eax, -0x3
               	jne	0x140003c3e __pformat_emit_radix_point+0x63
               	mov	qword ptr [rbp - 0x34], 0x0
               	call	0x140009440 localeconv
               	mov	rdx, qword ptr [rax]
               	lea	rcx, [rbp - 0x34]
               	lea	rax, [rbp - 0x2a]
               	mov	r9, rcx
               	mov	r8d, 0x10
               	mov	rcx, rax
               	call	0x140008f0e mbrtowc
               	mov	dword ptr [rbp - 0x14], eax
               	cmp	dword ptr [rbp - 0x14], 0x0
               	jle	0x140003c34 __pformat_emit_radix_point+0x59
               	movzx	edx, word ptr [rbp - 0x2a]
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	word ptr [rax + 0x18], dx
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	edx, dword ptr [rbp - 0x14]
               	mov	dword ptr [rax + 0x14], edx
               	mov	rax, qword ptr [rbp + 0x20]
               	movzx	eax, word ptr [rax + 0x18]
               	test	ax, ax
               	je	0x140003d07 __pformat_emit_radix_point+0x12c
               	mov	rax, rsp
               	mov	rbx, rax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x4], eax
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	sub	rdx, 0x1
               	mov	qword ptr [rbp - 0x20], rdx
               	cdqe
               	add	rax, 0xf
               	shr	rax, 0x4
               	shl	rax, 0x4
               	call	0x140002df0 ___chkstk_ms
               	sub	rsp, rax
               	lea	rax, [rsp + 0x20]
               	mov	qword ptr [rbp - 0x28], rax
               	mov	qword ptr [rbp - 0x3c], 0x0
               	mov	rax, qword ptr [rbp + 0x20]
               	movzx	eax, word ptr [rax + 0x18]
               	movzx	edx, ax
               	lea	rcx, [rbp - 0x3c]
               	mov	rax, qword ptr [rbp - 0x28]
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140008b20 wcrtomb
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jle	0x140003cf1 __pformat_emit_radix_point+0x116
               	mov	rax, qword ptr [rbp - 0x28]
               	mov	qword ptr [rbp - 0x10], rax
               	jmp	0x140003ce2 __pformat_emit_radix_point+0x107
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	movzx	eax, byte ptr [rax]
               	movsx	eax, al
               	mov	rdx, qword ptr [rbp + 0x20]
               	mov	ecx, eax
               	call	0x140002eb0 __pformat_putc
               	mov	eax, dword ptr [rbp - 0x4]
               	lea	edx, [rax - 0x1]
               	mov	dword ptr [rbp - 0x4], edx
               	test	eax, eax
               	jg	0x140003cc5 __pformat_emit_radix_point+0xea
               	jmp	0x140003d02 __pformat_emit_radix_point+0x127
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	rdx, rax
               	mov	ecx, 0x2e
               	call	0x140002eb0 __pformat_putc
               	mov	rsp, rbx
               	jmp	0x140003d18 __pformat_emit_radix_point+0x13d
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	rdx, rax
               	mov	ecx, 0x2e
               	call	0x140002eb0 __pformat_putc
               	nop
               	lea	rsp, [rbp + 0x8]
               	pop	rbx
               	pop	rbp
               	ret

__pformat_emit_numeric_value:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	qword ptr [rbp + 0x18], rdx
               	cmp	dword ptr [rbp + 0x10], 0x2e
               	jne	0x140003d43 __pformat_emit_numeric_value+0x23
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rcx, rax
               	call	0x140003bdb __pformat_emit_radix_point
               	jmp	0x140003d86 __pformat_emit_numeric_value+0x66
               	cmp	dword ptr [rbp + 0x10], 0x2c
               	jne	0x140003d78 __pformat_emit_numeric_value+0x58
               	mov	rax, qword ptr [rbp + 0x18]
               	movzx	eax, word ptr [rax + 0x20]
               	mov	word ptr [rbp - 0x2], ax
               	movzx	eax, word ptr [rbp - 0x2]
               	test	ax, ax
               	je	0x140003d86 __pformat_emit_numeric_value+0x66
               	mov	rdx, qword ptr [rbp + 0x18]
               	lea	rax, [rbp - 0x2]
               	mov	r8, rdx
               	mov	edx, 0x1
               	mov	rcx, rax
               	call	0x1400030b9 __pformat_wputchars
               	jmp	0x140003d86 __pformat_emit_numeric_value+0x66
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rbp + 0x10]
               	mov	ecx, eax
               	call	0x140002eb0 __pformat_putc
               	nop
               	add	rsp, 0x30
               	pop	rbp
               	ret

__pformat_emit_inf_or_nan:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x40
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	qword ptr [rbp + 0x20], r8
               	lea	rax, [rbp - 0x14]
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	dword ptr [rax + 0x10], 0xffffffff
               	cmp	dword ptr [rbp + 0x10], 0x0
               	je	0x140003dca __pformat_emit_inf_or_nan+0x3d
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	byte ptr [rax], 0x2d
               	jmp	0x140003e08 __pformat_emit_inf_or_nan+0x7b
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x100
               	test	eax, eax
               	je	0x140003deb __pformat_emit_inf_or_nan+0x5e
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	byte ptr [rax], 0x2b
               	jmp	0x140003e08 __pformat_emit_inf_or_nan+0x7b
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x40
               	test	eax, eax
               	je	0x140003e08 __pformat_emit_inf_or_nan+0x7b
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	byte ptr [rax], 0x20
               	mov	dword ptr [rbp - 0x4], 0x3
               	jmp	0x140003e49 __pformat_emit_inf_or_nan+0xbc
               	mov	rax, qword ptr [rbp + 0x18]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp + 0x18], rdx
               	movzx	eax, byte ptr [rax]
               	and	eax, -0x21
               	mov	r8d, eax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x20
               	mov	ecx, eax
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	edx, r8d
               	or	edx, ecx
               	mov	byte ptr [rax], dl
               	sub	dword ptr [rbp - 0x4], 0x1
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jg	0x140003e11 __pformat_emit_inf_or_nan+0x84
               	lea	rax, [rbp - 0x14]
               	mov	rdx, qword ptr [rbp - 0x10]
               	sub	rdx, rax
               	mov	ecx, edx
               	mov	rdx, qword ptr [rbp + 0x20]
               	lea	rax, [rbp - 0x14]
               	mov	r8, rdx
               	mov	edx, ecx
               	mov	rcx, rax
               	call	0x140002f34 __pformat_putchars
               	nop
               	add	rsp, 0x40
               	pop	rbp
               	ret

__pformat_emit_float:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	dword ptr [rbp + 0x20], r8d
               	mov	qword ptr [rbp + 0x28], r9
               	cmp	dword ptr [rbp + 0x20], 0x0
               	jle	0x140003ec3 __pformat_emit_float+0x4b
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	cmp	dword ptr [rbp + 0x20], eax
               	jg	0x140003eb6 __pformat_emit_float+0x3e
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	sub	eax, dword ptr [rbp + 0x20]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	jmp	0x140003edf __pformat_emit_float+0x67
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], 0xffffffff
               	jmp	0x140003edf __pformat_emit_float+0x67
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x140003edf __pformat_emit_float+0x67
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	js	0x140003f15 __pformat_emit_float+0x9d
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, dword ptr [rax + 0xc]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	cmp	edx, eax
               	jle	0x140003f15 __pformat_emit_float+0x9d
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, dword ptr [rax + 0xc]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	sub	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	jmp	0x140003f20 __pformat_emit_float+0xa8
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], 0xffffffff
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x140003f57 __pformat_emit_float+0xdf
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jg	0x140003f46 __pformat_emit_float+0xce
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x800
               	test	eax, eax
               	je	0x140003f57 __pformat_emit_float+0xdf
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	cmp	dword ptr [rbp + 0x20], 0x0
               	jle	0x140003fc1 __pformat_emit_float+0x149
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x1000
               	test	eax, eax
               	je	0x140003fc1 __pformat_emit_float+0x149
               	mov	rax, qword ptr [rbp + 0x28]
               	movzx	eax, word ptr [rax + 0x20]
               	test	ax, ax
               	je	0x140003fc1 __pformat_emit_float+0x149
               	mov	eax, dword ptr [rbp + 0x20]
               	add	eax, 0x2
               	movsxd	rdx, eax
               	imul	rdx, rdx, 0x55555556
               	shr	rdx, 0x20
               	sar	eax, 0x1f
               	sub	edx, eax
               	lea	eax, [rdx - 0x1]
               	mov	dword ptr [rbp - 0x4], eax
               	jmp	0x140003fb0 __pformat_emit_float+0x138
               	sub	dword ptr [rbp - 0x4], 0x1
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jle	0x140003fc1 __pformat_emit_float+0x149
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jg	0x140003f9b __pformat_emit_float+0x123
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x140003ff3 __pformat_emit_float+0x17b
               	cmp	dword ptr [rbp + 0x10], 0x0
               	jne	0x140003fe2 __pformat_emit_float+0x16a
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x1c0
               	test	eax, eax
               	je	0x140003ff3 __pformat_emit_float+0x17b
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x140004036 __pformat_emit_float+0x1be
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x600
               	test	eax, eax
               	jne	0x140004036 __pformat_emit_float+0x1be
               	jmp	0x140004021 __pformat_emit_float+0x1a9
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x140004010 __pformat_emit_float+0x198
               	cmp	dword ptr [rbp + 0x10], 0x0
               	je	0x14000404f __pformat_emit_float+0x1d7
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x2d
               	call	0x140002eb0 __pformat_putc
               	jmp	0x140004091 __pformat_emit_float+0x219
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x100
               	test	eax, eax
               	je	0x140004072 __pformat_emit_float+0x1fa
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x2b
               	call	0x140002eb0 __pformat_putc
               	jmp	0x140004091 __pformat_emit_float+0x219
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x40
               	test	eax, eax
               	je	0x140004091 __pformat_emit_float+0x219
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x1400040d7 __pformat_emit_float+0x25f
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x600
               	cmp	eax, 0x200
               	jne	0x1400040d7 __pformat_emit_float+0x25f
               	jmp	0x1400040c2 __pformat_emit_float+0x24a
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x30
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x1400040b1 __pformat_emit_float+0x239
               	cmp	dword ptr [rbp + 0x20], 0x0
               	jle	0x140004188 __pformat_emit_float+0x310
               	mov	rax, qword ptr [rbp + 0x18]
               	movzx	eax, byte ptr [rax]
               	test	al, al
               	je	0x140004100 __pformat_emit_float+0x288
               	mov	rax, qword ptr [rbp + 0x18]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp + 0x18], rdx
               	movzx	eax, byte ptr [rax]
               	movsx	eax, al
               	jmp	0x140004105 __pformat_emit_float+0x28d
               	mov	eax, 0x30
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	ecx, eax
               	call	0x140002eb0 __pformat_putc
               	sub	dword ptr [rbp + 0x20], 0x1
               	cmp	dword ptr [rbp + 0x20], 0x0
               	je	0x14000417c __pformat_emit_float+0x304
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x1000
               	test	eax, eax
               	je	0x14000417c __pformat_emit_float+0x304
               	mov	rax, qword ptr [rbp + 0x28]
               	movzx	eax, word ptr [rax + 0x20]
               	test	ax, ax
               	je	0x14000417c __pformat_emit_float+0x304
               	mov	ecx, dword ptr [rbp + 0x20]
               	movsxd	rax, ecx
               	imul	rax, rax, 0x55555556
               	shr	rax, 0x20
               	mov	rdx, rax
               	mov	eax, ecx
               	sar	eax, 0x1f
               	sub	edx, eax
               	mov	eax, edx
               	add	eax, eax
               	add	eax, edx
               	sub	ecx, eax
               	mov	edx, ecx
               	test	edx, edx
               	jne	0x14000417c __pformat_emit_float+0x304
               	mov	rax, qword ptr [rbp + 0x28]
               	add	rax, 0x20
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	r8, rdx
               	mov	edx, 0x1
               	mov	rcx, rax
               	call	0x1400030b9 __pformat_wputchars
               	cmp	dword ptr [rbp + 0x20], 0x0
               	jg	0x1400040e1 __pformat_emit_float+0x269
               	jmp	0x140004199 __pformat_emit_float+0x321
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x30
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jg	0x1400041b4 __pformat_emit_float+0x33c
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x800
               	test	eax, eax
               	je	0x1400041c0 __pformat_emit_float+0x348
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140003bdb __pformat_emit_radix_point
               	cmp	dword ptr [rbp + 0x20], 0x0
               	jns	0x140004225 __pformat_emit_float+0x3ad
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, dword ptr [rax + 0x10]
               	mov	eax, dword ptr [rbp + 0x20]
               	add	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x30
               	call	0x140002eb0 __pformat_putc
               	add	dword ptr [rbp + 0x20], 0x1
               	cmp	dword ptr [rbp + 0x20], 0x0
               	js	0x1400041d9 __pformat_emit_float+0x361
               	jmp	0x140004225 __pformat_emit_float+0x3ad
               	mov	rax, qword ptr [rbp + 0x18]
               	movzx	eax, byte ptr [rax]
               	test	al, al
               	je	0x140004215 __pformat_emit_float+0x39d
               	mov	rax, qword ptr [rbp + 0x18]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp + 0x18], rdx
               	movzx	eax, byte ptr [rax]
               	movsx	eax, al
               	jmp	0x14000421a __pformat_emit_float+0x3a2
               	mov	eax, 0x30
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	ecx, eax
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0x10], ecx
               	test	eax, eax
               	jg	0x1400041f6 __pformat_emit_float+0x37e
               	nop
               	nop
               	add	rsp, 0x30
               	pop	rbp
               	ret

__pformat_emit_efloat:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x50
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	dword ptr [rbp + 0x20], r8d
               	mov	qword ptr [rbp + 0x28], r9
               	mov	dword ptr [rbp - 0x4], 0x1
               	sub	dword ptr [rbp + 0x20], 0x1
               	mov	eax, dword ptr [rbp + 0x20]
               	cdqe
               	mov	qword ptr [rbp - 0x20], rax
               	jmp	0x140004273 __pformat_emit_efloat+0x31
               	add	dword ptr [rbp - 0x4], 0x1
               	mov	eax, dword ptr [rbp + 0x20]
               	movsxd	rdx, eax
               	imul	rdx, rdx, 0x66666667
               	shr	rdx, 0x20
               	mov	ecx, edx
               	sar	ecx, 0x2
               	cdq
               	mov	eax, ecx
               	sub	eax, edx
               	mov	dword ptr [rbp + 0x20], eax
               	cmp	dword ptr [rbp + 0x20], 0x0
               	jne	0x14000426f __pformat_emit_efloat+0x2d
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x2c]
               	cmp	eax, -0x1
               	jne	0x1400042ae __pformat_emit_efloat+0x6c
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x2c], 0x2
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x2c]
               	cmp	dword ptr [rbp - 0x4], eax
               	jge	0x1400042c4 __pformat_emit_efloat+0x82
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x2c]
               	mov	dword ptr [rbp - 0x4], eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	add	dword ptr [rbp - 0x4], 0x2
               	cmp	dword ptr [rbp - 0x4], eax
               	jge	0x1400042e9 __pformat_emit_efloat+0xa7
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	sub	eax, dword ptr [rbp - 0x4]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	jmp	0x1400042f4 __pformat_emit_efloat+0xb2
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], 0xffffffff
               	mov	rcx, qword ptr [rbp + 0x28]
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rbp + 0x10]
               	mov	r9, rcx
               	mov	r8d, 0x1
               	mov	ecx, eax
               	call	0x140003e78 __pformat_emit_float
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, dword ptr [rax + 0x2c]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	or	eax, 0x1c0
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x8], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x20
               	or	eax, 0x45
               	mov	ecx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	mov	edx, dword ptr [rbp - 0x4]
               	sub	edx, 0x1
               	add	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	rdx, qword ptr [rbp - 0x18]
               	mov	qword ptr [rbp - 0x30], rax
               	mov	qword ptr [rbp - 0x28], rdx
               	mov	rdx, qword ptr [rbp + 0x28]
               	lea	rax, [rbp - 0x30]
               	mov	rcx, rax
               	call	0x14000332e __pformat_int
               	nop
               	add	rsp, 0x50
               	pop	rbp
               	ret

__pformat_float:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x58
               	lea	rbp, [rsp + 0x50]
               	mov	rbx, rcx
               	fld	tbyte ptr [rbx]
               	fstp	tbyte ptr [rbp - 0x20]
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jns	0x1400043b7 __pformat_float+0x2d
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], 0x6
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, dword ptr [rax + 0x10]
               	fld	tbyte ptr [rbp - 0x20]
               	fstp	tbyte ptr [rbp - 0x30]
               	lea	r8, [rbp - 0xc]
               	lea	rcx, [rbp - 0x10]
               	lea	rax, [rbp - 0x30]
               	mov	r9, r8
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140003b89 __pformat_fcvt
               	mov	qword ptr [rbp - 0x8], rax
               	mov	eax, dword ptr [rbp - 0x10]
               	cmp	eax, 0xffff8000
               	jne	0x140004403 __pformat_float+0x79
               	mov	eax, dword ptr [rbp - 0xc]
               	mov	rcx, qword ptr [rbp + 0x28]
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	r8, rcx
               	mov	ecx, eax
               	call	0x140003d8d __pformat_emit_inf_or_nan
               	jmp	0x140004446 __pformat_float+0xbc
               	mov	ecx, dword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rbp - 0xc]
               	mov	r8, qword ptr [rbp + 0x28]
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	r9, r8
               	mov	r8d, ecx
               	mov	ecx, eax
               	call	0x140003e78 __pformat_emit_float
               	jmp	0x140004431 __pformat_float+0xa7
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x140004420 __pformat_float+0x96
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140005b6f __freedtoa
               	nop
               	add	rsp, 0x58
               	pop	rbx
               	pop	rbp
               	ret

__pformat_efloat:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x58
               	lea	rbp, [rsp + 0x50]
               	mov	rbx, rcx
               	fld	tbyte ptr [rbx]
               	fstp	tbyte ptr [rbp - 0x20]
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jns	0x140004487 __pformat_efloat+0x2d
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], 0x6
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	lea	edx, [rax + 0x1]
               	fld	tbyte ptr [rbp - 0x20]
               	fstp	tbyte ptr [rbp - 0x30]
               	lea	r8, [rbp - 0xc]
               	lea	rcx, [rbp - 0x10]
               	lea	rax, [rbp - 0x30]
               	mov	r9, r8
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140003b37 __pformat_ecvt
               	mov	qword ptr [rbp - 0x8], rax
               	mov	eax, dword ptr [rbp - 0x10]
               	cmp	eax, 0xffff8000
               	jne	0x1400044d6 __pformat_efloat+0x7c
               	mov	eax, dword ptr [rbp - 0xc]
               	mov	rcx, qword ptr [rbp + 0x28]
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	r8, rcx
               	mov	ecx, eax
               	call	0x140003d8d __pformat_emit_inf_or_nan
               	jmp	0x1400044f1 __pformat_efloat+0x97
               	mov	ecx, dword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rbp - 0xc]
               	mov	r8, qword ptr [rbp + 0x28]
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	r9, r8
               	mov	r8d, ecx
               	mov	ecx, eax
               	call	0x140004242 __pformat_emit_efloat
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140005b6f __freedtoa
               	nop
               	add	rsp, 0x58
               	pop	rbx
               	pop	rbp
               	ret

__pformat_gfloat:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x58
               	lea	rbp, [rsp + 0x50]
               	mov	rbx, rcx
               	fld	tbyte ptr [rbx]
               	fstp	tbyte ptr [rbp - 0x20]
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jns	0x140004534 __pformat_gfloat+0x2f
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], 0x6
               	jmp	0x14000454a __pformat_gfloat+0x45
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jne	0x14000454a __pformat_gfloat+0x45
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], 0x1
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, dword ptr [rax + 0x10]
               	fld	tbyte ptr [rbp - 0x20]
               	fstp	tbyte ptr [rbp - 0x30]
               	lea	r8, [rbp - 0xc]
               	lea	rcx, [rbp - 0x10]
               	lea	rax, [rbp - 0x30]
               	mov	r9, r8
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140003b37 __pformat_ecvt
               	mov	qword ptr [rbp - 0x8], rax
               	mov	eax, dword ptr [rbp - 0x10]
               	cmp	eax, 0xffff8000
               	jne	0x140004599 __pformat_gfloat+0x94
               	mov	eax, dword ptr [rbp - 0xc]
               	mov	rcx, qword ptr [rbp + 0x28]
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	r8, rcx
               	mov	ecx, eax
               	call	0x140003d8d __pformat_emit_inf_or_nan
               	jmp	0x1400046c4 __pformat_gfloat+0x1bf
               	mov	eax, dword ptr [rbp - 0x10]
               	cmp	eax, -0x3
               	jl	0x14000466e __pformat_gfloat+0x169
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, dword ptr [rax + 0x10]
               	mov	eax, dword ptr [rbp - 0x10]
               	cmp	edx, eax
               	jl	0x14000466e __pformat_gfloat+0x169
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x800
               	test	eax, eax
               	je	0x1400045dc __pformat_gfloat+0xd7
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, dword ptr [rax + 0x10]
               	mov	eax, dword ptr [rbp - 0x10]
               	sub	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], edx
               	jmp	0x140004629 __pformat_gfloat+0x124
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140009468 strlen
               	mov	ecx, eax
               	mov	eax, dword ptr [rbp - 0x10]
               	mov	edx, eax
               	mov	eax, ecx
               	sub	eax, edx
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jns	0x140004629 __pformat_gfloat+0x124
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x140004629 __pformat_gfloat+0x124
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, dword ptr [rax + 0xc]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	add	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	mov	ecx, dword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rbp - 0xc]
               	mov	r8, qword ptr [rbp + 0x28]
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	r9, r8
               	mov	r8d, ecx
               	mov	ecx, eax
               	call	0x140003e78 __pformat_emit_float
               	jmp	0x140004657 __pformat_gfloat+0x152
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x140004646 __pformat_gfloat+0x141
               	jmp	0x1400046c4 __pformat_gfloat+0x1bf
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x800
               	test	eax, eax
               	je	0x140004691 __pformat_gfloat+0x18c
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], edx
               	jmp	0x1400046a9 __pformat_gfloat+0x1a4
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140009468 strlen
               	sub	eax, 0x1
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], edx
               	mov	ecx, dword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rbp - 0xc]
               	mov	r8, qword ptr [rbp + 0x28]
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	r9, r8
               	mov	r8d, ecx
               	mov	ecx, eax
               	call	0x140004242 __pformat_emit_efloat
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140005b6f __freedtoa
               	nop
               	add	rsp, 0x58
               	pop	rbx
               	pop	rbp
               	ret

__pformat_emit_xfloat:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x88
               	lea	rbp, [rsp + 0x80]
               	mov	rbx, rcx
               	mov	qword ptr [rbp + 0x28], rdx
               	lea	rax, [rbp - 0x40]
               	mov	qword ptr [rbp - 0x8], rax
               	mov	word ptr [rbp - 0xa], 0x2
               	mov	rax, qword ptr [rbx]
               	test	rax, rax
               	jne	0x14000470f __pformat_emit_xfloat+0x37
               	movzx	eax, word ptr [rbx + 0x8]
               	test	ax, ax
               	je	0x14000471a __pformat_emit_xfloat+0x42
               	movzx	eax, word ptr [rbx + 0x8]
               	sub	eax, 0x3
               	mov	word ptr [rbx + 0x8], ax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	js	0x1400047b9 __pformat_emit_xfloat+0xe1
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	cmp	eax, 0xe
               	jg	0x1400047b9 __pformat_emit_xfloat+0xe1
               	mov	rax, qword ptr [rbx]
               	shr	rax
               	mov	qword ptr [rbx], rax
               	mov	rdx, qword ptr [rbx]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	mov	ecx, 0xe
               	sub	ecx, eax
               	lea	eax, [4*rcx]
               	mov	r8d, 0x4
               	mov	ecx, eax
               	shl	r8, cl
               	mov	rax, r8
               	add	rax, rdx
               	mov	qword ptr [rbx], rax
               	mov	rax, qword ptr [rbx]
               	test	rax, rax
               	js	0x140004781 __pformat_emit_xfloat+0xa9
               	mov	rax, qword ptr [rbx]
               	add	rax, rax
               	mov	qword ptr [rbx], rax
               	jmp	0x140004796 __pformat_emit_xfloat+0xbe
               	movzx	eax, word ptr [rbx + 0x8]
               	add	eax, 0x4
               	mov	word ptr [rbx + 0x8], ax
               	mov	rax, qword ptr [rbx]
               	shr	rax, 0x3
               	mov	qword ptr [rbx], rax
               	mov	rdx, qword ptr [rbx]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	mov	ecx, 0xf
               	sub	ecx, eax
               	lea	eax, [4*rcx]
               	mov	ecx, eax
               	shr	rdx, cl
               	mov	rax, rdx
               	mov	qword ptr [rbx], rax
               	mov	rax, qword ptr [rbx]
               	test	rax, rax
               	jne	0x1400047d0 __pformat_emit_xfloat+0xf8
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jle	0x1400048c8 __pformat_emit_xfloat+0x1f0
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	cmp	eax, 0xe
               	jg	0x1400047f6 __pformat_emit_xfloat+0x11e
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	js	0x1400047f6 __pformat_emit_xfloat+0x11e
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	add	eax, 0x1
               	mov	dword ptr [rbp - 0x10], eax
               	jmp	0x1400047fd __pformat_emit_xfloat+0x125
               	mov	dword ptr [rbp - 0x10], 0x10
               	jmp	0x1400048be __pformat_emit_xfloat+0x1e6
               	mov	rax, qword ptr [rbx]
               	and	eax, 0xf
               	mov	dword ptr [rbp - 0x1c], eax
               	cmp	dword ptr [rbp - 0x10], 0x1
               	jne	0x140004847 __pformat_emit_xfloat+0x16f
               	lea	rax, [rbp - 0x40]
               	cmp	rax, qword ptr [rbp - 0x8]
               	jb	0x140004836 __pformat_emit_xfloat+0x15e
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x800
               	test	eax, eax
               	jne	0x140004836 __pformat_emit_xfloat+0x15e
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jle	0x140004863 __pformat_emit_xfloat+0x18b
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], 0x2e
               	jmp	0x140004863 __pformat_emit_xfloat+0x18b
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jle	0x140004863 __pformat_emit_xfloat+0x18b
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x10], edx
               	cmp	dword ptr [rbp - 0x1c], 0x0
               	jne	0x14000487e __pformat_emit_xfloat+0x1a6
               	lea	rax, [rbp - 0x40]
               	cmp	rax, qword ptr [rbp - 0x8]
               	jb	0x14000487e __pformat_emit_xfloat+0x1a6
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	js	0x1400048b0 __pformat_emit_xfloat+0x1d8
               	cmp	dword ptr [rbp - 0x1c], 0x9
               	jbe	0x14000489a __pformat_emit_xfloat+0x1c2
               	mov	eax, dword ptr [rbp - 0x1c]
               	lea	edx, [rax + 0x37]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x20
               	or	eax, edx
               	mov	ecx, eax
               	jmp	0x1400048a2 __pformat_emit_xfloat+0x1ca
               	mov	eax, dword ptr [rbp - 0x1c]
               	add	eax, 0x30
               	mov	ecx, eax
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], cl
               	mov	rax, qword ptr [rbx]
               	shr	rax, 0x4
               	mov	qword ptr [rbx], rax
               	sub	dword ptr [rbp - 0x10], 0x1
               	cmp	dword ptr [rbp - 0x10], 0x0
               	jg	0x140004802 __pformat_emit_xfloat+0x12a
               	lea	rax, [rbp - 0x40]
               	cmp	qword ptr [rbp - 0x8], rax
               	jne	0x14000490b __pformat_emit_xfloat+0x233
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jg	0x1400048ed __pformat_emit_xfloat+0x215
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x800
               	test	eax, eax
               	je	0x1400048fc __pformat_emit_xfloat+0x224
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], 0x2e
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	byte ptr [rax], 0x30
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x1400049fd __pformat_emit_xfloat+0x325
               	lea	rax, [rbp - 0x40]
               	mov	rdx, qword ptr [rbp - 0x8]
               	sub	rdx, rax
               	mov	dword ptr [rbp - 0x14], edx
               	movzx	eax, word ptr [rbx + 0x8]
               	cwde
               	mov	dword ptr [rbp - 0x18], eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jle	0x140004945 __pformat_emit_xfloat+0x26d
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	add	dword ptr [rbp - 0x14], eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x1c0
               	test	eax, eax
               	je	0x14000495c __pformat_emit_xfloat+0x284
               	mov	eax, 0x6
               	jmp	0x140004961 __pformat_emit_xfloat+0x289
               	mov	eax, 0x5
               	add	dword ptr [rbp - 0x14], eax
               	jmp	0x140004975 __pformat_emit_xfloat+0x29d
               	add	dword ptr [rbp - 0x14], 0x1
               	movzx	eax, word ptr [rbp - 0xa]
               	add	eax, 0x1
               	mov	word ptr [rbp - 0xa], ax
               	mov	eax, dword ptr [rbp - 0x18]
               	movsxd	rdx, eax
               	imul	rdx, rdx, 0x66666667
               	shr	rdx, 0x20
               	mov	ecx, edx
               	sar	ecx, 0x2
               	cdq
               	mov	eax, ecx
               	sub	eax, edx
               	mov	dword ptr [rbp - 0x18], eax
               	cmp	dword ptr [rbp - 0x18], 0x0
               	jne	0x140004966 __pformat_emit_xfloat+0x28e
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	cmp	dword ptr [rbp - 0x14], eax
               	jge	0x1400049f2 __pformat_emit_xfloat+0x31a
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	sub	eax, dword ptr [rbp - 0x14]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x600
               	test	eax, eax
               	jne	0x1400049fd __pformat_emit_xfloat+0x325
               	jmp	0x1400049db __pformat_emit_xfloat+0x303
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x1400049ca __pformat_emit_xfloat+0x2f2
               	jmp	0x1400049fd __pformat_emit_xfloat+0x325
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], 0xffffffff
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x80
               	test	eax, eax
               	je	0x140004a20 __pformat_emit_xfloat+0x348
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x2d
               	call	0x140002eb0 __pformat_putc
               	jmp	0x140004a62 __pformat_emit_xfloat+0x38a
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x100
               	test	eax, eax
               	je	0x140004a43 __pformat_emit_xfloat+0x36b
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x2b
               	call	0x140002eb0 __pformat_putc
               	jmp	0x140004a62 __pformat_emit_xfloat+0x38a
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x40
               	test	eax, eax
               	je	0x140004a62 __pformat_emit_xfloat+0x38a
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x20
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x30
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x20
               	or	eax, 0x58
               	mov	ecx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	test	eax, eax
               	jle	0x140004aed __pformat_emit_xfloat+0x415
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x200
               	test	eax, eax
               	je	0x140004aed __pformat_emit_xfloat+0x415
               	jmp	0x140004abc __pformat_emit_xfloat+0x3e4
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x30
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0xc]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0xc], ecx
               	test	eax, eax
               	jg	0x140004aab __pformat_emit_xfloat+0x3d3
               	jmp	0x140004aed __pformat_emit_xfloat+0x415
               	sub	qword ptr [rbp - 0x8], 0x1
               	mov	rax, qword ptr [rbp - 0x8]
               	movzx	eax, byte ptr [rax]
               	movsx	eax, al
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	ecx, eax
               	call	0x140003d20 __pformat_emit_numeric_value
               	lea	rax, [rbp - 0x40]
               	cmp	rax, qword ptr [rbp - 0x8]
               	jb	0x140004ad3 __pformat_emit_xfloat+0x3fb
               	jmp	0x140004b0a __pformat_emit_xfloat+0x432
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	mov	ecx, 0x30
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x10]
               	lea	ecx, [rax - 0x1]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	dword ptr [rdx + 0x10], ecx
               	test	eax, eax
               	jg	0x140004af9 __pformat_emit_xfloat+0x421
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	and	eax, 0x20
               	or	eax, 0x50
               	mov	ecx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rdx, rax
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, dword ptr [rax + 0xc]
               	movsx	eax, word ptr [rbp - 0xa]
               	add	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0xc], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	or	eax, 0x1c0
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x8], edx
               	movzx	eax, word ptr [rbx + 0x8]
               	test	ax, ax
               	jns	0x140004b75 __pformat_emit_xfloat+0x49d
               	mov	rax, -0x1
               	jmp	0x140004b7a __pformat_emit_xfloat+0x4a2
               	mov	eax, 0x0
               	mov	qword ptr [rbp - 0x48], rax
               	movzx	eax, word ptr [rbx + 0x8]
               	movsx	rax, ax
               	mov	qword ptr [rbp - 0x50], rax
               	mov	rax, qword ptr [rbp - 0x50]
               	mov	rdx, qword ptr [rbp - 0x48]
               	mov	qword ptr [rbp - 0x60], rax
               	mov	qword ptr [rbp - 0x58], rdx
               	mov	rdx, qword ptr [rbp + 0x28]
               	lea	rax, [rbp - 0x60]
               	mov	rcx, rax
               	call	0x14000332e __pformat_int
               	nop
               	add	rsp, 0x88
               	pop	rbx
               	pop	rbp
               	ret

__pformat_xldouble:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x78
               	lea	rbp, [rsp + 0x70]
               	mov	rbx, rcx
               	fld	tbyte ptr [rbx]
               	fstp	tbyte ptr [rbp - 0x30]
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	dword ptr [rbp - 0x4], 0x0
               	lea	rax, [rbp - 0x20]
               	fld	tbyte ptr [rbp - 0x30]
               	fstp	tbyte ptr [rbp - 0x40]
               	lea	rdx, [rbp - 0x40]
               	mov	rcx, rax
               	call	0x1400039cf init_fpreg_ldouble
               	fld	tbyte ptr [rbp - 0x30]
               	fstp	tbyte ptr [rbp - 0x40]
               	lea	rax, [rbp - 0x40]
               	mov	rcx, rax
               	call	0x1400089a0 isnanl
               	test	eax, eax
               	je	0x140004c1c __pformat_xldouble+0x67
               	mov	eax, dword ptr [rbp - 0x4]
               	mov	rcx, qword ptr [rbp + 0x28]
               	lea	rdx, [rip + 0x6779]     # 0x14000b386 .rdata+0x16
               	mov	r8, rcx
               	mov	ecx, eax
               	call	0x140003d8d __pformat_emit_inf_or_nan
               	jmp	0x140004cc6 __pformat_xldouble+0x111
               	movzx	eax, word ptr [rbp - 0x18]
               	cwde
               	and	eax, 0x8000
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	je	0x140004c41 __pformat_xldouble+0x8c
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x8]
               	or	al, -0x80
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax + 0x8], edx
               	fld	tbyte ptr [rbp - 0x30]
               	fstp	tbyte ptr [rbp - 0x40]
               	lea	rax, [rbp - 0x40]
               	mov	rcx, rax
               	call	0x1400088b0 __fpclassifyl
               	cmp	eax, 0x500
               	jne	0x140004c74 __pformat_xldouble+0xbf
               	mov	eax, dword ptr [rbp - 0x4]
               	mov	rcx, qword ptr [rbp + 0x28]
               	lea	rdx, [rip + 0x6722]     # 0x14000b38a .rdata+0x1a
               	mov	r8, rcx
               	mov	ecx, eax
               	call	0x140003d8d __pformat_emit_inf_or_nan
               	jmp	0x140004cc6 __pformat_xldouble+0x111
               	movzx	eax, word ptr [rbp - 0x18]
               	and	ax, 0x7fff
               	mov	word ptr [rbp - 0x18], ax
               	movzx	eax, word ptr [rbp - 0x18]
               	test	ax, ax
               	jne	0x140004c9a __pformat_xldouble+0xe5
               	mov	rax, qword ptr [rbp - 0x20]
               	test	rax, rax
               	je	0x140004ca6 __pformat_xldouble+0xf1
               	mov	word ptr [rbp - 0x18], 0xc002
               	jmp	0x140004ca6 __pformat_xldouble+0xf1
               	movzx	eax, word ptr [rbp - 0x18]
               	sub	ax, 0x3fff
               	mov	word ptr [rbp - 0x18], ax
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	rdx, qword ptr [rbp - 0x18]
               	mov	qword ptr [rbp - 0x50], rax
               	mov	qword ptr [rbp - 0x48], rdx
               	mov	rdx, qword ptr [rbp + 0x28]
               	lea	rax, [rbp - 0x50]
               	mov	rcx, rax
               	call	0x1400046d8 __pformat_emit_xfloat
               	nop
               	add	rsp, 0x78
               	pop	rbx
               	pop	rbp
               	ret

__pformat_xdouble:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x60
               	movsd	qword ptr [rbp + 0x10], xmm0
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	dword ptr [rbp - 0x4], 0x0
               	fld	qword ptr [rbp + 0x10]
               	lea	rax, [rbp - 0x20]
               	fstp	tbyte ptr [rbp - 0x30]
               	lea	rdx, [rbp - 0x30]
               	mov	rcx, rax
               	call	0x1400039cf init_fpreg_ldouble
               	mov	rax, qword ptr [rbp + 0x10]
               	movq	xmm0, rax
               	call	0x140008940 isnan
               	test	eax, eax
               	je	0x140004d2b __pformat_xdouble+0x5d
               	mov	eax, dword ptr [rbp - 0x4]
               	mov	rcx, qword ptr [rbp + 0x18]
               	lea	rdx, [rip + 0x666a]     # 0x14000b386 .rdata+0x16
               	mov	r8, rcx
               	mov	ecx, eax
               	call	0x140003d8d __pformat_emit_inf_or_nan
               	jmp	0x140004e24 __pformat_xdouble+0x156
               	movzx	eax, word ptr [rbp - 0x18]
               	cwde
               	and	eax, 0x8000
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	je	0x140004d50 __pformat_xdouble+0x82
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x8]
               	or	al, -0x80
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	dword ptr [rax + 0x8], edx
               	mov	rax, qword ptr [rbp + 0x10]
               	movq	xmm0, rax
               	call	0x140008830 __fpclassify
               	cmp	eax, 0x500
               	jne	0x140004d82 __pformat_xdouble+0xb4
               	mov	eax, dword ptr [rbp - 0x4]
               	mov	rcx, qword ptr [rbp + 0x18]
               	lea	rdx, [rip + 0x6617]     # 0x14000b38a .rdata+0x1a
               	mov	r8, rcx
               	mov	ecx, eax
               	call	0x140003d8d __pformat_emit_inf_or_nan
               	jmp	0x140004e24 __pformat_xdouble+0x156
               	movzx	eax, word ptr [rbp - 0x18]
               	and	ax, 0x7fff
               	mov	word ptr [rbp - 0x18], ax
               	movzx	eax, word ptr [rbp - 0x18]
               	test	ax, ax
               	je	0x140004dd2 __pformat_xdouble+0x104
               	movzx	eax, word ptr [rbp - 0x18]
               	cmp	ax, 0x3c00
               	jg	0x140004dd2 __pformat_xdouble+0x104
               	movzx	eax, word ptr [rbp - 0x18]
               	cwde
               	mov	edx, 0x3c01
               	sub	edx, eax
               	mov	dword ptr [rbp - 0x8], edx
               	mov	rdx, qword ptr [rbp - 0x20]
               	mov	eax, dword ptr [rbp - 0x8]
               	mov	ecx, eax
               	shr	rdx, cl
               	mov	rax, rdx
               	mov	qword ptr [rbp - 0x20], rax
               	movzx	eax, word ptr [rbp - 0x18]
               	mov	edx, eax
               	mov	eax, dword ptr [rbp - 0x8]
               	add	eax, edx
               	mov	word ptr [rbp - 0x18], ax
               	movzx	eax, word ptr [rbp - 0x18]
               	test	ax, ax
               	jne	0x140004dec __pformat_xdouble+0x11e
               	mov	rax, qword ptr [rbp - 0x20]
               	test	rax, rax
               	je	0x140004df8 __pformat_xdouble+0x12a
               	mov	word ptr [rbp - 0x18], 0xfc05
               	jmp	0x140004df8 __pformat_xdouble+0x12a
               	movzx	eax, word ptr [rbp - 0x18]
               	sub	ax, 0x3ffc
               	mov	word ptr [rbp - 0x18], ax
               	mov	rax, qword ptr [rbp - 0x20]
               	shr	rax, 0x3
               	mov	qword ptr [rbp - 0x20], rax
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	rdx, qword ptr [rbp - 0x18]
               	mov	qword ptr [rbp - 0x40], rax
               	mov	qword ptr [rbp - 0x38], rdx
               	mov	rdx, qword ptr [rbp + 0x18]
               	lea	rax, [rbp - 0x40]
               	mov	rcx, rax
               	call	0x1400046d8 __pformat_emit_xfloat
               	nop
               	add	rsp, 0x60
               	pop	rbp
               	ret

__mingw_pformat:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0xd0
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	dword ptr [rbp + 0x20], r8d
               	mov	qword ptr [rbp + 0x28], r9
               	call	0x1400093e8 _errno
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0x14], eax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rbp - 0x60], rax
               	and	dword ptr [rbp + 0x10], 0x6000
               	mov	eax, dword ptr [rbp + 0x10]
               	mov	dword ptr [rbp - 0x58], eax
               	mov	dword ptr [rbp - 0x54], 0xffffffff
               	mov	dword ptr [rbp - 0x50], 0xffffffff
               	mov	dword ptr [rbp - 0x4c], 0xfffffffd
               	mov	word ptr [rbp - 0x48], 0x0
               	mov	dword ptr [rbp - 0x44], 0x0
               	mov	word ptr [rbp - 0x40], 0x0
               	mov	dword ptr [rbp - 0x3c], 0x0
               	mov	eax, dword ptr [rbp + 0x20]
               	mov	dword ptr [rbp - 0x38], eax
               	mov	dword ptr [rbp - 0x34], 0xffffffff
               	jmp	0x140005a7d __mingw_pformat+0xc52
               	cmp	dword ptr [rbp - 0x18], 0x25
               	jne	0x140005a6f __mingw_pformat+0xc44
               	mov	dword ptr [rbp - 0x4], 0x0
               	mov	dword ptr [rbp - 0x8], 0x0
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	qword ptr [rbp - 0x20], rax
               	lea	rax, [rbp - 0x60]
               	add	rax, 0xc
               	mov	qword ptr [rbp - 0x10], rax
               	mov	eax, dword ptr [rbp + 0x10]
               	mov	dword ptr [rbp - 0x58], eax
               	mov	dword ptr [rbp - 0x50], 0xffffffff
               	mov	eax, dword ptr [rbp - 0x50]
               	mov	dword ptr [rbp - 0x54], eax
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	mov	rax, qword ptr [rbp + 0x28]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp + 0x28], rdx
               	movzx	eax, byte ptr [rax]
               	movsx	eax, al
               	mov	dword ptr [rbp - 0x18], eax
               	cmp	dword ptr [rbp - 0x18], 0x7a
               	je	0x14000584d __mingw_pformat+0xa22
               	cmp	dword ptr [rbp - 0x18], 0x7a
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x78
               	je	0x1400052cb __mingw_pformat+0x4a0
               	cmp	dword ptr [rbp - 0x18], 0x78
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x75
               	je	0x1400052cb __mingw_pformat+0x4a0
               	cmp	dword ptr [rbp - 0x18], 0x75
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x74
               	je	0x14000583a __mingw_pformat+0xa0f
               	cmp	dword ptr [rbp - 0x18], 0x74
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x73
               	je	0x140005261 __mingw_pformat+0x436
               	cmp	dword ptr [rbp - 0x18], 0x73
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x70
               	je	0x14000546c __mingw_pformat+0x641
               	cmp	dword ptr [rbp - 0x18], 0x70
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x6f
               	je	0x1400052cb __mingw_pformat+0x4a0
               	cmp	dword ptr [rbp - 0x18], 0x6f
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x6e
               	je	0x1400056b9 __mingw_pformat+0x88e
               	cmp	dword ptr [rbp - 0x18], 0x6e
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x6d
               	je	0x1400052ad __mingw_pformat+0x482
               	cmp	dword ptr [rbp - 0x18], 0x6d
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x6c
               	je	0x1400057f9 __mingw_pformat+0x9ce
               	cmp	dword ptr [rbp - 0x18], 0x6c
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x6a
               	je	0x140005783 __mingw_pformat+0x958
               	cmp	dword ptr [rbp - 0x18], 0x6a
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x69
               	je	0x1400053aa __mingw_pformat+0x57f
               	cmp	dword ptr [rbp - 0x18], 0x69
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x68
               	je	0x140005757 __mingw_pformat+0x92c
               	cmp	dword ptr [rbp - 0x18], 0x68
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x67
               	je	0x1400055d7 __mingw_pformat+0x7ac
               	cmp	dword ptr [rbp - 0x18], 0x67
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x66
               	je	0x140005559 __mingw_pformat+0x72e
               	cmp	dword ptr [rbp - 0x18], 0x66
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x65
               	je	0x1400054db __mingw_pformat+0x6b0
               	cmp	dword ptr [rbp - 0x18], 0x65
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x64
               	je	0x1400053aa __mingw_pformat+0x57f
               	cmp	dword ptr [rbp - 0x18], 0x64
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x63
               	je	0x1400051e9 __mingw_pformat+0x3be
               	cmp	dword ptr [rbp - 0x18], 0x63
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x61
               	je	0x140005655 __mingw_pformat+0x82a
               	cmp	dword ptr [rbp - 0x18], 0x61
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x58
               	je	0x1400052cb __mingw_pformat+0x4a0
               	cmp	dword ptr [rbp - 0x18], 0x58
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x53
               	je	0x14000525a __mingw_pformat+0x42f
               	cmp	dword ptr [rbp - 0x18], 0x53
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x4c
               	je	0x140005825 __mingw_pformat+0x9fa
               	cmp	dword ptr [rbp - 0x18], 0x4c
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x49
               	je	0x140005796 __mingw_pformat+0x96b
               	cmp	dword ptr [rbp - 0x18], 0x49
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x47
               	je	0x1400055e0 __mingw_pformat+0x7b5
               	cmp	dword ptr [rbp - 0x18], 0x47
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x46
               	je	0x140005562 __mingw_pformat+0x737
               	cmp	dword ptr [rbp - 0x18], 0x46
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x45
               	je	0x1400054e4 __mingw_pformat+0x6b9
               	cmp	dword ptr [rbp - 0x18], 0x45
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x43
               	je	0x1400051e2 __mingw_pformat+0x3b7
               	cmp	dword ptr [rbp - 0x18], 0x43
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x41
               	je	0x14000565e __mingw_pformat+0x833
               	cmp	dword ptr [rbp - 0x18], 0x41
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x30
               	je	0x1400059b1 __mingw_pformat+0xb86
               	cmp	dword ptr [rbp - 0x18], 0x30
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x2e
               	je	0x140005860 __mingw_pformat+0xa35
               	cmp	dword ptr [rbp - 0x18], 0x2e
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x2d
               	je	0x140005928 __mingw_pformat+0xafd
               	cmp	dword ptr [rbp - 0x18], 0x2d
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x2b
               	je	0x140005910 __mingw_pformat+0xae5
               	cmp	dword ptr [rbp - 0x18], 0x2b
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x2a
               	je	0x140005891 __mingw_pformat+0xa66
               	cmp	dword ptr [rbp - 0x18], 0x2a
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x27
               	je	0x140005940 __mingw_pformat+0xb15
               	cmp	dword ptr [rbp - 0x18], 0x27
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x25
               	je	0x1400051cf __mingw_pformat+0x3a4
               	cmp	dword ptr [rbp - 0x18], 0x25
               	jg	0x1400059c5 __mingw_pformat+0xb9a
               	cmp	dword ptr [rbp - 0x18], 0x20
               	je	0x140005999 __mingw_pformat+0xb6e
               	cmp	dword ptr [rbp - 0x18], 0x23
               	je	0x1400058f8 __mingw_pformat+0xacd
               	jmp	0x1400059c5 __mingw_pformat+0xb9a
               	lea	rdx, [rbp - 0x60]
               	mov	eax, dword ptr [rbp - 0x18]
               	mov	ecx, eax
               	call	0x140002eb0 __pformat_putc
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	dword ptr [rbp - 0x8], 0x2
               	mov	dword ptr [rbp - 0x50], 0xffffffff
               	cmp	dword ptr [rbp - 0x8], 0x2
               	je	0x1400051fc __mingw_pformat+0x3d1
               	cmp	dword ptr [rbp - 0x8], 0x3
               	jne	0x14000522c __mingw_pformat+0x401
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	eax, dword ptr [rax]
               	mov	word ptr [rbp - 0x72], ax
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0x72]
               	mov	r8, rdx
               	mov	edx, 0x1
               	mov	rcx, rax
               	call	0x1400030b9 __pformat_wputchars
               	nop
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	eax, dword ptr [rax]
               	mov	byte ptr [rbp - 0x70], al
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0x70]
               	mov	r8, rdx
               	mov	edx, 0x1
               	mov	rcx, rax
               	call	0x140002f34 __pformat_putchars
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	dword ptr [rbp - 0x8], 0x2
               	cmp	dword ptr [rbp - 0x8], 0x2
               	je	0x14000526d __mingw_pformat+0x442
               	cmp	dword ptr [rbp - 0x8], 0x3
               	jne	0x14000528d __mingw_pformat+0x462
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	lea	rdx, [rbp - 0x60]
               	mov	rcx, rax
               	call	0x140003218 __pformat_wcputs
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	lea	rdx, [rbp - 0x60]
               	mov	rcx, rax
               	call	0x140003033 __pformat_puts
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	eax, dword ptr [rbp - 0x14]
               	mov	ecx, eax
               	call	0x140009460 strerror
               	mov	rcx, rax
               	lea	rax, [rbp - 0x60]
               	mov	rdx, rax
               	call	0x140003033 __pformat_puts
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	eax, dword ptr [rbp - 0x58]
               	and	ah, -0x2
               	mov	dword ptr [rbp - 0x58], eax
               	cmp	dword ptr [rbp - 0x8], 0x3
               	jne	0x1400052ef __mingw_pformat+0x4c4
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	mov	qword ptr [rbp - 0x70], rax
               	jmp	0x140005343 __mingw_pformat+0x518
               	cmp	dword ptr [rbp - 0x8], 0x2
               	jne	0x14000530b __mingw_pformat+0x4e0
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	eax, dword ptr [rax]
               	mov	eax, eax
               	mov	qword ptr [rbp - 0x70], rax
               	jmp	0x140005343 __mingw_pformat+0x518
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	eax, dword ptr [rax]
               	mov	eax, eax
               	mov	qword ptr [rbp - 0x70], rax
               	cmp	dword ptr [rbp - 0x8], 0x1
               	jne	0x140005332 __mingw_pformat+0x507
               	movzx	eax, word ptr [rbp - 0x70]
               	movzx	eax, ax
               	mov	qword ptr [rbp - 0x70], rax
               	jmp	0x140005343 __mingw_pformat+0x518
               	cmp	dword ptr [rbp - 0x8], 0x5
               	jne	0x140005343 __mingw_pformat+0x518
               	movzx	eax, byte ptr [rbp - 0x70]
               	movzx	eax, al
               	mov	qword ptr [rbp - 0x70], rax
               	cmp	dword ptr [rbp - 0x18], 0x75
               	jne	0x140005377 __mingw_pformat+0x54c
               	mov	rax, qword ptr [rbp - 0x70]
               	mov	rdx, qword ptr [rbp - 0x68]
               	mov	qword ptr [rbp - 0x90], rax
               	mov	qword ptr [rbp - 0x88], rdx
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0x90]
               	mov	rcx, rax
               	call	0x14000332e __pformat_int
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	rax, qword ptr [rbp - 0x70]
               	mov	rdx, qword ptr [rbp - 0x68]
               	mov	qword ptr [rbp - 0x90], rax
               	mov	qword ptr [rbp - 0x88], rdx
               	lea	rcx, [rbp - 0x60]
               	lea	rdx, [rbp - 0x90]
               	mov	eax, dword ptr [rbp - 0x18]
               	mov	r8, rcx
               	mov	ecx, eax
               	call	0x1400036b1 __pformat_xint
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	eax, dword ptr [rbp - 0x58]
               	or	al, -0x80
               	mov	dword ptr [rbp - 0x58], eax
               	cmp	dword ptr [rbp - 0x8], 0x3
               	jne	0x1400053cd __mingw_pformat+0x5a2
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	mov	qword ptr [rbp - 0x70], rax
               	jmp	0x140005423 __mingw_pformat+0x5f8
               	cmp	dword ptr [rbp - 0x8], 0x2
               	jne	0x1400053e9 __mingw_pformat+0x5be
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	eax, dword ptr [rax]
               	cdqe
               	mov	qword ptr [rbp - 0x70], rax
               	jmp	0x140005423 __mingw_pformat+0x5f8
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	eax, dword ptr [rax]
               	cdqe
               	mov	qword ptr [rbp - 0x70], rax
               	cmp	dword ptr [rbp - 0x8], 0x1
               	jne	0x140005411 __mingw_pformat+0x5e6
               	movzx	eax, word ptr [rbp - 0x70]
               	movsx	rax, ax
               	mov	qword ptr [rbp - 0x70], rax
               	jmp	0x140005423 __mingw_pformat+0x5f8
               	cmp	dword ptr [rbp - 0x8], 0x5
               	jne	0x140005423 __mingw_pformat+0x5f8
               	movzx	eax, byte ptr [rbp - 0x70]
               	movsx	rax, al
               	mov	qword ptr [rbp - 0x70], rax
               	mov	rax, qword ptr [rbp - 0x70]
               	test	rax, rax
               	jns	0x140005435 __mingw_pformat+0x60a
               	mov	rax, -0x1
               	jmp	0x14000543a __mingw_pformat+0x60f
               	mov	eax, 0x0
               	mov	qword ptr [rbp - 0x68], rax
               	mov	rax, qword ptr [rbp - 0x70]
               	mov	rdx, qword ptr [rbp - 0x68]
               	mov	qword ptr [rbp - 0x90], rax
               	mov	qword ptr [rbp - 0x88], rdx
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0x90]
               	mov	rcx, rax
               	call	0x14000332e __pformat_int
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x14000548a __mingw_pformat+0x65f
               	mov	eax, dword ptr [rbp - 0x58]
               	cmp	dword ptr [rbp + 0x10], eax
               	jne	0x14000548a __mingw_pformat+0x65f
               	mov	eax, dword ptr [rbp - 0x58]
               	or	ah, 0x2
               	mov	dword ptr [rbp - 0x58], eax
               	mov	dword ptr [rbp - 0x50], 0x10
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	mov	qword ptr [rbp - 0x70], rax
               	mov	qword ptr [rbp - 0x68], 0x0
               	mov	rax, qword ptr [rbp - 0x70]
               	mov	rdx, qword ptr [rbp - 0x68]
               	mov	qword ptr [rbp - 0x90], rax
               	mov	qword ptr [rbp - 0x88], rdx
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0x90]
               	mov	r8, rdx
               	mov	rdx, rax
               	mov	ecx, 0x78
               	call	0x1400036b1 __pformat_xint
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	eax, dword ptr [rbp - 0x58]
               	or	eax, 0x20
               	mov	dword ptr [rbp - 0x58], eax
               	mov	eax, dword ptr [rbp - 0x58]
               	and	eax, 0x4
               	test	eax, eax
               	je	0x14000551d __mingw_pformat+0x6f2
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	fld	tbyte ptr [rax]
               	fstp	tbyte ptr [rbp - 0xa0]
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0xa0]
               	mov	rcx, rax
               	call	0x14000445a __pformat_efloat
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	movsd	xmm1, qword ptr [rax]
               	movsd	qword ptr [rbp - 0xa8], xmm1
               	fld	qword ptr [rbp - 0xa8]
               	fstp	tbyte ptr [rbp - 0xa0]
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0xa0]
               	mov	rcx, rax
               	call	0x14000445a __pformat_efloat
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	eax, dword ptr [rbp - 0x58]
               	or	eax, 0x20
               	mov	dword ptr [rbp - 0x58], eax
               	mov	eax, dword ptr [rbp - 0x58]
               	and	eax, 0x4
               	test	eax, eax
               	je	0x14000559b __mingw_pformat+0x770
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	fld	tbyte ptr [rax]
               	fstp	tbyte ptr [rbp - 0xa0]
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0xa0]
               	mov	rcx, rax
               	call	0x14000438a __pformat_float
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	movsd	xmm2, qword ptr [rax]
               	movsd	qword ptr [rbp - 0xa8], xmm2
               	fld	qword ptr [rbp - 0xa8]
               	fstp	tbyte ptr [rbp - 0xa0]
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0xa0]
               	mov	rcx, rax
               	call	0x14000438a __pformat_float
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	eax, dword ptr [rbp - 0x58]
               	or	eax, 0x20
               	mov	dword ptr [rbp - 0x58], eax
               	mov	eax, dword ptr [rbp - 0x58]
               	and	eax, 0x4
               	test	eax, eax
               	je	0x140005619 __mingw_pformat+0x7ee
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	fld	tbyte ptr [rax]
               	fstp	tbyte ptr [rbp - 0xa0]
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0xa0]
               	mov	rcx, rax
               	call	0x140004505 __pformat_gfloat
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	movsd	xmm3, qword ptr [rax]
               	movsd	qword ptr [rbp - 0xa8], xmm3
               	fld	qword ptr [rbp - 0xa8]
               	fstp	tbyte ptr [rbp - 0xa0]
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0xa0]
               	mov	rcx, rax
               	call	0x140004505 __pformat_gfloat
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	eax, dword ptr [rbp - 0x58]
               	or	eax, 0x20
               	mov	dword ptr [rbp - 0x58], eax
               	mov	eax, dword ptr [rbp - 0x58]
               	and	eax, 0x4
               	test	eax, eax
               	je	0x140005697 __mingw_pformat+0x86c
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	fld	tbyte ptr [rax]
               	fstp	tbyte ptr [rbp - 0xa0]
               	lea	rdx, [rbp - 0x60]
               	lea	rax, [rbp - 0xa0]
               	mov	rcx, rax
               	call	0x140004bb5 __pformat_xldouble
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	lea	rdx, [rbp - 0x60]
               	movq	xmm0, rax
               	call	0x140004cce __pformat_xdouble
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	cmp	dword ptr [rbp - 0x8], 0x5
               	jne	0x1400056da __mingw_pformat+0x8af
               	mov	ecx, dword ptr [rbp - 0x3c]
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	mov	edx, ecx
               	mov	byte ptr [rax], dl
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	cmp	dword ptr [rbp - 0x8], 0x1
               	jne	0x1400056fc __mingw_pformat+0x8d1
               	mov	ecx, dword ptr [rbp - 0x3c]
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	mov	edx, ecx
               	mov	word ptr [rax], dx
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	cmp	dword ptr [rbp - 0x8], 0x2
               	jne	0x14000571b __mingw_pformat+0x8f0
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	mov	edx, dword ptr [rbp - 0x3c]
               	mov	dword ptr [rax], edx
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	cmp	dword ptr [rbp - 0x8], 0x3
               	jne	0x14000573e __mingw_pformat+0x913
               	mov	ecx, dword ptr [rbp - 0x3c]
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	movsxd	rdx, ecx
               	mov	qword ptr [rax], rdx
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	rax, qword ptr [rax]
               	mov	edx, dword ptr [rbp - 0x3c]
               	mov	dword ptr [rax], edx
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	mov	rax, qword ptr [rbp + 0x28]
               	movzx	eax, byte ptr [rax]
               	cmp	al, 0x68
               	jne	0x140005770 __mingw_pformat+0x945
               	add	qword ptr [rbp + 0x28], 0x1
               	mov	dword ptr [rbp - 0x8], 0x5
               	jmp	0x140005777 __mingw_pformat+0x94c
               	mov	dword ptr [rbp - 0x8], 0x1
               	mov	dword ptr [rbp - 0x4], 0x4
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	mov	dword ptr [rbp - 0x8], 0x3
               	mov	dword ptr [rbp - 0x4], 0x4
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	mov	rax, qword ptr [rbp + 0x28]
               	movzx	eax, byte ptr [rax]
               	cmp	al, 0x36
               	jne	0x1400057be __mingw_pformat+0x993
               	mov	rax, qword ptr [rbp + 0x28]
               	add	rax, 0x1
               	movzx	eax, byte ptr [rax]
               	cmp	al, 0x34
               	jne	0x1400057be __mingw_pformat+0x993
               	mov	dword ptr [rbp - 0x8], 0x3
               	add	qword ptr [rbp + 0x28], 0x2
               	jmp	0x1400057ed __mingw_pformat+0x9c2
               	mov	rax, qword ptr [rbp + 0x28]
               	movzx	eax, byte ptr [rax]
               	cmp	al, 0x33
               	jne	0x1400057e6 __mingw_pformat+0x9bb
               	mov	rax, qword ptr [rbp + 0x28]
               	add	rax, 0x1
               	movzx	eax, byte ptr [rax]
               	cmp	al, 0x32
               	jne	0x1400057e6 __mingw_pformat+0x9bb
               	mov	dword ptr [rbp - 0x8], 0x2
               	add	qword ptr [rbp + 0x28], 0x2
               	jmp	0x1400057ed __mingw_pformat+0x9c2
               	mov	dword ptr [rbp - 0x8], 0x3
               	mov	dword ptr [rbp - 0x4], 0x4
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	mov	rax, qword ptr [rbp + 0x28]
               	movzx	eax, byte ptr [rax]
               	cmp	al, 0x6c
               	jne	0x140005812 __mingw_pformat+0x9e7
               	add	qword ptr [rbp + 0x28], 0x1
               	mov	dword ptr [rbp - 0x8], 0x3
               	jmp	0x140005819 __mingw_pformat+0x9ee
               	mov	dword ptr [rbp - 0x8], 0x2
               	mov	dword ptr [rbp - 0x4], 0x4
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	mov	eax, dword ptr [rbp - 0x58]
               	or	eax, 0x4
               	mov	dword ptr [rbp - 0x58], eax
               	mov	dword ptr [rbp - 0x4], 0x4
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	mov	dword ptr [rbp - 0x8], 0x3
               	mov	dword ptr [rbp - 0x4], 0x4
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	mov	dword ptr [rbp - 0x8], 0x3
               	mov	dword ptr [rbp - 0x4], 0x4
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	cmp	dword ptr [rbp - 0x4], 0x1
               	ja	0x140005885 __mingw_pformat+0xa5a
               	mov	dword ptr [rbp - 0x50], 0x0
               	lea	rax, [rbp - 0x60]
               	add	rax, 0x10
               	mov	qword ptr [rbp - 0x10], rax
               	mov	dword ptr [rbp - 0x4], 0x2
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	mov	dword ptr [rbp - 0x4], 0x4
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	cmp	qword ptr [rbp - 0x10], 0x0
               	je	0x1400058e4 __mingw_pformat+0xab9
               	cmp	dword ptr [rbp - 0x4], 0x0
               	je	0x1400058a4 __mingw_pformat+0xa79
               	cmp	dword ptr [rbp - 0x4], 0x2
               	jne	0x1400058e4 __mingw_pformat+0xab9
               	mov	rax, qword ptr [rbp + 0x30]
               	lea	rdx, [rax + 0x8]
               	mov	qword ptr [rbp + 0x30], rdx
               	mov	edx, dword ptr [rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	jns	0x1400058eb __mingw_pformat+0xac0
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x1400058db __mingw_pformat+0xab0
               	mov	eax, dword ptr [rbp - 0x58]
               	or	ah, 0x4
               	mov	dword ptr [rbp - 0x58], eax
               	mov	eax, dword ptr [rbp - 0x54]
               	neg	eax
               	mov	dword ptr [rbp - 0x54], eax
               	jmp	0x1400058eb __mingw_pformat+0xac0
               	mov	dword ptr [rbp - 0x50], 0xffffffff
               	jmp	0x1400058eb __mingw_pformat+0xac0
               	mov	dword ptr [rbp - 0x4], 0x4
               	mov	qword ptr [rbp - 0x10], 0x0
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x140005a51 __mingw_pformat+0xc26
               	mov	eax, dword ptr [rbp - 0x58]
               	or	ah, 0x8
               	mov	dword ptr [rbp - 0x58], eax
               	jmp	0x140005a51 __mingw_pformat+0xc26
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x140005a54 __mingw_pformat+0xc29
               	mov	eax, dword ptr [rbp - 0x58]
               	or	ah, 0x1
               	mov	dword ptr [rbp - 0x58], eax
               	jmp	0x140005a54 __mingw_pformat+0xc29
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x140005a57 __mingw_pformat+0xc2c
               	mov	eax, dword ptr [rbp - 0x58]
               	or	ah, 0x4
               	mov	dword ptr [rbp - 0x58], eax
               	jmp	0x140005a57 __mingw_pformat+0xc2c
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x140005a5a __mingw_pformat+0xc2f
               	mov	eax, dword ptr [rbp - 0x58]
               	or	ah, 0x10
               	mov	dword ptr [rbp - 0x58], eax
               	mov	qword ptr [rbp - 0x7c], 0x0
               	call	0x140009440 localeconv
               	mov	rdx, qword ptr [rax + 0x8]
               	lea	rcx, [rbp - 0x7c]
               	lea	rax, [rbp - 0x74]
               	mov	r9, rcx
               	mov	r8d, 0x10
               	mov	rcx, rax
               	call	0x140008f0e mbrtowc
               	mov	dword ptr [rbp - 0x24], eax
               	cmp	dword ptr [rbp - 0x24], 0x0
               	jle	0x14000598e __mingw_pformat+0xb63
               	movzx	eax, word ptr [rbp - 0x74]
               	mov	word ptr [rbp - 0x40], ax
               	mov	eax, dword ptr [rbp - 0x24]
               	mov	dword ptr [rbp - 0x44], eax
               	jmp	0x140005a5a __mingw_pformat+0xc2f
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x140005a5d __mingw_pformat+0xc32
               	mov	eax, dword ptr [rbp - 0x58]
               	or	eax, 0x40
               	mov	dword ptr [rbp - 0x58], eax
               	jmp	0x140005a5d __mingw_pformat+0xc32
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x1400059c5 __mingw_pformat+0xb9a
               	mov	eax, dword ptr [rbp - 0x58]
               	or	ah, 0x2
               	mov	dword ptr [rbp - 0x58], eax
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	cmp	dword ptr [rbp - 0x4], 0x3
               	ja	0x140005a33 __mingw_pformat+0xc08
               	cmp	dword ptr [rbp - 0x18], 0x39
               	jg	0x140005a33 __mingw_pformat+0xc08
               	cmp	dword ptr [rbp - 0x18], 0x2f
               	jle	0x140005a33 __mingw_pformat+0xc08
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x1400059e6 __mingw_pformat+0xbbb
               	mov	dword ptr [rbp - 0x4], 0x1
               	jmp	0x1400059f3 __mingw_pformat+0xbc8
               	cmp	dword ptr [rbp - 0x4], 0x2
               	jne	0x1400059f3 __mingw_pformat+0xbc8
               	mov	dword ptr [rbp - 0x4], 0x3
               	cmp	qword ptr [rbp - 0x10], 0x0
               	je	0x140005a5e __mingw_pformat+0xc33
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	jns	0x140005a12 __mingw_pformat+0xbe7
               	mov	eax, dword ptr [rbp - 0x18]
               	lea	edx, [rax - 0x30]
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	dword ptr [rax], edx
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	edx, dword ptr [rax]
               	mov	eax, edx
               	shl	eax, 0x2
               	add	eax, edx
               	add	eax, eax
               	mov	edx, eax
               	mov	eax, dword ptr [rbp - 0x18]
               	add	eax, edx
               	lea	edx, [rax - 0x30]
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	dword ptr [rax], edx
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	qword ptr [rbp + 0x28], rax
               	lea	rax, [rbp - 0x60]
               	mov	rdx, rax
               	mov	ecx, 0x25
               	call	0x140002eb0 __pformat_putc
               	jmp	0x140004ea0 __mingw_pformat+0x75
               	nop
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	nop
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	nop
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	nop
               	jmp	0x140005a5e __mingw_pformat+0xc33
               	nop
               	mov	rax, qword ptr [rbp + 0x28]
               	movzx	eax, byte ptr [rax]
               	test	al, al
               	jne	0x140004ee9 __mingw_pformat+0xbe
               	jmp	0x140005a7d __mingw_pformat+0xc52
               	lea	rdx, [rbp - 0x60]
               	mov	eax, dword ptr [rbp - 0x18]
               	mov	ecx, eax
               	call	0x140002eb0 __pformat_putc
               	mov	rax, qword ptr [rbp + 0x28]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp + 0x28], rdx
               	movzx	eax, byte ptr [rax]
               	movsx	eax, al
               	mov	dword ptr [rbp - 0x18], eax
               	cmp	dword ptr [rbp - 0x18], 0x0
               	jne	0x140004ea5 __mingw_pformat+0x7a
               	mov	eax, dword ptr [rbp - 0x3c]
               	add	rsp, 0xd0
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop

__rv_alloc_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	dword ptr [rbp - 0x4], 0x4
               	mov	dword ptr [rbp - 0x8], 0x0
               	jmp	0x140005ad2 __rv_alloc_D2A+0x22
               	add	dword ptr [rbp - 0x8], 0x1
               	shl	dword ptr [rbp - 0x4]
               	mov	eax, dword ptr [rbp - 0x4]
               	add	eax, 0x17
               	cmp	dword ptr [rbp + 0x10], eax
               	jg	0x140005acb __rv_alloc_D2A+0x1b
               	mov	eax, dword ptr [rbp - 0x8]
               	mov	ecx, eax
               	call	0x14000793d __Balloc_D2A
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	edx, dword ptr [rbp - 0x8]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, 0x4
               	add	rsp, 0x30
               	pop	rbp
               	ret

__nrv_alloc_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	dword ptr [rbp + 0x20], r8d
               	mov	eax, dword ptr [rbp + 0x20]
               	mov	ecx, eax
               	call	0x140005ab0 __rv_alloc_D2A
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140005b33 __nrv_alloc_D2A+0x31
               	add	qword ptr [rbp - 0x8], 0x1
               	mov	rax, qword ptr [rbp + 0x10]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp + 0x10], rdx
               	movzx	edx, byte ptr [rax]
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	byte ptr [rax], dl
               	mov	rax, qword ptr [rbp - 0x8]
               	movzx	eax, byte ptr [rax]
               	test	al, al
               	jne	0x140005b2e __nrv_alloc_D2A+0x2c
               	cmp	qword ptr [rbp + 0x18], 0x0
               	je	0x140005b65 __nrv_alloc_D2A+0x63
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	qword ptr [rax], rdx
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rsp, 0x30
               	pop	rbp
               	ret

__freedtoa:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	rax, qword ptr [rbp + 0x10]
               	sub	rax, 0x4
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	edx, dword ptr [rax]
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	dword ptr [rax + 0x8], edx
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax + 0x8]
               	mov	edx, 0x1
               	mov	ecx, eax
               	shl	edx, cl
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	dword ptr [rax + 0xc], edx
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	nop
               	add	rsp, 0x30
               	pop	rbp
               	ret

__quorem_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x70
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x4], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	cmp	dword ptr [rbp - 0x4], eax
               	jle	0x140005bee __quorem_D2A+0x30
               	mov	eax, 0x0
               	jmp	0x140005e2d __quorem_D2A+0x26f
               	mov	rax, qword ptr [rbp + 0x18]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x28], rax
               	sub	dword ptr [rbp - 0x4], 0x1
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x28]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x40], rax
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x10], rax
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax]
               	mov	rdx, qword ptr [rbp - 0x40]
               	mov	edx, dword ptr [rdx]
               	lea	ecx, [rdx + 0x1]
               	mov	edx, 0x0
               	div	ecx
               	mov	dword ptr [rbp - 0x1c], eax
               	cmp	dword ptr [rbp - 0x1c], 0x0
               	je	0x140005d21 __quorem_D2A+0x163
               	mov	qword ptr [rbp - 0x30], 0x0
               	mov	qword ptr [rbp - 0x38], 0x0
               	mov	rax, qword ptr [rbp - 0x28]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x28], rdx
               	mov	eax, dword ptr [rax]
               	mov	edx, eax
               	mov	eax, dword ptr [rbp - 0x1c]
               	imul	rdx, rax
               	mov	rax, qword ptr [rbp - 0x38]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x48], rax
               	mov	rax, qword ptr [rbp - 0x48]
               	shr	rax, 0x20
               	mov	qword ptr [rbp - 0x38], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	mov	ecx, eax
               	mov	rax, qword ptr [rbp - 0x48]
               	mov	edx, eax
               	mov	rax, rcx
               	sub	rax, rdx
               	sub	rax, qword ptr [rbp - 0x30]
               	mov	qword ptr [rbp - 0x50], rax
               	mov	rax, qword ptr [rbp - 0x50]
               	shr	rax, 0x20
               	and	eax, 0x1
               	mov	qword ptr [rbp - 0x30], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	rdx, qword ptr [rbp - 0x50]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x28]
               	cmp	qword ptr [rbp - 0x40], rax
               	jae	0x140005c6d __quorem_D2A+0xaf
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	jne	0x140005d21 __quorem_D2A+0x163
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x10], rax
               	jmp	0x140005cfe __quorem_D2A+0x140
               	sub	dword ptr [rbp - 0x4], 0x1
               	sub	qword ptr [rbp - 0x18], 0x4
               	mov	rax, qword ptr [rbp - 0x18]
               	cmp	qword ptr [rbp - 0x10], rax
               	jae	0x140005d17 __quorem_D2A+0x159
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x140005cfa __quorem_D2A+0x13c
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	edx, dword ptr [rbp - 0x4]
               	mov	dword ptr [rax + 0x14], edx
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x1400081ed __cmp_D2A
               	test	eax, eax
               	js	0x140005e2a __quorem_D2A+0x26c
               	add	dword ptr [rbp - 0x1c], 0x1
               	mov	qword ptr [rbp - 0x30], 0x0
               	mov	qword ptr [rbp - 0x38], 0x0
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x28], rax
               	mov	rax, qword ptr [rbp - 0x28]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x28], rdx
               	mov	eax, dword ptr [rax]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp - 0x38]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x48], rax
               	mov	rax, qword ptr [rbp - 0x48]
               	shr	rax, 0x20
               	mov	qword ptr [rbp - 0x38], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	mov	ecx, eax
               	mov	rax, qword ptr [rbp - 0x48]
               	mov	edx, eax
               	mov	rax, rcx
               	sub	rax, rdx
               	sub	rax, qword ptr [rbp - 0x30]
               	mov	qword ptr [rbp - 0x50], rax
               	mov	rax, qword ptr [rbp - 0x50]
               	shr	rax, 0x20
               	and	eax, 0x1
               	mov	qword ptr [rbp - 0x30], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	rdx, qword ptr [rbp - 0x50]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x28]
               	cmp	qword ptr [rbp - 0x40], rax
               	jae	0x140005d65 __quorem_D2A+0x1a7
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x10], rax
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	jne	0x140005e2a __quorem_D2A+0x26c
               	jmp	0x140005e07 __quorem_D2A+0x249
               	sub	dword ptr [rbp - 0x4], 0x1
               	sub	qword ptr [rbp - 0x18], 0x4
               	mov	rax, qword ptr [rbp - 0x18]
               	cmp	qword ptr [rbp - 0x10], rax
               	jae	0x140005e20 __quorem_D2A+0x262
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x140005e03 __quorem_D2A+0x245
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	edx, dword ptr [rbp - 0x4]
               	mov	dword ptr [rax + 0x14], edx
               	mov	eax, dword ptr [rbp - 0x1c]
               	add	rsp, 0x70
               	pop	rbp
               	ret
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

__hi0bits_D2A:
               	push	rbp
               	mov	rbp, rsp
               	mov	dword ptr [rbp + 0x10], ecx
               	bsr	eax, dword ptr [rbp + 0x10]
               	xor	eax, 0x1f
               	pop	rbp
               	ret

bitstob:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x58
               	lea	rbp, [rsp + 0x50]
               	mov	qword ptr [rbp + 0x20], rcx
               	mov	dword ptr [rbp + 0x28], edx
               	mov	qword ptr [rbp + 0x30], r8
               	mov	dword ptr [rbp - 0x4], 0x20
               	mov	dword ptr [rbp - 0x8], 0x0
               	jmp	0x140005e7d bitstob+0x2d
               	shl	dword ptr [rbp - 0x4]
               	add	dword ptr [rbp - 0x8], 0x1
               	mov	eax, dword ptr [rbp - 0x4]
               	cmp	eax, dword ptr [rbp + 0x28]
               	jl	0x140005e76 bitstob+0x26
               	mov	eax, dword ptr [rbp - 0x8]
               	mov	ecx, eax
               	call	0x14000793d __Balloc_D2A
               	mov	qword ptr [rbp - 0x18], rax
               	mov	eax, dword ptr [rbp + 0x28]
               	sub	eax, 0x1
               	sar	eax, 0x5
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp + 0x20]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x20], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x28], rax
               	mov	rax, qword ptr [rbp - 0x28]
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	rdx, qword ptr [rbp + 0x20]
               	mov	edx, dword ptr [rdx]
               	mov	dword ptr [rax], edx
               	add	qword ptr [rbp + 0x20], 0x4
               	mov	rax, qword ptr [rbp + 0x20]
               	cmp	qword ptr [rbp - 0x20], rax
               	jae	0x140005ec5 bitstob+0x75
               	mov	rax, qword ptr [rbp - 0x10]
               	sub	rax, qword ptr [rbp - 0x28]
               	sar	rax, 0x2
               	mov	dword ptr [rbp - 0x4], eax
               	jmp	0x140005f16 bitstob+0xc6
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x140005f16 bitstob+0xc6
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	dword ptr [rax + 0x14], 0x0
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	dword ptr [rax], 0x0
               	jmp	0x140005f6f bitstob+0x11f
               	sub	dword ptr [rbp - 0x4], 0x1
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x28]
               	add	rax, rdx
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x140005ef9 bitstob+0xa9
               	mov	eax, dword ptr [rbp - 0x4]
               	lea	edx, [rax + 0x1]
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	dword ptr [rax + 0x14], edx
               	mov	eax, dword ptr [rbp - 0x4]
               	add	eax, 0x1
               	shl	eax, 0x5
               	mov	ebx, eax
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	edx, dword ptr [rbp - 0x4]
               	movsxd	rdx, edx
               	add	rdx, 0x4
               	mov	eax, dword ptr [rax + 4*rdx + 0x8]
               	mov	ecx, eax
               	call	0x140005e40 __hi0bits_D2A
               	sub	ebx, eax
               	mov	edx, ebx
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rsp, 0x58
               	pop	rbx
               	pop	rbp
               	ret

__gdtoa:
               	push	rbp
               	sub	rsp, 0x100
               	lea	rbp, [rsp + 0x80]
               	mov	qword ptr [rbp + 0x90], rcx
               	mov	dword ptr [rbp + 0x98], edx
               	mov	qword ptr [rbp + 0xa0], r8
               	mov	qword ptr [rbp + 0xa8], r9
               	mov	dword ptr [rbp + 0x64], 0x0
               	mov	rax, qword ptr [rbp + 0xa8]
               	mov	eax, dword ptr [rax]
               	and	eax, -0x31
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0xa8]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp + 0xa8]
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0x4], eax
               	mov	eax, dword ptr [rbp - 0x4]
               	and	eax, 0x7
               	cmp	eax, 0x4
               	je	0x14000608e __gdtoa+0x114
               	cmp	eax, 0x4
               	jg	0x1400060bc __gdtoa+0x142
               	cmp	eax, 0x3
               	je	0x140006060 __gdtoa+0xe6
               	cmp	eax, 0x3
               	jg	0x1400060bc __gdtoa+0x142
               	test	eax, eax
               	je	0x140006102 __gdtoa+0x188
               	test	eax, eax
               	js	0x1400060bc __gdtoa+0x142
               	sub	eax, 0x1
               	cmp	eax, 0x1
               	ja	0x1400060bc __gdtoa+0x142
               	nop
               	mov	rax, qword ptr [rbp + 0x90]
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0x8], eax
               	lea	rcx, [rbp - 0x4c]
               	mov	edx, dword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rbp + 0xa0]
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140005e50 bitstob
               	mov	qword ptr [rbp + 0x28], rax
               	mov	eax, dword ptr [rbp + 0x98]
               	mov	dword ptr [rbp - 0xc], eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140007681 __trailz_D2A
               	mov	dword ptr [rbp - 0x50], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	test	eax, eax
               	je	0x1400060e9 __gdtoa+0x16f
               	jmp	0x1400060c6 __gdtoa+0x14c
               	mov	rax, qword ptr [rbp + 0xc0]
               	mov	dword ptr [rax], 0xffff8000
               	mov	rax, qword ptr [rbp + 0xc8]
               	lea	rcx, [rip + 0x5315]     # 0x14000b390 .rdata
               	mov	r8d, 0x8
               	mov	rdx, rax
               	call	0x140005b02 __nrv_alloc_D2A
               	jmp	0x1400074d8 __gdtoa+0x155e
               	mov	rax, qword ptr [rbp + 0xc0]
               	mov	dword ptr [rax], 0xffff8000
               	mov	rax, qword ptr [rbp + 0xc8]
               	lea	rcx, [rip + 0x52f0]     # 0x14000b399 .rdata+0x9
               	mov	r8d, 0x3
               	mov	rdx, rax
               	call	0x140005b02 __nrv_alloc_D2A
               	jmp	0x1400074d8 __gdtoa+0x155e
               	mov	eax, 0x0
               	jmp	0x1400074d8 __gdtoa+0x155e
               	mov	edx, dword ptr [rbp - 0x50]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140007525 __rshift_D2A
               	mov	eax, dword ptr [rbp - 0x50]
               	add	dword ptr [rbp + 0x98], eax
               	mov	edx, dword ptr [rbp - 0x4c]
               	mov	eax, dword ptr [rbp - 0x50]
               	sub	edx, eax
               	mov	dword ptr [rbp - 0x4c], edx
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x14]
               	test	eax, eax
               	jne	0x140006131 __gdtoa+0x1b7
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	jmp	0x140006103 __gdtoa+0x189
               	nop
               	mov	rax, qword ptr [rbp + 0xc0]
               	mov	dword ptr [rax], 0x1
               	mov	rax, qword ptr [rbp + 0xc8]
               	lea	rcx, [rip + 0x527f]     # 0x14000b39d .rdata+0xd
               	mov	r8d, 0x1
               	mov	rdx, rax
               	call	0x140005b02 __nrv_alloc_D2A
               	jmp	0x1400074d8 __gdtoa+0x155e
               	lea	rdx, [rbp - 0x50]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x1400084b6 __b2d_D2A
               	movq	rax, xmm0
               	mov	qword ptr [rbp - 0x58], rax
               	mov	edx, dword ptr [rbp - 0x4c]
               	mov	eax, dword ptr [rbp + 0x98]
               	add	eax, edx
               	sub	eax, 0x1
               	mov	dword ptr [rbp - 0x50], eax
               	mov	eax, dword ptr [rbp - 0x54]
               	and	eax, 0xfffff
               	mov	dword ptr [rbp - 0x54], eax
               	mov	eax, dword ptr [rbp - 0x54]
               	or	eax, 0x3ff00000
               	mov	dword ptr [rbp - 0x54], eax
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	movsd	xmm2, qword ptr [rip + 0x5222] # 0x14000b3a0 .rdata+0x10
               	movapd	xmm1, xmm0
               	subsd	xmm1, xmm2
               	movsd	xmm0, qword ptr [rip + 0x521a] # 0x14000b3a8 .rdata+0x18
               	mulsd	xmm1, xmm0
               	movsd	xmm0, qword ptr [rip + 0x5216] # 0x14000b3b0 .rdata+0x20
               	addsd	xmm1, xmm0
               	mov	eax, dword ptr [rbp - 0x50]
               	pxor	xmm2, xmm2
               	cvtsi2sd	xmm2, eax
               	movsd	xmm0, qword ptr [rip + 0x5207] # 0x14000b3b8 .rdata+0x28
               	mulsd	xmm0, xmm2
               	addsd	xmm0, xmm1
               	movsd	qword ptr [rbp + 0x8], xmm0
               	mov	eax, dword ptr [rbp - 0x50]
               	mov	dword ptr [rbp + 0x60], eax
               	cmp	dword ptr [rbp + 0x60], 0x0
               	jns	0x1400061cd __gdtoa+0x253
               	neg	dword ptr [rbp + 0x60]
               	sub	dword ptr [rbp + 0x60], 0x435
               	cmp	dword ptr [rbp + 0x60], 0x0
               	jle	0x1400061fd __gdtoa+0x283
               	pxor	xmm1, xmm1
               	cvtsi2sd	xmm1, dword ptr [rbp + 0x60]
               	movsd	xmm0, qword ptr [rip + 0x51d5] # 0x14000b3c0 .rdata+0x30
               	mulsd	xmm0, xmm1
               	movsd	xmm1, qword ptr [rbp + 0x8]
               	addsd	xmm0, xmm1
               	movsd	qword ptr [rbp + 0x8], xmm0
               	movsd	xmm0, qword ptr [rbp + 0x8]
               	cvttsd2si	eax, xmm0
               	mov	dword ptr [rbp + 0x58], eax
               	pxor	xmm0, xmm0
               	comisd	xmm0, qword ptr [rbp + 0x8]
               	jbe	0x14000622f __gdtoa+0x2b5
               	pxor	xmm0, xmm0
               	cvtsi2sd	xmm0, dword ptr [rbp + 0x58]
               	ucomisd	xmm0, qword ptr [rbp + 0x8]
               	jp	0x14000622b __gdtoa+0x2b1
               	ucomisd	xmm0, qword ptr [rbp + 0x8]
               	je	0x14000622f __gdtoa+0x2b5
               	sub	dword ptr [rbp + 0x58], 0x1
               	mov	dword ptr [rbp + 0x54], 0x1
               	mov	eax, dword ptr [rbp - 0x54]
               	mov	ecx, dword ptr [rbp - 0x4c]
               	mov	edx, dword ptr [rbp + 0x98]
               	add	edx, ecx
               	sub	edx, 0x1
               	shl	edx, 0x14
               	add	eax, edx
               	mov	dword ptr [rbp - 0x54], eax
               	cmp	dword ptr [rbp + 0x58], 0x0
               	js	0x140006283 __gdtoa+0x309
               	cmp	dword ptr [rbp + 0x58], 0x16
               	jg	0x140006283 __gdtoa+0x309
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	mov	rax, qword ptr [rip + 0x5429] # 0x14000b690 .refptr.__tens_D2A
               	mov	edx, dword ptr [rbp + 0x58]
               	movsxd	rdx, edx
               	movsd	xmm0, qword ptr [rax + 8*rdx]
               	comisd	xmm0, xmm1
               	jbe	0x14000627c __gdtoa+0x302
               	sub	dword ptr [rbp + 0x58], 0x1
               	mov	dword ptr [rbp + 0x54], 0x0
               	mov	edx, dword ptr [rbp - 0x4c]
               	mov	eax, dword ptr [rbp - 0x50]
               	sub	edx, eax
               	lea	eax, [rdx - 0x1]
               	mov	dword ptr [rbp + 0x60], eax
               	cmp	dword ptr [rbp + 0x60], 0x0
               	js	0x1400062a6 __gdtoa+0x32c
               	mov	dword ptr [rbp + 0x7c], 0x0
               	mov	eax, dword ptr [rbp + 0x60]
               	mov	dword ptr [rbp + 0x40], eax
               	jmp	0x1400062b5 __gdtoa+0x33b
               	mov	eax, dword ptr [rbp + 0x60]
               	neg	eax
               	mov	dword ptr [rbp + 0x7c], eax
               	mov	dword ptr [rbp + 0x40], 0x0
               	cmp	dword ptr [rbp + 0x58], 0x0
               	js	0x1400062d0 __gdtoa+0x356
               	mov	dword ptr [rbp + 0x78], 0x0
               	mov	eax, dword ptr [rbp + 0x58]
               	mov	dword ptr [rbp + 0x3c], eax
               	mov	eax, dword ptr [rbp + 0x58]
               	add	dword ptr [rbp + 0x40], eax
               	jmp	0x1400062e5 __gdtoa+0x36b
               	mov	eax, dword ptr [rbp + 0x58]
               	sub	dword ptr [rbp + 0x7c], eax
               	mov	eax, dword ptr [rbp + 0x58]
               	neg	eax
               	mov	dword ptr [rbp + 0x78], eax
               	mov	dword ptr [rbp + 0x3c], 0x0
               	cmp	dword ptr [rbp + 0xb0], 0x0
               	js	0x1400062f7 __gdtoa+0x37d
               	cmp	dword ptr [rbp + 0xb0], 0x9
               	jle	0x140006301 __gdtoa+0x387
               	mov	dword ptr [rbp + 0xb0], 0x0
               	mov	dword ptr [rbp + 0x34], 0x1
               	cmp	dword ptr [rbp + 0xb0], 0x5
               	jle	0x140006321 __gdtoa+0x3a7
               	sub	dword ptr [rbp + 0xb0], 0x4
               	mov	dword ptr [rbp + 0x34], 0x0
               	jmp	0x14000633c __gdtoa+0x3c2
               	mov	eax, dword ptr [rbp - 0x50]
               	cmp	eax, 0x3f9
               	jg	0x140006335 __gdtoa+0x3bb
               	mov	eax, dword ptr [rbp - 0x50]
               	cmp	eax, 0xfffffc02
               	jge	0x14000633c __gdtoa+0x3c2
               	mov	dword ptr [rbp + 0x34], 0x0
               	mov	dword ptr [rbp + 0x50], 0x1
               	mov	dword ptr [rbp + 0x68], 0xffffffff
               	mov	eax, dword ptr [rbp + 0x68]
               	mov	dword ptr [rbp + 0x6c], eax
               	cmp	dword ptr [rbp + 0xb0], 0x5
               	je	0x140006422 __gdtoa+0x4a8
               	cmp	dword ptr [rbp + 0xb0], 0x5
               	jg	0x140006450 __gdtoa+0x4d6
               	cmp	dword ptr [rbp + 0xb0], 0x4
               	je	0x1400063f1 __gdtoa+0x477
               	cmp	dword ptr [rbp + 0xb0], 0x4
               	jg	0x140006450 __gdtoa+0x4d6
               	cmp	dword ptr [rbp + 0xb0], 0x3
               	je	0x14000641b __gdtoa+0x4a1
               	cmp	dword ptr [rbp + 0xb0], 0x3
               	jg	0x140006450 __gdtoa+0x4d6
               	cmp	dword ptr [rbp + 0xb0], 0x1
               	jg	0x1400063b1 __gdtoa+0x437
               	cmp	dword ptr [rbp + 0xb0], 0x0
               	jns	0x1400063bf __gdtoa+0x445
               	jmp	0x140006450 __gdtoa+0x4d6
               	cmp	dword ptr [rbp + 0xb0], 0x2
               	je	0x1400063ea __gdtoa+0x470
               	jmp	0x140006450 __gdtoa+0x4d6
               	pxor	xmm1, xmm1
               	cvtsi2sd	xmm1, dword ptr [rbp - 0x8]
               	movsd	xmm0, qword ptr [rip + 0x4ff8] # 0x14000b3c8 .rdata+0x38
               	mulsd	xmm0, xmm1
               	cvttsd2si	eax, xmm0
               	add	eax, 0x3
               	mov	dword ptr [rbp - 0x50], eax
               	mov	dword ptr [rbp + 0xb8], 0x0
               	jmp	0x140006450 __gdtoa+0x4d6
               	mov	dword ptr [rbp + 0x50], 0x0
               	cmp	dword ptr [rbp + 0xb8], 0x0
               	jg	0x140006404 __gdtoa+0x48a
               	mov	dword ptr [rbp + 0xb8], 0x1
               	mov	eax, dword ptr [rbp + 0xb8]
               	mov	dword ptr [rbp - 0x50], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	mov	dword ptr [rbp + 0x68], eax
               	mov	eax, dword ptr [rbp + 0x68]
               	mov	dword ptr [rbp + 0x6c], eax
               	jmp	0x140006450 __gdtoa+0x4d6
               	mov	dword ptr [rbp + 0x50], 0x0
               	mov	edx, dword ptr [rbp + 0xb8]
               	mov	eax, dword ptr [rbp + 0x58]
               	add	eax, edx
               	add	eax, 0x1
               	mov	dword ptr [rbp - 0x50], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	mov	dword ptr [rbp + 0x6c], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	sub	eax, 0x1
               	mov	dword ptr [rbp + 0x68], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	test	eax, eax
               	jg	0x140006450 __gdtoa+0x4d6
               	mov	dword ptr [rbp - 0x50], 0x1
               	mov	eax, dword ptr [rbp - 0x50]
               	mov	ecx, eax
               	call	0x140005ab0 __rv_alloc_D2A
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	qword ptr [rbp], rax
               	cmp	dword ptr [rbp + 0xb0], 0x1
               	jg	0x140006478 __gdtoa+0x4fe
               	mov	dword ptr [rbp + 0x44], 0x0
               	jmp	0x1400064b0 __gdtoa+0x536
               	mov	rax, qword ptr [rbp + 0x90]
               	mov	eax, dword ptr [rax + 0xc]
               	sub	eax, 0x1
               	mov	dword ptr [rbp + 0x44], eax
               	cmp	dword ptr [rbp + 0x44], 0x0
               	je	0x1400064b0 __gdtoa+0x536
               	cmp	dword ptr [rbp + 0x44], 0x0
               	jns	0x14000649b __gdtoa+0x521
               	mov	dword ptr [rbp + 0x44], 0x2
               	mov	eax, dword ptr [rbp - 0x4]
               	and	eax, 0x8
               	test	eax, eax
               	je	0x1400064b0 __gdtoa+0x536
               	mov	eax, 0x3
               	sub	eax, dword ptr [rbp + 0x44]
               	mov	dword ptr [rbp + 0x44], eax
               	cmp	dword ptr [rbp + 0x6c], 0x0
               	js	0x140006973 __gdtoa+0x9f9
               	cmp	dword ptr [rbp + 0x6c], 0xe
               	jg	0x140006973 __gdtoa+0x9f9
               	cmp	dword ptr [rbp + 0x34], 0x0
               	je	0x140006973 __gdtoa+0x9f9
               	cmp	dword ptr [rbp + 0x44], 0x0
               	jne	0x140006973 __gdtoa+0x9f9
               	cmp	dword ptr [rbp + 0x58], 0x0
               	jne	0x140006973 __gdtoa+0x9f9
               	mov	dword ptr [rbp - 0x50], 0x0
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	movsd	qword ptr [rbp - 0x20], xmm0
               	mov	eax, dword ptr [rbp + 0x58]
               	mov	dword ptr [rbp - 0x24], eax
               	mov	eax, dword ptr [rbp + 0x6c]
               	mov	dword ptr [rbp - 0x28], eax
               	mov	dword ptr [rbp + 0x70], 0x2
               	cmp	dword ptr [rbp + 0x58], 0x0
               	jle	0x1400065a8 __gdtoa+0x62e
               	mov	eax, dword ptr [rbp + 0x58]
               	and	eax, 0xf
               	mov	edx, eax
               	mov	rax, qword ptr [rip + 0x5171] # 0x14000b690 .refptr.__tens_D2A
               	movsxd	rdx, edx
               	movsd	xmm0, qword ptr [rax + 8*rdx]
               	movsd	qword ptr [rbp + 0x8], xmm0
               	mov	eax, dword ptr [rbp + 0x58]
               	sar	eax, 0x4
               	mov	dword ptr [rbp + 0x60], eax
               	mov	eax, dword ptr [rbp + 0x60]
               	and	eax, 0x10
               	test	eax, eax
               	je	0x14000659d __gdtoa+0x623
               	and	dword ptr [rbp + 0x60], 0xf
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	mov	rax, qword ptr [rip + 0x5071] # 0x14000b5c0 .refptr.__bigtens_D2A
               	movsd	xmm1, qword ptr [rax + 0x20]
               	divsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	add	dword ptr [rbp + 0x70], 0x1
               	jmp	0x14000659d __gdtoa+0x623
               	mov	eax, dword ptr [rbp + 0x60]
               	and	eax, 0x1
               	test	eax, eax
               	je	0x140006591 __gdtoa+0x617
               	add	dword ptr [rbp + 0x70], 0x1
               	mov	edx, dword ptr [rbp - 0x50]
               	mov	rax, qword ptr [rip + 0x5045] # 0x14000b5c0 .refptr.__bigtens_D2A
               	movsxd	rdx, edx
               	movsd	xmm0, qword ptr [rax + 8*rdx]
               	movsd	xmm1, qword ptr [rbp + 0x8]
               	mulsd	xmm0, xmm1
               	movsd	qword ptr [rbp + 0x8], xmm0
               	sar	dword ptr [rbp + 0x60]
               	mov	eax, dword ptr [rbp - 0x50]
               	add	eax, 0x1
               	mov	dword ptr [rbp - 0x50], eax
               	cmp	dword ptr [rbp + 0x60], 0x0
               	jne	0x140006563 __gdtoa+0x5e9
               	jmp	0x140006633 __gdtoa+0x6b9
               	movsd	xmm0, qword ptr [rip + 0x4e20] # 0x14000b3d0 .rdata+0x40
               	movsd	qword ptr [rbp + 0x8], xmm0
               	mov	eax, dword ptr [rbp + 0x58]
               	neg	eax
               	mov	dword ptr [rbp + 0x5c], eax
               	cmp	dword ptr [rbp + 0x5c], 0x0
               	je	0x140006633 __gdtoa+0x6b9
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	mov	eax, dword ptr [rbp + 0x5c]
               	and	eax, 0xf
               	mov	edx, eax
               	mov	rax, qword ptr [rip + 0x50b9] # 0x14000b690 .refptr.__tens_D2A
               	movsxd	rdx, edx
               	movsd	xmm0, qword ptr [rax + 8*rdx]
               	mulsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	mov	eax, dword ptr [rbp + 0x5c]
               	sar	eax, 0x4
               	mov	dword ptr [rbp + 0x60], eax
               	jmp	0x14000662d __gdtoa+0x6b3
               	mov	eax, dword ptr [rbp + 0x60]
               	and	eax, 0x1
               	test	eax, eax
               	je	0x140006621 __gdtoa+0x6a7
               	add	dword ptr [rbp + 0x70], 0x1
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	mov	edx, dword ptr [rbp - 0x50]
               	mov	rax, qword ptr [rip + 0x4fb0] # 0x14000b5c0 .refptr.__bigtens_D2A
               	movsxd	rdx, edx
               	movsd	xmm0, qword ptr [rax + 8*rdx]
               	mulsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	sar	dword ptr [rbp + 0x60]
               	mov	eax, dword ptr [rbp - 0x50]
               	add	eax, 0x1
               	mov	dword ptr [rbp - 0x50], eax
               	cmp	dword ptr [rbp + 0x60], 0x0
               	jne	0x1400065f3 __gdtoa+0x679
               	cmp	dword ptr [rbp + 0x54], 0x0
               	je	0x140006680 __gdtoa+0x706
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	movsd	xmm0, qword ptr [rip + 0x4d8a] # 0x14000b3d0 .rdata+0x40
               	comisd	xmm0, xmm1
               	jbe	0x140006680 __gdtoa+0x706
               	cmp	dword ptr [rbp + 0x6c], 0x0
               	jle	0x140006680 __gdtoa+0x706
               	cmp	dword ptr [rbp + 0x68], 0x0
               	jle	0x140006951 __gdtoa+0x9d7
               	mov	eax, dword ptr [rbp + 0x68]
               	mov	dword ptr [rbp + 0x6c], eax
               	sub	dword ptr [rbp + 0x58], 0x1
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	movsd	xmm0, qword ptr [rip + 0x4d65] # 0x14000b3d8 .rdata+0x48
               	mulsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	add	dword ptr [rbp + 0x70], 0x1
               	pxor	xmm1, xmm1
               	cvtsi2sd	xmm1, dword ptr [rbp + 0x70]
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	mulsd	xmm1, xmm0
               	movsd	xmm0, qword ptr [rip + 0x4d46] # 0x14000b3e0 .rdata+0x50
               	addsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x60], xmm0
               	mov	eax, dword ptr [rbp - 0x5c]
               	sub	eax, 0x3400000
               	mov	dword ptr [rbp - 0x5c], eax
               	cmp	dword ptr [rbp + 0x6c], 0x0
               	jne	0x140006713 __gdtoa+0x799
               	mov	qword ptr [rbp + 0x18], 0x0
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rbp + 0x10], rax
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	movsd	xmm1, qword ptr [rip + 0x4d17] # 0x14000b3e8 .rdata+0x58
               	subsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	movsd	xmm1, qword ptr [rbp - 0x60]
               	comisd	xmm0, xmm1
               	ja	0x140006e9a __gdtoa+0xf20
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	movsd	xmm0, qword ptr [rbp - 0x60]
               	movq	xmm2, qword ptr [rip + 0x4cf0] # 0x14000b3f0 .rdata+0x60
               	xorpd	xmm0, xmm2
               	comisd	xmm0, xmm1
               	ja	0x140006e7c __gdtoa+0xf02
               	jmp	0x140006955 __gdtoa+0x9db
               	cmp	dword ptr [rbp + 0x50], 0x0
               	je	0x14000683f __gdtoa+0x8c5
               	movsd	xmm1, qword ptr [rbp + 0x8]
               	movsd	xmm0, qword ptr [rip + 0x4cd6] # 0x14000b400 .rdata+0x70
               	mulsd	xmm0, xmm1
               	mov	eax, dword ptr [rbp + 0x6c]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rip + 0x4f55] # 0x14000b690 .refptr.__tens_D2A
               	movsxd	rdx, edx
               	movsd	xmm1, qword ptr [rax + 8*rdx]
               	divsd	xmm0, xmm1
               	movsd	xmm1, qword ptr [rbp - 0x60]
               	subsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x60], xmm0
               	mov	dword ptr [rbp - 0x50], 0x0
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	divsd	xmm0, qword ptr [rbp + 0x8]
               	cvttsd2si	eax, xmm0
               	mov	dword ptr [rbp - 0x2c], eax
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	pxor	xmm1, xmm1
               	cvtsi2sd	xmm1, dword ptr [rbp - 0x2c]
               	mulsd	xmm1, qword ptr [rbp + 0x8]
               	subsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	mov	eax, dword ptr [rbp - 0x2c]
               	lea	ecx, [rax + 0x30]
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	edx, ecx
               	mov	byte ptr [rax], dl
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	movsd	xmm0, qword ptr [rbp - 0x60]
               	comisd	xmm0, xmm1
               	jbe	0x1400067d8 __gdtoa+0x85e
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	pxor	xmm1, xmm1
               	ucomisd	xmm0, xmm1
               	jp	0x1400067cc __gdtoa+0x852
               	pxor	xmm1, xmm1
               	ucomisd	xmm0, xmm1
               	je	0x14000745c __gdtoa+0x14e2
               	mov	dword ptr [rbp + 0x64], 0x10
               	jmp	0x14000745c __gdtoa+0x14e2
               	movsd	xmm2, qword ptr [rbp - 0x58]
               	movsd	xmm0, qword ptr [rbp + 0x8]
               	movapd	xmm1, xmm0
               	subsd	xmm1, xmm2
               	movsd	xmm0, qword ptr [rbp - 0x60]
               	comisd	xmm0, xmm1
               	ja	0x140006abc __gdtoa+0xb42
               	mov	eax, dword ptr [rbp - 0x50]
               	add	eax, 0x1
               	mov	dword ptr [rbp - 0x50], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	cmp	dword ptr [rbp + 0x6c], eax
               	jle	0x140006954 __gdtoa+0x9da
               	movsd	xmm1, qword ptr [rbp - 0x60]
               	movsd	xmm0, qword ptr [rip + 0x4bbd] # 0x14000b3d8 .rdata+0x48
               	mulsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x60], xmm0
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	movsd	xmm0, qword ptr [rip + 0x4ba7] # 0x14000b3d8 .rdata+0x48
               	mulsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	jmp	0x14000675c __gdtoa+0x7e2
               	movsd	xmm1, qword ptr [rbp - 0x60]
               	mov	eax, dword ptr [rbp + 0x6c]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rip + 0x4e3f] # 0x14000b690 .refptr.__tens_D2A
               	movsxd	rdx, edx
               	movsd	xmm0, qword ptr [rax + 8*rdx]
               	mulsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x60], xmm0
               	mov	dword ptr [rbp - 0x50], 0x1
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	divsd	xmm0, qword ptr [rbp + 0x8]
               	cvttsd2si	eax, xmm0
               	mov	dword ptr [rbp - 0x2c], eax
               	cmp	dword ptr [rbp - 0x2c], 0x0
               	je	0x14000689c __gdtoa+0x922
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	pxor	xmm1, xmm1
               	cvtsi2sd	xmm1, dword ptr [rbp - 0x2c]
               	mulsd	xmm1, qword ptr [rbp + 0x8]
               	subsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	mov	eax, dword ptr [rbp - 0x2c]
               	lea	ecx, [rax + 0x30]
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	edx, ecx
               	mov	byte ptr [rax], dl
               	mov	eax, dword ptr [rbp - 0x50]
               	cmp	dword ptr [rbp + 0x6c], eax
               	jne	0x14000692d __gdtoa+0x9b3
               	movsd	xmm1, qword ptr [rbp + 0x8]
               	movsd	xmm0, qword ptr [rip + 0x4b39] # 0x14000b400 .rdata+0x70
               	mulsd	xmm0, xmm1
               	movsd	qword ptr [rbp + 0x8], xmm0
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	movsd	xmm1, qword ptr [rbp - 0x60]
               	addsd	xmm1, qword ptr [rbp + 0x8]
               	comisd	xmm0, xmm1
               	ja	0x140006abf __gdtoa+0xb45
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	movsd	xmm2, qword ptr [rbp - 0x60]
               	movsd	xmm0, qword ptr [rbp + 0x8]
               	subsd	xmm0, xmm2
               	comisd	xmm0, xmm1
               	ja	0x140006904 __gdtoa+0x98a
               	jmp	0x140006955 __gdtoa+0x9db
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	pxor	xmm1, xmm1
               	ucomisd	xmm0, xmm1
               	jp	0x140006921 __gdtoa+0x9a7
               	pxor	xmm1, xmm1
               	ucomisd	xmm0, xmm1
               	je	0x14000745f __gdtoa+0x14e5
               	mov	dword ptr [rbp + 0x64], 0x10
               	jmp	0x14000745f __gdtoa+0x14e5
               	mov	eax, dword ptr [rbp - 0x50]
               	add	eax, 0x1
               	mov	dword ptr [rbp - 0x50], eax
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	movsd	xmm0, qword ptr [rip + 0x4a95] # 0x14000b3d8 .rdata+0x48
               	mulsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	jmp	0x140006869 __gdtoa+0x8ef
               	nop
               	jmp	0x140006955 __gdtoa+0x9db
               	nop
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	qword ptr [rbp], rax
               	movsd	xmm0, qword ptr [rbp - 0x20]
               	movsd	qword ptr [rbp - 0x58], xmm0
               	mov	eax, dword ptr [rbp - 0x24]
               	mov	dword ptr [rbp + 0x58], eax
               	mov	eax, dword ptr [rbp - 0x28]
               	mov	dword ptr [rbp + 0x6c], eax
               	cmp	dword ptr [rbp + 0x98], 0x0
               	js	0x140006b3f __gdtoa+0xbc5
               	mov	rax, qword ptr [rbp + 0x90]
               	mov	eax, dword ptr [rax + 0x14]
               	cmp	dword ptr [rbp + 0x58], eax
               	jg	0x140006b3f __gdtoa+0xbc5
               	mov	rax, qword ptr [rip + 0x4cf6] # 0x14000b690 .refptr.__tens_D2A
               	mov	edx, dword ptr [rbp + 0x58]
               	movsxd	rdx, edx
               	movsd	xmm0, qword ptr [rax + 8*rdx]
               	movsd	qword ptr [rbp + 0x8], xmm0
               	cmp	dword ptr [rbp + 0xb8], 0x0
               	jns	0x1400069f8 __gdtoa+0xa7e
               	cmp	dword ptr [rbp + 0x6c], 0x0
               	jg	0x1400069f8 __gdtoa+0xa7e
               	mov	qword ptr [rbp + 0x18], 0x0
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rbp + 0x10], rax
               	cmp	dword ptr [rbp + 0x6c], 0x0
               	js	0x140006e7f __gdtoa+0xf05
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	movsd	xmm2, qword ptr [rbp + 0x8]
               	movsd	xmm0, qword ptr [rip + 0x4a03] # 0x14000b3e8 .rdata+0x58
               	mulsd	xmm0, xmm2
               	comisd	xmm0, xmm1
               	jae	0x140006e7f __gdtoa+0xf05
               	jmp	0x140006e9e __gdtoa+0xf24
               	mov	dword ptr [rbp - 0x50], 0x1
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	divsd	xmm0, qword ptr [rbp + 0x8]
               	cvttsd2si	eax, xmm0
               	mov	dword ptr [rbp - 0x2c], eax
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	pxor	xmm1, xmm1
               	cvtsi2sd	xmm1, dword ptr [rbp - 0x2c]
               	mulsd	xmm1, qword ptr [rbp + 0x8]
               	subsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	mov	eax, dword ptr [rbp - 0x2c]
               	lea	ecx, [rax + 0x30]
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	edx, ecx
               	mov	byte ptr [rax], dl
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	pxor	xmm1, xmm1
               	ucomisd	xmm0, xmm1
               	jp	0x140006a5f __gdtoa+0xae5
               	pxor	xmm1, xmm1
               	ucomisd	xmm0, xmm1
               	je	0x140006b39 __gdtoa+0xbbf
               	mov	eax, dword ptr [rbp - 0x50]
               	cmp	dword ptr [rbp + 0x6c], eax
               	jne	0x140006b15 __gdtoa+0xb9b
               	cmp	dword ptr [rbp + 0x44], 0x0
               	je	0x140006a83 __gdtoa+0xb09
               	cmp	dword ptr [rbp + 0x44], 0x1
               	je	0x140006ac2 __gdtoa+0xb48
               	mov	dword ptr [rbp + 0x64], 0x10
               	jmp	0x140007463 __gdtoa+0x14e9
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	addsd	xmm0, xmm0
               	movsd	qword ptr [rbp - 0x58], xmm0
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	comisd	xmm0, qword ptr [rbp + 0x8]
               	ja	0x140006ac5 __gdtoa+0xb4b
               	movsd	xmm0, qword ptr [rbp - 0x58]
               	ucomisd	xmm0, qword ptr [rbp + 0x8]
               	jp	0x140006b0c __gdtoa+0xb92
               	ucomisd	xmm0, qword ptr [rbp + 0x8]
               	jne	0x140006b0c __gdtoa+0xb92
               	mov	eax, dword ptr [rbp - 0x2c]
               	and	eax, 0x1
               	test	eax, eax
               	je	0x140006b0c __gdtoa+0xb92
               	jmp	0x140006ac5 __gdtoa+0xb4b
               	nop
               	jmp	0x140006ac6 __gdtoa+0xb4c
               	nop
               	jmp	0x140006ac6 __gdtoa+0xb4c
               	nop
               	jmp	0x140006ac6 __gdtoa+0xb4c
               	nop
               	mov	dword ptr [rbp + 0x64], 0x20
               	jmp	0x140006ae6 __gdtoa+0xb6c
               	mov	rax, qword ptr [rbp]
               	cmp	rax, qword ptr [rbp - 0x18]
               	jne	0x140006ae6 __gdtoa+0xb6c
               	add	dword ptr [rbp + 0x58], 0x1
               	mov	rax, qword ptr [rbp]
               	mov	byte ptr [rax], 0x30
               	jmp	0x140006af6 __gdtoa+0xb7c
               	sub	qword ptr [rbp], 0x1
               	mov	rax, qword ptr [rbp]
               	movzx	eax, byte ptr [rax]
               	cmp	al, 0x39
               	je	0x140006acf __gdtoa+0xb55
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	movzx	edx, byte ptr [rax]
               	add	edx, 0x1
               	mov	byte ptr [rax], dl
               	jmp	0x140006b3a __gdtoa+0xbc0
               	mov	dword ptr [rbp + 0x64], 0x10
               	jmp	0x140006b3a __gdtoa+0xbc0
               	mov	eax, dword ptr [rbp - 0x50]
               	add	eax, 0x1
               	mov	dword ptr [rbp - 0x50], eax
               	movsd	xmm1, qword ptr [rbp - 0x58]
               	movsd	xmm0, qword ptr [rip + 0x48ad] # 0x14000b3d8 .rdata+0x48
               	mulsd	xmm0, xmm1
               	movsd	qword ptr [rbp - 0x58], xmm0
               	jmp	0x1400069ff __gdtoa+0xa85
               	nop
               	jmp	0x140007463 __gdtoa+0x14e9
               	mov	eax, dword ptr [rbp + 0x7c]
               	mov	dword ptr [rbp + 0x4c], eax
               	mov	eax, dword ptr [rbp + 0x78]
               	mov	dword ptr [rbp + 0x48], eax
               	mov	qword ptr [rbp + 0x20], 0x0
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	qword ptr [rbp + 0x18], rax
               	cmp	dword ptr [rbp + 0x50], 0x0
               	je	0x140006c45 __gdtoa+0xccb
               	mov	eax, dword ptr [rbp - 0x4c]
               	mov	edx, dword ptr [rbp - 0x8]
               	sub	edx, eax
               	mov	dword ptr [rbp - 0x50], edx
               	mov	eax, dword ptr [rbp - 0x50]
               	lea	edx, [rax + 0x1]
               	mov	dword ptr [rbp - 0x50], edx
               	mov	edx, dword ptr [rbp + 0x98]
               	sub	edx, eax
               	mov	rax, qword ptr [rbp + 0x90]
               	mov	eax, dword ptr [rax + 0x4]
               	cmp	edx, eax
               	jge	0x140006bd2 __gdtoa+0xc58
               	cmp	dword ptr [rbp + 0xb0], 0x3
               	je	0x140006bd2 __gdtoa+0xc58
               	cmp	dword ptr [rbp + 0xb0], 0x5
               	je	0x140006bd2 __gdtoa+0xc58
               	mov	rax, qword ptr [rbp + 0x90]
               	mov	eax, dword ptr [rax + 0x4]
               	mov	edx, dword ptr [rbp + 0x98]
               	sub	edx, eax
               	lea	eax, [rdx + 0x1]
               	mov	dword ptr [rbp - 0x50], eax
               	cmp	dword ptr [rbp + 0xb0], 0x1
               	jle	0x140006c2a __gdtoa+0xcb0
               	cmp	dword ptr [rbp + 0x6c], 0x0
               	jle	0x140006c2a __gdtoa+0xcb0
               	mov	eax, dword ptr [rbp - 0x50]
               	cmp	dword ptr [rbp + 0x6c], eax
               	jge	0x140006c2a __gdtoa+0xcb0
               	jmp	0x140006bdc __gdtoa+0xc62
               	cmp	dword ptr [rbp + 0xb0], 0x1
               	jle	0x140006c2b __gdtoa+0xcb1
               	nop
               	mov	eax, dword ptr [rbp + 0x6c]
               	sub	eax, 0x1
               	mov	dword ptr [rbp + 0x60], eax
               	mov	eax, dword ptr [rbp + 0x48]
               	cmp	eax, dword ptr [rbp + 0x60]
               	jl	0x140006bf5 __gdtoa+0xc7b
               	mov	eax, dword ptr [rbp + 0x60]
               	sub	dword ptr [rbp + 0x48], eax
               	jmp	0x140006c0e __gdtoa+0xc94
               	mov	eax, dword ptr [rbp + 0x48]
               	sub	dword ptr [rbp + 0x60], eax
               	mov	eax, dword ptr [rbp + 0x60]
               	add	dword ptr [rbp + 0x3c], eax
               	mov	eax, dword ptr [rbp + 0x60]
               	add	dword ptr [rbp + 0x78], eax
               	mov	dword ptr [rbp + 0x48], 0x0
               	mov	eax, dword ptr [rbp + 0x6c]
               	mov	dword ptr [rbp - 0x50], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	test	eax, eax
               	jns	0x140006c2b __gdtoa+0xcb1
               	mov	eax, dword ptr [rbp - 0x50]
               	sub	dword ptr [rbp + 0x4c], eax
               	mov	dword ptr [rbp - 0x50], 0x0
               	jmp	0x140006c2b __gdtoa+0xcb1
               	nop
               	mov	eax, dword ptr [rbp - 0x50]
               	add	dword ptr [rbp + 0x7c], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	add	dword ptr [rbp + 0x40], eax
               	mov	ecx, 0x1
               	call	0x140007c37 __i2b_D2A
               	mov	qword ptr [rbp + 0x18], rax
               	cmp	dword ptr [rbp + 0x4c], 0x0
               	jle	0x140006c71 __gdtoa+0xcf7
               	cmp	dword ptr [rbp + 0x40], 0x0
               	jle	0x140006c71 __gdtoa+0xcf7
               	mov	edx, dword ptr [rbp + 0x40]
               	mov	eax, dword ptr [rbp + 0x4c]
               	cmp	edx, eax
               	cmovle	eax, edx
               	mov	dword ptr [rbp - 0x50], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	sub	dword ptr [rbp + 0x7c], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	sub	dword ptr [rbp + 0x4c], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	sub	dword ptr [rbp + 0x40], eax
               	cmp	dword ptr [rbp + 0x78], 0x0
               	jle	0x140006cf5 __gdtoa+0xd7b
               	cmp	dword ptr [rbp + 0x50], 0x0
               	je	0x140006ce2 __gdtoa+0xd68
               	cmp	dword ptr [rbp + 0x48], 0x0
               	jle	0x140006cbe __gdtoa+0xd44
               	mov	edx, dword ptr [rbp + 0x48]
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rcx, rax
               	call	0x140007ea3 __pow5mult_D2A
               	mov	qword ptr [rbp + 0x18], rax
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rcx, rax
               	call	0x140007c7d __mult_D2A
               	mov	qword ptr [rbp - 0x38], rax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	mov	rax, qword ptr [rbp - 0x38]
               	mov	qword ptr [rbp + 0x28], rax
               	mov	eax, dword ptr [rbp + 0x78]
               	sub	eax, dword ptr [rbp + 0x48]
               	mov	dword ptr [rbp + 0x60], eax
               	cmp	dword ptr [rbp + 0x60], 0x0
               	je	0x140006cf5 __gdtoa+0xd7b
               	mov	edx, dword ptr [rbp + 0x60]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140007ea3 __pow5mult_D2A
               	mov	qword ptr [rbp + 0x28], rax
               	jmp	0x140006cf5 __gdtoa+0xd7b
               	mov	edx, dword ptr [rbp + 0x78]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140007ea3 __pow5mult_D2A
               	mov	qword ptr [rbp + 0x28], rax
               	mov	ecx, 0x1
               	call	0x140007c37 __i2b_D2A
               	mov	qword ptr [rbp + 0x10], rax
               	cmp	dword ptr [rbp + 0x3c], 0x0
               	jle	0x140006d1c __gdtoa+0xda2
               	mov	edx, dword ptr [rbp + 0x3c]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140007ea3 __pow5mult_D2A
               	mov	qword ptr [rbp + 0x10], rax
               	mov	dword ptr [rbp + 0x38], 0x0
               	cmp	dword ptr [rbp + 0xb0], 0x1
               	jg	0x140006d55 __gdtoa+0xddb
               	mov	eax, dword ptr [rbp - 0x4c]
               	cmp	eax, 0x1
               	jne	0x140006d55 __gdtoa+0xddb
               	mov	rax, qword ptr [rbp + 0x90]
               	mov	eax, dword ptr [rax + 0x4]
               	add	eax, 0x1
               	cmp	dword ptr [rbp - 0xc], eax
               	jle	0x140006d55 __gdtoa+0xddb
               	add	dword ptr [rbp + 0x7c], 0x1
               	add	dword ptr [rbp + 0x40], 0x1
               	mov	dword ptr [rbp + 0x38], 0x1
               	cmp	dword ptr [rbp + 0x3c], 0x0
               	je	0x140006d7d __gdtoa+0xe03
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rbp + 0x10]
               	movsxd	rdx, edx
               	add	rdx, 0x4
               	mov	eax, dword ptr [rax + 4*rdx + 0x8]
               	mov	ecx, eax
               	call	0x140005e40 __hi0bits_D2A
               	jmp	0x140006d82 __gdtoa+0xe08
               	mov	eax, 0x1f
               	sub	eax, dword ptr [rbp + 0x40]
               	sub	eax, 0x4
               	and	eax, 0x1f
               	mov	dword ptr [rbp - 0x50], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	add	dword ptr [rbp + 0x4c], eax
               	mov	eax, dword ptr [rbp - 0x50]
               	add	dword ptr [rbp + 0x7c], eax
               	cmp	dword ptr [rbp + 0x7c], 0x0
               	jle	0x140006db3 __gdtoa+0xe39
               	mov	edx, dword ptr [rbp + 0x7c]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140008060 __lshift_D2A
               	mov	qword ptr [rbp + 0x28], rax
               	mov	eax, dword ptr [rbp - 0x50]
               	add	dword ptr [rbp + 0x40], eax
               	cmp	dword ptr [rbp + 0x40], 0x0
               	jle	0x140006dd2 __gdtoa+0xe58
               	mov	edx, dword ptr [rbp + 0x40]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140008060 __lshift_D2A
               	mov	qword ptr [rbp + 0x10], rax
               	cmp	dword ptr [rbp + 0x54], 0x0
               	je	0x140006e32 __gdtoa+0xeb8
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x1400081ed __cmp_D2A
               	test	eax, eax
               	jns	0x140006e32 __gdtoa+0xeb8
               	sub	dword ptr [rbp + 0x58], 0x1
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	r8d, 0x0
               	mov	edx, 0xa
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp + 0x28], rax
               	cmp	dword ptr [rbp + 0x50], 0x0
               	je	0x140006e2c __gdtoa+0xeb2
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	r8d, 0x0
               	mov	edx, 0xa
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp + 0x18], rax
               	mov	eax, dword ptr [rbp + 0x68]
               	mov	dword ptr [rbp + 0x6c], eax
               	cmp	dword ptr [rbp + 0x6c], 0x0
               	jg	0x140006ebd __gdtoa+0xf43
               	cmp	dword ptr [rbp + 0xb0], 0x2
               	jle	0x140006ebd __gdtoa+0xf43
               	cmp	dword ptr [rbp + 0x6c], 0x0
               	js	0x140006e82 __gdtoa+0xf08
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	r8d, 0x0
               	mov	edx, 0x5
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp + 0x10], rax
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x1400081ed __cmp_D2A
               	test	eax, eax
               	jg	0x140006e9d __gdtoa+0xf23
               	jmp	0x140006e82 __gdtoa+0xf08
               	nop
               	jmp	0x140006e83 __gdtoa+0xf09
               	nop
               	jmp	0x140006e83 __gdtoa+0xf09
               	nop
               	mov	eax, dword ptr [rbp + 0xb8]
               	not	eax
               	mov	dword ptr [rbp + 0x58], eax
               	mov	dword ptr [rbp + 0x64], 0x10
               	jmp	0x14000741e __gdtoa+0x14a4
               	nop
               	jmp	0x140006e9e __gdtoa+0xf24
               	nop
               	mov	dword ptr [rbp + 0x64], 0x20
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	byte ptr [rax], 0x31
               	add	dword ptr [rbp + 0x58], 0x1
               	jmp	0x14000741e __gdtoa+0x14a4
               	cmp	dword ptr [rbp + 0x50], 0x0
               	je	0x1400072db __gdtoa+0x1361
               	cmp	dword ptr [rbp + 0x4c], 0x0
               	jle	0x140006ee0 __gdtoa+0xf66
               	mov	edx, dword ptr [rbp + 0x4c]
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rcx, rax
               	call	0x140008060 __lshift_D2A
               	mov	qword ptr [rbp + 0x18], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rbp + 0x20], rax
               	cmp	dword ptr [rbp + 0x38], 0x0
               	je	0x140006f45 __gdtoa+0xfcb
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x8]
               	mov	ecx, eax
               	call	0x14000793d __Balloc_D2A
               	mov	qword ptr [rbp + 0x18], rax
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	eax, dword ptr [rax + 0x14]
               	cdqe
               	add	rax, 0x2
               	lea	rcx, [4*rax]
               	mov	rax, qword ptr [rbp + 0x20]
               	lea	rdx, [rax + 0x10]
               	mov	rax, qword ptr [rbp + 0x18]
               	add	rax, 0x10
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140009450 memcpy
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	edx, 0x1
               	mov	rcx, rax
               	call	0x140008060 __lshift_D2A
               	mov	qword ptr [rbp + 0x18], rax
               	mov	dword ptr [rbp - 0x50], 0x1
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140005bbe __quorem_D2A
               	add	eax, 0x30
               	mov	dword ptr [rbp + 0x74], eax
               	mov	rdx, qword ptr [rbp + 0x20]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x1400081ed __cmp_D2A
               	mov	dword ptr [rbp + 0x60], eax
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x1400082bd __diff_D2A
               	mov	qword ptr [rbp - 0x40], rax
               	mov	rax, qword ptr [rbp - 0x40]
               	mov	eax, dword ptr [rax + 0x10]
               	test	eax, eax
               	jne	0x140006fa9 __gdtoa+0x102f
               	mov	rdx, qword ptr [rbp - 0x40]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x1400081ed __cmp_D2A
               	mov	dword ptr [rbp + 0x5c], eax
               	jmp	0x140006fb0 __gdtoa+0x1036
               	mov	dword ptr [rbp + 0x5c], 0x1
               	mov	rax, qword ptr [rbp - 0x40]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	cmp	dword ptr [rbp + 0x5c], 0x0
               	jne	0x140007032 __gdtoa+0x10b8
               	cmp	dword ptr [rbp + 0xb0], 0x0
               	jne	0x140007032 __gdtoa+0x10b8
               	mov	rax, qword ptr [rbp + 0xa0]
               	mov	eax, dword ptr [rax]
               	and	eax, 0x1
               	test	eax, eax
               	jne	0x140007032 __gdtoa+0x10b8
               	cmp	dword ptr [rbp + 0x44], 0x0
               	jne	0x140007032 __gdtoa+0x10b8
               	cmp	dword ptr [rbp + 0x74], 0x39
               	je	0x1400071ec __gdtoa+0x1272
               	cmp	dword ptr [rbp + 0x60], 0x0
               	jg	0x140007011 __gdtoa+0x1097
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x14]
               	cmp	eax, 0x1
               	jg	0x140007008 __gdtoa+0x108e
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x18]
               	test	eax, eax
               	je	0x14000701c __gdtoa+0x10a2
               	mov	dword ptr [rbp + 0x64], 0x10
               	jmp	0x14000701c __gdtoa+0x10a2
               	add	dword ptr [rbp + 0x74], 0x1
               	mov	dword ptr [rbp + 0x64], 0x20
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	edx, dword ptr [rbp + 0x74]
               	mov	byte ptr [rax], dl
               	jmp	0x14000741e __gdtoa+0x14a4
               	cmp	dword ptr [rbp + 0x60], 0x0
               	js	0x140007063 __gdtoa+0x10e9
               	cmp	dword ptr [rbp + 0x60], 0x0
               	jne	0x1400071d8 __gdtoa+0x125e
               	cmp	dword ptr [rbp + 0xb0], 0x0
               	jne	0x1400071d8 __gdtoa+0x125e
               	mov	rax, qword ptr [rbp + 0xa0]
               	mov	eax, dword ptr [rax]
               	and	eax, 0x1
               	test	eax, eax
               	jne	0x1400071d8 __gdtoa+0x125e
               	cmp	dword ptr [rbp + 0x44], 0x0
               	je	0x140007148 __gdtoa+0x11ce
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x14]
               	cmp	eax, 0x1
               	jg	0x140007088 __gdtoa+0x110e
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x18]
               	test	eax, eax
               	je	0x140007148 __gdtoa+0x11ce
               	cmp	dword ptr [rbp + 0x44], 0x2
               	jne	0x140007115 __gdtoa+0x119b
               	mov	dword ptr [rbp + 0x64], 0x10
               	jmp	0x1400071c2 __gdtoa+0x1248
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	edx, dword ptr [rbp + 0x74]
               	mov	byte ptr [rax], dl
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	r8d, 0x0
               	mov	edx, 0xa
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp - 0x48], rax
               	mov	rax, qword ptr [rbp + 0x20]
               	cmp	rax, qword ptr [rbp + 0x18]
               	jne	0x1400070dc __gdtoa+0x1162
               	mov	rax, qword ptr [rbp - 0x48]
               	mov	qword ptr [rbp + 0x20], rax
               	mov	rax, qword ptr [rbp - 0x48]
               	mov	qword ptr [rbp + 0x18], rax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	r8d, 0x0
               	mov	edx, 0xa
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp + 0x28], rax
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140005bbe __quorem_D2A
               	add	eax, 0x30
               	mov	dword ptr [rbp + 0x74], eax
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x1400081ed __cmp_D2A
               	test	eax, eax
               	jg	0x14000709e __gdtoa+0x1124
               	mov	eax, dword ptr [rbp + 0x74]
               	lea	edx, [rax + 0x1]
               	mov	dword ptr [rbp + 0x74], edx
               	cmp	eax, 0x39
               	je	0x1400071ef __gdtoa+0x1275
               	mov	dword ptr [rbp + 0x64], 0x20
               	jmp	0x1400071c2 __gdtoa+0x1248
               	cmp	dword ptr [rbp + 0x5c], 0x0
               	jle	0x1400071a1 __gdtoa+0x1227
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, 0x1
               	mov	rcx, rax
               	call	0x140008060 __lshift_D2A
               	mov	qword ptr [rbp + 0x28], rax
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x1400081ed __cmp_D2A
               	mov	dword ptr [rbp + 0x5c], eax
               	cmp	dword ptr [rbp + 0x5c], 0x0
               	jg	0x14000718c __gdtoa+0x1212
               	cmp	dword ptr [rbp + 0x5c], 0x0
               	jne	0x14000719a __gdtoa+0x1220
               	mov	eax, dword ptr [rbp + 0x74]
               	and	eax, 0x1
               	test	eax, eax
               	je	0x14000719a __gdtoa+0x1220
               	mov	eax, dword ptr [rbp + 0x74]
               	lea	edx, [rax + 0x1]
               	mov	dword ptr [rbp + 0x74], edx
               	cmp	eax, 0x39
               	je	0x1400071f2 __gdtoa+0x1278
               	mov	dword ptr [rbp + 0x64], 0x20
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x14]
               	cmp	eax, 0x1
               	jg	0x1400071b8 __gdtoa+0x123e
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x18]
               	test	eax, eax
               	je	0x1400071c1 __gdtoa+0x1247
               	mov	dword ptr [rbp + 0x64], 0x10
               	jmp	0x1400071c2 __gdtoa+0x1248
               	nop
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	edx, dword ptr [rbp + 0x74]
               	mov	byte ptr [rax], dl
               	jmp	0x14000741e __gdtoa+0x14a4
               	cmp	dword ptr [rbp + 0x5c], 0x0
               	jle	0x140007230 __gdtoa+0x12b6
               	cmp	dword ptr [rbp + 0x44], 0x2
               	je	0x140007230 __gdtoa+0x12b6
               	cmp	dword ptr [rbp + 0x74], 0x39
               	jne	0x14000720e __gdtoa+0x1294
               	jmp	0x1400071f3 __gdtoa+0x1279
               	nop
               	jmp	0x1400071f3 __gdtoa+0x1279
               	nop
               	jmp	0x1400071f3 __gdtoa+0x1279
               	nop
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	byte ptr [rax], 0x39
               	mov	dword ptr [rbp + 0x64], 0x20
               	jmp	0x1400073ab __gdtoa+0x1431
               	mov	dword ptr [rbp + 0x64], 0x20
               	mov	eax, dword ptr [rbp + 0x74]
               	lea	ecx, [rax + 0x1]
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	edx, ecx
               	mov	byte ptr [rax], dl
               	jmp	0x14000741e __gdtoa+0x14a4
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	edx, dword ptr [rbp + 0x74]
               	mov	byte ptr [rax], dl
               	mov	eax, dword ptr [rbp - 0x50]
               	cmp	dword ptr [rbp + 0x6c], eax
               	je	0x140007337 __gdtoa+0x13bd
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	r8d, 0x0
               	mov	edx, 0xa
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp + 0x28], rax
               	mov	rax, qword ptr [rbp + 0x20]
               	cmp	rax, qword ptr [rbp + 0x18]
               	jne	0x140007297 __gdtoa+0x131d
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	r8d, 0x0
               	mov	edx, 0xa
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp + 0x18], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rbp + 0x20], rax
               	jmp	0x1400072cd __gdtoa+0x1353
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	r8d, 0x0
               	mov	edx, 0xa
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp + 0x20], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	r8d, 0x0
               	mov	edx, 0xa
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp + 0x18], rax
               	mov	eax, dword ptr [rbp - 0x50]
               	add	eax, 0x1
               	mov	dword ptr [rbp - 0x50], eax
               	jmp	0x140006f4c __gdtoa+0xfd2
               	mov	dword ptr [rbp - 0x50], 0x1
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140005bbe __quorem_D2A
               	add	eax, 0x30
               	mov	dword ptr [rbp + 0x74], eax
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	edx, dword ptr [rbp + 0x74]
               	mov	byte ptr [rax], dl
               	mov	eax, dword ptr [rbp - 0x50]
               	cmp	dword ptr [rbp + 0x6c], eax
               	jle	0x14000733a __gdtoa+0x13c0
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	r8d, 0x0
               	mov	edx, 0xa
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp + 0x28], rax
               	mov	eax, dword ptr [rbp - 0x50]
               	add	eax, 0x1
               	mov	dword ptr [rbp - 0x50], eax
               	jmp	0x1400072e2 __gdtoa+0x1368
               	nop
               	jmp	0x14000733b __gdtoa+0x13c1
               	nop
               	cmp	dword ptr [rbp + 0x44], 0x0
               	je	0x140007367 __gdtoa+0x13ed
               	cmp	dword ptr [rbp + 0x44], 0x2
               	je	0x1400073f9 __gdtoa+0x147f
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x14]
               	cmp	eax, 0x1
               	jg	0x1400073a7 __gdtoa+0x142d
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x18]
               	test	eax, eax
               	jne	0x1400073a7 __gdtoa+0x142d
               	jmp	0x1400073f9 __gdtoa+0x147f
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	edx, 0x1
               	mov	rcx, rax
               	call	0x140008060 __lshift_D2A
               	mov	qword ptr [rbp + 0x28], rax
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x1400081ed __cmp_D2A
               	mov	dword ptr [rbp + 0x60], eax
               	cmp	dword ptr [rbp + 0x60], 0x0
               	jg	0x1400073aa __gdtoa+0x1430
               	cmp	dword ptr [rbp + 0x60], 0x0
               	jne	0x1400073fc __gdtoa+0x1482
               	mov	eax, dword ptr [rbp + 0x74]
               	and	eax, 0x1
               	test	eax, eax
               	je	0x1400073fc __gdtoa+0x1482
               	jmp	0x1400073aa __gdtoa+0x1430
               	nop
               	jmp	0x1400073ab __gdtoa+0x1431
               	nop
               	mov	dword ptr [rbp + 0x64], 0x20
               	jmp	0x1400073d3 __gdtoa+0x1459
               	mov	rax, qword ptr [rbp]
               	cmp	rax, qword ptr [rbp - 0x18]
               	jne	0x1400073d3 __gdtoa+0x1459
               	add	dword ptr [rbp + 0x58], 0x1
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	mov	byte ptr [rax], 0x31
               	jmp	0x14000741e __gdtoa+0x14a4
               	sub	qword ptr [rbp], 0x1
               	mov	rax, qword ptr [rbp]
               	movzx	eax, byte ptr [rax]
               	cmp	al, 0x39
               	je	0x1400073b4 __gdtoa+0x143a
               	mov	rax, qword ptr [rbp]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp], rdx
               	movzx	edx, byte ptr [rax]
               	add	edx, 0x1
               	mov	byte ptr [rax], dl
               	jmp	0x14000741e __gdtoa+0x14a4
               	nop
               	jmp	0x1400073fd __gdtoa+0x1483
               	nop
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x14]
               	cmp	eax, 0x1
               	jg	0x140007414 __gdtoa+0x149a
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax + 0x18]
               	test	eax, eax
               	je	0x14000741d __gdtoa+0x14a3
               	mov	dword ptr [rbp + 0x64], 0x10
               	jmp	0x14000741e __gdtoa+0x14a4
               	nop
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	cmp	qword ptr [rbp + 0x18], 0x0
               	je	0x140007462 __gdtoa+0x14e8
               	cmp	qword ptr [rbp + 0x20], 0x0
               	je	0x14000744e __gdtoa+0x14d4
               	mov	rax, qword ptr [rbp + 0x20]
               	cmp	rax, qword ptr [rbp + 0x18]
               	je	0x14000744e __gdtoa+0x14d4
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	jmp	0x14000746a __gdtoa+0x14f0
               	nop
               	jmp	0x14000746a __gdtoa+0x14f0
               	nop
               	jmp	0x14000746a __gdtoa+0x14f0
               	nop
               	jmp	0x14000746a __gdtoa+0x14f0
               	sub	qword ptr [rbp], 0x1
               	mov	rax, qword ptr [rbp]
               	cmp	qword ptr [rbp - 0x18], rax
               	jae	0x140007483 __gdtoa+0x1509
               	mov	rax, qword ptr [rbp]
               	sub	rax, 0x1
               	movzx	eax, byte ptr [rax]
               	cmp	al, 0x30
               	je	0x140007465 __gdtoa+0x14eb
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	mov	rax, qword ptr [rbp]
               	mov	byte ptr [rax], 0x0
               	mov	eax, dword ptr [rbp + 0x58]
               	lea	edx, [rax + 0x1]
               	mov	rax, qword ptr [rbp + 0xc0]
               	mov	dword ptr [rax], edx
               	cmp	qword ptr [rbp + 0xc8], 0x0
               	je	0x1400074bd __gdtoa+0x1543
               	mov	rax, qword ptr [rbp + 0xc8]
               	mov	rdx, qword ptr [rbp]
               	mov	qword ptr [rax], rdx
               	mov	rax, qword ptr [rbp + 0xa8]
               	mov	eax, dword ptr [rax]
               	or	eax, dword ptr [rbp + 0x64]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0xa8]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rsp, 0x100
               	pop	rbp
               	ret
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
               	nop
               	nop

__lo0bits_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x10
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax]
               	tzcnt	eax, eax
               	mov	dword ptr [rbp - 0x4], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	edx, dword ptr [rax]
               	mov	eax, dword ptr [rbp - 0x4]
               	mov	ecx, eax
               	shr	edx, cl
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	dword ptr [rax], edx
               	mov	eax, dword ptr [rbp - 0x4]
               	add	rsp, 0x10
               	pop	rbp
               	ret

__rshift_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp + 0x18], edx
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	qword ptr [rbp - 0x8], rax
               	mov	eax, dword ptr [rbp + 0x18]
               	sar	eax, 0x5
               	mov	dword ptr [rbp - 0x18], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	cmp	dword ptr [rbp - 0x18], eax
               	jge	0x140007645 __rshift_D2A+0x120
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x8]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x20], rax
               	mov	eax, dword ptr [rbp - 0x18]
               	cdqe
               	shl	rax, 0x2
               	add	qword ptr [rbp - 0x8], rax
               	and	dword ptr [rbp + 0x18], 0x1f
               	cmp	dword ptr [rbp + 0x18], 0x0
               	je	0x14000763b __rshift_D2A+0x116
               	mov	eax, 0x20
               	sub	eax, dword ptr [rbp + 0x18]
               	mov	dword ptr [rbp - 0x18], eax
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	edx, dword ptr [rax]
               	mov	eax, dword ptr [rbp + 0x18]
               	mov	ecx, eax
               	shr	edx, cl
               	mov	eax, edx
               	mov	dword ptr [rbp - 0x14], eax
               	jmp	0x1400075fb __rshift_D2A+0xd6
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	edx, dword ptr [rax]
               	mov	eax, dword ptr [rbp - 0x18]
               	mov	ecx, eax
               	shl	edx, cl
               	mov	ecx, edx
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x10], rdx
               	or	ecx, dword ptr [rbp - 0x14]
               	mov	edx, ecx
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x8]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x8], rdx
               	mov	edx, dword ptr [rax]
               	mov	eax, dword ptr [rbp + 0x18]
               	mov	ecx, eax
               	shr	edx, cl
               	mov	eax, edx
               	mov	dword ptr [rbp - 0x14], eax
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	rax, qword ptr [rbp - 0x20]
               	jb	0x1400075bf __rshift_D2A+0x9a
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	edx, dword ptr [rbp - 0x14]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x140007645 __rshift_D2A+0x120
               	add	qword ptr [rbp - 0x10], 0x4
               	jmp	0x140007645 __rshift_D2A+0x120
               	mov	rdx, qword ptr [rbp - 0x8]
               	lea	rax, [rdx + 0x4]
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rcx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x10], rcx
               	mov	edx, dword ptr [rdx]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	rax, qword ptr [rbp - 0x20]
               	jb	0x14000761f __rshift_D2A+0xfa
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	rdx, qword ptr [rbp - 0x10]
               	sub	rdx, rax
               	mov	rax, rdx
               	sar	rax, 0x2
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	dword ptr [rax + 0x14], edx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	test	eax, eax
               	jne	0x14000767a __rshift_D2A+0x155
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	dword ptr [rax + 0x18], 0x0
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret

__trailz_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x40
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp - 0xc], 0x0
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x8]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x18], rax
               	mov	dword ptr [rbp - 0xc], 0x0
               	jmp	0x1400076ce __trailz_D2A+0x4d
               	add	dword ptr [rbp - 0xc], 0x20
               	add	qword ptr [rbp - 0x8], 0x4
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	rax, qword ptr [rbp - 0x18]
               	jae	0x1400076e2 __trailz_D2A+0x61
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x1400076c5 __trailz_D2A+0x44
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	rax, qword ptr [rbp - 0x18]
               	jae	0x140007704 __trailz_D2A+0x83
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0x1c], eax
               	lea	rax, [rbp - 0x1c]
               	mov	rcx, rax
               	call	0x1400074f0 __lo0bits_D2A
               	add	dword ptr [rbp - 0xc], eax
               	mov	eax, dword ptr [rbp - 0xc]
               	add	rsp, 0x40
               	pop	rbp
               	ret
               	nop
               	nop
               	nop

dtoa_lock_cleanup:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x40
               	lea	rax, [rip + 0x8ad1]     # 0x1400101f0 dtoa_CS_init
               	mov	qword ptr [rbp - 0x10], rax
               	mov	dword ptr [rbp - 0x14], 0x3
               	mov	edx, dword ptr [rbp - 0x14]
               	mov	rax, qword ptr [rbp - 0x10]
               	xchg	dword ptr [rax], edx
               	mov	eax, edx
               	mov	dword ptr [rbp - 0x8], eax
               	cmp	dword ptr [rbp - 0x8], 0x2
               	jne	0x14000777b dtoa_lock_cleanup+0x6b
               	mov	dword ptr [rbp - 0x4], 0x0
               	jmp	0x140007775 dtoa_lock_cleanup+0x65
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	lea	rdx, [rip + 0x8a3e]     # 0x1400101a0 dtoa_CritSec
               	add	rax, rdx
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0x9a69] # 0x1400111d8 fthunk
               	call	rax
               	add	dword ptr [rbp - 0x4], 0x1
               	cmp	dword ptr [rbp - 0x4], 0x1
               	jle	0x140007747 dtoa_lock_cleanup+0x37
               	nop
               	add	rsp, 0x40
               	pop	rbp
               	ret

dtoa_lock:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x40
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	eax, dword ptr [rip + 0x8a5d] # 0x1400101f0 dtoa_CS_init
               	cmp	eax, 0x2
               	jne	0x1400077c4 dtoa_lock+0x42
               	mov	edx, dword ptr [rbp + 0x10]
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	lea	rdx, [rip + 0x89f0]     # 0x1400101a0 dtoa_CritSec
               	add	rax, rdx
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0x9a23] # 0x1400111e0 __imp_EnterCriticalSection
               	call	rax
               	jmp	0x1400078ae dtoa_lock+0x12c
               	mov	eax, dword ptr [rip + 0x8a26] # 0x1400101f0 dtoa_CS_init
               	test	eax, eax
               	jne	0x140007870 dtoa_lock+0xee
               	lea	rax, [rip + 0x8a17]     # 0x1400101f0 dtoa_CS_init
               	mov	qword ptr [rbp - 0x10], rax
               	mov	dword ptr [rbp - 0x14], 0x1
               	mov	edx, dword ptr [rbp - 0x14]
               	mov	rax, qword ptr [rbp - 0x10]
               	xchg	dword ptr [rax], edx
               	mov	eax, edx
               	mov	dword ptr [rbp - 0x8], eax
               	cmp	dword ptr [rbp - 0x8], 0x0
               	jne	0x140007850 dtoa_lock+0xce
               	mov	dword ptr [rbp - 0x4], 0x0
               	jmp	0x14000782f dtoa_lock+0xad
               	mov	eax, dword ptr [rbp - 0x4]
               	movsxd	rdx, eax
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	lea	rdx, [rip + 0x8984]     # 0x1400101a0 dtoa_CritSec
               	add	rax, rdx
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0x99df] # 0x140011208 __imp_InitializeCriticalSection
               	call	rax
               	add	dword ptr [rbp - 0x4], 0x1
               	cmp	dword ptr [rbp - 0x4], 0x1
               	jle	0x140007801 dtoa_lock+0x7f
               	lea	rax, [rip - 0x12c]      # 0x140007710 dtoa_lock_cleanup
               	mov	rcx, rax
               	call	0x1400015db atexit
               	mov	dword ptr [rip + 0x89a2], 0x2 # 0x1400101f0 dtoa_CS_init
               	jmp	0x140007870 dtoa_lock+0xee
               	cmp	dword ptr [rbp - 0x8], 0x2
               	jne	0x140007870 dtoa_lock+0xee
               	mov	dword ptr [rip + 0x8990], 0x2 # 0x1400101f0 dtoa_CS_init
               	jmp	0x140007870 dtoa_lock+0xee
               	mov	ecx, 0x1
               	mov	rax, qword ptr [rip + 0x99ca] # 0x140011238 __imp_Sleep
               	call	rax
               	mov	eax, dword ptr [rip + 0x897a] # 0x1400101f0 dtoa_CS_init
               	cmp	eax, 0x1
               	je	0x140007862 dtoa_lock+0xe0
               	mov	eax, dword ptr [rip + 0x896f] # 0x1400101f0 dtoa_CS_init
               	cmp	eax, 0x2
               	jne	0x1400078ae dtoa_lock+0x12c
               	mov	edx, dword ptr [rbp + 0x10]
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	lea	rdx, [rip + 0x8902]     # 0x1400101a0 dtoa_CritSec
               	add	rax, rdx
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0x9935] # 0x1400111e0 __imp_EnterCriticalSection
               	call	rax
               	nop
               	add	rsp, 0x40
               	pop	rbp
               	ret

dtoa_unlock:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	eax, dword ptr [rip + 0x892b] # 0x1400101f0 dtoa_CS_init
               	cmp	eax, 0x2
               	jne	0x1400078f1 dtoa_unlock+0x3d
               	mov	edx, dword ptr [rbp + 0x10]
               	mov	rax, rdx
               	shl	rax, 0x2
               	add	rax, rdx
               	shl	rax, 0x3
               	lea	rdx, [rip + 0x88be]     # 0x1400101a0 dtoa_CritSec
               	add	rax, rdx
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0x9929] # 0x140011218 __imp_LeaveCriticalSection
               	call	rax
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret

__lo0bits_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x10
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax]
               	tzcnt	eax, eax
               	mov	dword ptr [rbp - 0x4], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	edx, dword ptr [rax]
               	mov	eax, dword ptr [rbp - 0x4]
               	mov	ecx, eax
               	shr	edx, cl
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	dword ptr [rax], edx
               	mov	eax, dword ptr [rbp - 0x4]
               	add	rsp, 0x10
               	pop	rbp
               	ret

__hi0bits_D2A:
               	push	rbp
               	mov	rbp, rsp
               	mov	dword ptr [rbp + 0x10], ecx
               	bsr	eax, dword ptr [rbp + 0x10]
               	xor	eax, 0x1f
               	pop	rbp
               	ret

__Balloc_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	ecx, 0x0
               	call	0x140007782 dtoa_lock
               	cmp	dword ptr [rbp + 0x10], 0x9
               	jg	0x1400079a0 __Balloc_D2A+0x63
               	mov	eax, dword ptr [rbp + 0x10]
               	cdqe
               	lea	rdx, [8*rax]
               	lea	rax, [rip + 0x8894]     # 0x140010200 freelist
               	mov	rax, qword ptr [rdx + rax]
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x8], 0x0
               	je	0x1400079a0 __Balloc_D2A+0x63
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rax]
               	mov	edx, dword ptr [rbp + 0x10]
               	movsxd	rdx, edx
               	lea	rcx, [8*rdx]
               	lea	rdx, [rip + 0x8869]     # 0x140010200 freelist
               	mov	qword ptr [rcx + rdx], rax
               	jmp	0x140007a51 __Balloc_D2A+0x114
               	mov	eax, dword ptr [rbp + 0x10]
               	mov	edx, 0x1
               	mov	ecx, eax
               	shl	edx, cl
               	mov	eax, edx
               	mov	dword ptr [rbp - 0xc], eax
               	mov	eax, dword ptr [rbp - 0xc]
               	sub	eax, 0x1
               	cdqe
               	shl	rax, 0x2
               	add	rax, 0x27
               	shr	rax, 0x3
               	mov	dword ptr [rbp - 0x10], eax
               	cmp	dword ptr [rbp + 0x10], 0x9
               	jg	0x140007a1c __Balloc_D2A+0xdf
               	mov	rdx, qword ptr [rip + 0x26bb] # 0x14000a090 pmem_next
               	lea	rax, [rip + 0x8884]     # 0x140010260 private_mem
               	sub	rdx, rax
               	mov	rax, rdx
               	sar	rax, 0x3
               	mov	rdx, rax
               	mov	eax, dword ptr [rbp - 0x10]
               	add	rax, rdx
               	cmp	rax, 0x120
               	ja	0x140007a1c __Balloc_D2A+0xdf
               	mov	rax, qword ptr [rip + 0x2692] # 0x14000a090 pmem_next
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rip + 0x2687] # 0x14000a090 pmem_next
               	mov	edx, dword ptr [rbp - 0x10]
               	shl	rdx, 0x3
               	add	rax, rdx
               	mov	qword ptr [rip + 0x2676], rax # 0x14000a090 pmem_next
               	jmp	0x140007a3d __Balloc_D2A+0x100
               	mov	eax, dword ptr [rbp - 0x10]
               	shl	rax, 0x3
               	mov	rcx, rax
               	call	0x140009448 malloc
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x8], 0x0
               	jne	0x140007a3d __Balloc_D2A+0x100
               	mov	eax, 0x0
               	jmp	0x140007a78 __Balloc_D2A+0x13b
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	edx, dword ptr [rbp + 0x10]
               	mov	dword ptr [rax + 0x8], edx
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	edx, dword ptr [rbp - 0xc]
               	mov	dword ptr [rax + 0xc], edx
               	mov	ecx, 0x0
               	call	0x1400078b4 dtoa_unlock
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	dword ptr [rax + 0x14], 0x0
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	edx, dword ptr [rax + 0x14]
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	dword ptr [rax + 0x10], edx
               	mov	rax, qword ptr [rbp - 0x8]
               	add	rsp, 0x30
               	pop	rbp
               	ret

__Bfree_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	cmp	qword ptr [rbp + 0x10], 0x0
               	je	0x140007b02 __Bfree_D2A+0x84
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	cmp	eax, 0x9
               	jle	0x140007aab __Bfree_D2A+0x2d
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140009438 free
               	jmp	0x140007b02 __Bfree_D2A+0x84
               	mov	ecx, 0x0
               	call	0x140007782 dtoa_lock
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	cdqe
               	lea	rdx, [8*rax]
               	lea	rax, [rip + 0x8733]     # 0x140010200 freelist
               	mov	rdx, qword ptr [rdx + rax]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rax], rdx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	cdqe
               	lea	rcx, [8*rax]
               	lea	rdx, [rip + 0x8710]     # 0x140010200 freelist
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rcx + rdx], rax
               	mov	ecx, 0x0
               	call	0x1400078b4 dtoa_unlock
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret

__multadd_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x50
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp + 0x18], edx
               	mov	dword ptr [rbp + 0x20], r8d
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x1c], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x10], rax
               	mov	dword ptr [rbp - 0x4], 0x0
               	mov	eax, dword ptr [rbp + 0x20]
               	cdqe
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	mov	edx, eax
               	mov	eax, dword ptr [rbp + 0x18]
               	cdqe
               	imul	rdx, rax
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x28], rax
               	mov	rax, qword ptr [rbp - 0x28]
               	shr	rax, 0x20
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	rdx, qword ptr [rbp - 0x28]
               	mov	dword ptr [rax], edx
               	add	dword ptr [rbp - 0x4], 0x1
               	mov	eax, dword ptr [rbp - 0x4]
               	cmp	eax, dword ptr [rbp - 0x1c]
               	jl	0x140007b42 __multadd_D2A+0x39
               	cmp	qword ptr [rbp - 0x18], 0x0
               	je	0x140007c2d __multadd_D2A+0x124
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0xc]
               	cmp	dword ptr [rbp - 0x1c], eax
               	jl	0x140007c06 __multadd_D2A+0xfd
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	add	eax, 0x1
               	mov	ecx, eax
               	call	0x14000793d __Balloc_D2A
               	mov	qword ptr [rbp - 0x30], rax
               	cmp	qword ptr [rbp - 0x30], 0x0
               	jne	0x140007bc2 __multadd_D2A+0xb9
               	mov	eax, 0x0
               	jmp	0x140007c31 __multadd_D2A+0x128
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	cdqe
               	add	rax, 0x2
               	lea	rcx, [4*rax]
               	mov	rax, qword ptr [rbp + 0x10]
               	lea	rdx, [rax + 0x10]
               	mov	rax, qword ptr [rbp - 0x30]
               	add	rax, 0x10
               	mov	r8, rcx
               	mov	rcx, rax
               	call	0x140009450 memcpy
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	mov	rax, qword ptr [rbp - 0x30]
               	mov	qword ptr [rbp + 0x10], rax
               	mov	eax, dword ptr [rbp - 0x1c]
               	lea	edx, [rax + 0x1]
               	mov	dword ptr [rbp - 0x1c], edx
               	mov	rdx, qword ptr [rbp - 0x18]
               	mov	ecx, edx
               	mov	rdx, qword ptr [rbp + 0x10]
               	cdqe
               	add	rax, 0x4
               	mov	dword ptr [rdx + 4*rax + 0x8], ecx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	edx, dword ptr [rbp - 0x1c]
               	mov	dword ptr [rax + 0x14], edx
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rsp, 0x50
               	pop	rbp
               	ret

__i2b_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	dword ptr [rbp + 0x10], ecx
               	mov	ecx, 0x1
               	call	0x14000793d __Balloc_D2A
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x8], 0x0
               	jne	0x140007c5e __i2b_D2A+0x27
               	mov	eax, 0x0
               	jmp	0x140007c77 __i2b_D2A+0x40
               	mov	edx, dword ptr [rbp + 0x10]
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	dword ptr [rax + 0x18], edx
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	dword ptr [rax + 0x14], 0x1
               	mov	rax, qword ptr [rbp - 0x8]
               	add	rsp, 0x30
               	pop	rbp
               	ret

__mult_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x90
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	edx, dword ptr [rax + 0x14]
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x14]
               	cmp	edx, eax
               	jge	0x140007cba __mult_D2A+0x3d
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rbp - 0x38], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rbp + 0x10], rax
               	mov	rax, qword ptr [rbp - 0x38]
               	mov	qword ptr [rbp + 0x18], rax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	mov	dword ptr [rbp - 0x4], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x3c], eax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x40], eax
               	mov	edx, dword ptr [rbp - 0x3c]
               	mov	eax, dword ptr [rbp - 0x40]
               	add	eax, edx
               	mov	dword ptr [rbp - 0x8], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0xc]
               	cmp	dword ptr [rbp - 0x8], eax
               	jle	0x140007cf3 __mult_D2A+0x76
               	add	dword ptr [rbp - 0x4], 0x1
               	mov	eax, dword ptr [rbp - 0x4]
               	mov	ecx, eax
               	call	0x14000793d __Balloc_D2A
               	mov	qword ptr [rbp - 0x38], rax
               	cmp	qword ptr [rbp - 0x38], 0x0
               	jne	0x140007d12 __mult_D2A+0x95
               	mov	eax, 0x0
               	jmp	0x140007e9a __mult_D2A+0x21d
               	mov	rax, qword ptr [rbp - 0x38]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x10], rax
               	mov	eax, dword ptr [rbp - 0x8]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x48], rax
               	jmp	0x140007d47 __mult_D2A+0xca
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	dword ptr [rax], 0x0
               	add	qword ptr [rbp - 0x10], 0x4
               	mov	rax, qword ptr [rbp - 0x10]
               	cmp	rax, qword ptr [rbp - 0x48]
               	jb	0x140007d38 __mult_D2A+0xbb
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x48], rax
               	mov	eax, dword ptr [rbp - 0x3c]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x48]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x50], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x18], rax
               	mov	eax, dword ptr [rbp - 0x40]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x58], rax
               	mov	rax, qword ptr [rbp - 0x38]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x28], rax
               	jmp	0x140007e3f __mult_D2A+0x1c2
               	mov	rax, qword ptr [rbp - 0x18]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x18], rdx
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0x5c], eax
               	cmp	dword ptr [rbp - 0x5c], 0x0
               	je	0x140007e3a __mult_D2A+0x1bd
               	mov	rax, qword ptr [rbp - 0x48]
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x28]
               	mov	qword ptr [rbp - 0x20], rax
               	mov	qword ptr [rbp - 0x30], 0x0
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	eax, dword ptr [rax]
               	mov	edx, eax
               	mov	eax, dword ptr [rbp - 0x5c]
               	imul	rdx, rax
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	eax, dword ptr [rax]
               	mov	eax, eax
               	add	rdx, rax
               	mov	rax, qword ptr [rbp - 0x30]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x68], rax
               	mov	rax, qword ptr [rbp - 0x68]
               	shr	rax, 0x20
               	mov	qword ptr [rbp - 0x30], rax
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x20], rdx
               	mov	rdx, qword ptr [rbp - 0x68]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x10]
               	cmp	rax, qword ptr [rbp - 0x50]
               	jb	0x140007dd9 __mult_D2A+0x15c
               	mov	rax, qword ptr [rbp - 0x30]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	dword ptr [rax], edx
               	add	qword ptr [rbp - 0x28], 0x4
               	mov	rax, qword ptr [rbp - 0x18]
               	cmp	rax, qword ptr [rbp - 0x58]
               	jb	0x140007daa __mult_D2A+0x12d
               	mov	rax, qword ptr [rbp - 0x38]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x28], rax
               	mov	eax, dword ptr [rbp - 0x8]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x28]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x20], rax
               	jmp	0x140007e77 __mult_D2A+0x1fa
               	sub	dword ptr [rbp - 0x8], 0x1
               	cmp	dword ptr [rbp - 0x8], 0x0
               	jle	0x140007e8c __mult_D2A+0x20f
               	sub	qword ptr [rbp - 0x20], 0x4
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x140007e73 __mult_D2A+0x1f6
               	mov	rax, qword ptr [rbp - 0x38]
               	mov	edx, dword ptr [rbp - 0x8]
               	mov	dword ptr [rax + 0x14], edx
               	mov	rax, qword ptr [rbp - 0x38]
               	add	rsp, 0x90
               	pop	rbp
               	ret

__pow5mult_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x40
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp + 0x18], edx
               	mov	eax, dword ptr [rbp + 0x18]
               	and	eax, 0x3
               	mov	dword ptr [rbp - 0x14], eax
               	cmp	dword ptr [rbp - 0x14], 0x0
               	je	0x140007f02 __pow5mult_D2A+0x5f
               	mov	eax, dword ptr [rbp - 0x14]
               	sub	eax, 0x1
               	cdqe
               	lea	rdx, [4*rax]
               	lea	rax, [rip + 0x21c0]     # 0x14000a098 p05.0
               	mov	edx, dword ptr [rdx + rax]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	r8d, 0x0
               	mov	rcx, rax
               	call	0x140007b09 __multadd_D2A
               	mov	qword ptr [rbp + 0x10], rax
               	cmp	qword ptr [rbp + 0x10], 0x0
               	jne	0x140007f02 __pow5mult_D2A+0x5f
               	mov	eax, 0x0
               	jmp	0x14000805a __pow5mult_D2A+0x1b7
               	sar	dword ptr [rbp + 0x18], 0x2
               	cmp	dword ptr [rbp + 0x18], 0x0
               	jne	0x140007f15 __pow5mult_D2A+0x72
               	mov	rax, qword ptr [rbp + 0x10]
               	jmp	0x14000805a __pow5mult_D2A+0x1b7
               	mov	rax, qword ptr [rip + 0x8c44] # 0x140010b60 p5s
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x8], 0x0
               	jne	0x140007f85 __pow5mult_D2A+0xe2
               	mov	ecx, 0x1
               	call	0x140007782 dtoa_lock
               	mov	rax, qword ptr [rip + 0x8c28] # 0x140010b60 p5s
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x8], 0x0
               	jne	0x140007f7b __pow5mult_D2A+0xd8
               	mov	ecx, 0x271
               	call	0x140007c37 __i2b_D2A
               	mov	qword ptr [rip + 0x8c0c], rax # 0x140010b60 p5s
               	mov	rax, qword ptr [rip + 0x8c05] # 0x140010b60 p5s
               	mov	qword ptr [rbp - 0x8], rax
               	cmp	qword ptr [rbp - 0x8], 0x0
               	jne	0x140007f70 __pow5mult_D2A+0xcd
               	mov	eax, 0x0
               	jmp	0x14000805a __pow5mult_D2A+0x1b7
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	qword ptr [rax], 0x0
               	mov	ecx, 0x1
               	call	0x1400078b4 dtoa_unlock
               	mov	eax, dword ptr [rbp + 0x18]
               	and	eax, 0x1
               	test	eax, eax
               	je	0x140007fc8 __pow5mult_D2A+0x125
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140007c7d __mult_D2A
               	mov	qword ptr [rbp - 0x20], rax
               	cmp	qword ptr [rbp - 0x20], 0x0
               	jne	0x140007fb4 __pow5mult_D2A+0x111
               	mov	eax, 0x0
               	jmp	0x14000805a __pow5mult_D2A+0x1b7
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	qword ptr [rbp + 0x10], rax
               	sar	dword ptr [rbp + 0x18]
               	cmp	dword ptr [rbp + 0x18], 0x0
               	je	0x140008055 __pow5mult_D2A+0x1b2
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rax]
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x0
               	jne	0x140008048 __pow5mult_D2A+0x1a5
               	mov	ecx, 0x1
               	call	0x140007782 dtoa_lock
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rax]
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x0
               	jne	0x14000803e __pow5mult_D2A+0x19b
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rcx, rax
               	call	0x140007c7d __mult_D2A
               	mov	rdx, qword ptr [rbp - 0x8]
               	mov	qword ptr [rdx], rax
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rax]
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x0
               	jne	0x140008033 __pow5mult_D2A+0x190
               	mov	eax, 0x0
               	jmp	0x14000805a __pow5mult_D2A+0x1b7
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	qword ptr [rax], 0x0
               	mov	ecx, 0x1
               	call	0x1400078b4 dtoa_unlock
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140007f85 __pow5mult_D2A+0xe2
               	nop
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rsp, 0x40
               	pop	rbp
               	ret

__lshift_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x60
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	dword ptr [rbp + 0x18], edx
               	mov	eax, dword ptr [rbp + 0x18]
               	sar	eax, 0x5
               	mov	dword ptr [rbp - 0x28], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	mov	dword ptr [rbp - 0x8], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	edx, dword ptr [rax + 0x14]
               	mov	eax, dword ptr [rbp - 0x28]
               	add	eax, edx
               	add	eax, 0x1
               	mov	dword ptr [rbp - 0xc], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0xc]
               	mov	dword ptr [rbp - 0x4], eax
               	jmp	0x1400080a7 __lshift_D2A+0x47
               	add	dword ptr [rbp - 0x8], 0x1
               	shl	dword ptr [rbp - 0x4]
               	mov	eax, dword ptr [rbp - 0xc]
               	cmp	eax, dword ptr [rbp - 0x4]
               	jg	0x1400080a0 __lshift_D2A+0x40
               	mov	eax, dword ptr [rbp - 0x8]
               	mov	ecx, eax
               	call	0x14000793d __Balloc_D2A
               	mov	qword ptr [rbp - 0x30], rax
               	cmp	qword ptr [rbp - 0x30], 0x0
               	jne	0x1400080ce __lshift_D2A+0x6e
               	mov	eax, 0x0
               	jmp	0x1400081e7 __lshift_D2A+0x187
               	mov	rax, qword ptr [rbp - 0x30]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x20], rax
               	mov	dword ptr [rbp - 0x4], 0x0
               	jmp	0x1400080f9 __lshift_D2A+0x99
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x20], rdx
               	mov	dword ptr [rax], 0x0
               	add	dword ptr [rbp - 0x4], 0x1
               	mov	eax, dword ptr [rbp - 0x4]
               	cmp	eax, dword ptr [rbp - 0x28]
               	jl	0x1400080e3 __lshift_D2A+0x83
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x38], rax
               	and	dword ptr [rbp + 0x18], 0x1f
               	cmp	dword ptr [rbp + 0x18], 0x0
               	je	0x1400081a4 __lshift_D2A+0x144
               	mov	eax, 0x20
               	sub	eax, dword ptr [rbp + 0x18]
               	mov	dword ptr [rbp - 0x8], eax
               	mov	dword ptr [rbp - 0x24], 0x0
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	edx, dword ptr [rax]
               	mov	eax, dword ptr [rbp + 0x18]
               	mov	ecx, eax
               	shl	edx, cl
               	mov	ecx, edx
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x20], rdx
               	or	ecx, dword ptr [rbp - 0x24]
               	mov	edx, ecx
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x18]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x18], rdx
               	mov	edx, dword ptr [rax]
               	mov	eax, dword ptr [rbp - 0x8]
               	mov	ecx, eax
               	shr	edx, cl
               	mov	eax, edx
               	mov	dword ptr [rbp - 0x24], eax
               	mov	rax, qword ptr [rbp - 0x18]
               	cmp	rax, qword ptr [rbp - 0x38]
               	jb	0x140008145 __lshift_D2A+0xe5
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	edx, dword ptr [rbp - 0x24]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x1400081ca __lshift_D2A+0x16a
               	add	dword ptr [rbp - 0xc], 0x1
               	jmp	0x1400081ca __lshift_D2A+0x16a
               	mov	rdx, qword ptr [rbp - 0x18]
               	lea	rax, [rdx + 0x4]
               	mov	qword ptr [rbp - 0x18], rax
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rcx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x20], rcx
               	mov	edx, dword ptr [rdx]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x18]
               	cmp	rax, qword ptr [rbp - 0x38]
               	jb	0x1400081a4 __lshift_D2A+0x144
               	mov	eax, dword ptr [rbp - 0xc]
               	lea	edx, [rax - 0x1]
               	mov	rax, qword ptr [rbp - 0x30]
               	mov	dword ptr [rax + 0x14], edx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x140007a7e __Bfree_D2A
               	mov	rax, qword ptr [rbp - 0x30]
               	add	rsp, 0x60
               	pop	rbp
               	ret

__cmp_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x14], eax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x18], eax
               	mov	eax, dword ptr [rbp - 0x18]
               	sub	dword ptr [rbp - 0x14], eax
               	cmp	dword ptr [rbp - 0x14], 0x0
               	je	0x140008225 __cmp_D2A+0x38
               	mov	eax, dword ptr [rbp - 0x14]
               	jmp	0x1400082b7 __cmp_D2A+0xca
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x20], rax
               	mov	eax, dword ptr [rbp - 0x18]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x20]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x28], rax
               	mov	eax, dword ptr [rbp - 0x18]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x28]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x10], rax
               	sub	qword ptr [rbp - 0x8], 0x4
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	edx, dword ptr [rax]
               	sub	qword ptr [rbp - 0x10], 0x4
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	cmp	edx, eax
               	je	0x1400082a5 __cmp_D2A+0xb8
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	edx, dword ptr [rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax]
               	cmp	edx, eax
               	jae	0x14000829e __cmp_D2A+0xb1
               	mov	eax, 0xffffffff
               	jmp	0x1400082b7 __cmp_D2A+0xca
               	mov	eax, 0x1
               	jmp	0x1400082b7 __cmp_D2A+0xca
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	qword ptr [rbp - 0x20], rax
               	jae	0x1400082b1 __cmp_D2A+0xc4
               	jmp	0x14000826d __cmp_D2A+0x80
               	nop
               	mov	eax, 0x0
               	add	rsp, 0x30
               	pop	rbp
               	ret

__diff_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x70
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	rdx, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	rcx, rax
               	call	0x1400081ed __cmp_D2A
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x140008324 __diff_D2A+0x67
               	mov	ecx, 0x0
               	call	0x14000793d __Balloc_D2A
               	mov	qword ptr [rbp - 0x30], rax
               	cmp	qword ptr [rbp - 0x30], 0x0
               	jne	0x140008305 __diff_D2A+0x48
               	mov	eax, 0x0
               	jmp	0x1400084b0 __diff_D2A+0x1f3
               	mov	rax, qword ptr [rbp - 0x30]
               	mov	dword ptr [rax + 0x14], 0x1
               	mov	rax, qword ptr [rbp - 0x30]
               	mov	dword ptr [rax + 0x18], 0x0
               	mov	rax, qword ptr [rbp - 0x30]
               	jmp	0x1400084b0 __diff_D2A+0x1f3
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jns	0x14000834b __diff_D2A+0x8e
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rbp - 0x30], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rbp + 0x10], rax
               	mov	rax, qword ptr [rbp - 0x30]
               	mov	qword ptr [rbp + 0x18], rax
               	mov	dword ptr [rbp - 0x4], 0x1
               	jmp	0x140008352 __diff_D2A+0x95
               	mov	dword ptr [rbp - 0x4], 0x0
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x8]
               	mov	ecx, eax
               	call	0x14000793d __Balloc_D2A
               	mov	qword ptr [rbp - 0x30], rax
               	cmp	qword ptr [rbp - 0x30], 0x0
               	jne	0x140008375 __diff_D2A+0xb8
               	mov	eax, 0x0
               	jmp	0x1400084b0 __diff_D2A+0x1f3
               	mov	rax, qword ptr [rbp - 0x30]
               	mov	edx, dword ptr [rbp - 0x4]
               	mov	dword ptr [rax + 0x10], edx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x8], eax
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x10], rax
               	mov	eax, dword ptr [rbp - 0x8]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x38], rax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x3c], eax
               	mov	rax, qword ptr [rbp + 0x18]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x18], rax
               	mov	eax, dword ptr [rbp - 0x3c]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x48], rax
               	mov	rax, qword ptr [rbp - 0x30]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x20], rax
               	mov	qword ptr [rbp - 0x28], 0x0
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	eax, dword ptr [rax]
               	mov	ecx, eax
               	mov	rax, qword ptr [rbp - 0x18]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x18], rdx
               	mov	eax, dword ptr [rax]
               	mov	edx, eax
               	mov	rax, rcx
               	sub	rax, rdx
               	sub	rax, qword ptr [rbp - 0x28]
               	mov	qword ptr [rbp - 0x50], rax
               	mov	rax, qword ptr [rbp - 0x50]
               	shr	rax, 0x20
               	and	eax, 0x1
               	mov	qword ptr [rbp - 0x28], rax
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x20], rdx
               	mov	rdx, qword ptr [rbp - 0x50]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x18]
               	cmp	rax, qword ptr [rbp - 0x48]
               	jb	0x1400083ef __diff_D2A+0x132
               	jmp	0x140008483 __diff_D2A+0x1c6
               	mov	rax, qword ptr [rbp - 0x10]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x10], rdx
               	mov	eax, dword ptr [rax]
               	mov	eax, eax
               	sub	rax, qword ptr [rbp - 0x28]
               	mov	qword ptr [rbp - 0x50], rax
               	mov	rax, qword ptr [rbp - 0x50]
               	shr	rax, 0x20
               	and	eax, 0x1
               	mov	qword ptr [rbp - 0x28], rax
               	mov	rax, qword ptr [rbp - 0x20]
               	lea	rdx, [rax + 0x4]
               	mov	qword ptr [rbp - 0x20], rdx
               	mov	rdx, qword ptr [rbp - 0x50]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x10]
               	cmp	rax, qword ptr [rbp - 0x38]
               	jb	0x14000844a __diff_D2A+0x18d
               	jmp	0x140008493 __diff_D2A+0x1d6
               	sub	dword ptr [rbp - 0x8], 0x1
               	sub	qword ptr [rbp - 0x20], 0x4
               	mov	rax, qword ptr [rbp - 0x20]
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x14000848f __diff_D2A+0x1d2
               	mov	rax, qword ptr [rbp - 0x30]
               	mov	edx, dword ptr [rbp - 0x8]
               	mov	dword ptr [rax + 0x14], edx
               	mov	rax, qword ptr [rbp - 0x30]
               	add	rsp, 0x70
               	pop	rbp
               	ret

__b2d_D2A:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x50
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x20], rax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	cdqe
               	lea	rdx, [4*rax]
               	mov	rax, qword ptr [rbp - 0x20]
               	add	rax, rdx
               	mov	qword ptr [rbp - 0x8], rax
               	sub	qword ptr [rbp - 0x8], 0x4
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0x10], eax
               	mov	eax, dword ptr [rbp - 0x10]
               	mov	ecx, eax
               	call	0x14000792d __hi0bits_D2A
               	mov	dword ptr [rbp - 0x24], eax
               	mov	eax, 0x20
               	sub	eax, dword ptr [rbp - 0x24]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	dword ptr [rax], edx
               	cmp	dword ptr [rbp - 0x24], 0xa
               	jg	0x140008585 __b2d_D2A+0xcf
               	mov	eax, 0xb
               	sub	eax, dword ptr [rbp - 0x24]
               	mov	edx, dword ptr [rbp - 0x10]
               	mov	ecx, eax
               	shr	edx, cl
               	mov	eax, edx
               	or	eax, 0x3ff00000
               	mov	dword ptr [rbp - 0x2c], eax
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	qword ptr [rbp - 0x20], rax
               	jae	0x140008552 __b2d_D2A+0x9c
               	sub	qword ptr [rbp - 0x8], 0x4
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0xc], eax
               	jmp	0x140008559 __b2d_D2A+0xa3
               	mov	dword ptr [rbp - 0xc], 0x0
               	mov	eax, dword ptr [rbp - 0x24]
               	add	eax, 0x15
               	mov	edx, dword ptr [rbp - 0x10]
               	mov	ecx, eax
               	shl	edx, cl
               	mov	r8d, edx
               	mov	eax, 0xb
               	sub	eax, dword ptr [rbp - 0x24]
               	mov	edx, dword ptr [rbp - 0xc]
               	mov	ecx, eax
               	shr	edx, cl
               	mov	eax, edx
               	or	eax, r8d
               	mov	dword ptr [rbp - 0x30], eax
               	jmp	0x140008631 __b2d_D2A+0x17b
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	qword ptr [rbp - 0x20], rax
               	jae	0x14000859f __b2d_D2A+0xe9
               	sub	qword ptr [rbp - 0x8], 0x4
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0x14], eax
               	jmp	0x1400085a6 __b2d_D2A+0xf0
               	mov	dword ptr [rbp - 0x14], 0x0
               	sub	dword ptr [rbp - 0x24], 0xb
               	cmp	dword ptr [rbp - 0x24], 0x0
               	je	0x140008620 __b2d_D2A+0x16a
               	mov	eax, dword ptr [rbp - 0x24]
               	mov	edx, dword ptr [rbp - 0x10]
               	mov	ecx, eax
               	shl	edx, cl
               	mov	r8d, edx
               	mov	eax, 0x20
               	sub	eax, dword ptr [rbp - 0x24]
               	mov	edx, dword ptr [rbp - 0x14]
               	mov	ecx, eax
               	shr	edx, cl
               	mov	eax, edx
               	or	eax, r8d
               	or	eax, 0x3ff00000
               	mov	dword ptr [rbp - 0x2c], eax
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	qword ptr [rbp - 0x20], rax
               	jae	0x1400085f3 __b2d_D2A+0x13d
               	sub	qword ptr [rbp - 0x8], 0x4
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0x10], eax
               	jmp	0x1400085fa __b2d_D2A+0x144
               	mov	dword ptr [rbp - 0x10], 0x0
               	mov	eax, dword ptr [rbp - 0x24]
               	mov	edx, dword ptr [rbp - 0x14]
               	mov	ecx, eax
               	shl	edx, cl
               	mov	r8d, edx
               	mov	eax, 0x20
               	sub	eax, dword ptr [rbp - 0x24]
               	mov	edx, dword ptr [rbp - 0x10]
               	mov	ecx, eax
               	shr	edx, cl
               	mov	eax, edx
               	or	eax, r8d
               	mov	dword ptr [rbp - 0x30], eax
               	jmp	0x140008631 __b2d_D2A+0x17b
               	mov	eax, dword ptr [rbp - 0x10]
               	or	eax, 0x3ff00000
               	mov	dword ptr [rbp - 0x2c], eax
               	mov	eax, dword ptr [rbp - 0x14]
               	mov	dword ptr [rbp - 0x30], eax
               	movsd	xmm0, qword ptr [rbp - 0x30]
               	add	rsp, 0x50
               	pop	rbp
               	ret

__d2b_D2A:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x58
               	lea	rbp, [rsp + 0x50]
               	movsd	qword ptr [rbp + 0x20], xmm0
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	qword ptr [rbp + 0x30], r8
               	movsd	xmm0, qword ptr [rbp + 0x20]
               	movsd	qword ptr [rbp - 0x28], xmm0
               	mov	ecx, 0x1
               	call	0x14000793d __Balloc_D2A
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp - 0x10], 0x0
               	jne	0x14000867d __d2b_D2A+0x41
               	mov	eax, 0x0
               	jmp	0x1400087e5 __d2b_D2A+0x1a9
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rax, 0x18
               	mov	qword ptr [rbp - 0x18], rax
               	mov	eax, dword ptr [rbp - 0x24]
               	and	eax, 0xfffff
               	mov	dword ptr [rbp - 0x30], eax
               	mov	eax, dword ptr [rbp - 0x24]
               	and	eax, 0x7fffffff
               	mov	dword ptr [rbp - 0x24], eax
               	mov	eax, dword ptr [rbp - 0x24]
               	shr	eax, 0x14
               	mov	dword ptr [rbp - 0x1c], eax
               	cmp	dword ptr [rbp - 0x1c], 0x0
               	je	0x1400086b9 __d2b_D2A+0x7d
               	mov	eax, dword ptr [rbp - 0x30]
               	or	eax, 0x100000
               	mov	dword ptr [rbp - 0x30], eax
               	mov	eax, dword ptr [rbp - 0x28]
               	mov	dword ptr [rbp - 0x2c], eax
               	mov	eax, dword ptr [rbp - 0x2c]
               	test	eax, eax
               	je	0x140008741 __d2b_D2A+0x105
               	lea	rax, [rbp - 0x2c]
               	mov	rcx, rax
               	call	0x1400078f8 __lo0bits_D2A
               	mov	dword ptr [rbp - 0x8], eax
               	cmp	dword ptr [rbp - 0x8], 0x0
               	je	0x140008706 __d2b_D2A+0xca
               	mov	edx, dword ptr [rbp - 0x30]
               	mov	eax, 0x20
               	sub	eax, dword ptr [rbp - 0x8]
               	mov	ecx, eax
               	shl	edx, cl
               	mov	eax, dword ptr [rbp - 0x2c]
               	or	edx, eax
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	dword ptr [rax], edx
               	mov	edx, dword ptr [rbp - 0x30]
               	mov	eax, dword ptr [rbp - 0x8]
               	mov	ecx, eax
               	shr	edx, cl
               	mov	eax, edx
               	mov	dword ptr [rbp - 0x30], eax
               	jmp	0x14000870f __d2b_D2A+0xd3
               	mov	edx, dword ptr [rbp - 0x2c]
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, 0x4
               	mov	edx, dword ptr [rbp - 0x30]
               	mov	dword ptr [rax], edx
               	mov	eax, dword ptr [rax]
               	test	eax, eax
               	je	0x140008729 __d2b_D2A+0xed
               	mov	edx, 0x2
               	jmp	0x14000872e __d2b_D2A+0xf2
               	mov	edx, 0x1
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	dword ptr [rax + 0x14], edx
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x4], eax
               	jmp	0x140008772 __d2b_D2A+0x136
               	lea	rax, [rbp - 0x30]
               	mov	rcx, rax
               	call	0x1400078f8 __lo0bits_D2A
               	mov	dword ptr [rbp - 0x8], eax
               	mov	edx, dword ptr [rbp - 0x30]
               	mov	rax, qword ptr [rbp - 0x18]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	dword ptr [rax + 0x14], 0x1
               	mov	rax, qword ptr [rbp - 0x10]
               	mov	eax, dword ptr [rax + 0x14]
               	mov	dword ptr [rbp - 0x4], eax
               	add	dword ptr [rbp - 0x8], 0x20
               	cmp	dword ptr [rbp - 0x1c], 0x0
               	je	0x14000879e __d2b_D2A+0x162
               	mov	eax, dword ptr [rbp - 0x1c]
               	lea	edx, [rax - 0x433]
               	mov	eax, dword ptr [rbp - 0x8]
               	add	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax], edx
               	mov	eax, 0x35
               	sub	eax, dword ptr [rbp - 0x8]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	dword ptr [rax], edx
               	jmp	0x1400087e1 __d2b_D2A+0x1a5
               	mov	eax, dword ptr [rbp - 0x1c]
               	lea	edx, [rax - 0x432]
               	mov	eax, dword ptr [rbp - 0x8]
               	add	edx, eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax], edx
               	mov	eax, dword ptr [rbp - 0x4]
               	shl	eax, 0x5
               	mov	ebx, eax
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	shl	rax, 0x2
               	lea	rdx, [rax - 0x4]
               	mov	rax, qword ptr [rbp - 0x18]
               	add	rax, rdx
               	mov	eax, dword ptr [rax]
               	mov	ecx, eax
               	call	0x14000792d __hi0bits_D2A
               	sub	ebx, eax
               	mov	edx, ebx
               	mov	rax, qword ptr [rbp + 0x30]
               	mov	dword ptr [rax], edx
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rsp, 0x58
               	pop	rbx
               	pop	rbp
               	ret

__strcp_D2A:
               	push	rbp
               	mov	rbp, rsp
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	jmp	0x1400087ff __strcp_D2A+0x13
               	add	qword ptr [rbp + 0x10], 0x1
               	mov	rax, qword ptr [rbp + 0x18]
               	lea	rdx, [rax + 0x1]
               	mov	qword ptr [rbp + 0x18], rdx
               	movzx	edx, byte ptr [rax]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	byte ptr [rax], dl
               	mov	rax, qword ptr [rbp + 0x10]
               	movzx	eax, byte ptr [rax]
               	test	al, al
               	jne	0x1400087fa __strcp_D2A+0xe
               	mov	rax, qword ptr [rbp + 0x10]
               	pop	rbp
               	ret
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

__fpclassify:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x10
               	movsd	qword ptr [rbp + 0x10], xmm0
               	movsd	xmm0, qword ptr [rbp + 0x10]
               	movsd	qword ptr [rbp - 0x10], xmm0
               	mov	eax, dword ptr [rbp - 0xc]
               	mov	dword ptr [rbp - 0x4], eax
               	mov	eax, dword ptr [rbp - 0x10]
               	mov	edx, dword ptr [rbp - 0x4]
               	and	edx, 0xfffff
               	or	eax, edx
               	mov	dword ptr [rbp - 0x8], eax
               	and	dword ptr [rbp - 0x4], 0x7ff00000
               	mov	eax, dword ptr [rbp - 0x4]
               	or	eax, dword ptr [rbp - 0x8]
               	test	eax, eax
               	jne	0x140008876 __fpclassify+0x46
               	mov	eax, 0x4000
               	jmp	0x1400088a5 __fpclassify+0x75
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x140008883 __fpclassify+0x53
               	mov	eax, 0x4400
               	jmp	0x1400088a5 __fpclassify+0x75
               	cmp	dword ptr [rbp - 0x4], 0x7ff00000
               	jne	0x1400088a0 __fpclassify+0x70
               	cmp	dword ptr [rbp - 0x8], 0x0
               	je	0x140008899 __fpclassify+0x69
               	mov	eax, 0x100
               	jmp	0x1400088a5 __fpclassify+0x75
               	mov	eax, 0x500
               	jmp	0x1400088a5 __fpclassify+0x75
               	mov	eax, 0x400
               	add	rsp, 0x10
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop
               	nop

__fpclassifyl:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x38
               	lea	rbp, [rsp + 0x30]
               	mov	rbx, rcx
               	fld	tbyte ptr [rbx]
               	fstp	tbyte ptr [rbp - 0x30]
               	fld	tbyte ptr [rbp - 0x30]
               	fstp	tbyte ptr [rbp - 0x20]
               	movzx	eax, word ptr [rbp - 0x18]
               	cwde
               	and	eax, 0x7fff
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x140008901 __fpclassifyl+0x51
               	mov	eax, dword ptr [rbp - 0x1c]
               	mov	dword ptr [rbp - 0x8], eax
               	mov	eax, dword ptr [rbp - 0x20]
               	or	eax, dword ptr [rbp - 0x8]
               	test	eax, eax
               	jne	0x1400088f3 __fpclassifyl+0x43
               	mov	eax, 0x4000
               	jmp	0x140008930 __fpclassifyl+0x80
               	mov	eax, dword ptr [rbp - 0x8]
               	test	eax, eax
               	js	0x14000892b __fpclassifyl+0x7b
               	mov	eax, 0x4400
               	jmp	0x140008930 __fpclassifyl+0x80
               	cmp	dword ptr [rbp - 0x4], 0x7fff
               	jne	0x14000892b __fpclassifyl+0x7b
               	mov	eax, dword ptr [rbp - 0x1c]
               	and	eax, 0x7fffffff
               	mov	edx, eax
               	mov	eax, dword ptr [rbp - 0x20]
               	or	eax, edx
               	test	eax, eax
               	jne	0x140008924 __fpclassifyl+0x74
               	mov	eax, 0x500
               	jmp	0x140008930 __fpclassifyl+0x80
               	mov	eax, 0x100
               	jmp	0x140008930 __fpclassifyl+0x80
               	mov	eax, 0x400
               	add	rsp, 0x38
               	pop	rbx
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop

isnan:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x10
               	movsd	qword ptr [rbp + 0x10], xmm0
               	movsd	xmm0, qword ptr [rbp + 0x10]
               	movsd	qword ptr [rbp - 0x10], xmm0
               	mov	eax, dword ptr [rbp - 0x10]
               	mov	dword ptr [rbp - 0x4], eax
               	mov	eax, dword ptr [rbp - 0xc]
               	and	eax, 0x7fffffff
               	mov	dword ptr [rbp - 0x8], eax
               	mov	eax, dword ptr [rbp - 0x4]
               	neg	eax
               	or	eax, dword ptr [rbp - 0x4]
               	shr	eax, 0x1f
               	mov	edx, eax
               	mov	eax, dword ptr [rbp - 0x8]
               	or	eax, edx
               	mov	dword ptr [rbp - 0x8], eax
               	mov	eax, 0x7ff00000
               	sub	eax, dword ptr [rbp - 0x8]
               	mov	dword ptr [rbp - 0x8], eax
               	mov	eax, dword ptr [rbp - 0x8]
               	sar	eax, 0x1f
               	add	rsp, 0x10
               	pop	rbp
               	ret
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

isnanl:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x38
               	lea	rbp, [rsp + 0x30]
               	mov	rbx, rcx
               	fld	tbyte ptr [rbx]
               	fstp	tbyte ptr [rbp - 0x30]
               	fld	tbyte ptr [rbp - 0x30]
               	fstp	tbyte ptr [rbp - 0x20]
               	movzx	eax, word ptr [rbp - 0x18]
               	cwde
               	add	eax, eax
               	and	eax, 0xffff
               	mov	dword ptr [rbp - 0x4], eax
               	mov	eax, dword ptr [rbp - 0x20]
               	mov	edx, dword ptr [rbp - 0x1c]
               	and	edx, 0x7fffffff
               	or	eax, edx
               	mov	dword ptr [rbp - 0x8], eax
               	mov	eax, dword ptr [rbp - 0x8]
               	neg	eax
               	or	eax, dword ptr [rbp - 0x8]
               	shr	eax, 0x1f
               	mov	edx, eax
               	mov	eax, dword ptr [rbp - 0x4]
               	or	eax, edx
               	mov	dword ptr [rbp - 0x4], eax
               	mov	eax, 0xfffe
               	sub	eax, dword ptr [rbp - 0x4]
               	mov	dword ptr [rbp - 0x4], eax
               	mov	eax, dword ptr [rbp - 0x4]
               	sar	eax, 0x10
               	add	rsp, 0x38
               	pop	rbx
               	pop	rbp
               	ret
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

wcsnlen:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x10
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	qword ptr [rbp - 0x8], 0x0
               	jmp	0x140008a34 wcsnlen+0x24
               	add	qword ptr [rbp - 0x8], 0x1
               	add	qword ptr [rbp + 0x10], 0x2
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	rax, qword ptr [rbp + 0x18]
               	jae	0x140008a4a wcsnlen+0x3a
               	mov	rax, qword ptr [rbp + 0x10]
               	movzx	eax, word ptr [rax]
               	test	ax, ax
               	jne	0x140008a2a wcsnlen+0x1a
               	mov	rax, qword ptr [rbp - 0x8]
               	add	rsp, 0x10
               	pop	rbp
               	ret
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

__wcrtomb_cp:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x50
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	eax, edx
               	mov	dword ptr [rbp + 0x20], r8d
               	mov	dword ptr [rbp + 0x28], r9d
               	mov	word ptr [rbp + 0x18], ax
               	cmp	dword ptr [rbp + 0x20], 0x0
               	jne	0x140008aaf __wcrtomb_cp+0x4f
               	movzx	eax, word ptr [rbp + 0x18]
               	cmp	ax, 0xff
               	jbe	0x140008a9c __wcrtomb_cp+0x3c
               	call	0x1400093e8 _errno
               	mov	dword ptr [rax], 0x2a
               	mov	eax, 0xffffffff
               	jmp	0x140008b1a __wcrtomb_cp+0xba
               	movzx	eax, word ptr [rbp + 0x18]
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	byte ptr [rax], dl
               	mov	eax, 0x1
               	jmp	0x140008b1a __wcrtomb_cp+0xba
               	mov	dword ptr [rbp - 0x8], 0x0
               	mov	edx, dword ptr [rbp + 0x28]
               	lea	r8, [rbp + 0x18]
               	mov	eax, dword ptr [rbp + 0x20]
               	lea	rcx, [rbp - 0x8]
               	mov	qword ptr [rsp + 0x38], rcx
               	mov	qword ptr [rsp + 0x30], 0x0
               	mov	dword ptr [rsp + 0x28], edx
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	r9d, 0x1
               	mov	edx, 0x0
               	mov	ecx, eax
               	mov	rax, qword ptr [rip + 0x8765] # 0x140011258 __imp_WideCharToMultiByte
               	call	rax
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	je	0x140008b05 __wcrtomb_cp+0xa5
               	mov	eax, dword ptr [rbp - 0x8]
               	test	eax, eax
               	je	0x140008b17 __wcrtomb_cp+0xb7
               	call	0x1400093e8 _errno
               	mov	dword ptr [rax], 0x2a
               	mov	eax, 0xffffffff
               	jmp	0x140008b1a __wcrtomb_cp+0xba
               	mov	eax, dword ptr [rbp - 0x4]
               	add	rsp, 0x50
               	pop	rbp
               	ret

wcrtomb:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x38
               	lea	rbp, [rsp + 0x30]
               	mov	qword ptr [rbp + 0x20], rcx
               	mov	eax, edx
               	mov	qword ptr [rbp + 0x30], r8
               	mov	word ptr [rbp + 0x28], ax
               	cmp	qword ptr [rbp + 0x20], 0x0
               	jne	0x140008b4a wcrtomb+0x2a
               	lea	rax, [rbp - 0xd]
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140008b52 wcrtomb+0x32
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	qword ptr [rbp - 0x8], rax
               	call	0x1400093b0 ___mb_cur_max_func
               	mov	ebx, eax
               	call	0x1400093a8 ___lc_codepage_func
               	mov	ecx, eax
               	movzx	edx, word ptr [rbp + 0x28]
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	r9d, ebx
               	mov	r8d, ecx
               	mov	rcx, rax
               	call	0x140008a60 __wcrtomb_cp
               	cdqe
               	add	rsp, 0x38
               	pop	rbx
               	pop	rbp
               	ret

wcsrtombs:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x50
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	qword ptr [rbp + 0x20], r8
               	mov	qword ptr [rbp + 0x28], r9
               	mov	dword ptr [rbp - 0x14], 0x0
               	mov	qword ptr [rbp - 0x8], 0x0
               	call	0x1400093a8 ___lc_codepage_func
               	mov	dword ptr [rbp - 0x18], eax
               	call	0x1400093b0 ___mb_cur_max_func
               	mov	dword ptr [rbp - 0x1c], eax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rax]
               	mov	qword ptr [rbp - 0x10], rax
               	cmp	qword ptr [rbp + 0x18], 0x0
               	je	0x140008bd4 wcsrtombs+0x55
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rax]
               	test	rax, rax
               	jne	0x140008bde wcsrtombs+0x5f
               	mov	eax, 0x0
               	jmp	0x140008cdc wcsrtombs+0x15d
               	cmp	qword ptr [rbp + 0x10], 0x0
               	je	0x140008c7c wcsrtombs+0xfd
               	jmp	0x140008c61 wcsrtombs+0xe2
               	mov	rax, qword ptr [rbp - 0x10]
               	movzx	eax, word ptr [rax]
               	movzx	edx, ax
               	mov	r8d, dword ptr [rbp - 0x1c]
               	mov	ecx, dword ptr [rbp - 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	r9d, r8d
               	mov	r8d, ecx
               	mov	rcx, rax
               	call	0x140008a60 __wcrtomb_cp
               	mov	dword ptr [rbp - 0x14], eax
               	cmp	dword ptr [rbp - 0x14], 0x0
               	jg	0x140008c23 wcsrtombs+0xa4
               	mov	rax, -0x1
               	jmp	0x140008cdc wcsrtombs+0x15d
               	mov	eax, dword ptr [rbp - 0x14]
               	cdqe
               	add	qword ptr [rbp - 0x8], rax
               	mov	eax, dword ptr [rbp - 0x14]
               	cdqe
               	add	qword ptr [rbp + 0x10], rax
               	mov	rax, qword ptr [rbp + 0x10]
               	sub	rax, 0x1
               	movzx	eax, byte ptr [rax]
               	test	al, al
               	jne	0x140008c5c wcsrtombs+0xdd
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rax], 0x0
               	mov	rax, qword ptr [rbp - 0x8]
               	sub	rax, 0x1
               	jmp	0x140008cdc wcsrtombs+0x15d
               	add	qword ptr [rbp - 0x10], 0x2
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	rax, qword ptr [rbp + 0x20]
               	jb	0x140008beb wcsrtombs+0x6c
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rdx, qword ptr [rbp - 0x10]
               	mov	qword ptr [rax], rdx
               	mov	rax, qword ptr [rbp - 0x8]
               	jmp	0x140008cdc wcsrtombs+0x15d
               	mov	rax, qword ptr [rbp - 0x10]
               	movzx	eax, word ptr [rax]
               	movzx	edx, ax
               	mov	r8d, dword ptr [rbp - 0x1c]
               	mov	ecx, dword ptr [rbp - 0x18]
               	lea	rax, [rbp - 0x21]
               	mov	r9d, r8d
               	mov	r8d, ecx
               	mov	rcx, rax
               	call	0x140008a60 __wcrtomb_cp
               	mov	dword ptr [rbp - 0x14], eax
               	cmp	dword ptr [rbp - 0x14], 0x0
               	jg	0x140008cb1 wcsrtombs+0x132
               	mov	rax, -0x1
               	jmp	0x140008cdc wcsrtombs+0x15d
               	mov	eax, dword ptr [rbp - 0x14]
               	cdqe
               	add	qword ptr [rbp - 0x8], rax
               	mov	eax, dword ptr [rbp - 0x14]
               	sub	eax, 0x1
               	cdqe
               	movzx	eax, byte ptr [rbp + rax - 0x21]
               	test	al, al
               	jne	0x140008cd5 wcsrtombs+0x156
               	mov	rax, qword ptr [rbp - 0x8]
               	sub	rax, 0x1
               	jmp	0x140008cdc wcsrtombs+0x15d
               	add	qword ptr [rbp - 0x10], 0x2
               	jmp	0x140008c7c wcsrtombs+0xfd
               	add	rsp, 0x50
               	pop	rbp
               	ret
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
               	nop

strnlen:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x10
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140008d0f strnlen+0x1f
               	add	qword ptr [rbp - 0x8], 0x1
               	mov	rax, qword ptr [rbp - 0x8]
               	sub	rax, qword ptr [rbp + 0x10]
               	cmp	rax, qword ptr [rbp + 0x18]
               	jae	0x140008d28 strnlen+0x38
               	mov	rax, qword ptr [rbp - 0x8]
               	movzx	eax, byte ptr [rax]
               	test	al, al
               	jne	0x140008d0a strnlen+0x1a
               	mov	rax, qword ptr [rbp - 0x8]
               	sub	rax, qword ptr [rbp + 0x10]
               	add	rsp, 0x10
               	pop	rbp
               	ret
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

__mbrtowc_cp:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x40
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	qword ptr [rbp + 0x20], r8
               	mov	qword ptr [rbp + 0x28], r9
               	cmp	qword ptr [rbp + 0x18], 0x0
               	jne	0x140008d69 __mbrtowc_cp+0x29
               	mov	eax, 0x0
               	jmp	0x140008f08 __mbrtowc_cp+0x1c8
               	cmp	qword ptr [rbp + 0x20], 0x0
               	jne	0x140008d7a __mbrtowc_cp+0x3a
               	mov	eax, 0xfffffffe
               	jmp	0x140008f08 __mbrtowc_cp+0x1c8
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	eax, dword ptr [rax]
               	mov	dword ptr [rbp - 0x4], eax
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	dword ptr [rax], 0x0
               	mov	rax, qword ptr [rbp + 0x18]
               	movzx	eax, byte ptr [rax]
               	test	al, al
               	jne	0x140008dab __mbrtowc_cp+0x6b
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	word ptr [rax], 0x0
               	mov	eax, 0x0
               	jmp	0x140008f08 __mbrtowc_cp+0x1c8
               	cmp	dword ptr [rbp + 0x38], 0x1
               	jbe	0x140008ea3 __mbrtowc_cp+0x163
               	movzx	eax, byte ptr [rbp - 0x4]
               	test	al, al
               	je	0x140008e1b __mbrtowc_cp+0xdb
               	mov	rax, qword ptr [rbp + 0x18]
               	movzx	eax, byte ptr [rax]
               	mov	byte ptr [rbp - 0x3], al
               	lea	rcx, [rbp - 0x4]
               	mov	eax, dword ptr [rbp + 0x30]
               	mov	dword ptr [rsp + 0x28], 0x1
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	r9d, 0x2
               	mov	r8, rcx
               	mov	edx, 0x8
               	mov	ecx, eax
               	mov	rax, qword ptr [rip + 0x8432] # 0x140011228 __imp_MultiByteToWideChar
               	call	rax
               	test	eax, eax
               	jne	0x140008e11 __mbrtowc_cp+0xd1
               	call	0x1400093e8 _errno
               	mov	dword ptr [rax], 0x2a
               	mov	eax, 0xffffffff
               	jmp	0x140008f08 __mbrtowc_cp+0x1c8
               	mov	eax, 0x2
               	jmp	0x140008f08 __mbrtowc_cp+0x1c8
               	mov	rax, qword ptr [rbp + 0x18]
               	movzx	eax, byte ptr [rax]
               	movzx	edx, al
               	mov	eax, dword ptr [rbp + 0x30]
               	mov	ecx, eax
               	mov	rax, qword ptr [rip + 0x83df] # 0x140011210 __imp_IsDBCSLeadByteEx
               	call	rax
               	test	eax, eax
               	je	0x140008ea3 __mbrtowc_cp+0x163
               	cmp	qword ptr [rbp + 0x20], 0x1
               	ja	0x140008e55 __mbrtowc_cp+0x115
               	mov	rax, qword ptr [rbp + 0x18]
               	movzx	edx, byte ptr [rax]
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	byte ptr [rax], dl
               	mov	eax, 0xfffffffe
               	jmp	0x140008f08 __mbrtowc_cp+0x1c8
               	mov	rcx, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rbp + 0x30]
               	mov	dword ptr [rsp + 0x28], 0x1
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	r9d, 0x2
               	mov	r8, rcx
               	mov	edx, 0x8
               	mov	ecx, eax
               	mov	rax, qword ptr [rip + 0x83a4] # 0x140011228 __imp_MultiByteToWideChar
               	call	rax
               	test	eax, eax
               	jne	0x140008e9c __mbrtowc_cp+0x15c
               	call	0x1400093e8 _errno
               	mov	dword ptr [rax], 0x2a
               	mov	eax, 0xffffffff
               	jmp	0x140008f08 __mbrtowc_cp+0x1c8
               	mov	eax, 0x2
               	jmp	0x140008f08 __mbrtowc_cp+0x1c8
               	cmp	dword ptr [rbp + 0x30], 0x0
               	jne	0x140008ebc __mbrtowc_cp+0x17c
               	mov	rax, qword ptr [rbp + 0x18]
               	movzx	eax, byte ptr [rax]
               	movzx	edx, al
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	word ptr [rax], dx
               	jmp	0x140008f03 __mbrtowc_cp+0x1c3
               	mov	rcx, qword ptr [rbp + 0x18]
               	mov	eax, dword ptr [rbp + 0x30]
               	mov	dword ptr [rsp + 0x28], 0x1
               	mov	rdx, qword ptr [rbp + 0x10]
               	mov	qword ptr [rsp + 0x20], rdx
               	mov	r9d, 0x1
               	mov	r8, rcx
               	mov	edx, 0x8
               	mov	ecx, eax
               	mov	rax, qword ptr [rip + 0x833d] # 0x140011228 __imp_MultiByteToWideChar
               	call	rax
               	test	eax, eax
               	jne	0x140008f03 __mbrtowc_cp+0x1c3
               	call	0x1400093e8 _errno
               	mov	dword ptr [rax], 0x2a
               	mov	eax, 0xffffffff
               	jmp	0x140008f08 __mbrtowc_cp+0x1c8
               	mov	eax, 0x1
               	add	rsp, 0x40
               	pop	rbp
               	ret

mbrtowc:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x48
               	lea	rbp, [rsp + 0x40]
               	mov	qword ptr [rbp + 0x20], rcx
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	qword ptr [rbp + 0x30], r8
               	mov	qword ptr [rbp + 0x38], r9
               	mov	word ptr [rbp - 0xa], 0x0
               	cmp	qword ptr [rbp + 0x20], 0x0
               	jne	0x140008f40 mbrtowc+0x32
               	lea	rax, [rbp - 0xa]
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x140008f48 mbrtowc+0x3a
               	mov	rax, qword ptr [rbp + 0x20]
               	mov	qword ptr [rbp - 0x8], rax
               	call	0x1400093b0 ___mb_cur_max_func
               	mov	ebx, eax
               	call	0x1400093a8 ___lc_codepage_func
               	mov	r8d, eax
               	cmp	qword ptr [rbp + 0x38], 0x0
               	je	0x140008f64 mbrtowc+0x56
               	mov	rax, qword ptr [rbp + 0x38]
               	jmp	0x140008f6b mbrtowc+0x5d
               	lea	rax, [rip + 0x7c15]     # 0x140010b80 internal_mbstate.2
               	mov	r10, qword ptr [rbp + 0x30]
               	mov	rdx, qword ptr [rbp + 0x28]
               	mov	rcx, qword ptr [rbp - 0x8]
               	mov	dword ptr [rsp + 0x28], ebx
               	mov	dword ptr [rsp + 0x20], r8d
               	mov	r9, rax
               	mov	r8, r10
               	call	0x140008d40 __mbrtowc_cp
               	cdqe
               	add	rsp, 0x48
               	pop	rbx
               	pop	rbp
               	ret

mbsrtowcs:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x60
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	qword ptr [rbp + 0x20], r8
               	mov	qword ptr [rbp + 0x28], r9
               	mov	dword ptr [rbp - 0x4], 0x0
               	mov	qword ptr [rbp - 0x10], 0x0
               	cmp	qword ptr [rbp + 0x28], 0x0
               	je	0x140008fcc mbsrtowcs+0x38
               	mov	rax, qword ptr [rbp + 0x28]
               	mov	qword ptr [rbp - 0x18], rax
               	jmp	0x140008fd7 mbsrtowcs+0x43
               	lea	rax, [rip + 0x7bb1]     # 0x140010b84 internal_mbstate.1
               	mov	qword ptr [rbp - 0x18], rax
               	call	0x1400093a8 ___lc_codepage_func
               	mov	dword ptr [rbp - 0x1c], eax
               	call	0x1400093b0 ___mb_cur_max_func
               	mov	dword ptr [rbp - 0x20], eax
               	cmp	qword ptr [rbp + 0x18], 0x0
               	je	0x140008ffa mbsrtowcs+0x66
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rax, qword ptr [rax]
               	test	rax, rax
               	jne	0x140009004 mbsrtowcs+0x70
               	mov	eax, 0x0
               	jmp	0x1400090e3 mbsrtowcs+0x14f
               	cmp	qword ptr [rbp + 0x10], 0x0
               	je	0x140009095 mbsrtowcs+0x101
               	jmp	0x140009035 mbsrtowcs+0xa1
               	add	qword ptr [rbp + 0x10], 0x2
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rdx, qword ptr [rax]
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	add	rdx, rax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rax], rdx
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	add	qword ptr [rbp - 0x10], rax
               	mov	rax, qword ptr [rbp - 0x10]
               	cmp	rax, qword ptr [rbp + 0x20]
               	jae	0x140009078 mbsrtowcs+0xe4
               	mov	rax, qword ptr [rbp + 0x20]
               	sub	rax, qword ptr [rbp - 0x10]
               	mov	r8, rax
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rdx, qword ptr [rax]
               	mov	r9, qword ptr [rbp - 0x18]
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	ecx, dword ptr [rbp - 0x20]
               	mov	dword ptr [rsp + 0x28], ecx
               	mov	ecx, dword ptr [rbp - 0x1c]
               	mov	dword ptr [rsp + 0x20], ecx
               	mov	rcx, rax
               	call	0x140008d40 __mbrtowc_cp
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jg	0x140009011 mbsrtowcs+0x7d
               	mov	rax, qword ptr [rbp - 0x10]
               	cmp	rax, qword ptr [rbp + 0x20]
               	jae	0x1400090df mbsrtowcs+0x14b
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jne	0x1400090df mbsrtowcs+0x14b
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	qword ptr [rax], 0x0
               	jmp	0x1400090df mbsrtowcs+0x14b
               	mov	word ptr [rbp - 0x22], 0x0
               	jmp	0x1400090a6 mbsrtowcs+0x112
               	mov	eax, dword ptr [rbp - 0x4]
               	cdqe
               	add	qword ptr [rbp - 0x10], rax
               	mov	r8d, dword ptr [rbp - 0x20]
               	mov	rax, qword ptr [rbp + 0x18]
               	mov	rdx, qword ptr [rax]
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rdx, rax
               	mov	r9, qword ptr [rbp - 0x18]
               	lea	rax, [rbp - 0x22]
               	mov	ecx, dword ptr [rbp - 0x20]
               	mov	dword ptr [rsp + 0x28], ecx
               	mov	ecx, dword ptr [rbp - 0x1c]
               	mov	dword ptr [rsp + 0x20], ecx
               	mov	rcx, rax
               	call	0x140008d40 __mbrtowc_cp
               	mov	dword ptr [rbp - 0x4], eax
               	cmp	dword ptr [rbp - 0x4], 0x0
               	jg	0x14000909d mbsrtowcs+0x109
               	mov	rax, qword ptr [rbp - 0x10]
               	add	rsp, 0x60
               	pop	rbp
               	ret

mbrlen:
               	push	rbp
               	push	rbx
               	sub	rsp, 0x48
               	lea	rbp, [rsp + 0x40]
               	mov	qword ptr [rbp + 0x20], rcx
               	mov	qword ptr [rbp + 0x28], rdx
               	mov	qword ptr [rbp + 0x30], r8
               	mov	word ptr [rbp - 0x2], 0x0
               	call	0x1400093b0 ___mb_cur_max_func
               	mov	ebx, eax
               	call	0x1400093a8 ___lc_codepage_func
               	mov	r8d, eax
               	cmp	qword ptr [rbp + 0x30], 0x0
               	je	0x140009122 mbrlen+0x39
               	mov	rax, qword ptr [rbp + 0x30]
               	jmp	0x140009129 mbrlen+0x40
               	lea	rax, [rip + 0x7a5f]     # 0x140010b88 s_mbstate.0
               	mov	r10, qword ptr [rbp + 0x28]
               	mov	rdx, qword ptr [rbp + 0x20]
               	lea	rcx, [rbp - 0x2]
               	mov	dword ptr [rsp + 0x28], ebx
               	mov	dword ptr [rsp + 0x20], r8d
               	mov	r9, rax
               	mov	r8, r10
               	call	0x140008d40 __mbrtowc_cp
               	cdqe
               	add	rsp, 0x48
               	pop	rbx
               	pop	rbp
               	ret
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
               	nop

_initterm_e:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x30
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	qword ptr [rbp + 0x18], rdx
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rbp - 0x8], rax
               	jmp	0x1400091a3 _initterm_e+0x43
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rax]
               	test	rax, rax
               	je	0x14000919d _initterm_e+0x3d
               	mov	rax, qword ptr [rbp - 0x8]
               	mov	rax, qword ptr [rax]
               	call	rax
               	mov	dword ptr [rbp - 0xc], eax
               	cmp	dword ptr [rbp - 0xc], 0x0
               	je	0x14000919e _initterm_e+0x3e
               	mov	eax, dword ptr [rbp - 0xc]
               	jmp	0x1400091b2 _initterm_e+0x52
               	nop
               	add	qword ptr [rbp - 0x8], 0x8
               	mov	rax, qword ptr [rbp - 0x8]
               	cmp	rax, qword ptr [rbp + 0x18]
               	jb	0x14000917a _initterm_e+0x1a
               	mov	eax, 0x0
               	add	rsp, 0x30
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop
               	nop

__p__fmode:
               	push	rbp
               	mov	rbp, rsp
               	mov	rax, qword ptr [rip + 0x2445] # 0x14000b610 .refptr.__imp__fmode
               	mov	rax, qword ptr [rax]
               	pop	rbp
               	ret

__p__commode:
               	push	rbp
               	mov	rbp, rsp
               	mov	rax, qword ptr [rip + 0x2425] # 0x14000b600 .refptr.__imp__commode
               	mov	rax, qword ptr [rax]
               	pop	rbp
               	ret

__p___initenv:
               	push	rbp
               	mov	rbp, rsp
               	mov	rax, qword ptr [rip + 0x2405] # 0x14000b5f0 .refptr.__imp___initenv
               	mov	rax, qword ptr [rax]
               	pop	rbp
               	ret

_lock_file:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	ecx, 0x0
               	call	0x140009370 __acrt_iob_func
               	cmp	qword ptr [rbp + 0x10], rax
               	jb	0x14000925e _lock_file+0x6e
               	mov	ecx, 0x13
               	call	0x140009370 __acrt_iob_func
               	cmp	rax, qword ptr [rbp + 0x10]
               	jb	0x14000925e _lock_file+0x6e
               	mov	ecx, 0x0
               	call	0x140009370 __acrt_iob_func
               	mov	rdx, qword ptr [rbp + 0x10]
               	sub	rdx, rax
               	sar	rdx, 0x4
               	movabs	rax, -0x5555555555555555
               	imul	rax, rdx
               	add	eax, 0x10
               	mov	ecx, eax
               	call	0x1400093f8 _lock
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x18]
               	or	ah, -0x80
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	dword ptr [rax + 0x18], edx
               	jmp	0x140009273 _lock_file+0x83
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x30
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0x7f70] # 0x1400111e0 __imp_EnterCriticalSection
               	call	rax
               	nop
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret

_unlock_file:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	qword ptr [rbp + 0x10], rcx
               	mov	ecx, 0x0
               	call	0x140009370 __acrt_iob_func
               	cmp	qword ptr [rbp + 0x10], rax
               	jb	0x1400092e8 _unlock_file+0x6e
               	mov	ecx, 0x13
               	call	0x140009370 __acrt_iob_func
               	cmp	rax, qword ptr [rbp + 0x10]
               	jb	0x1400092e8 _unlock_file+0x6e
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	eax, dword ptr [rax + 0x18]
               	and	ah, 0x7f
               	mov	edx, eax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	dword ptr [rax + 0x18], edx
               	mov	ecx, 0x0
               	call	0x140009370 __acrt_iob_func
               	mov	rdx, qword ptr [rbp + 0x10]
               	sub	rdx, rax
               	sar	rdx, 0x4
               	movabs	rax, -0x5555555555555555
               	imul	rax, rdx
               	add	eax, 0x10
               	mov	ecx, eax
               	call	0x140009400 _unlock
               	jmp	0x1400092fd _unlock_file+0x83
               	mov	rax, qword ptr [rbp + 0x10]
               	add	rax, 0x30
               	mov	rcx, rax
               	mov	rax, qword ptr [rip + 0x7f1e] # 0x140011218 __imp_LeaveCriticalSection
               	call	rax
               	nop
               	nop
               	add	rsp, 0x20
               	pop	rbp
               	ret
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

mingw_set_invalid_parameter_handler:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x10
               	mov	qword ptr [rbp + 0x10], rcx
               	lea	rax, [rip + 0x786d]     # 0x140010b90 handler
               	mov	qword ptr [rbp - 0x8], rax
               	mov	rax, qword ptr [rbp + 0x10]
               	mov	qword ptr [rbp - 0x10], rax
               	mov	rdx, qword ptr [rbp - 0x10]
               	mov	rax, qword ptr [rbp - 0x8]
               	xchg	qword ptr [rax], rdx
               	mov	rax, rdx
               	add	rsp, 0x10
               	pop	rbp
               	ret

mingw_get_invalid_parameter_handler:
               	push	rbp
               	mov	rbp, rsp
               	mov	rax, qword ptr [rip + 0x7842] # 0x140010b90 handler
               	pop	rbp
               	ret

_configthreadlocale:
               	push	rbp
               	mov	rbp, rsp
               	mov	dword ptr [rbp + 0x10], ecx
               	cmp	dword ptr [rbp + 0x10], 0x1
               	jne	0x140009364 _configthreadlocale+0x14
               	mov	eax, 0xffffffff
               	jmp	0x140009369 _configthreadlocale+0x19
               	mov	eax, 0x2
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop
               	nop

__acrt_iob_func:
               	push	rbp
               	mov	rbp, rsp
               	sub	rsp, 0x20
               	mov	dword ptr [rbp + 0x10], ecx
               	call	0x1400093c0 __iob_func
               	mov	rcx, rax
               	mov	edx, dword ptr [rbp + 0x10]
               	mov	rax, rdx
               	add	rax, rax
               	add	rax, rdx
               	shl	rax, 0x4
               	add	rax, rcx
               	add	rsp, 0x20
               	pop	rbp
               	ret
               	nop
               	nop
               	nop
               	nop

__C_specific_handler:
               	jmp	qword ptr [rip + 0x7ec2] # 0x140011268 fthunk
               	nop
               	nop

___lc_codepage_func:
               	jmp	qword ptr [rip + 0x7ec2] # 0x140011270 __imp____lc_codepage_func
               	nop
               	nop

___mb_cur_max_func:
               	jmp	qword ptr [rip + 0x7ec2] # 0x140011278 __imp____mb_cur_max_func
               	nop
               	nop

__getmainargs:
               	jmp	qword ptr [rip + 0x7ec2] # 0x140011280 __imp___getmainargs
               	nop
               	nop

__iob_func:
               	jmp	qword ptr [rip + 0x7eca] # 0x140011290 __imp___iob_func
               	nop
               	nop

__set_app_type:
               	jmp	qword ptr [rip + 0x7eca] # 0x140011298 __imp___set_app_type
               	nop
               	nop

__setusermatherr:
               	jmp	qword ptr [rip + 0x7eca] # 0x1400112a0 __imp___setusermatherr
               	nop
               	nop

_amsg_exit:
               	jmp	qword ptr [rip + 0x7eca] # 0x1400112a8 __imp__amsg_exit
               	nop
               	nop

_cexit:
               	jmp	qword ptr [rip + 0x7eca] # 0x1400112b0 __imp__cexit
               	nop
               	nop

_errno:
               	jmp	qword ptr [rip + 0x7ed2] # 0x1400112c0 __imp__errno
               	nop
               	nop

_initterm:
               	jmp	qword ptr [rip + 0x7eda] # 0x1400112d0 __imp__initterm
               	nop
               	nop

_lock:
               	jmp	qword ptr [rip + 0x7eda] # 0x1400112d8 __imp__lock
               	nop
               	nop

_unlock:
               	jmp	qword ptr [rip + 0x7eda] # 0x1400112e0 __imp__unlock
               	nop
               	nop

abort:
               	jmp	qword ptr [rip + 0x7eda] # 0x1400112e8 __imp_abort
               	nop
               	nop

_crt_atexit:
               	jmp	qword ptr [rip + 0x7eda] # 0x1400112f0 __imp__crt_atexit
               	nop
               	nop

calloc:
               	jmp	qword ptr [rip + 0x7eda] # 0x1400112f8 __imp_calloc
               	nop
               	nop

exit:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011300 __imp_exit
               	nop
               	nop

fprintf:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011308 __imp_fprintf
               	nop
               	nop

fputc:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011310 __imp_fputc
               	nop
               	nop

free:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011318 __imp_free
               	nop
               	nop

localeconv:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011320 __imp_localeconv
               	nop
               	nop

malloc:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011328 __imp_malloc
               	nop
               	nop

memcpy:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011330 __imp_memcpy
               	nop
               	nop

signal:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011338 __imp_signal
               	nop
               	nop

strerror:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011340 __imp_strerror
               	nop
               	nop

strlen:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011348 __imp_strlen
               	nop
               	nop

strncmp:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011350 __imp_strncmp
               	nop
               	nop

vfprintf:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011358 __imp_vfprintf
               	nop
               	nop

wcslen:
               	jmp	qword ptr [rip + 0x7eda] # 0x140011360 __imp_wcslen
               	nop
               	nop
               	nop	dword ptr [rax + rax]

WideCharToMultiByte:
               	jmp	qword ptr [rip + 0x7dc2] # 0x140011258 __imp_WideCharToMultiByte
               	nop
               	nop

VirtualQuery:
               	jmp	qword ptr [rip + 0x7db2] # 0x140011250 __imp_VirtualQuery
               	nop
               	nop

VirtualProtect:
               	jmp	qword ptr [rip + 0x7da2] # 0x140011248 __imp_VirtualProtect
               	nop
               	nop

TlsGetValue:
               	jmp	qword ptr [rip + 0x7d92] # 0x140011240 __imp_TlsGetValue
               	nop
               	nop

Sleep:
               	jmp	qword ptr [rip + 0x7d82] # 0x140011238 __imp_Sleep
               	nop
               	nop

SetUnhandledExceptionFilter:
               	jmp	qword ptr [rip + 0x7d72] # 0x140011230 __imp_SetUnhandledExceptionFilter
               	nop
               	nop

MultiByteToWideChar:
               	jmp	qword ptr [rip + 0x7d62] # 0x140011228 __imp_MultiByteToWideChar
               	nop
               	nop

LoadLibraryA:
               	jmp	qword ptr [rip + 0x7d52] # 0x140011220 __imp_LoadLibraryA
               	nop
               	nop

LeaveCriticalSection:
               	jmp	qword ptr [rip + 0x7d42] # 0x140011218 __imp_LeaveCriticalSection
               	nop
               	nop

IsDBCSLeadByteEx:
               	jmp	qword ptr [rip + 0x7d32] # 0x140011210 __imp_IsDBCSLeadByteEx
               	nop
               	nop

InitializeCriticalSection:
               	jmp	qword ptr [rip + 0x7d22] # 0x140011208 __imp_InitializeCriticalSection
               	nop
               	nop

GetProcAddress:
               	jmp	qword ptr [rip + 0x7d12] # 0x140011200 __imp_GetProcAddress
               	nop
               	nop

GetModuleHandleA:
               	jmp	qword ptr [rip + 0x7d02] # 0x1400111f8 __imp_GetModuleHandleA
               	nop
               	nop

GetLastError:
               	jmp	qword ptr [rip + 0x7cf2] # 0x1400111f0 __imp_GetLastError
               	nop
               	nop

FreeLibrary:
               	jmp	qword ptr [rip + 0x7ce2] # 0x1400111e8 __imp_FreeLibrary
               	nop
               	nop

EnterCriticalSection:
               	jmp	qword ptr [rip + 0x7cd2] # 0x1400111e0 __imp_EnterCriticalSection
               	nop
               	nop

DeleteCriticalSection:
               	jmp	qword ptr [rip + 0x7cc2] # 0x1400111d8 fthunk
               	nop
               	nop
               	nop	dword ptr [rax + rax]

main:
               	sub	rsp, 0x28
               	call	0x140001817 __main
               	lea	rdx, [rip + 0x1b52]     # 0x14000b082 __func__.0
               	lea	rcx, [rip + 0x1b42]     # 0x14000b079 .rdata+0x29
               	call	0x140002e30 __mingw_printf
               	xor	eax, eax
               	add	rsp, 0x28
               	ret
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

register_frame_ctor:
               	jmp	0x140001620 __gcc_register_frame
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
