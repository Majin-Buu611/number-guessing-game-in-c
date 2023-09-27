
main.o:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401008:	00 00 00 00 
  40100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 75 35 00 00 	mov    0x3575(%rip),%rax        # 404590 <.refptr.mingw_initltsdrot_force>
  40101b:	31 c9                	xor    %ecx,%ecx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 76 35 00 00 	mov    0x3576(%rip),%rax        # 4045a0 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 79 35 00 00 	mov    0x3579(%rip),%rax        # 4045b0 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 3c 35 00 00 	mov    0x353c(%rip),%rax        # 404580 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 1f 34 00 00 	mov    0x341f(%rip),%rax        # 404470 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	75 0f                	jne    401067 <pre_c_init+0x57>
  401058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  40105c:	48 01 d0             	add    %rdx,%rax
  40105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  401065:	74 59                	je     4010c0 <pre_c_init+0xb0>
  401067:	48 8b 05 02 35 00 00 	mov    0x3502(%rip),%rax        # 404570 <.refptr.mingw_app_type>
  40106e:	89 0d 98 5f 00 00    	mov    %ecx,0x5f98(%rip)        # 40700c <managedapp>
  401074:	8b 00                	mov    (%rax),%eax
  401076:	85 c0                	test   %eax,%eax
  401078:	75 36                	jne    4010b0 <pre_c_init+0xa0>
  40107a:	b9 01 00 00 00       	mov    $0x1,%ecx
  40107f:	e8 54 1c 00 00       	callq  402cd8 <__set_app_type>
  401084:	e8 c7 1c 00 00       	callq  402d50 <__p__fmode>
  401089:	48 8b 15 a0 34 00 00 	mov    0x34a0(%rip),%rdx        # 404530 <.refptr._fmode>
  401090:	8b 12                	mov    (%rdx),%edx
  401092:	89 10                	mov    %edx,(%rax)
  401094:	e8 d7 06 00 00       	callq  401770 <_setargv>
  401099:	48 8b 05 80 33 00 00 	mov    0x3380(%rip),%rax        # 404420 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  4010a0:	83 38 01             	cmpl   $0x1,(%rax)
  4010a3:	74 4b                	je     4010f0 <pre_c_init+0xe0>
  4010a5:	31 c0                	xor    %eax,%eax
  4010a7:	48 83 c4 28          	add    $0x28,%rsp
  4010ab:	c3                   	retq   
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	b9 02 00 00 00       	mov    $0x2,%ecx
  4010b5:	e8 1e 1c 00 00       	callq  402cd8 <__set_app_type>
  4010ba:	eb c8                	jmp    401084 <pre_c_init+0x74>
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
  4010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
  4010c9:	74 3d                	je     401108 <pre_c_init+0xf8>
  4010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
  4010d0:	75 95                	jne    401067 <pre_c_init+0x57>
  4010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d9:	76 8c                	jbe    401067 <pre_c_init+0x57>
  4010db:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
  4010e1:	31 c9                	xor    %ecx,%ecx
  4010e3:	85 d2                	test   %edx,%edx
  4010e5:	0f 95 c1             	setne  %cl
  4010e8:	e9 7a ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  4010ed:	0f 1f 00             	nopl   (%rax)
  4010f0:	48 8d 0d 39 09 00 00 	lea    0x939(%rip),%rcx        # 401a30 <_matherr>
  4010f7:	e8 04 10 00 00       	callq  402100 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401108:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  40110c:	0f 86 55 ff ff ff    	jbe    401067 <pre_c_init+0x57>
  401112:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401119:	31 c9                	xor    %ecx,%ecx
  40111b:	45 85 c0             	test   %r8d,%r8d
  40111e:	0f 95 c1             	setne  %cl
  401121:	e9 41 ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 25 34 00 00 	mov    0x3425(%rip),%rax        # 404560 <.refptr._newmode>
  40113b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 407018 <envp>
  401142:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 407020 <argv>
  401149:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 407028 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 ac 5e 00 00    	mov    %eax,0x5eac(%rip)        # 407004 <startinfo>
  401158:	48 8d 05 a5 5e 00 00 	lea    0x5ea5(%rip),%rax        # 407004 <startinfo>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 b5 33 00 00 	mov    0x33b5(%rip),%rax        # 404520 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 75 1b 00 00       	callq  402ce8 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401194:	31 c0                	xor    %eax,%eax
  401196:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  40119b:	4c 89 c7             	mov    %r8,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d c8 33 00 00 	mov    0x33c8(%rip),%rdi        # 404570 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 ac 02 00 00    	jne    401460 <__tmainCRTStartup+0x2e0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d fc 32 00 00 	mov    0x32fc(%rip),%rbx        # 4044c0 <.refptr.__native_startup_lock>
  4011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011c8:	31 ed                	xor    %ebp,%ebp
  4011ca:	4c 8b 25 c3 70 00 00 	mov    0x70c3(%rip),%r12        # 408294 <__imp_Sleep>
  4011d1:	eb 16                	jmp    4011e9 <__tmainCRTStartup+0x69>
  4011d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011d8:	48 39 c6             	cmp    %rax,%rsi
  4011db:	0f 84 1f 02 00 00    	je     401400 <__tmainCRTStartup+0x280>
  4011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e6:	41 ff d4             	callq  *%r12
  4011e9:	48 89 e8             	mov    %rbp,%rax
  4011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011f1:	48 85 c0             	test   %rax,%rax
  4011f4:	75 e2                	jne    4011d8 <__tmainCRTStartup+0x58>
  4011f6:	48 8b 35 d3 32 00 00 	mov    0x32d3(%rip),%rsi        # 4044d0 <.refptr.__native_startup_state>
  4011fd:	31 ed                	xor    %ebp,%ebp
  4011ff:	8b 06                	mov    (%rsi),%eax
  401201:	83 f8 01             	cmp    $0x1,%eax
  401204:	0f 84 0d 02 00 00    	je     401417 <__tmainCRTStartup+0x297>
  40120a:	8b 06                	mov    (%rsi),%eax
  40120c:	85 c0                	test   %eax,%eax
  40120e:	0f 84 7c 02 00 00    	je     401490 <__tmainCRTStartup+0x310>
  401214:	c7 05 ea 5d 00 00 01 	movl   $0x1,0x5dea(%rip)        # 407008 <has_cctor>
  40121b:	00 00 00 
  40121e:	8b 06                	mov    (%rsi),%eax
  401220:	83 f8 01             	cmp    $0x1,%eax
  401223:	0f 84 03 02 00 00    	je     40142c <__tmainCRTStartup+0x2ac>
  401229:	85 ed                	test   %ebp,%ebp
  40122b:	0f 84 1c 02 00 00    	je     40144d <__tmainCRTStartup+0x2cd>
  401231:	48 8b 05 28 32 00 00 	mov    0x3228(%rip),%rax        # 404460 <.refptr.__dyn_tls_init_callback>
  401238:	48 8b 00             	mov    (%rax),%rax
  40123b:	48 85 c0             	test   %rax,%rax
  40123e:	74 0c                	je     40124c <__tmainCRTStartup+0xcc>
  401240:	45 31 c0             	xor    %r8d,%r8d
  401243:	ba 02 00 00 00       	mov    $0x2,%edx
  401248:	31 c9                	xor    %ecx,%ecx
  40124a:	ff d0                	callq  *%rax
  40124c:	e8 6f 0b 00 00       	callq  401dc0 <_pei386_runtime_relocator>
  401251:	48 8d 0d 78 11 00 00 	lea    0x1178(%rip),%rcx        # 4023d0 <_gnu_exception_handler>
  401258:	ff 15 2e 70 00 00    	callq  *0x702e(%rip)        # 40828c <__imp_SetUnhandledExceptionFilter>
  40125e:	48 8b 15 4b 32 00 00 	mov    0x324b(%rip),%rdx        # 4044b0 <.refptr.__mingw_oldexcpt_handler>
  401265:	48 89 02             	mov    %rax,(%rdx)
  401268:	e8 63 10 00 00       	callq  4022d0 <__mingw_init_ehandler>
  40126d:	48 8d 0d 8c fd ff ff 	lea    -0x274(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  401274:	e8 b7 1a 00 00       	callq  402d30 <_set_invalid_parameter_handler>
  401279:	e8 b2 08 00 00       	callq  401b30 <_fpreset>
  40127e:	48 8b 05 eb 31 00 00 	mov    0x31eb(%rip),%rax        # 404470 <.refptr.__image_base__>
  401285:	48 89 05 dc 66 00 00 	mov    %rax,0x66dc(%rip)        # 407968 <__mingw_winmain_hInstance>
  40128c:	e8 af 1a 00 00       	callq  402d40 <__p__acmdln>
  401291:	31 c9                	xor    %ecx,%ecx
  401293:	48 8b 00             	mov    (%rax),%rax
  401296:	48 85 c0             	test   %rax,%rax
  401299:	75 17                	jne    4012b2 <__tmainCRTStartup+0x132>
  40129b:	eb 53                	jmp    4012f0 <__tmainCRTStartup+0x170>
  40129d:	0f 1f 00             	nopl   (%rax)
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 45                	je     4012e9 <__tmainCRTStartup+0x169>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 83 c0 01          	add    $0x1,%rax
  4012b2:	0f b6 10             	movzbl (%rax),%edx
  4012b5:	80 fa 20             	cmp    $0x20,%dl
  4012b8:	7e e6                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012ba:	41 89 c8             	mov    %ecx,%r8d
  4012bd:	41 83 f0 01          	xor    $0x1,%r8d
  4012c1:	80 fa 22             	cmp    $0x22,%dl
  4012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c8:	eb e4                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	74 15                	je     4012e9 <__tmainCRTStartup+0x169>
  4012d4:	0f 1f 40 00          	nopl   0x0(%rax)
  4012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
  4012dc:	48 83 c0 01          	add    $0x1,%rax
  4012e0:	84 d2                	test   %dl,%dl
  4012e2:	74 05                	je     4012e9 <__tmainCRTStartup+0x169>
  4012e4:	80 fa 20             	cmp    $0x20,%dl
  4012e7:	7e ef                	jle    4012d8 <__tmainCRTStartup+0x158>
  4012e9:	48 89 05 70 66 00 00 	mov    %rax,0x6670(%rip)        # 407960 <__mingw_winmain_lpCmdLine>
  4012f0:	44 8b 07             	mov    (%rdi),%r8d
  4012f3:	45 85 c0             	test   %r8d,%r8d
  4012f6:	74 16                	je     40130e <__tmainCRTStartup+0x18e>
  4012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
  4012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401302:	0f 85 e8 00 00 00    	jne    4013f0 <__tmainCRTStartup+0x270>
  401308:	89 05 f2 1c 00 00    	mov    %eax,0x1cf2(%rip)        # 403000 <__data_start__>
  40130e:	8b 1d 14 5d 00 00    	mov    0x5d14(%rip),%ebx        # 407028 <argc>
  401314:	44 8d 63 01          	lea    0x1(%rbx),%r12d
  401318:	4d 63 e4             	movslq %r12d,%r12
  40131b:	49 c1 e4 03          	shl    $0x3,%r12
  40131f:	4c 89 e1             	mov    %r12,%rcx
  401322:	e8 49 19 00 00       	callq  402c70 <malloc>
  401327:	4c 8b 2d f2 5c 00 00 	mov    0x5cf2(%rip),%r13        # 407020 <argv>
  40132e:	48 89 c7             	mov    %rax,%rdi
  401331:	85 db                	test   %ebx,%ebx
  401333:	7e 46                	jle    40137b <__tmainCRTStartup+0x1fb>
  401335:	8d 6b ff             	lea    -0x1(%rbx),%ebp
  401338:	31 db                	xor    %ebx,%ebx
  40133a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
  401345:	e8 e6 18 00 00       	callq  402c30 <strlen>
  40134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40134e:	48 89 f1             	mov    %rsi,%rcx
  401351:	e8 1a 19 00 00       	callq  402c70 <malloc>
  401356:	49 89 f0             	mov    %rsi,%r8
  401359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
  40135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
  401362:	48 89 c1             	mov    %rax,%rcx
  401365:	e8 fe 18 00 00       	callq  402c68 <memcpy>
  40136a:	48 89 d8             	mov    %rbx,%rax
  40136d:	48 83 c3 01          	add    $0x1,%rbx
  401371:	48 39 c5             	cmp    %rax,%rbp
  401374:	75 ca                	jne    401340 <__tmainCRTStartup+0x1c0>
  401376:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
  40137b:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  401382:	48 89 3d 97 5c 00 00 	mov    %rdi,0x5c97(%rip)        # 407020 <argv>
  401389:	e8 b2 03 00 00       	callq  401740 <__main>
  40138e:	48 8b 05 eb 30 00 00 	mov    0x30eb(%rip),%rax        # 404480 <.refptr.__imp___initenv>
  401395:	4c 8b 05 7c 5c 00 00 	mov    0x5c7c(%rip),%r8        # 407018 <envp>
  40139c:	8b 0d 86 5c 00 00    	mov    0x5c86(%rip),%ecx        # 407028 <argc>
  4013a2:	48 8b 00             	mov    (%rax),%rax
  4013a5:	4c 89 00             	mov    %r8,(%rax)
  4013a8:	48 8b 15 71 5c 00 00 	mov    0x5c71(%rip),%rdx        # 407020 <argv>
  4013af:	e8 cb 01 00 00       	callq  40157f <main>
  4013b4:	8b 0d 52 5c 00 00    	mov    0x5c52(%rip),%ecx        # 40700c <managedapp>
  4013ba:	89 05 50 5c 00 00    	mov    %eax,0x5c50(%rip)        # 407010 <mainret>
  4013c0:	85 c9                	test   %ecx,%ecx
  4013c2:	0f 84 e6 00 00 00    	je     4014ae <__tmainCRTStartup+0x32e>
  4013c8:	8b 15 3a 5c 00 00    	mov    0x5c3a(%rip),%edx        # 407008 <has_cctor>
  4013ce:	85 d2                	test   %edx,%edx
  4013d0:	0f 84 9a 00 00 00    	je     401470 <__tmainCRTStartup+0x2f0>
  4013d6:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013dd:	5b                   	pop    %rbx
  4013de:	5e                   	pop    %rsi
  4013df:	5f                   	pop    %rdi
  4013e0:	5d                   	pop    %rbp
  4013e1:	41 5c                	pop    %r12
  4013e3:	41 5d                	pop    %r13
  4013e5:	c3                   	retq   
  4013e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4013ed:	00 00 00 
  4013f0:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  4013f5:	e9 0e ff ff ff       	jmpq   401308 <__tmainCRTStartup+0x188>
  4013fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401400:	48 8b 35 c9 30 00 00 	mov    0x30c9(%rip),%rsi        # 4044d0 <.refptr.__native_startup_state>
  401407:	bd 01 00 00 00       	mov    $0x1,%ebp
  40140c:	8b 06                	mov    (%rsi),%eax
  40140e:	83 f8 01             	cmp    $0x1,%eax
  401411:	0f 85 f3 fd ff ff    	jne    40120a <__tmainCRTStartup+0x8a>
  401417:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40141c:	e8 a7 18 00 00       	callq  402cc8 <_amsg_exit>
  401421:	8b 06                	mov    (%rsi),%eax
  401423:	83 f8 01             	cmp    $0x1,%eax
  401426:	0f 85 fd fd ff ff    	jne    401229 <__tmainCRTStartup+0xa9>
  40142c:	48 8b 15 bd 30 00 00 	mov    0x30bd(%rip),%rdx        # 4044f0 <.refptr.__xc_z>
  401433:	48 8b 0d a6 30 00 00 	mov    0x30a6(%rip),%rcx        # 4044e0 <.refptr.__xc_a>
  40143a:	e8 79 18 00 00       	callq  402cb8 <_initterm>
  40143f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401445:	85 ed                	test   %ebp,%ebp
  401447:	0f 85 e4 fd ff ff    	jne    401231 <__tmainCRTStartup+0xb1>
  40144d:	31 c0                	xor    %eax,%eax
  40144f:	48 87 03             	xchg   %rax,(%rbx)
  401452:	e9 da fd ff ff       	jmpq   401231 <__tmainCRTStartup+0xb1>
  401457:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40145e:	00 00 
  401460:	4c 89 c1             	mov    %r8,%rcx
  401463:	ff 15 cb 6d 00 00    	callq  *0x6dcb(%rip)        # 408234 <__imp_GetStartupInfoA>
  401469:	e9 46 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40146e:	66 90                	xchg   %ax,%ax
  401470:	e8 4b 18 00 00       	callq  402cc0 <_cexit>
  401475:	8b 05 95 5b 00 00    	mov    0x5b95(%rip),%eax        # 407010 <mainret>
  40147b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  401482:	5b                   	pop    %rbx
  401483:	5e                   	pop    %rsi
  401484:	5f                   	pop    %rdi
  401485:	5d                   	pop    %rbp
  401486:	41 5c                	pop    %r12
  401488:	41 5d                	pop    %r13
  40148a:	c3                   	retq   
  40148b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401490:	48 8b 15 79 30 00 00 	mov    0x3079(%rip),%rdx        # 404510 <.refptr.__xi_z>
  401497:	48 8b 0d 62 30 00 00 	mov    0x3062(%rip),%rcx        # 404500 <.refptr.__xi_a>
  40149e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  4014a4:	e8 0f 18 00 00       	callq  402cb8 <_initterm>
  4014a9:	e9 70 fd ff ff       	jmpq   40121e <__tmainCRTStartup+0x9e>
  4014ae:	89 c1                	mov    %eax,%ecx
  4014b0:	e8 db 17 00 00       	callq  402c90 <exit>
  4014b5:	90                   	nop
  4014b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014bd:	00 00 00 

00000000004014c0 <WinMainCRTStartup>:
  4014c0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014c4 <.l_startw>:
  4014c4:	48 8b 05 a5 30 00 00 	mov    0x30a5(%rip),%rax        # 404570 <.refptr.mingw_app_type>
  4014cb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014d1:	e8 aa 02 00 00       	callq  401780 <__security_init_cookie>
  4014d6:	e8 a5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014db:	90                   	nop

00000000004014dc <.l_endw>:
  4014dc:	90                   	nop
  4014dd:	48 83 c4 28          	add    $0x28,%rsp
  4014e1:	c3                   	retq   
  4014e2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4014e9:	00 00 00 00 
  4014ed:	0f 1f 00             	nopl   (%rax)

00000000004014f0 <mainCRTStartup>:
  4014f0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014f4 <.l_start>:
  4014f4:	48 8b 05 75 30 00 00 	mov    0x3075(%rip),%rax        # 404570 <.refptr.mingw_app_type>
  4014fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401501:	e8 7a 02 00 00       	callq  401780 <__security_init_cookie>
  401506:	e8 75 fc ff ff       	callq  401180 <__tmainCRTStartup>
  40150b:	90                   	nop

000000000040150c <.l_end>:
  40150c:	90                   	nop
  40150d:	48 83 c4 28          	add    $0x28,%rsp
  401511:	c3                   	retq   
  401512:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401519:	00 00 00 00 
  40151d:	0f 1f 00             	nopl   (%rax)

0000000000401520 <atexit>:
  401520:	48 83 ec 28          	sub    $0x28,%rsp
  401524:	e8 87 17 00 00       	callq  402cb0 <_onexit>
  401529:	48 85 c0             	test   %rax,%rax
  40152c:	0f 94 c0             	sete   %al
  40152f:	0f b6 c0             	movzbl %al,%eax
  401532:	f7 d8                	neg    %eax
  401534:	48 83 c4 28          	add    $0x28,%rsp
  401538:	c3                   	retq   
  401539:	90                   	nop
  40153a:	90                   	nop
  40153b:	90                   	nop
  40153c:	90                   	nop
  40153d:	90                   	nop
  40153e:	90                   	nop
  40153f:	90                   	nop

0000000000401540 <__gcc_register_frame>:
  401540:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401550 <__gcc_deregister_frame>
  401547:	e9 d4 ff ff ff       	jmpq   401520 <atexit>
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <__gcc_deregister_frame>:
  401550:	c3                   	retq   
  401551:	90                   	nop
  401552:	90                   	nop
  401553:	90                   	nop
  401554:	90                   	nop
  401555:	90                   	nop
  401556:	90                   	nop
  401557:	90                   	nop
  401558:	90                   	nop
  401559:	90                   	nop
  40155a:	90                   	nop
  40155b:	90                   	nop
  40155c:	90                   	nop
  40155d:	90                   	nop
  40155e:	90                   	nop
  40155f:	90                   	nop

0000000000401560 <time>:
  401560:	55                   	push   %rbp
  401561:	48 89 e5             	mov    %rsp,%rbp
  401564:	48 83 ec 20          	sub    $0x20,%rsp
  401568:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40156c:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  401570:	48 8b 05 bd 6d 00 00 	mov    0x6dbd(%rip),%rax        # 408334 <__imp__time64>
  401577:	ff d0                	callq  *%rax
  401579:	48 83 c4 20          	add    $0x20,%rsp
  40157d:	5d                   	pop    %rbp
  40157e:	c3                   	retq   

000000000040157f <main>:
  40157f:	55                   	push   %rbp
  401580:	48 89 e5             	mov    %rsp,%rbp
  401583:	48 83 ec 40          	sub    $0x40,%rsp
  401587:	e8 b4 01 00 00       	callq  401740 <__main>
  40158c:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  401593:	c7 45 f4 64 00 00 00 	movl   $0x64,-0xc(%rbp)
  40159a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4015a1:	b9 00 00 00 00       	mov    $0x0,%ecx
  4015a6:	e8 b5 ff ff ff       	callq  401560 <time>
  4015ab:	89 c1                	mov    %eax,%ecx
  4015ad:	e8 86 16 00 00       	callq  402c38 <srand>
  4015b2:	e8 99 16 00 00       	callq  402c50 <rand>
  4015b7:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4015ba:	2b 55 f8             	sub    -0x8(%rbp),%edx
  4015bd:	8d 4a 01             	lea    0x1(%rdx),%ecx
  4015c0:	99                   	cltd   
  4015c1:	f7 f9                	idiv   %ecx
  4015c3:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4015c6:	01 d0                	add    %edx,%eax
  4015c8:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4015cb:	48 8d 0d 2e 2a 00 00 	lea    0x2a2e(%rip),%rcx        # 404000 <.rdata>
  4015d2:	48 8b 05 ab 6c 00 00 	mov    0x6cab(%rip),%rax        # 408284 <__imp_SetConsoleTitleA>
  4015d9:	ff d0                	callq  *%rax
  4015db:	48 8d 0d 36 2a 00 00 	lea    0x2a36(%rip),%rcx        # 404018 <.rdata+0x18>
  4015e2:	e8 71 16 00 00       	callq  402c58 <puts>
  4015e7:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4015ea:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4015ed:	41 89 d0             	mov    %edx,%r8d
  4015f0:	89 c2                	mov    %eax,%edx
  4015f2:	48 8d 0d 47 2a 00 00 	lea    0x2a47(%rip),%rcx        # 404040 <.rdata+0x40>
  4015f9:	e8 62 16 00 00       	callq  402c60 <printf>
  4015fe:	48 8d 0d 68 2a 00 00 	lea    0x2a68(%rip),%rcx        # 40406d <.rdata+0x6d>
  401605:	e8 56 16 00 00       	callq  402c60 <printf>
  40160a:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
  40160e:	48 89 c2             	mov    %rax,%rdx
  401611:	48 8d 0d 68 2a 00 00 	lea    0x2a68(%rip),%rcx        # 404080 <.rdata+0x80>
  401618:	e8 2b 16 00 00       	callq  402c48 <scanf>
  40161d:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  401621:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401624:	39 45 f0             	cmp    %eax,-0x10(%rbp)
  401627:	7e 0e                	jle    401637 <main+0xb8>
  401629:	48 8d 0d 53 2a 00 00 	lea    0x2a53(%rip),%rcx        # 404083 <.rdata+0x83>
  401630:	e8 23 16 00 00       	callq  402c58 <puts>
  401635:	eb 2d                	jmp    401664 <main+0xe5>
  401637:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40163a:	39 45 f0             	cmp    %eax,-0x10(%rbp)
  40163d:	7d 0e                	jge    40164d <main+0xce>
  40163f:	48 8d 0d 51 2a 00 00 	lea    0x2a51(%rip),%rcx        # 404097 <.rdata+0x97>
  401646:	e8 0d 16 00 00       	callq  402c58 <puts>
  40164b:	eb 17                	jmp    401664 <main+0xe5>
  40164d:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401650:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401653:	41 89 d0             	mov    %edx,%r8d
  401656:	89 c2                	mov    %eax,%edx
  401658:	48 8d 0d 51 2a 00 00 	lea    0x2a51(%rip),%rcx        # 4040b0 <.rdata+0xb0>
  40165f:	e8 fc 15 00 00       	callq  402c60 <printf>
  401664:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401667:	39 45 f0             	cmp    %eax,-0x10(%rbp)
  40166a:	75 92                	jne    4015fe <main+0x7f>
  40166c:	b9 02 00 00 00       	mov    $0x2,%ecx
  401671:	e8 8a 15 00 00       	callq  402c00 <sleep>
  401676:	b8 00 00 00 00       	mov    $0x0,%eax
  40167b:	48 83 c4 40          	add    $0x40,%rsp
  40167f:	5d                   	pop    %rbp
  401680:	c3                   	retq   
  401681:	90                   	nop
  401682:	90                   	nop
  401683:	90                   	nop
  401684:	90                   	nop
  401685:	90                   	nop
  401686:	90                   	nop
  401687:	90                   	nop
  401688:	90                   	nop
  401689:	90                   	nop
  40168a:	90                   	nop
  40168b:	90                   	nop
  40168c:	90                   	nop
  40168d:	90                   	nop
  40168e:	90                   	nop
  40168f:	90                   	nop

0000000000401690 <__do_global_dtors>:
  401690:	48 83 ec 28          	sub    $0x28,%rsp
  401694:	48 8b 05 75 19 00 00 	mov    0x1975(%rip),%rax        # 403010 <p.92474>
  40169b:	48 8b 00             	mov    (%rax),%rax
  40169e:	48 85 c0             	test   %rax,%rax
  4016a1:	74 22                	je     4016c5 <__do_global_dtors+0x35>
  4016a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4016a8:	ff d0                	callq  *%rax
  4016aa:	48 8b 05 5f 19 00 00 	mov    0x195f(%rip),%rax        # 403010 <p.92474>
  4016b1:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4016b5:	48 8b 40 08          	mov    0x8(%rax),%rax
  4016b9:	48 89 15 50 19 00 00 	mov    %rdx,0x1950(%rip)        # 403010 <p.92474>
  4016c0:	48 85 c0             	test   %rax,%rax
  4016c3:	75 e3                	jne    4016a8 <__do_global_dtors+0x18>
  4016c5:	48 83 c4 28          	add    $0x28,%rsp
  4016c9:	c3                   	retq   
  4016ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004016d0 <__do_global_ctors>:
  4016d0:	56                   	push   %rsi
  4016d1:	53                   	push   %rbx
  4016d2:	48 83 ec 28          	sub    $0x28,%rsp
  4016d6:	48 8b 15 53 2d 00 00 	mov    0x2d53(%rip),%rdx        # 404430 <.refptr.__CTOR_LIST__>
  4016dd:	48 8b 02             	mov    (%rdx),%rax
  4016e0:	89 c1                	mov    %eax,%ecx
  4016e2:	83 f8 ff             	cmp    $0xffffffff,%eax
  4016e5:	74 39                	je     401720 <__do_global_ctors+0x50>
  4016e7:	85 c9                	test   %ecx,%ecx
  4016e9:	74 20                	je     40170b <__do_global_ctors+0x3b>
  4016eb:	89 c8                	mov    %ecx,%eax
  4016ed:	83 e9 01             	sub    $0x1,%ecx
  4016f0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
  4016f4:	48 29 c8             	sub    %rcx,%rax
  4016f7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
  4016fc:	0f 1f 40 00          	nopl   0x0(%rax)
  401700:	ff 13                	callq  *(%rbx)
  401702:	48 83 eb 08          	sub    $0x8,%rbx
  401706:	48 39 f3             	cmp    %rsi,%rbx
  401709:	75 f5                	jne    401700 <__do_global_ctors+0x30>
  40170b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 401690 <__do_global_dtors>
  401712:	48 83 c4 28          	add    $0x28,%rsp
  401716:	5b                   	pop    %rbx
  401717:	5e                   	pop    %rsi
  401718:	e9 03 fe ff ff       	jmpq   401520 <atexit>
  40171d:	0f 1f 00             	nopl   (%rax)
  401720:	31 c0                	xor    %eax,%eax
  401722:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401728:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40172c:	89 c1                	mov    %eax,%ecx
  40172e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
  401733:	4c 89 c0             	mov    %r8,%rax
  401736:	75 f0                	jne    401728 <__do_global_ctors+0x58>
  401738:	eb ad                	jmp    4016e7 <__do_global_ctors+0x17>
  40173a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401740 <__main>:
  401740:	8b 05 ea 58 00 00    	mov    0x58ea(%rip),%eax        # 407030 <initialized>
  401746:	85 c0                	test   %eax,%eax
  401748:	74 06                	je     401750 <__main+0x10>
  40174a:	c3                   	retq   
  40174b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401750:	c7 05 d6 58 00 00 01 	movl   $0x1,0x58d6(%rip)        # 407030 <initialized>
  401757:	00 00 00 
  40175a:	e9 71 ff ff ff       	jmpq   4016d0 <__do_global_ctors>
  40175f:	90                   	nop

0000000000401760 <my_lconv_init>:
  401760:	48 ff 25 85 6b 00 00 	rex.W jmpq *0x6b85(%rip)        # 4082ec <__imp___lconv_init>
  401767:	90                   	nop
  401768:	90                   	nop
  401769:	90                   	nop
  40176a:	90                   	nop
  40176b:	90                   	nop
  40176c:	90                   	nop
  40176d:	90                   	nop
  40176e:	90                   	nop
  40176f:	90                   	nop

0000000000401770 <_setargv>:
  401770:	31 c0                	xor    %eax,%eax
  401772:	c3                   	retq   
  401773:	90                   	nop
  401774:	90                   	nop
  401775:	90                   	nop
  401776:	90                   	nop
  401777:	90                   	nop
  401778:	90                   	nop
  401779:	90                   	nop
  40177a:	90                   	nop
  40177b:	90                   	nop
  40177c:	90                   	nop
  40177d:	90                   	nop
  40177e:	90                   	nop
  40177f:	90                   	nop

0000000000401780 <__security_init_cookie>:
  401780:	41 54                	push   %r12
  401782:	55                   	push   %rbp
  401783:	57                   	push   %rdi
  401784:	56                   	push   %rsi
  401785:	53                   	push   %rbx
  401786:	48 83 ec 30          	sub    $0x30,%rsp
  40178a:	48 8b 1d 0f 19 00 00 	mov    0x190f(%rip),%rbx        # 4030a0 <__security_cookie>
  401791:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  401798:	2b 00 00 
  40179b:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4017a2:	00 00 
  4017a4:	48 39 c3             	cmp    %rax,%rbx
  4017a7:	74 17                	je     4017c0 <__security_init_cookie+0x40>
  4017a9:	48 f7 d3             	not    %rbx
  4017ac:	48 89 1d fd 18 00 00 	mov    %rbx,0x18fd(%rip)        # 4030b0 <__security_cookie_complement>
  4017b3:	48 83 c4 30          	add    $0x30,%rsp
  4017b7:	5b                   	pop    %rbx
  4017b8:	5e                   	pop    %rsi
  4017b9:	5f                   	pop    %rdi
  4017ba:	5d                   	pop    %rbp
  4017bb:	41 5c                	pop    %r12
  4017bd:	c3                   	retq   
  4017be:	66 90                	xchg   %ax,%ax
  4017c0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4017c5:	ff 15 71 6a 00 00    	callq  *0x6a71(%rip)        # 40823c <__imp_GetSystemTimeAsFileTime>
  4017cb:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  4017d0:	ff 15 46 6a 00 00    	callq  *0x6a46(%rip)        # 40821c <__imp_GetCurrentProcessId>
  4017d6:	89 c5                	mov    %eax,%ebp
  4017d8:	ff 15 46 6a 00 00    	callq  *0x6a46(%rip)        # 408224 <__imp_GetCurrentThreadId>
  4017de:	89 c7                	mov    %eax,%edi
  4017e0:	ff 15 5e 6a 00 00    	callq  *0x6a5e(%rip)        # 408244 <__imp_GetTickCount>
  4017e6:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4017eb:	41 89 c4             	mov    %eax,%r12d
  4017ee:	ff 15 68 6a 00 00    	callq  *0x6a68(%rip)        # 40825c <__imp_QueryPerformanceCounter>
  4017f4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  4017f9:	89 e8                	mov    %ebp,%eax
  4017fb:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  401802:	ff 00 00 
  401805:	48 31 f0             	xor    %rsi,%rax
  401808:	89 fe                	mov    %edi,%esi
  40180a:	48 31 c6             	xor    %rax,%rsi
  40180d:	44 89 e0             	mov    %r12d,%eax
  401810:	48 31 f0             	xor    %rsi,%rax
  401813:	48 21 d0             	and    %rdx,%rax
  401816:	48 39 d8             	cmp    %rbx,%rax
  401819:	74 25                	je     401840 <__security_init_cookie+0xc0>
  40181b:	48 89 c2             	mov    %rax,%rdx
  40181e:	48 f7 d2             	not    %rdx
  401821:	48 89 05 78 18 00 00 	mov    %rax,0x1878(%rip)        # 4030a0 <__security_cookie>
  401828:	48 89 15 81 18 00 00 	mov    %rdx,0x1881(%rip)        # 4030b0 <__security_cookie_complement>
  40182f:	48 83 c4 30          	add    $0x30,%rsp
  401833:	5b                   	pop    %rbx
  401834:	5e                   	pop    %rsi
  401835:	5f                   	pop    %rdi
  401836:	5d                   	pop    %rbp
  401837:	41 5c                	pop    %r12
  401839:	c3                   	retq   
  40183a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401840:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  401847:	d4 ff ff 
  40184a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  401851:	2b 00 00 
  401854:	eb cb                	jmp    401821 <__security_init_cookie+0xa1>
  401856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40185d:	00 00 00 

0000000000401860 <__report_gsfailure>:
  401860:	55                   	push   %rbp
  401861:	56                   	push   %rsi
  401862:	53                   	push   %rbx
  401863:	48 89 e5             	mov    %rsp,%rbp
  401866:	48 83 ec 70          	sub    $0x70,%rsp
  40186a:	48 89 cb             	mov    %rcx,%rbx
  40186d:	48 8d 0d ec 57 00 00 	lea    0x57ec(%rip),%rcx        # 407060 <GS_ContextRecord>
  401874:	ff 15 f2 69 00 00    	callq  *0x69f2(%rip)        # 40826c <__imp_RtlCaptureContext>
  40187a:	48 8b 35 d7 58 00 00 	mov    0x58d7(%rip),%rsi        # 407158 <GS_ContextRecord+0xf8>
  401881:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  401885:	45 31 c0             	xor    %r8d,%r8d
  401888:	48 89 f1             	mov    %rsi,%rcx
  40188b:	ff 15 e3 69 00 00    	callq  *0x69e3(%rip)        # 408274 <__imp_RtlLookupFunctionEntry>
  401891:	49 89 c1             	mov    %rax,%r9
  401894:	48 85 c0             	test   %rax,%rax
  401897:	0f 84 a0 00 00 00    	je     40193d <__report_gsfailure+0xdd>
  40189d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4018a1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4018a5:	49 89 f0             	mov    %rsi,%r8
  4018a8:	31 c9                	xor    %ecx,%ecx
  4018aa:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4018af:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  4018b3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4018b8:	48 8d 05 a1 57 00 00 	lea    0x57a1(%rip),%rax        # 407060 <GS_ContextRecord>
  4018bf:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4018c6:	00 00 
  4018c8:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4018cd:	ff 15 a9 69 00 00    	callq  *0x69a9(%rip)        # 40827c <__imp_RtlVirtualUnwind>
  4018d3:	48 8b 05 7e 58 00 00 	mov    0x587e(%rip),%rax        # 407158 <GS_ContextRecord+0xf8>
  4018da:	31 c9                	xor    %ecx,%ecx
  4018dc:	48 89 1d fd 57 00 00 	mov    %rbx,0x57fd(%rip)        # 4070e0 <GS_ContextRecord+0x80>
  4018e3:	48 89 05 66 5c 00 00 	mov    %rax,0x5c66(%rip)        # 407550 <GS_ExceptionRecord+0x10>
  4018ea:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  4018f1:	00 00 00 
  4018f4:	48 89 05 45 5c 00 00 	mov    %rax,0x5c45(%rip)        # 407540 <GS_ExceptionRecord>
  4018fb:	48 8b 05 9e 17 00 00 	mov    0x179e(%rip),%rax        # 4030a0 <__security_cookie>
  401902:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401906:	48 8b 05 a3 17 00 00 	mov    0x17a3(%rip),%rax        # 4030b0 <__security_cookie_complement>
  40190d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401911:	ff 15 75 69 00 00    	callq  *0x6975(%rip)        # 40828c <__imp_SetUnhandledExceptionFilter>
  401917:	48 8d 0d d2 27 00 00 	lea    0x27d2(%rip),%rcx        # 4040f0 <GS_ExceptionPointers>
  40191e:	ff 15 88 69 00 00    	callq  *0x6988(%rip)        # 4082ac <__imp_UnhandledExceptionFilter>
  401924:	ff 15 ea 68 00 00    	callq  *0x68ea(%rip)        # 408214 <__imp_GetCurrentProcess>
  40192a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40192f:	48 89 c1             	mov    %rax,%rcx
  401932:	ff 15 64 69 00 00    	callq  *0x6964(%rip)        # 40829c <__imp_TerminateProcess>
  401938:	e8 63 13 00 00       	callq  402ca0 <abort>
  40193d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401941:	48 89 05 10 58 00 00 	mov    %rax,0x5810(%rip)        # 407158 <GS_ContextRecord+0xf8>
  401948:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40194c:	48 89 05 a5 57 00 00 	mov    %rax,0x57a5(%rip)        # 4070f8 <GS_ContextRecord+0x98>
  401953:	e9 7b ff ff ff       	jmpq   4018d3 <__report_gsfailure+0x73>
  401958:	90                   	nop
  401959:	90                   	nop
  40195a:	90                   	nop
  40195b:	90                   	nop
  40195c:	90                   	nop
  40195d:	90                   	nop
  40195e:	90                   	nop
  40195f:	90                   	nop

0000000000401960 <__dyn_tls_dtor>:
  401960:	48 83 ec 28          	sub    $0x28,%rsp
  401964:	83 fa 03             	cmp    $0x3,%edx
  401967:	74 17                	je     401980 <__dyn_tls_dtor+0x20>
  401969:	85 d2                	test   %edx,%edx
  40196b:	74 13                	je     401980 <__dyn_tls_dtor+0x20>
  40196d:	b8 01 00 00 00       	mov    $0x1,%eax
  401972:	48 83 c4 28          	add    $0x28,%rsp
  401976:	c3                   	retq   
  401977:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40197e:	00 00 
  401980:	e8 7b 0d 00 00       	callq  402700 <__mingw_TLScallback>
  401985:	b8 01 00 00 00       	mov    $0x1,%eax
  40198a:	48 83 c4 28          	add    $0x28,%rsp
  40198e:	c3                   	retq   
  40198f:	90                   	nop

0000000000401990 <__dyn_tls_init>:
  401990:	56                   	push   %rsi
  401991:	53                   	push   %rbx
  401992:	48 83 ec 28          	sub    $0x28,%rsp
  401996:	48 8b 05 73 2a 00 00 	mov    0x2a73(%rip),%rax        # 404410 <.refptr._CRT_MT>
  40199d:	83 38 02             	cmpl   $0x2,(%rax)
  4019a0:	74 06                	je     4019a8 <__dyn_tls_init+0x18>
  4019a2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  4019a8:	83 fa 02             	cmp    $0x2,%edx
  4019ab:	74 13                	je     4019c0 <__dyn_tls_init+0x30>
  4019ad:	83 fa 01             	cmp    $0x1,%edx
  4019b0:	74 4e                	je     401a00 <__dyn_tls_init+0x70>
  4019b2:	b8 01 00 00 00       	mov    $0x1,%eax
  4019b7:	48 83 c4 28          	add    $0x28,%rsp
  4019bb:	5b                   	pop    %rbx
  4019bc:	5e                   	pop    %rsi
  4019bd:	c3                   	retq   
  4019be:	66 90                	xchg   %ax,%ax
  4019c0:	48 8d 1d 99 76 00 00 	lea    0x7699(%rip),%rbx        # 409060 <__xd_z>
  4019c7:	48 8d 35 92 76 00 00 	lea    0x7692(%rip),%rsi        # 409060 <__xd_z>
  4019ce:	48 39 de             	cmp    %rbx,%rsi
  4019d1:	74 df                	je     4019b2 <__dyn_tls_init+0x22>
  4019d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4019d8:	48 8b 03             	mov    (%rbx),%rax
  4019db:	48 85 c0             	test   %rax,%rax
  4019de:	74 02                	je     4019e2 <__dyn_tls_init+0x52>
  4019e0:	ff d0                	callq  *%rax
  4019e2:	48 83 c3 08          	add    $0x8,%rbx
  4019e6:	48 39 de             	cmp    %rbx,%rsi
  4019e9:	75 ed                	jne    4019d8 <__dyn_tls_init+0x48>
  4019eb:	b8 01 00 00 00       	mov    $0x1,%eax
  4019f0:	48 83 c4 28          	add    $0x28,%rsp
  4019f4:	5b                   	pop    %rbx
  4019f5:	5e                   	pop    %rsi
  4019f6:	c3                   	retq   
  4019f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4019fe:	00 00 
  401a00:	e8 fb 0c 00 00       	callq  402700 <__mingw_TLScallback>
  401a05:	b8 01 00 00 00       	mov    $0x1,%eax
  401a0a:	48 83 c4 28          	add    $0x28,%rsp
  401a0e:	5b                   	pop    %rbx
  401a0f:	5e                   	pop    %rsi
  401a10:	c3                   	retq   
  401a11:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401a18:	00 00 00 00 
  401a1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401a20 <__tlregdtor>:
  401a20:	31 c0                	xor    %eax,%eax
  401a22:	c3                   	retq   
  401a23:	90                   	nop
  401a24:	90                   	nop
  401a25:	90                   	nop
  401a26:	90                   	nop
  401a27:	90                   	nop
  401a28:	90                   	nop
  401a29:	90                   	nop
  401a2a:	90                   	nop
  401a2b:	90                   	nop
  401a2c:	90                   	nop
  401a2d:	90                   	nop
  401a2e:	90                   	nop
  401a2f:	90                   	nop

0000000000401a30 <_matherr>:
  401a30:	56                   	push   %rsi
  401a31:	53                   	push   %rbx
  401a32:	48 83 ec 78          	sub    $0x78,%rsp
  401a36:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
  401a3b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
  401a40:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
  401a46:	83 39 06             	cmpl   $0x6,(%rcx)
  401a49:	0f 87 cd 00 00 00    	ja     401b1c <_matherr+0xec>
  401a4f:	8b 01                	mov    (%rcx),%eax
  401a51:	48 8d 15 2c 28 00 00 	lea    0x282c(%rip),%rdx        # 404284 <.rdata+0x124>
  401a58:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401a5c:	48 01 d0             	add    %rdx,%rax
  401a5f:	ff e0                	jmpq   *%rax
  401a61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a68:	48 8d 1d c7 27 00 00 	lea    0x27c7(%rip),%rbx        # 404236 <.rdata+0xd6>
  401a6f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401a75:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401a7a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401a7f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401a83:	b9 02 00 00 00       	mov    $0x2,%ecx
  401a88:	e8 73 12 00 00       	callq  402d00 <__acrt_iob_func>
  401a8d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401a94:	49 89 d8             	mov    %rbx,%r8
  401a97:	48 8d 15 ba 27 00 00 	lea    0x27ba(%rip),%rdx        # 404258 <.rdata+0xf8>
  401a9e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401aa4:	48 89 c1             	mov    %rax,%rcx
  401aa7:	49 89 f1             	mov    %rsi,%r9
  401aaa:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401ab0:	e8 d3 11 00 00       	callq  402c88 <fprintf>
  401ab5:	90                   	nop
  401ab6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
  401abb:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
  401ac0:	31 c0                	xor    %eax,%eax
  401ac2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
  401ac8:	48 83 c4 78          	add    $0x78,%rsp
  401acc:	5b                   	pop    %rbx
  401acd:	5e                   	pop    %rsi
  401ace:	c3                   	retq   
  401acf:	90                   	nop
  401ad0:	48 8d 1d 99 26 00 00 	lea    0x2699(%rip),%rbx        # 404170 <.rdata+0x10>
  401ad7:	eb 96                	jmp    401a6f <_matherr+0x3f>
  401ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401ae0:	48 8d 1d c9 26 00 00 	lea    0x26c9(%rip),%rbx        # 4041b0 <.rdata+0x50>
  401ae7:	eb 86                	jmp    401a6f <_matherr+0x3f>
  401ae9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401af0:	48 8d 1d 99 26 00 00 	lea    0x2699(%rip),%rbx        # 404190 <.rdata+0x30>
  401af7:	e9 73 ff ff ff       	jmpq   401a6f <_matherr+0x3f>
  401afc:	0f 1f 40 00          	nopl   0x0(%rax)
  401b00:	48 8d 1d f9 26 00 00 	lea    0x26f9(%rip),%rbx        # 404200 <.rdata+0xa0>
  401b07:	e9 63 ff ff ff       	jmpq   401a6f <_matherr+0x3f>
  401b0c:	0f 1f 40 00          	nopl   0x0(%rax)
  401b10:	48 8d 1d c1 26 00 00 	lea    0x26c1(%rip),%rbx        # 4041d8 <.rdata+0x78>
  401b17:	e9 53 ff ff ff       	jmpq   401a6f <_matherr+0x3f>
  401b1c:	48 8d 1d 3d 26 00 00 	lea    0x263d(%rip),%rbx        # 404160 <.rdata>
  401b23:	e9 47 ff ff ff       	jmpq   401a6f <_matherr+0x3f>
  401b28:	90                   	nop
  401b29:	90                   	nop
  401b2a:	90                   	nop
  401b2b:	90                   	nop
  401b2c:	90                   	nop
  401b2d:	90                   	nop
  401b2e:	90                   	nop
  401b2f:	90                   	nop

0000000000401b30 <_fpreset>:
  401b30:	db e3                	fninit 
  401b32:	c3                   	retq   
  401b33:	90                   	nop
  401b34:	90                   	nop
  401b35:	90                   	nop
  401b36:	90                   	nop
  401b37:	90                   	nop
  401b38:	90                   	nop
  401b39:	90                   	nop
  401b3a:	90                   	nop
  401b3b:	90                   	nop
  401b3c:	90                   	nop
  401b3d:	90                   	nop
  401b3e:	90                   	nop
  401b3f:	90                   	nop

0000000000401b40 <__report_error>:
  401b40:	41 54                	push   %r12
  401b42:	53                   	push   %rbx
  401b43:	48 83 ec 38          	sub    $0x38,%rsp
  401b47:	49 89 cc             	mov    %rcx,%r12
  401b4a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401b4f:	b9 02 00 00 00       	mov    $0x2,%ecx
  401b54:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401b59:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401b5e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401b63:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401b68:	e8 93 11 00 00       	callq  402d00 <__acrt_iob_func>
  401b6d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401b73:	ba 01 00 00 00       	mov    $0x1,%edx
  401b78:	48 8d 0d 21 27 00 00 	lea    0x2721(%rip),%rcx        # 4042a0 <.rdata>
  401b7f:	49 89 c1             	mov    %rax,%r9
  401b82:	e8 f1 10 00 00       	callq  402c78 <fwrite>
  401b87:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  401b8c:	b9 02 00 00 00       	mov    $0x2,%ecx
  401b91:	e8 6a 11 00 00       	callq  402d00 <__acrt_iob_func>
  401b96:	4c 89 e2             	mov    %r12,%rdx
  401b99:	48 89 c1             	mov    %rax,%rcx
  401b9c:	49 89 d8             	mov    %rbx,%r8
  401b9f:	e8 7c 10 00 00       	callq  402c20 <vfprintf>
  401ba4:	e8 f7 10 00 00       	callq  402ca0 <abort>
  401ba9:	90                   	nop
  401baa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401bb0 <__write_memory.part.0>:
  401bb0:	41 54                	push   %r12
  401bb2:	55                   	push   %rbp
  401bb3:	57                   	push   %rdi
  401bb4:	56                   	push   %rsi
  401bb5:	53                   	push   %rbx
  401bb6:	48 83 ec 50          	sub    $0x50,%rsp
  401bba:	48 63 3d 53 5a 00 00 	movslq 0x5a53(%rip),%rdi        # 407614 <maxSections>
  401bc1:	49 89 cc             	mov    %rcx,%r12
  401bc4:	48 89 d6             	mov    %rdx,%rsi
  401bc7:	4c 89 c3             	mov    %r8,%rbx
  401bca:	85 ff                	test   %edi,%edi
  401bcc:	0f 8e 86 01 00 00    	jle    401d58 <__write_memory.part.0+0x1a8>
  401bd2:	48 8b 05 3f 5a 00 00 	mov    0x5a3f(%rip),%rax        # 407618 <the_secs>
  401bd9:	31 c9                	xor    %ecx,%ecx
  401bdb:	48 83 c0 18          	add    $0x18,%rax
  401bdf:	90                   	nop
  401be0:	48 8b 10             	mov    (%rax),%rdx
  401be3:	49 39 d4             	cmp    %rdx,%r12
  401be6:	72 14                	jb     401bfc <__write_memory.part.0+0x4c>
  401be8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401bec:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401bf0:	4c 01 c2             	add    %r8,%rdx
  401bf3:	49 39 d4             	cmp    %rdx,%r12
  401bf6:	0f 82 8b 00 00 00    	jb     401c87 <__write_memory.part.0+0xd7>
  401bfc:	83 c1 01             	add    $0x1,%ecx
  401bff:	48 83 c0 28          	add    $0x28,%rax
  401c03:	39 f9                	cmp    %edi,%ecx
  401c05:	75 d9                	jne    401be0 <__write_memory.part.0+0x30>
  401c07:	4c 89 e1             	mov    %r12,%rcx
  401c0a:	e8 01 0d 00 00       	callq  402910 <__mingw_GetSectionForAddress>
  401c0f:	48 89 c5             	mov    %rax,%rbp
  401c12:	48 85 c0             	test   %rax,%rax
  401c15:	0f 84 77 01 00 00    	je     401d92 <__write_memory.part.0+0x1e2>
  401c1b:	48 8b 05 f6 59 00 00 	mov    0x59f6(%rip),%rax        # 407618 <the_secs>
  401c22:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
  401c26:	48 c1 e7 03          	shl    $0x3,%rdi
  401c2a:	48 01 f8             	add    %rdi,%rax
  401c2d:	48 89 68 20          	mov    %rbp,0x20(%rax)
  401c31:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401c37:	e8 04 0e 00 00       	callq  402a40 <_GetPEImageBase>
  401c3c:	8b 4d 0c             	mov    0xc(%rbp),%ecx
  401c3f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401c44:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401c4a:	48 01 c1             	add    %rax,%rcx
  401c4d:	48 8b 05 c4 59 00 00 	mov    0x59c4(%rip),%rax        # 407618 <the_secs>
  401c54:	48 89 4c 38 18       	mov    %rcx,0x18(%rax,%rdi,1)
  401c59:	ff 15 5d 66 00 00    	callq  *0x665d(%rip)        # 4082bc <__imp_VirtualQuery>
  401c5f:	48 85 c0             	test   %rax,%rax
  401c62:	0f 84 39 01 00 00    	je     401da1 <__write_memory.part.0+0x1f1>
  401c68:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401c6c:	8d 50 c0             	lea    -0x40(%rax),%edx
  401c6f:	83 e2 bf             	and    $0xffffffbf,%edx
  401c72:	74 0c                	je     401c80 <__write_memory.part.0+0xd0>
  401c74:	83 e8 04             	sub    $0x4,%eax
  401c77:	83 e0 fb             	and    $0xfffffffb,%eax
  401c7a:	0f 85 90 00 00 00    	jne    401d10 <__write_memory.part.0+0x160>
  401c80:	83 05 8d 59 00 00 01 	addl   $0x1,0x598d(%rip)        # 407614 <maxSections>
  401c87:	83 fb 08             	cmp    $0x8,%ebx
  401c8a:	73 2c                	jae    401cb8 <__write_memory.part.0+0x108>
  401c8c:	f6 c3 04             	test   $0x4,%bl
  401c8f:	0f 85 cb 00 00 00    	jne    401d60 <__write_memory.part.0+0x1b0>
  401c95:	85 db                	test   %ebx,%ebx
  401c97:	74 10                	je     401ca9 <__write_memory.part.0+0xf9>
  401c99:	0f b6 06             	movzbl (%rsi),%eax
  401c9c:	41 88 04 24          	mov    %al,(%r12)
  401ca0:	f6 c3 02             	test   $0x2,%bl
  401ca3:	0f 85 d7 00 00 00    	jne    401d80 <__write_memory.part.0+0x1d0>
  401ca9:	48 83 c4 50          	add    $0x50,%rsp
  401cad:	5b                   	pop    %rbx
  401cae:	5e                   	pop    %rsi
  401caf:	5f                   	pop    %rdi
  401cb0:	5d                   	pop    %rbp
  401cb1:	41 5c                	pop    %r12
  401cb3:	c3                   	retq   
  401cb4:	0f 1f 40 00          	nopl   0x0(%rax)
  401cb8:	48 8b 06             	mov    (%rsi),%rax
  401cbb:	49 8d 4c 24 08       	lea    0x8(%r12),%rcx
  401cc0:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
  401cc4:	49 89 04 24          	mov    %rax,(%r12)
  401cc8:	89 d8                	mov    %ebx,%eax
  401cca:	48 8b 54 06 f8       	mov    -0x8(%rsi,%rax,1),%rdx
  401ccf:	49 89 54 04 f8       	mov    %rdx,-0x8(%r12,%rax,1)
  401cd4:	49 29 cc             	sub    %rcx,%r12
  401cd7:	44 01 e3             	add    %r12d,%ebx
  401cda:	4c 29 e6             	sub    %r12,%rsi
  401cdd:	83 e3 f8             	and    $0xfffffff8,%ebx
  401ce0:	83 fb 08             	cmp    $0x8,%ebx
  401ce3:	72 c4                	jb     401ca9 <__write_memory.part.0+0xf9>
  401ce5:	83 e3 f8             	and    $0xfffffff8,%ebx
  401ce8:	31 c0                	xor    %eax,%eax
  401cea:	89 c2                	mov    %eax,%edx
  401cec:	83 c0 08             	add    $0x8,%eax
  401cef:	4c 8b 04 16          	mov    (%rsi,%rdx,1),%r8
  401cf3:	4c 89 04 11          	mov    %r8,(%rcx,%rdx,1)
  401cf7:	39 d8                	cmp    %ebx,%eax
  401cf9:	72 ef                	jb     401cea <__write_memory.part.0+0x13a>
  401cfb:	48 83 c4 50          	add    $0x50,%rsp
  401cff:	5b                   	pop    %rbx
  401d00:	5e                   	pop    %rsi
  401d01:	5f                   	pop    %rdi
  401d02:	5d                   	pop    %rbp
  401d03:	41 5c                	pop    %r12
  401d05:	c3                   	retq   
  401d06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401d0d:	00 00 00 
  401d10:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401d15:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401d1a:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  401d20:	48 03 3d f1 58 00 00 	add    0x58f1(%rip),%rdi        # 407618 <the_secs>
  401d27:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
  401d2b:	49 89 f9             	mov    %rdi,%r9
  401d2e:	48 89 57 10          	mov    %rdx,0x10(%rdi)
  401d32:	ff 15 7c 65 00 00    	callq  *0x657c(%rip)        # 4082b4 <__imp_VirtualProtect>
  401d38:	85 c0                	test   %eax,%eax
  401d3a:	0f 85 40 ff ff ff    	jne    401c80 <__write_memory.part.0+0xd0>
  401d40:	ff 15 e6 64 00 00    	callq  *0x64e6(%rip)        # 40822c <__imp_GetLastError>
  401d46:	48 8d 0d cb 25 00 00 	lea    0x25cb(%rip),%rcx        # 404318 <.rdata+0x78>
  401d4d:	89 c2                	mov    %eax,%edx
  401d4f:	e8 ec fd ff ff       	callq  401b40 <__report_error>
  401d54:	0f 1f 40 00          	nopl   0x0(%rax)
  401d58:	31 ff                	xor    %edi,%edi
  401d5a:	e9 a8 fe ff ff       	jmpq   401c07 <__write_memory.part.0+0x57>
  401d5f:	90                   	nop
  401d60:	8b 06                	mov    (%rsi),%eax
  401d62:	89 db                	mov    %ebx,%ebx
  401d64:	41 89 04 24          	mov    %eax,(%r12)
  401d68:	8b 44 1e fc          	mov    -0x4(%rsi,%rbx,1),%eax
  401d6c:	41 89 44 1c fc       	mov    %eax,-0x4(%r12,%rbx,1)
  401d71:	e9 33 ff ff ff       	jmpq   401ca9 <__write_memory.part.0+0xf9>
  401d76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401d7d:	00 00 00 
  401d80:	89 db                	mov    %ebx,%ebx
  401d82:	0f b7 44 1e fe       	movzwl -0x2(%rsi,%rbx,1),%eax
  401d87:	66 41 89 44 1c fe    	mov    %ax,-0x2(%r12,%rbx,1)
  401d8d:	e9 17 ff ff ff       	jmpq   401ca9 <__write_memory.part.0+0xf9>
  401d92:	4c 89 e2             	mov    %r12,%rdx
  401d95:	48 8d 0d 24 25 00 00 	lea    0x2524(%rip),%rcx        # 4042c0 <.rdata+0x20>
  401d9c:	e8 9f fd ff ff       	callq  401b40 <__report_error>
  401da1:	48 8b 05 70 58 00 00 	mov    0x5870(%rip),%rax        # 407618 <the_secs>
  401da8:	8b 55 08             	mov    0x8(%rbp),%edx
  401dab:	48 8d 0d 2e 25 00 00 	lea    0x252e(%rip),%rcx        # 4042e0 <.rdata+0x40>
  401db2:	4c 8b 44 38 18       	mov    0x18(%rax,%rdi,1),%r8
  401db7:	e8 84 fd ff ff       	callq  401b40 <__report_error>
  401dbc:	90                   	nop
  401dbd:	0f 1f 00             	nopl   (%rax)

0000000000401dc0 <_pei386_runtime_relocator>:
  401dc0:	55                   	push   %rbp
  401dc1:	41 57                	push   %r15
  401dc3:	41 56                	push   %r14
  401dc5:	41 55                	push   %r13
  401dc7:	41 54                	push   %r12
  401dc9:	57                   	push   %rdi
  401dca:	56                   	push   %rsi
  401dcb:	53                   	push   %rbx
  401dcc:	48 83 ec 38          	sub    $0x38,%rsp
  401dd0:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401dd7:	00 
  401dd8:	8b 35 32 58 00 00    	mov    0x5832(%rip),%esi        # 407610 <was_init.93800>
  401dde:	85 f6                	test   %esi,%esi
  401de0:	74 16                	je     401df8 <_pei386_runtime_relocator+0x38>
  401de2:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401de6:	5b                   	pop    %rbx
  401de7:	5e                   	pop    %rsi
  401de8:	5f                   	pop    %rdi
  401de9:	41 5c                	pop    %r12
  401deb:	41 5d                	pop    %r13
  401ded:	41 5e                	pop    %r14
  401def:	41 5f                	pop    %r15
  401df1:	5d                   	pop    %rbp
  401df2:	c3                   	retq   
  401df3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401df8:	c7 05 0e 58 00 00 01 	movl   $0x1,0x580e(%rip)        # 407610 <was_init.93800>
  401dff:	00 00 00 
  401e02:	e8 99 0b 00 00       	callq  4029a0 <__mingw_GetSectionCount>
  401e07:	48 98                	cltq   
  401e09:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401e0d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
  401e14:	00 
  401e15:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401e19:	e8 a2 0d 00 00       	callq  402bc0 <___chkstk_ms>
  401e1e:	4c 8b 25 1b 26 00 00 	mov    0x261b(%rip),%r12        # 404440 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401e25:	48 8b 1d 24 26 00 00 	mov    0x2624(%rip),%rbx        # 404450 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401e2c:	c7 05 de 57 00 00 00 	movl   $0x0,0x57de(%rip)        # 407614 <maxSections>
  401e33:	00 00 00 
  401e36:	48 29 c4             	sub    %rax,%rsp
  401e39:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401e3e:	48 89 05 d3 57 00 00 	mov    %rax,0x57d3(%rip)        # 407618 <the_secs>
  401e45:	4c 89 e0             	mov    %r12,%rax
  401e48:	48 29 d8             	sub    %rbx,%rax
  401e4b:	48 83 f8 07          	cmp    $0x7,%rax
  401e4f:	7e 91                	jle    401de2 <_pei386_runtime_relocator+0x22>
  401e51:	8b 13                	mov    (%rbx),%edx
  401e53:	48 83 f8 0b          	cmp    $0xb,%rax
  401e57:	0f 8f 4b 01 00 00    	jg     401fa8 <_pei386_runtime_relocator+0x1e8>
  401e5d:	85 d2                	test   %edx,%edx
  401e5f:	0f 85 cb 01 00 00    	jne    402030 <_pei386_runtime_relocator+0x270>
  401e65:	8b 43 04             	mov    0x4(%rbx),%eax
  401e68:	85 c0                	test   %eax,%eax
  401e6a:	0f 85 c0 01 00 00    	jne    402030 <_pei386_runtime_relocator+0x270>
  401e70:	8b 53 08             	mov    0x8(%rbx),%edx
  401e73:	83 fa 01             	cmp    $0x1,%edx
  401e76:	0f 85 1c 02 00 00    	jne    402098 <_pei386_runtime_relocator+0x2d8>
  401e7c:	48 83 c3 0c          	add    $0xc,%rbx
  401e80:	4c 8d 7d a8          	lea    -0x58(%rbp),%r15
  401e84:	4c 8b 2d e5 25 00 00 	mov    0x25e5(%rip),%r13        # 404470 <.refptr.__image_base__>
  401e8b:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
  401e92:	ff ff ff 
  401e95:	4c 39 e3             	cmp    %r12,%rbx
  401e98:	72 3f                	jb     401ed9 <_pei386_runtime_relocator+0x119>
  401e9a:	e9 43 ff ff ff       	jmpq   401de2 <_pei386_runtime_relocator+0x22>
  401e9f:	90                   	nop
  401ea0:	44 0f b6 01          	movzbl (%rcx),%r8d
  401ea4:	4c 89 ff             	mov    %r15,%rdi
  401ea7:	4d 89 c2             	mov    %r8,%r10
  401eaa:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  401eb1:	45 84 c0             	test   %r8b,%r8b
  401eb4:	4d 0f 48 c2          	cmovs  %r10,%r8
  401eb8:	49 29 d0             	sub    %rdx,%r8
  401ebb:	4c 89 fa             	mov    %r15,%rdx
  401ebe:	4d 01 c8             	add    %r9,%r8
  401ec1:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401ec5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  401ecb:	e8 e0 fc ff ff       	callq  401bb0 <__write_memory.part.0>
  401ed0:	48 83 c3 0c          	add    $0xc,%rbx
  401ed4:	4c 39 e3             	cmp    %r12,%rbx
  401ed7:	73 77                	jae    401f50 <_pei386_runtime_relocator+0x190>
  401ed9:	8b 13                	mov    (%rbx),%edx
  401edb:	8b 4b 04             	mov    0x4(%rbx),%ecx
  401ede:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
  401ee3:	4c 01 ea             	add    %r13,%rdx
  401ee6:	4c 01 e9             	add    %r13,%rcx
  401ee9:	4c 8b 0a             	mov    (%rdx),%r9
  401eec:	41 83 f8 20          	cmp    $0x20,%r8d
  401ef0:	0f 84 0a 01 00 00    	je     402000 <_pei386_runtime_relocator+0x240>
  401ef6:	0f 87 d4 00 00 00    	ja     401fd0 <_pei386_runtime_relocator+0x210>
  401efc:	41 83 f8 08          	cmp    $0x8,%r8d
  401f00:	74 9e                	je     401ea0 <_pei386_runtime_relocator+0xe0>
  401f02:	41 83 f8 10          	cmp    $0x10,%r8d
  401f06:	0f 85 75 01 00 00    	jne    402081 <_pei386_runtime_relocator+0x2c1>
  401f0c:	44 0f b7 01          	movzwl (%rcx),%r8d
  401f10:	4c 89 ff             	mov    %r15,%rdi
  401f13:	4d 89 c2             	mov    %r8,%r10
  401f16:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  401f1d:	66 45 85 c0          	test   %r8w,%r8w
  401f21:	4d 0f 48 c2          	cmovs  %r10,%r8
  401f25:	48 83 c3 0c          	add    $0xc,%rbx
  401f29:	49 29 d0             	sub    %rdx,%r8
  401f2c:	4c 89 fa             	mov    %r15,%rdx
  401f2f:	4d 01 c8             	add    %r9,%r8
  401f32:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  401f36:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  401f3c:	e8 6f fc ff ff       	callq  401bb0 <__write_memory.part.0>
  401f41:	4c 39 e3             	cmp    %r12,%rbx
  401f44:	72 93                	jb     401ed9 <_pei386_runtime_relocator+0x119>
  401f46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401f4d:	00 00 00 
  401f50:	8b 05 be 56 00 00    	mov    0x56be(%rip),%eax        # 407614 <maxSections>
  401f56:	85 c0                	test   %eax,%eax
  401f58:	0f 8e 84 fe ff ff    	jle    401de2 <_pei386_runtime_relocator+0x22>
  401f5e:	4c 8b 25 4f 63 00 00 	mov    0x634f(%rip),%r12        # 4082b4 <__imp_VirtualProtect>
  401f65:	31 db                	xor    %ebx,%ebx
  401f67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401f6e:	00 00 
  401f70:	48 8b 05 a1 56 00 00 	mov    0x56a1(%rip),%rax        # 407618 <the_secs>
  401f77:	48 01 d8             	add    %rbx,%rax
  401f7a:	44 8b 00             	mov    (%rax),%r8d
  401f7d:	45 85 c0             	test   %r8d,%r8d
  401f80:	74 0e                	je     401f90 <_pei386_runtime_relocator+0x1d0>
  401f82:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401f86:	48 8b 48 08          	mov    0x8(%rax),%rcx
  401f8a:	49 89 f9             	mov    %rdi,%r9
  401f8d:	41 ff d4             	callq  *%r12
  401f90:	83 c6 01             	add    $0x1,%esi
  401f93:	48 83 c3 28          	add    $0x28,%rbx
  401f97:	3b 35 77 56 00 00    	cmp    0x5677(%rip),%esi        # 407614 <maxSections>
  401f9d:	7c d1                	jl     401f70 <_pei386_runtime_relocator+0x1b0>
  401f9f:	e9 3e fe ff ff       	jmpq   401de2 <_pei386_runtime_relocator+0x22>
  401fa4:	0f 1f 40 00          	nopl   0x0(%rax)
  401fa8:	85 d2                	test   %edx,%edx
  401faa:	0f 85 80 00 00 00    	jne    402030 <_pei386_runtime_relocator+0x270>
  401fb0:	8b 43 04             	mov    0x4(%rbx),%eax
  401fb3:	89 c7                	mov    %eax,%edi
  401fb5:	0b 7b 08             	or     0x8(%rbx),%edi
  401fb8:	0f 85 aa fe ff ff    	jne    401e68 <_pei386_runtime_relocator+0xa8>
  401fbe:	8b 53 0c             	mov    0xc(%rbx),%edx
  401fc1:	48 83 c3 0c          	add    $0xc,%rbx
  401fc5:	e9 93 fe ff ff       	jmpq   401e5d <_pei386_runtime_relocator+0x9d>
  401fca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401fd0:	41 83 f8 40          	cmp    $0x40,%r8d
  401fd4:	0f 85 a7 00 00 00    	jne    402081 <_pei386_runtime_relocator+0x2c1>
  401fda:	48 8b 01             	mov    (%rcx),%rax
  401fdd:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  401fe3:	4c 89 ff             	mov    %r15,%rdi
  401fe6:	48 29 d0             	sub    %rdx,%rax
  401fe9:	4c 89 fa             	mov    %r15,%rdx
  401fec:	4c 01 c8             	add    %r9,%rax
  401fef:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  401ff3:	e8 b8 fb ff ff       	callq  401bb0 <__write_memory.part.0>
  401ff8:	e9 d3 fe ff ff       	jmpq   401ed0 <_pei386_runtime_relocator+0x110>
  401ffd:	0f 1f 00             	nopl   (%rax)
  402000:	8b 01                	mov    (%rcx),%eax
  402002:	4c 89 ff             	mov    %r15,%rdi
  402005:	49 89 c0             	mov    %rax,%r8
  402008:	4c 09 f0             	or     %r14,%rax
  40200b:	45 85 c0             	test   %r8d,%r8d
  40200e:	49 0f 49 c0          	cmovns %r8,%rax
  402012:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402018:	48 29 d0             	sub    %rdx,%rax
  40201b:	4c 89 fa             	mov    %r15,%rdx
  40201e:	4c 01 c8             	add    %r9,%rax
  402021:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  402025:	e8 86 fb ff ff       	callq  401bb0 <__write_memory.part.0>
  40202a:	e9 a1 fe ff ff       	jmpq   401ed0 <_pei386_runtime_relocator+0x110>
  40202f:	90                   	nop
  402030:	4c 39 e3             	cmp    %r12,%rbx
  402033:	0f 83 a9 fd ff ff    	jae    401de2 <_pei386_runtime_relocator+0x22>
  402039:	49 83 ec 01          	sub    $0x1,%r12
  40203d:	4c 8b 2d 2c 24 00 00 	mov    0x242c(%rip),%r13        # 404470 <.refptr.__image_base__>
  402044:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  402048:	49 29 dc             	sub    %rbx,%r12
  40204b:	49 c1 ec 03          	shr    $0x3,%r12
  40204f:	4e 8d 64 e3 08       	lea    0x8(%rbx,%r12,8),%r12
  402054:	0f 1f 40 00          	nopl   0x0(%rax)
  402058:	8b 4b 04             	mov    0x4(%rbx),%ecx
  40205b:	8b 03                	mov    (%rbx),%eax
  40205d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402063:	48 89 fa             	mov    %rdi,%rdx
  402066:	48 83 c3 08          	add    $0x8,%rbx
  40206a:	4c 01 e9             	add    %r13,%rcx
  40206d:	03 01                	add    (%rcx),%eax
  40206f:	89 45 a8             	mov    %eax,-0x58(%rbp)
  402072:	e8 39 fb ff ff       	callq  401bb0 <__write_memory.part.0>
  402077:	4c 39 e3             	cmp    %r12,%rbx
  40207a:	75 dc                	jne    402058 <_pei386_runtime_relocator+0x298>
  40207c:	e9 cf fe ff ff       	jmpq   401f50 <_pei386_runtime_relocator+0x190>
  402081:	44 89 c2             	mov    %r8d,%edx
  402084:	48 8d 0d ed 22 00 00 	lea    0x22ed(%rip),%rcx        # 404378 <.rdata+0xd8>
  40208b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  402092:	00 
  402093:	e8 a8 fa ff ff       	callq  401b40 <__report_error>
  402098:	48 8d 0d a1 22 00 00 	lea    0x22a1(%rip),%rcx        # 404340 <.rdata+0xa0>
  40209f:	e8 9c fa ff ff       	callq  401b40 <__report_error>
  4020a4:	90                   	nop
  4020a5:	90                   	nop
  4020a6:	90                   	nop
  4020a7:	90                   	nop
  4020a8:	90                   	nop
  4020a9:	90                   	nop
  4020aa:	90                   	nop
  4020ab:	90                   	nop
  4020ac:	90                   	nop
  4020ad:	90                   	nop
  4020ae:	90                   	nop
  4020af:	90                   	nop

00000000004020b0 <__mingw_raise_matherr>:
  4020b0:	48 83 ec 58          	sub    $0x58,%rsp
  4020b4:	48 8b 05 65 55 00 00 	mov    0x5565(%rip),%rax        # 407620 <stUserMathErr>
  4020bb:	48 85 c0             	test   %rax,%rax
  4020be:	74 2c                	je     4020ec <__mingw_raise_matherr+0x3c>
  4020c0:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  4020c7:	00 00 
  4020c9:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  4020cd:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4020d2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4020d7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  4020dd:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  4020e3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  4020e9:	ff d0                	callq  *%rax
  4020eb:	90                   	nop
  4020ec:	48 83 c4 58          	add    $0x58,%rsp
  4020f0:	c3                   	retq   
  4020f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4020f8:	00 00 00 00 
  4020fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402100 <__mingw_setusermatherr>:
  402100:	48 89 0d 19 55 00 00 	mov    %rcx,0x5519(%rip)        # 407620 <stUserMathErr>
  402107:	e9 c4 0b 00 00       	jmpq   402cd0 <__setusermatherr>
  40210c:	90                   	nop
  40210d:	90                   	nop
  40210e:	90                   	nop
  40210f:	90                   	nop

0000000000402110 <__mingw_SEH_error_handler>:
  402110:	48 83 ec 28          	sub    $0x28,%rsp
  402114:	8b 01                	mov    (%rcx),%eax
  402116:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  40211b:	0f 87 2f 01 00 00    	ja     402250 <__mingw_SEH_error_handler+0x140>
  402121:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  402126:	76 58                	jbe    402180 <__mingw_SEH_error_handler+0x70>
  402128:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  40212d:	83 f8 09             	cmp    $0x9,%eax
  402130:	77 3a                	ja     40216c <__mingw_SEH_error_handler+0x5c>
  402132:	48 8d 15 77 22 00 00 	lea    0x2277(%rip),%rdx        # 4043b0 <.rdata>
  402139:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40213d:	48 01 d0             	add    %rdx,%rax
  402140:	ff e0                	jmpq   *%rax
  402142:	31 d2                	xor    %edx,%edx
  402144:	b9 08 00 00 00       	mov    $0x8,%ecx
  402149:	e8 f2 0a 00 00       	callq  402c40 <signal>
  40214e:	48 83 f8 01          	cmp    $0x1,%rax
  402152:	0f 85 a5 00 00 00    	jne    4021fd <__mingw_SEH_error_handler+0xed>
  402158:	ba 01 00 00 00       	mov    $0x1,%edx
  40215d:	b9 08 00 00 00       	mov    $0x8,%ecx
  402162:	e8 d9 0a 00 00       	callq  402c40 <signal>
  402167:	e8 c4 f9 ff ff       	callq  401b30 <_fpreset>
  40216c:	45 31 c0             	xor    %r8d,%r8d
  40216f:	44 89 c0             	mov    %r8d,%eax
  402172:	48 83 c4 28          	add    $0x28,%rsp
  402176:	c3                   	retq   
  402177:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40217e:	00 00 
  402180:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  402185:	0f 84 95 00 00 00    	je     402220 <__mingw_SEH_error_handler+0x110>
  40218b:	76 46                	jbe    4021d3 <__mingw_SEH_error_handler+0xc3>
  40218d:	45 31 c0             	xor    %r8d,%r8d
  402190:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  402195:	74 d8                	je     40216f <__mingw_SEH_error_handler+0x5f>
  402197:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  40219c:	0f 85 ae 00 00 00    	jne    402250 <__mingw_SEH_error_handler+0x140>
  4021a2:	31 d2                	xor    %edx,%edx
  4021a4:	b9 04 00 00 00       	mov    $0x4,%ecx
  4021a9:	e8 92 0a 00 00       	callq  402c40 <signal>
  4021ae:	48 83 f8 01          	cmp    $0x1,%rax
  4021b2:	0f 84 b8 00 00 00    	je     402270 <__mingw_SEH_error_handler+0x160>
  4021b8:	48 85 c0             	test   %rax,%rax
  4021bb:	0f 84 9f 00 00 00    	je     402260 <__mingw_SEH_error_handler+0x150>
  4021c1:	b9 04 00 00 00       	mov    $0x4,%ecx
  4021c6:	ff d0                	callq  *%rax
  4021c8:	45 31 c0             	xor    %r8d,%r8d
  4021cb:	44 89 c0             	mov    %r8d,%eax
  4021ce:	48 83 c4 28          	add    $0x28,%rsp
  4021d2:	c3                   	retq   
  4021d3:	45 31 c0             	xor    %r8d,%r8d
  4021d6:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4021db:	41 0f 95 c0          	setne  %r8b
  4021df:	44 89 c0             	mov    %r8d,%eax
  4021e2:	48 83 c4 28          	add    $0x28,%rsp
  4021e6:	c3                   	retq   
  4021e7:	31 d2                	xor    %edx,%edx
  4021e9:	b9 08 00 00 00       	mov    $0x8,%ecx
  4021ee:	e8 4d 0a 00 00       	callq  402c40 <signal>
  4021f3:	48 83 f8 01          	cmp    $0x1,%rax
  4021f7:	0f 84 93 00 00 00    	je     402290 <__mingw_SEH_error_handler+0x180>
  4021fd:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402203:	48 85 c0             	test   %rax,%rax
  402206:	0f 84 63 ff ff ff    	je     40216f <__mingw_SEH_error_handler+0x5f>
  40220c:	b9 08 00 00 00       	mov    $0x8,%ecx
  402211:	ff d0                	callq  *%rax
  402213:	45 31 c0             	xor    %r8d,%r8d
  402216:	e9 54 ff ff ff       	jmpq   40216f <__mingw_SEH_error_handler+0x5f>
  40221b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402220:	31 d2                	xor    %edx,%edx
  402222:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402227:	e8 14 0a 00 00       	callq  402c40 <signal>
  40222c:	48 83 f8 01          	cmp    $0x1,%rax
  402230:	74 7e                	je     4022b0 <__mingw_SEH_error_handler+0x1a0>
  402232:	48 85 c0             	test   %rax,%rax
  402235:	74 29                	je     402260 <__mingw_SEH_error_handler+0x150>
  402237:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40223c:	ff d0                	callq  *%rax
  40223e:	45 31 c0             	xor    %r8d,%r8d
  402241:	e9 29 ff ff ff       	jmpq   40216f <__mingw_SEH_error_handler+0x5f>
  402246:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40224d:	00 00 00 
  402250:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402256:	e9 14 ff ff ff       	jmpq   40216f <__mingw_SEH_error_handler+0x5f>
  40225b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402260:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  402266:	e9 04 ff ff ff       	jmpq   40216f <__mingw_SEH_error_handler+0x5f>
  40226b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402270:	ba 01 00 00 00       	mov    $0x1,%edx
  402275:	b9 04 00 00 00       	mov    $0x4,%ecx
  40227a:	e8 c1 09 00 00       	callq  402c40 <signal>
  40227f:	45 31 c0             	xor    %r8d,%r8d
  402282:	e9 e8 fe ff ff       	jmpq   40216f <__mingw_SEH_error_handler+0x5f>
  402287:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40228e:	00 00 
  402290:	ba 01 00 00 00       	mov    $0x1,%edx
  402295:	b9 08 00 00 00       	mov    $0x8,%ecx
  40229a:	e8 a1 09 00 00       	callq  402c40 <signal>
  40229f:	45 31 c0             	xor    %r8d,%r8d
  4022a2:	e9 c8 fe ff ff       	jmpq   40216f <__mingw_SEH_error_handler+0x5f>
  4022a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4022ae:	00 00 
  4022b0:	ba 01 00 00 00       	mov    $0x1,%edx
  4022b5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4022ba:	e8 81 09 00 00       	callq  402c40 <signal>
  4022bf:	45 31 c0             	xor    %r8d,%r8d
  4022c2:	e9 a8 fe ff ff       	jmpq   40216f <__mingw_SEH_error_handler+0x5f>
  4022c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4022ce:	00 00 

00000000004022d0 <__mingw_init_ehandler>:
  4022d0:	41 54                	push   %r12
  4022d2:	55                   	push   %rbp
  4022d3:	57                   	push   %rdi
  4022d4:	56                   	push   %rsi
  4022d5:	53                   	push   %rbx
  4022d6:	48 83 ec 20          	sub    $0x20,%rsp
  4022da:	e8 61 07 00 00       	callq  402a40 <_GetPEImageBase>
  4022df:	48 89 c6             	mov    %rax,%rsi
  4022e2:	8b 05 60 53 00 00    	mov    0x5360(%rip),%eax        # 407648 <was_here.93644>
  4022e8:	85 c0                	test   %eax,%eax
  4022ea:	75 25                	jne    402311 <__mingw_init_ehandler+0x41>
  4022ec:	48 85 f6             	test   %rsi,%rsi
  4022ef:	74 20                	je     402311 <__mingw_init_ehandler+0x41>
  4022f1:	48 8d 0d e0 20 00 00 	lea    0x20e0(%rip),%rcx        # 4043d8 <.rdata+0x28>
  4022f8:	c7 05 46 53 00 00 01 	movl   $0x1,0x5346(%rip)        # 407648 <was_here.93644>
  4022ff:	00 00 00 
  402302:	e8 69 05 00 00       	callq  402870 <_FindPESectionByName>
  402307:	48 85 c0             	test   %rax,%rax
  40230a:	74 14                	je     402320 <__mingw_init_ehandler+0x50>
  40230c:	b8 01 00 00 00       	mov    $0x1,%eax
  402311:	48 83 c4 20          	add    $0x20,%rsp
  402315:	5b                   	pop    %rbx
  402316:	5e                   	pop    %rsi
  402317:	5f                   	pop    %rdi
  402318:	5d                   	pop    %rbp
  402319:	41 5c                	pop    %r12
  40231b:	c3                   	retq   
  40231c:	0f 1f 40 00          	nopl   0x0(%rax)
  402320:	48 8d 1d 39 54 00 00 	lea    0x5439(%rip),%rbx        # 407760 <emu_pdata>
  402327:	b9 30 00 00 00       	mov    $0x30,%ecx
  40232c:	45 31 e4             	xor    %r12d,%r12d
  40232f:	48 8d 15 2a 53 00 00 	lea    0x532a(%rip),%rdx        # 407660 <emu_xdata>
  402336:	48 89 df             	mov    %rbx,%rdi
  402339:	48 8d 2d d0 fd ff ff 	lea    -0x230(%rip),%rbp        # 402110 <__mingw_SEH_error_handler>
  402340:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402343:	b9 20 00 00 00       	mov    $0x20,%ecx
  402348:	48 89 d7             	mov    %rdx,%rdi
  40234b:	48 29 f5             	sub    %rsi,%rbp
  40234e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402351:	48 89 d7             	mov    %rdx,%rdi
  402354:	eb 37                	jmp    40238d <__mingw_init_ehandler+0xbd>
  402356:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40235d:	00 00 00 
  402360:	c6 07 09             	movb   $0x9,(%rdi)
  402363:	49 83 c4 01          	add    $0x1,%r12
  402367:	48 83 c3 0c          	add    $0xc,%rbx
  40236b:	89 6f 04             	mov    %ebp,0x4(%rdi)
  40236e:	8b 50 0c             	mov    0xc(%rax),%edx
  402371:	89 53 f4             	mov    %edx,-0xc(%rbx)
  402374:	03 50 08             	add    0x8(%rax),%edx
  402377:	48 89 f8             	mov    %rdi,%rax
  40237a:	48 83 c7 08          	add    $0x8,%rdi
  40237e:	48 29 f0             	sub    %rsi,%rax
  402381:	89 53 f8             	mov    %edx,-0x8(%rbx)
  402384:	89 43 fc             	mov    %eax,-0x4(%rbx)
  402387:	49 83 fc 20          	cmp    $0x20,%r12
  40238b:	74 23                	je     4023b0 <__mingw_init_ehandler+0xe0>
  40238d:	4c 89 e1             	mov    %r12,%rcx
  402390:	e8 3b 06 00 00       	callq  4029d0 <_FindPESectionExec>
  402395:	48 85 c0             	test   %rax,%rax
  402398:	75 c6                	jne    402360 <__mingw_init_ehandler+0x90>
  40239a:	4d 85 e4             	test   %r12,%r12
  40239d:	0f 84 69 ff ff ff    	je     40230c <__mingw_init_ehandler+0x3c>
  4023a3:	44 89 e2             	mov    %r12d,%edx
  4023a6:	eb 0d                	jmp    4023b5 <__mingw_init_ehandler+0xe5>
  4023a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4023af:	00 
  4023b0:	ba 20 00 00 00       	mov    $0x20,%edx
  4023b5:	49 89 f0             	mov    %rsi,%r8
  4023b8:	48 8d 0d a1 53 00 00 	lea    0x53a1(%rip),%rcx        # 407760 <emu_pdata>
  4023bf:	ff 15 9f 5e 00 00    	callq  *0x5e9f(%rip)        # 408264 <__imp_RtlAddFunctionTable>
  4023c5:	e9 42 ff ff ff       	jmpq   40230c <__mingw_init_ehandler+0x3c>
  4023ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004023d0 <_gnu_exception_handler>:
  4023d0:	41 54                	push   %r12
  4023d2:	48 83 ec 20          	sub    $0x20,%rsp
  4023d6:	48 8b 11             	mov    (%rcx),%rdx
  4023d9:	8b 02                	mov    (%rdx),%eax
  4023db:	49 89 cc             	mov    %rcx,%r12
  4023de:	89 c1                	mov    %eax,%ecx
  4023e0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  4023e6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  4023ec:	0f 84 ce 00 00 00    	je     4024c0 <_gnu_exception_handler+0xf0>
  4023f2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4023f7:	0f 87 aa 00 00 00    	ja     4024a7 <_gnu_exception_handler+0xd7>
  4023fd:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  402402:	76 54                	jbe    402458 <_gnu_exception_handler+0x88>
  402404:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  402409:	83 f8 09             	cmp    $0x9,%eax
  40240c:	77 3a                	ja     402448 <_gnu_exception_handler+0x78>
  40240e:	48 8d 15 cb 1f 00 00 	lea    0x1fcb(%rip),%rdx        # 4043e0 <.rdata+0x30>
  402415:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  402419:	48 01 d0             	add    %rdx,%rax
  40241c:	ff e0                	jmpq   *%rax
  40241e:	31 d2                	xor    %edx,%edx
  402420:	b9 08 00 00 00       	mov    $0x8,%ecx
  402425:	e8 16 08 00 00       	callq  402c40 <signal>
  40242a:	48 83 f8 01          	cmp    $0x1,%rax
  40242e:	0f 85 b7 00 00 00    	jne    4024eb <_gnu_exception_handler+0x11b>
  402434:	ba 01 00 00 00       	mov    $0x1,%edx
  402439:	b9 08 00 00 00       	mov    $0x8,%ecx
  40243e:	e8 fd 07 00 00       	callq  402c40 <signal>
  402443:	e8 e8 f6 ff ff       	callq  401b30 <_fpreset>
  402448:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40244d:	48 83 c4 20          	add    $0x20,%rsp
  402451:	41 5c                	pop    %r12
  402453:	c3                   	retq   
  402454:	0f 1f 40 00          	nopl   0x0(%rax)
  402458:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  40245d:	0f 84 a5 00 00 00    	je     402508 <_gnu_exception_handler+0x138>
  402463:	76 3b                	jbe    4024a0 <_gnu_exception_handler+0xd0>
  402465:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  40246a:	74 dc                	je     402448 <_gnu_exception_handler+0x78>
  40246c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  402471:	75 34                	jne    4024a7 <_gnu_exception_handler+0xd7>
  402473:	31 d2                	xor    %edx,%edx
  402475:	b9 04 00 00 00       	mov    $0x4,%ecx
  40247a:	e8 c1 07 00 00       	callq  402c40 <signal>
  40247f:	48 83 f8 01          	cmp    $0x1,%rax
  402483:	0f 84 a7 00 00 00    	je     402530 <_gnu_exception_handler+0x160>
  402489:	48 85 c0             	test   %rax,%rax
  40248c:	74 19                	je     4024a7 <_gnu_exception_handler+0xd7>
  40248e:	b9 04 00 00 00       	mov    $0x4,%ecx
  402493:	ff d0                	callq  *%rax
  402495:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40249a:	eb b1                	jmp    40244d <_gnu_exception_handler+0x7d>
  40249c:	0f 1f 40 00          	nopl   0x0(%rax)
  4024a0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  4024a5:	74 a1                	je     402448 <_gnu_exception_handler+0x78>
  4024a7:	48 8b 05 92 51 00 00 	mov    0x5192(%rip),%rax        # 407640 <__mingw_oldexcpt_handler>
  4024ae:	48 85 c0             	test   %rax,%rax
  4024b1:	74 1d                	je     4024d0 <_gnu_exception_handler+0x100>
  4024b3:	4c 89 e1             	mov    %r12,%rcx
  4024b6:	48 83 c4 20          	add    $0x20,%rsp
  4024ba:	41 5c                	pop    %r12
  4024bc:	48 ff e0             	rex.W jmpq *%rax
  4024bf:	90                   	nop
  4024c0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  4024c4:	0f 85 28 ff ff ff    	jne    4023f2 <_gnu_exception_handler+0x22>
  4024ca:	e9 79 ff ff ff       	jmpq   402448 <_gnu_exception_handler+0x78>
  4024cf:	90                   	nop
  4024d0:	31 c0                	xor    %eax,%eax
  4024d2:	48 83 c4 20          	add    $0x20,%rsp
  4024d6:	41 5c                	pop    %r12
  4024d8:	c3                   	retq   
  4024d9:	31 d2                	xor    %edx,%edx
  4024db:	b9 08 00 00 00       	mov    $0x8,%ecx
  4024e0:	e8 5b 07 00 00       	callq  402c40 <signal>
  4024e5:	48 83 f8 01          	cmp    $0x1,%rax
  4024e9:	74 65                	je     402550 <_gnu_exception_handler+0x180>
  4024eb:	48 85 c0             	test   %rax,%rax
  4024ee:	74 b7                	je     4024a7 <_gnu_exception_handler+0xd7>
  4024f0:	b9 08 00 00 00       	mov    $0x8,%ecx
  4024f5:	ff d0                	callq  *%rax
  4024f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024fc:	e9 4c ff ff ff       	jmpq   40244d <_gnu_exception_handler+0x7d>
  402501:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402508:	31 d2                	xor    %edx,%edx
  40250a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40250f:	e8 2c 07 00 00       	callq  402c40 <signal>
  402514:	48 83 f8 01          	cmp    $0x1,%rax
  402518:	74 4f                	je     402569 <_gnu_exception_handler+0x199>
  40251a:	48 85 c0             	test   %rax,%rax
  40251d:	74 88                	je     4024a7 <_gnu_exception_handler+0xd7>
  40251f:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402524:	ff d0                	callq  *%rax
  402526:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40252b:	e9 1d ff ff ff       	jmpq   40244d <_gnu_exception_handler+0x7d>
  402530:	ba 01 00 00 00       	mov    $0x1,%edx
  402535:	b9 04 00 00 00       	mov    $0x4,%ecx
  40253a:	e8 01 07 00 00       	callq  402c40 <signal>
  40253f:	83 c8 ff             	or     $0xffffffff,%eax
  402542:	e9 06 ff ff ff       	jmpq   40244d <_gnu_exception_handler+0x7d>
  402547:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40254e:	00 00 
  402550:	ba 01 00 00 00       	mov    $0x1,%edx
  402555:	b9 08 00 00 00       	mov    $0x8,%ecx
  40255a:	e8 e1 06 00 00       	callq  402c40 <signal>
  40255f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402564:	e9 e4 fe ff ff       	jmpq   40244d <_gnu_exception_handler+0x7d>
  402569:	ba 01 00 00 00       	mov    $0x1,%edx
  40256e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  402573:	e8 c8 06 00 00       	callq  402c40 <signal>
  402578:	83 c8 ff             	or     $0xffffffff,%eax
  40257b:	e9 cd fe ff ff       	jmpq   40244d <_gnu_exception_handler+0x7d>

0000000000402580 <__mingwthr_run_key_dtors.part.0>:
  402580:	41 54                	push   %r12
  402582:	57                   	push   %rdi
  402583:	56                   	push   %rsi
  402584:	53                   	push   %rbx
  402585:	48 83 ec 28          	sub    $0x28,%rsp
  402589:	48 8d 0d 70 53 00 00 	lea    0x5370(%rip),%rcx        # 407900 <__mingwthr_cs>
  402590:	ff 15 76 5c 00 00    	callq  *0x5c76(%rip)        # 40820c <__imp_EnterCriticalSection>
  402596:	48 8b 1d 43 53 00 00 	mov    0x5343(%rip),%rbx        # 4078e0 <key_dtor_list>
  40259d:	48 85 db             	test   %rbx,%rbx
  4025a0:	74 32                	je     4025d4 <__mingwthr_run_key_dtors.part.0+0x54>
  4025a2:	48 8b 3d fb 5c 00 00 	mov    0x5cfb(%rip),%rdi        # 4082a4 <__imp_TlsGetValue>
  4025a9:	48 8b 35 7c 5c 00 00 	mov    0x5c7c(%rip),%rsi        # 40822c <__imp_GetLastError>
  4025b0:	8b 0b                	mov    (%rbx),%ecx
  4025b2:	ff d7                	callq  *%rdi
  4025b4:	49 89 c4             	mov    %rax,%r12
  4025b7:	ff d6                	callq  *%rsi
  4025b9:	85 c0                	test   %eax,%eax
  4025bb:	75 0e                	jne    4025cb <__mingwthr_run_key_dtors.part.0+0x4b>
  4025bd:	4d 85 e4             	test   %r12,%r12
  4025c0:	74 09                	je     4025cb <__mingwthr_run_key_dtors.part.0+0x4b>
  4025c2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4025c6:	4c 89 e1             	mov    %r12,%rcx
  4025c9:	ff d0                	callq  *%rax
  4025cb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  4025cf:	48 85 db             	test   %rbx,%rbx
  4025d2:	75 dc                	jne    4025b0 <__mingwthr_run_key_dtors.part.0+0x30>
  4025d4:	48 8d 0d 25 53 00 00 	lea    0x5325(%rip),%rcx        # 407900 <__mingwthr_cs>
  4025db:	48 83 c4 28          	add    $0x28,%rsp
  4025df:	5b                   	pop    %rbx
  4025e0:	5e                   	pop    %rsi
  4025e1:	5f                   	pop    %rdi
  4025e2:	41 5c                	pop    %r12
  4025e4:	48 ff 25 69 5c 00 00 	rex.W jmpq *0x5c69(%rip)        # 408254 <__imp_LeaveCriticalSection>
  4025eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004025f0 <___w64_mingwthr_add_key_dtor>:
  4025f0:	57                   	push   %rdi
  4025f1:	56                   	push   %rsi
  4025f2:	53                   	push   %rbx
  4025f3:	48 83 ec 20          	sub    $0x20,%rsp
  4025f7:	8b 05 eb 52 00 00    	mov    0x52eb(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  4025fd:	89 cf                	mov    %ecx,%edi
  4025ff:	48 89 d6             	mov    %rdx,%rsi
  402602:	85 c0                	test   %eax,%eax
  402604:	75 0a                	jne    402610 <___w64_mingwthr_add_key_dtor+0x20>
  402606:	48 83 c4 20          	add    $0x20,%rsp
  40260a:	5b                   	pop    %rbx
  40260b:	5e                   	pop    %rsi
  40260c:	5f                   	pop    %rdi
  40260d:	c3                   	retq   
  40260e:	66 90                	xchg   %ax,%ax
  402610:	ba 18 00 00 00       	mov    $0x18,%edx
  402615:	b9 01 00 00 00       	mov    $0x1,%ecx
  40261a:	e8 79 06 00 00       	callq  402c98 <calloc>
  40261f:	48 89 c3             	mov    %rax,%rbx
  402622:	48 85 c0             	test   %rax,%rax
  402625:	74 3c                	je     402663 <___w64_mingwthr_add_key_dtor+0x73>
  402627:	89 38                	mov    %edi,(%rax)
  402629:	48 8d 0d d0 52 00 00 	lea    0x52d0(%rip),%rcx        # 407900 <__mingwthr_cs>
  402630:	48 89 70 08          	mov    %rsi,0x8(%rax)
  402634:	ff 15 d2 5b 00 00    	callq  *0x5bd2(%rip)        # 40820c <__imp_EnterCriticalSection>
  40263a:	48 8b 05 9f 52 00 00 	mov    0x529f(%rip),%rax        # 4078e0 <key_dtor_list>
  402641:	48 8d 0d b8 52 00 00 	lea    0x52b8(%rip),%rcx        # 407900 <__mingwthr_cs>
  402648:	48 89 1d 91 52 00 00 	mov    %rbx,0x5291(%rip)        # 4078e0 <key_dtor_list>
  40264f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402653:	ff 15 fb 5b 00 00    	callq  *0x5bfb(%rip)        # 408254 <__imp_LeaveCriticalSection>
  402659:	31 c0                	xor    %eax,%eax
  40265b:	48 83 c4 20          	add    $0x20,%rsp
  40265f:	5b                   	pop    %rbx
  402660:	5e                   	pop    %rsi
  402661:	5f                   	pop    %rdi
  402662:	c3                   	retq   
  402663:	83 c8 ff             	or     $0xffffffff,%eax
  402666:	eb 9e                	jmp    402606 <___w64_mingwthr_add_key_dtor+0x16>
  402668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40266f:	00 

0000000000402670 <___w64_mingwthr_remove_key_dtor>:
  402670:	53                   	push   %rbx
  402671:	48 83 ec 20          	sub    $0x20,%rsp
  402675:	8b 05 6d 52 00 00    	mov    0x526d(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40267b:	89 cb                	mov    %ecx,%ebx
  40267d:	85 c0                	test   %eax,%eax
  40267f:	75 0f                	jne    402690 <___w64_mingwthr_remove_key_dtor+0x20>
  402681:	31 c0                	xor    %eax,%eax
  402683:	48 83 c4 20          	add    $0x20,%rsp
  402687:	5b                   	pop    %rbx
  402688:	c3                   	retq   
  402689:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402690:	48 8d 0d 69 52 00 00 	lea    0x5269(%rip),%rcx        # 407900 <__mingwthr_cs>
  402697:	ff 15 6f 5b 00 00    	callq  *0x5b6f(%rip)        # 40820c <__imp_EnterCriticalSection>
  40269d:	48 8b 0d 3c 52 00 00 	mov    0x523c(%rip),%rcx        # 4078e0 <key_dtor_list>
  4026a4:	48 85 c9             	test   %rcx,%rcx
  4026a7:	74 2a                	je     4026d3 <___w64_mingwthr_remove_key_dtor+0x63>
  4026a9:	31 d2                	xor    %edx,%edx
  4026ab:	eb 0e                	jmp    4026bb <___w64_mingwthr_remove_key_dtor+0x4b>
  4026ad:	0f 1f 00             	nopl   (%rax)
  4026b0:	48 89 ca             	mov    %rcx,%rdx
  4026b3:	48 85 c0             	test   %rax,%rax
  4026b6:	74 1b                	je     4026d3 <___w64_mingwthr_remove_key_dtor+0x63>
  4026b8:	48 89 c1             	mov    %rax,%rcx
  4026bb:	8b 01                	mov    (%rcx),%eax
  4026bd:	39 d8                	cmp    %ebx,%eax
  4026bf:	48 8b 41 10          	mov    0x10(%rcx),%rax
  4026c3:	75 eb                	jne    4026b0 <___w64_mingwthr_remove_key_dtor+0x40>
  4026c5:	48 85 d2             	test   %rdx,%rdx
  4026c8:	74 26                	je     4026f0 <___w64_mingwthr_remove_key_dtor+0x80>
  4026ca:	48 89 42 10          	mov    %rax,0x10(%rdx)
  4026ce:	e8 ad 05 00 00       	callq  402c80 <free>
  4026d3:	48 8d 0d 26 52 00 00 	lea    0x5226(%rip),%rcx        # 407900 <__mingwthr_cs>
  4026da:	ff 15 74 5b 00 00    	callq  *0x5b74(%rip)        # 408254 <__imp_LeaveCriticalSection>
  4026e0:	31 c0                	xor    %eax,%eax
  4026e2:	48 83 c4 20          	add    $0x20,%rsp
  4026e6:	5b                   	pop    %rbx
  4026e7:	c3                   	retq   
  4026e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4026ef:	00 
  4026f0:	48 89 05 e9 51 00 00 	mov    %rax,0x51e9(%rip)        # 4078e0 <key_dtor_list>
  4026f7:	eb d5                	jmp    4026ce <___w64_mingwthr_remove_key_dtor+0x5e>
  4026f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402700 <__mingw_TLScallback>:
  402700:	53                   	push   %rbx
  402701:	48 83 ec 20          	sub    $0x20,%rsp
  402705:	83 fa 02             	cmp    $0x2,%edx
  402708:	0f 84 c2 00 00 00    	je     4027d0 <__mingw_TLScallback+0xd0>
  40270e:	77 28                	ja     402738 <__mingw_TLScallback+0x38>
  402710:	85 d2                	test   %edx,%edx
  402712:	74 4c                	je     402760 <__mingw_TLScallback+0x60>
  402714:	8b 05 ce 51 00 00    	mov    0x51ce(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  40271a:	85 c0                	test   %eax,%eax
  40271c:	74 32                	je     402750 <__mingw_TLScallback+0x50>
  40271e:	c7 05 c0 51 00 00 01 	movl   $0x1,0x51c0(%rip)        # 4078e8 <__mingwthr_cs_init>
  402725:	00 00 00 
  402728:	b8 01 00 00 00       	mov    $0x1,%eax
  40272d:	48 83 c4 20          	add    $0x20,%rsp
  402731:	5b                   	pop    %rbx
  402732:	c3                   	retq   
  402733:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402738:	83 fa 03             	cmp    $0x3,%edx
  40273b:	75 eb                	jne    402728 <__mingw_TLScallback+0x28>
  40273d:	8b 05 a5 51 00 00    	mov    0x51a5(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402743:	85 c0                	test   %eax,%eax
  402745:	74 e1                	je     402728 <__mingw_TLScallback+0x28>
  402747:	e8 34 fe ff ff       	callq  402580 <__mingwthr_run_key_dtors.part.0>
  40274c:	eb da                	jmp    402728 <__mingw_TLScallback+0x28>
  40274e:	66 90                	xchg   %ax,%ax
  402750:	48 8d 0d a9 51 00 00 	lea    0x51a9(%rip),%rcx        # 407900 <__mingwthr_cs>
  402757:	ff 15 ef 5a 00 00    	callq  *0x5aef(%rip)        # 40824c <__imp_InitializeCriticalSection>
  40275d:	eb bf                	jmp    40271e <__mingw_TLScallback+0x1e>
  40275f:	90                   	nop
  402760:	8b 05 82 51 00 00    	mov    0x5182(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402766:	85 c0                	test   %eax,%eax
  402768:	74 05                	je     40276f <__mingw_TLScallback+0x6f>
  40276a:	e8 11 fe ff ff       	callq  402580 <__mingwthr_run_key_dtors.part.0>
  40276f:	8b 05 73 51 00 00    	mov    0x5173(%rip),%eax        # 4078e8 <__mingwthr_cs_init>
  402775:	83 f8 01             	cmp    $0x1,%eax
  402778:	75 ae                	jne    402728 <__mingw_TLScallback+0x28>
  40277a:	48 8b 1d 5f 51 00 00 	mov    0x515f(%rip),%rbx        # 4078e0 <key_dtor_list>
  402781:	48 85 db             	test   %rbx,%rbx
  402784:	74 1b                	je     4027a1 <__mingw_TLScallback+0xa1>
  402786:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40278d:	00 00 00 
  402790:	48 89 d9             	mov    %rbx,%rcx
  402793:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  402797:	e8 e4 04 00 00       	callq  402c80 <free>
  40279c:	48 85 db             	test   %rbx,%rbx
  40279f:	75 ef                	jne    402790 <__mingw_TLScallback+0x90>
  4027a1:	48 8d 0d 58 51 00 00 	lea    0x5158(%rip),%rcx        # 407900 <__mingwthr_cs>
  4027a8:	48 c7 05 2d 51 00 00 	movq   $0x0,0x512d(%rip)        # 4078e0 <key_dtor_list>
  4027af:	00 00 00 00 
  4027b3:	c7 05 2b 51 00 00 00 	movl   $0x0,0x512b(%rip)        # 4078e8 <__mingwthr_cs_init>
  4027ba:	00 00 00 
  4027bd:	ff 15 41 5a 00 00    	callq  *0x5a41(%rip)        # 408204 <__IAT_start__>
  4027c3:	e9 60 ff ff ff       	jmpq   402728 <__mingw_TLScallback+0x28>
  4027c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4027cf:	00 
  4027d0:	e8 5b f3 ff ff       	callq  401b30 <_fpreset>
  4027d5:	b8 01 00 00 00       	mov    $0x1,%eax
  4027da:	48 83 c4 20          	add    $0x20,%rsp
  4027de:	5b                   	pop    %rbx
  4027df:	c3                   	retq   

00000000004027e0 <_ValidateImageBase.part.0>:
  4027e0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4027e4:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  4027e8:	31 c0                	xor    %eax,%eax
  4027ea:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  4027f0:	75 0b                	jne    4027fd <_ValidateImageBase.part.0+0x1d>
  4027f2:	31 c0                	xor    %eax,%eax
  4027f4:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  4027fa:	0f 94 c0             	sete   %al
  4027fd:	c3                   	retq   
  4027fe:	66 90                	xchg   %ax,%ax

0000000000402800 <_ValidateImageBase>:
  402800:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402805:	75 09                	jne    402810 <_ValidateImageBase+0x10>
  402807:	eb d7                	jmp    4027e0 <_ValidateImageBase.part.0>
  402809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402810:	31 c0                	xor    %eax,%eax
  402812:	c3                   	retq   
  402813:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40281a:	00 00 00 00 
  40281e:	66 90                	xchg   %ax,%ax

0000000000402820 <_FindPESection>:
  402820:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  402824:	48 01 c1             	add    %rax,%rcx
  402827:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40282b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  402830:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402834:	85 c9                	test   %ecx,%ecx
  402836:	74 2d                	je     402865 <_FindPESection+0x45>
  402838:	83 e9 01             	sub    $0x1,%ecx
  40283b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40283f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  402844:	0f 1f 40 00          	nopl   0x0(%rax)
  402848:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  40284c:	4c 89 c1             	mov    %r8,%rcx
  40284f:	49 39 d0             	cmp    %rdx,%r8
  402852:	77 08                	ja     40285c <_FindPESection+0x3c>
  402854:	03 48 08             	add    0x8(%rax),%ecx
  402857:	48 39 d1             	cmp    %rdx,%rcx
  40285a:	77 0b                	ja     402867 <_FindPESection+0x47>
  40285c:	48 83 c0 28          	add    $0x28,%rax
  402860:	4c 39 c8             	cmp    %r9,%rax
  402863:	75 e3                	jne    402848 <_FindPESection+0x28>
  402865:	31 c0                	xor    %eax,%eax
  402867:	c3                   	retq   
  402868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40286f:	00 

0000000000402870 <_FindPESectionByName>:
  402870:	41 54                	push   %r12
  402872:	56                   	push   %rsi
  402873:	53                   	push   %rbx
  402874:	48 83 ec 20          	sub    $0x20,%rsp
  402878:	48 89 cb             	mov    %rcx,%rbx
  40287b:	e8 b0 03 00 00       	callq  402c30 <strlen>
  402880:	48 83 f8 08          	cmp    $0x8,%rax
  402884:	77 7a                	ja     402900 <_FindPESectionByName+0x90>
  402886:	48 8b 0d e3 1b 00 00 	mov    0x1be3(%rip),%rcx        # 404470 <.refptr.__image_base__>
  40288d:	45 31 e4             	xor    %r12d,%r12d
  402890:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402895:	75 57                	jne    4028ee <_FindPESectionByName+0x7e>
  402897:	e8 44 ff ff ff       	callq  4027e0 <_ValidateImageBase.part.0>
  40289c:	85 c0                	test   %eax,%eax
  40289e:	74 4e                	je     4028ee <_FindPESectionByName+0x7e>
  4028a0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4028a4:	48 01 c1             	add    %rax,%rcx
  4028a7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4028ab:	4c 8d 64 01 18       	lea    0x18(%rcx,%rax,1),%r12
  4028b0:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4028b4:	85 c0                	test   %eax,%eax
  4028b6:	74 48                	je     402900 <_FindPESectionByName+0x90>
  4028b8:	83 e8 01             	sub    $0x1,%eax
  4028bb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4028bf:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
  4028c4:	eb 13                	jmp    4028d9 <_FindPESectionByName+0x69>
  4028c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4028cd:	00 00 00 
  4028d0:	49 83 c4 28          	add    $0x28,%r12
  4028d4:	49 39 f4             	cmp    %rsi,%r12
  4028d7:	74 27                	je     402900 <_FindPESectionByName+0x90>
  4028d9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  4028df:	48 89 da             	mov    %rbx,%rdx
  4028e2:	4c 89 e1             	mov    %r12,%rcx
  4028e5:	e8 3e 03 00 00       	callq  402c28 <strncmp>
  4028ea:	85 c0                	test   %eax,%eax
  4028ec:	75 e2                	jne    4028d0 <_FindPESectionByName+0x60>
  4028ee:	4c 89 e0             	mov    %r12,%rax
  4028f1:	48 83 c4 20          	add    $0x20,%rsp
  4028f5:	5b                   	pop    %rbx
  4028f6:	5e                   	pop    %rsi
  4028f7:	41 5c                	pop    %r12
  4028f9:	c3                   	retq   
  4028fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402900:	45 31 e4             	xor    %r12d,%r12d
  402903:	4c 89 e0             	mov    %r12,%rax
  402906:	48 83 c4 20          	add    $0x20,%rsp
  40290a:	5b                   	pop    %rbx
  40290b:	5e                   	pop    %rsi
  40290c:	41 5c                	pop    %r12
  40290e:	c3                   	retq   
  40290f:	90                   	nop

0000000000402910 <__mingw_GetSectionForAddress>:
  402910:	48 83 ec 28          	sub    $0x28,%rsp
  402914:	4c 8b 15 55 1b 00 00 	mov    0x1b55(%rip),%r10        # 404470 <.refptr.__image_base__>
  40291b:	45 31 c0             	xor    %r8d,%r8d
  40291e:	66 41 81 3a 4d 5a    	cmpw   $0x5a4d,(%r10)
  402924:	49 89 c9             	mov    %rcx,%r9
  402927:	75 60                	jne    402989 <__mingw_GetSectionForAddress+0x79>
  402929:	4c 89 d1             	mov    %r10,%rcx
  40292c:	e8 af fe ff ff       	callq  4027e0 <_ValidateImageBase.part.0>
  402931:	85 c0                	test   %eax,%eax
  402933:	74 54                	je     402989 <__mingw_GetSectionForAddress+0x79>
  402935:	49 63 42 3c          	movslq 0x3c(%r10),%rax
  402939:	4c 89 c9             	mov    %r9,%rcx
  40293c:	4c 29 d1             	sub    %r10,%rcx
  40293f:	49 01 c2             	add    %rax,%r10
  402942:	41 0f b7 42 14       	movzwl 0x14(%r10),%eax
  402947:	4d 8d 44 02 18       	lea    0x18(%r10,%rax,1),%r8
  40294c:	41 0f b7 42 06       	movzwl 0x6(%r10),%eax
  402951:	85 c0                	test   %eax,%eax
  402953:	74 31                	je     402986 <__mingw_GetSectionForAddress+0x76>
  402955:	83 e8 01             	sub    $0x1,%eax
  402958:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40295c:	4d 8d 4c c0 28       	lea    0x28(%r8,%rax,8),%r9
  402961:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402968:	41 8b 50 0c          	mov    0xc(%r8),%edx
  40296c:	48 89 d0             	mov    %rdx,%rax
  40296f:	48 39 d1             	cmp    %rdx,%rcx
  402972:	72 09                	jb     40297d <__mingw_GetSectionForAddress+0x6d>
  402974:	41 03 40 08          	add    0x8(%r8),%eax
  402978:	48 39 c1             	cmp    %rax,%rcx
  40297b:	72 0c                	jb     402989 <__mingw_GetSectionForAddress+0x79>
  40297d:	49 83 c0 28          	add    $0x28,%r8
  402981:	4d 39 c8             	cmp    %r9,%r8
  402984:	75 e2                	jne    402968 <__mingw_GetSectionForAddress+0x58>
  402986:	45 31 c0             	xor    %r8d,%r8d
  402989:	4c 89 c0             	mov    %r8,%rax
  40298c:	48 83 c4 28          	add    $0x28,%rsp
  402990:	c3                   	retq   
  402991:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402998:	00 00 00 00 
  40299c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004029a0 <__mingw_GetSectionCount>:
  4029a0:	48 83 ec 28          	sub    $0x28,%rsp
  4029a4:	48 8b 0d c5 1a 00 00 	mov    0x1ac5(%rip),%rcx        # 404470 <.refptr.__image_base__>
  4029ab:	31 c0                	xor    %eax,%eax
  4029ad:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4029b2:	75 12                	jne    4029c6 <__mingw_GetSectionCount+0x26>
  4029b4:	e8 27 fe ff ff       	callq  4027e0 <_ValidateImageBase.part.0>
  4029b9:	85 c0                	test   %eax,%eax
  4029bb:	74 09                	je     4029c6 <__mingw_GetSectionCount+0x26>
  4029bd:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4029c1:	0f b7 44 08 06       	movzwl 0x6(%rax,%rcx,1),%eax
  4029c6:	48 83 c4 28          	add    $0x28,%rsp
  4029ca:	c3                   	retq   
  4029cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004029d0 <_FindPESectionExec>:
  4029d0:	48 83 ec 28          	sub    $0x28,%rsp
  4029d4:	45 31 c0             	xor    %r8d,%r8d
  4029d7:	49 89 c9             	mov    %rcx,%r9
  4029da:	48 8b 0d 8f 1a 00 00 	mov    0x1a8f(%rip),%rcx        # 404470 <.refptr.__image_base__>
  4029e1:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  4029e6:	75 4c                	jne    402a34 <_FindPESectionExec+0x64>
  4029e8:	e8 f3 fd ff ff       	callq  4027e0 <_ValidateImageBase.part.0>
  4029ed:	85 c0                	test   %eax,%eax
  4029ef:	74 43                	je     402a34 <_FindPESectionExec+0x64>
  4029f1:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4029f5:	48 01 c1             	add    %rax,%rcx
  4029f8:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4029fc:	4c 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%r8
  402a01:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  402a05:	85 c0                	test   %eax,%eax
  402a07:	74 28                	je     402a31 <_FindPESectionExec+0x61>
  402a09:	83 e8 01             	sub    $0x1,%eax
  402a0c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402a10:	49 8d 44 c0 28       	lea    0x28(%r8,%rax,8),%rax
  402a15:	0f 1f 00             	nopl   (%rax)
  402a18:	41 f6 40 27 20       	testb  $0x20,0x27(%r8)
  402a1d:	74 09                	je     402a28 <_FindPESectionExec+0x58>
  402a1f:	4d 85 c9             	test   %r9,%r9
  402a22:	74 10                	je     402a34 <_FindPESectionExec+0x64>
  402a24:	49 83 e9 01          	sub    $0x1,%r9
  402a28:	49 83 c0 28          	add    $0x28,%r8
  402a2c:	49 39 c0             	cmp    %rax,%r8
  402a2f:	75 e7                	jne    402a18 <_FindPESectionExec+0x48>
  402a31:	45 31 c0             	xor    %r8d,%r8d
  402a34:	4c 89 c0             	mov    %r8,%rax
  402a37:	48 83 c4 28          	add    $0x28,%rsp
  402a3b:	c3                   	retq   
  402a3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402a40 <_GetPEImageBase>:
  402a40:	48 83 ec 28          	sub    $0x28,%rsp
  402a44:	48 8b 0d 25 1a 00 00 	mov    0x1a25(%rip),%rcx        # 404470 <.refptr.__image_base__>
  402a4b:	45 31 c0             	xor    %r8d,%r8d
  402a4e:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402a53:	75 0b                	jne    402a60 <_GetPEImageBase+0x20>
  402a55:	e8 86 fd ff ff       	callq  4027e0 <_ValidateImageBase.part.0>
  402a5a:	85 c0                	test   %eax,%eax
  402a5c:	4c 0f 45 c1          	cmovne %rcx,%r8
  402a60:	4c 89 c0             	mov    %r8,%rax
  402a63:	48 83 c4 28          	add    $0x28,%rsp
  402a67:	c3                   	retq   
  402a68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a6f:	00 

0000000000402a70 <_IsNonwritableInCurrentImage>:
  402a70:	48 83 ec 28          	sub    $0x28,%rsp
  402a74:	4c 8b 0d f5 19 00 00 	mov    0x19f5(%rip),%r9        # 404470 <.refptr.__image_base__>
  402a7b:	31 c0                	xor    %eax,%eax
  402a7d:	66 41 81 39 4d 5a    	cmpw   $0x5a4d,(%r9)
  402a83:	49 89 c8             	mov    %rcx,%r8
  402a86:	75 57                	jne    402adf <_IsNonwritableInCurrentImage+0x6f>
  402a88:	4c 89 c9             	mov    %r9,%rcx
  402a8b:	e8 50 fd ff ff       	callq  4027e0 <_ValidateImageBase.part.0>
  402a90:	85 c0                	test   %eax,%eax
  402a92:	74 4b                	je     402adf <_IsNonwritableInCurrentImage+0x6f>
  402a94:	49 63 41 3c          	movslq 0x3c(%r9),%rax
  402a98:	4c 89 c1             	mov    %r8,%rcx
  402a9b:	4c 29 c9             	sub    %r9,%rcx
  402a9e:	49 01 c1             	add    %rax,%r9
  402aa1:	41 0f b7 41 14       	movzwl 0x14(%r9),%eax
  402aa6:	41 0f b7 51 06       	movzwl 0x6(%r9),%edx
  402aab:	49 8d 44 01 18       	lea    0x18(%r9,%rax,1),%rax
  402ab0:	85 d2                	test   %edx,%edx
  402ab2:	74 29                	je     402add <_IsNonwritableInCurrentImage+0x6d>
  402ab4:	83 ea 01             	sub    $0x1,%edx
  402ab7:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  402abb:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402ac0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402ac4:	4c 89 c2             	mov    %r8,%rdx
  402ac7:	4c 39 c1             	cmp    %r8,%rcx
  402aca:	72 08                	jb     402ad4 <_IsNonwritableInCurrentImage+0x64>
  402acc:	03 50 08             	add    0x8(%rax),%edx
  402acf:	48 39 d1             	cmp    %rdx,%rcx
  402ad2:	72 14                	jb     402ae8 <_IsNonwritableInCurrentImage+0x78>
  402ad4:	48 83 c0 28          	add    $0x28,%rax
  402ad8:	4c 39 c8             	cmp    %r9,%rax
  402adb:	75 e3                	jne    402ac0 <_IsNonwritableInCurrentImage+0x50>
  402add:	31 c0                	xor    %eax,%eax
  402adf:	48 83 c4 28          	add    $0x28,%rsp
  402ae3:	c3                   	retq   
  402ae4:	0f 1f 40 00          	nopl   0x0(%rax)
  402ae8:	8b 40 24             	mov    0x24(%rax),%eax
  402aeb:	f7 d0                	not    %eax
  402aed:	c1 e8 1f             	shr    $0x1f,%eax
  402af0:	48 83 c4 28          	add    $0x28,%rsp
  402af4:	c3                   	retq   
  402af5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402afc:	00 00 00 00 

0000000000402b00 <__mingw_enum_import_library_names>:
  402b00:	48 83 ec 28          	sub    $0x28,%rsp
  402b04:	4c 8b 1d 65 19 00 00 	mov    0x1965(%rip),%r11        # 404470 <.refptr.__image_base__>
  402b0b:	45 31 c9             	xor    %r9d,%r9d
  402b0e:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  402b14:	41 89 c8             	mov    %ecx,%r8d
  402b17:	75 5f                	jne    402b78 <__mingw_enum_import_library_names+0x78>
  402b19:	4c 89 d9             	mov    %r11,%rcx
  402b1c:	e8 bf fc ff ff       	callq  4027e0 <_ValidateImageBase.part.0>
  402b21:	85 c0                	test   %eax,%eax
  402b23:	74 53                	je     402b78 <__mingw_enum_import_library_names+0x78>
  402b25:	49 63 4b 3c          	movslq 0x3c(%r11),%rcx
  402b29:	4c 01 d9             	add    %r11,%rcx
  402b2c:	8b 81 90 00 00 00    	mov    0x90(%rcx),%eax
  402b32:	85 c0                	test   %eax,%eax
  402b34:	74 42                	je     402b78 <__mingw_enum_import_library_names+0x78>
  402b36:	0f b7 51 14          	movzwl 0x14(%rcx),%edx
  402b3a:	48 8d 54 11 18       	lea    0x18(%rcx,%rdx,1),%rdx
  402b3f:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  402b43:	85 c9                	test   %ecx,%ecx
  402b45:	74 31                	je     402b78 <__mingw_enum_import_library_names+0x78>
  402b47:	83 e9 01             	sub    $0x1,%ecx
  402b4a:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  402b4e:	4c 8d 54 ca 28       	lea    0x28(%rdx,%rcx,8),%r10
  402b53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402b58:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
  402b5c:	4c 89 c9             	mov    %r9,%rcx
  402b5f:	4c 39 c8             	cmp    %r9,%rax
  402b62:	72 08                	jb     402b6c <__mingw_enum_import_library_names+0x6c>
  402b64:	03 4a 08             	add    0x8(%rdx),%ecx
  402b67:	48 39 c8             	cmp    %rcx,%rax
  402b6a:	72 14                	jb     402b80 <__mingw_enum_import_library_names+0x80>
  402b6c:	48 83 c2 28          	add    $0x28,%rdx
  402b70:	4c 39 d2             	cmp    %r10,%rdx
  402b73:	75 e3                	jne    402b58 <__mingw_enum_import_library_names+0x58>
  402b75:	45 31 c9             	xor    %r9d,%r9d
  402b78:	4c 89 c8             	mov    %r9,%rax
  402b7b:	48 83 c4 28          	add    $0x28,%rsp
  402b7f:	c3                   	retq   
  402b80:	4c 01 d8             	add    %r11,%rax
  402b83:	eb 0b                	jmp    402b90 <__mingw_enum_import_library_names+0x90>
  402b85:	0f 1f 00             	nopl   (%rax)
  402b88:	41 83 e8 01          	sub    $0x1,%r8d
  402b8c:	48 83 c0 14          	add    $0x14,%rax
  402b90:	8b 48 04             	mov    0x4(%rax),%ecx
  402b93:	85 c9                	test   %ecx,%ecx
  402b95:	75 07                	jne    402b9e <__mingw_enum_import_library_names+0x9e>
  402b97:	8b 50 0c             	mov    0xc(%rax),%edx
  402b9a:	85 d2                	test   %edx,%edx
  402b9c:	74 d7                	je     402b75 <__mingw_enum_import_library_names+0x75>
  402b9e:	45 85 c0             	test   %r8d,%r8d
  402ba1:	7f e5                	jg     402b88 <__mingw_enum_import_library_names+0x88>
  402ba3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
  402ba7:	4d 01 d9             	add    %r11,%r9
  402baa:	4c 89 c8             	mov    %r9,%rax
  402bad:	48 83 c4 28          	add    $0x28,%rsp
  402bb1:	c3                   	retq   
  402bb2:	90                   	nop
  402bb3:	90                   	nop
  402bb4:	90                   	nop
  402bb5:	90                   	nop
  402bb6:	90                   	nop
  402bb7:	90                   	nop
  402bb8:	90                   	nop
  402bb9:	90                   	nop
  402bba:	90                   	nop
  402bbb:	90                   	nop
  402bbc:	90                   	nop
  402bbd:	90                   	nop
  402bbe:	90                   	nop
  402bbf:	90                   	nop

0000000000402bc0 <___chkstk_ms>:
  402bc0:	51                   	push   %rcx
  402bc1:	50                   	push   %rax
  402bc2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402bc8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  402bcd:	72 19                	jb     402be8 <___chkstk_ms+0x28>
  402bcf:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402bd6:	48 83 09 00          	orq    $0x0,(%rcx)
  402bda:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402be0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402be6:	77 e7                	ja     402bcf <___chkstk_ms+0xf>
  402be8:	48 29 c1             	sub    %rax,%rcx
  402beb:	48 83 09 00          	orq    $0x0,(%rcx)
  402bef:	58                   	pop    %rax
  402bf0:	59                   	pop    %rcx
  402bf1:	c3                   	retq   
  402bf2:	90                   	nop
  402bf3:	90                   	nop
  402bf4:	90                   	nop
  402bf5:	90                   	nop
  402bf6:	90                   	nop
  402bf7:	90                   	nop
  402bf8:	90                   	nop
  402bf9:	90                   	nop
  402bfa:	90                   	nop
  402bfb:	90                   	nop
  402bfc:	90                   	nop
  402bfd:	90                   	nop
  402bfe:	90                   	nop
  402bff:	90                   	nop

0000000000402c00 <sleep>:
  402c00:	48 83 ec 28          	sub    $0x28,%rsp
  402c04:	69 c9 e8 03 00 00    	imul   $0x3e8,%ecx,%ecx
  402c0a:	ff 15 84 56 00 00    	callq  *0x5684(%rip)        # 408294 <__imp_Sleep>
  402c10:	31 c0                	xor    %eax,%eax
  402c12:	48 83 c4 28          	add    $0x28,%rsp
  402c16:	c3                   	retq   
  402c17:	90                   	nop
  402c18:	90                   	nop
  402c19:	90                   	nop
  402c1a:	90                   	nop
  402c1b:	90                   	nop
  402c1c:	90                   	nop
  402c1d:	90                   	nop
  402c1e:	90                   	nop
  402c1f:	90                   	nop

0000000000402c20 <vfprintf>:
  402c20:	ff 25 96 57 00 00    	jmpq   *0x5796(%rip)        # 4083bc <__imp_vfprintf>
  402c26:	90                   	nop
  402c27:	90                   	nop

0000000000402c28 <strncmp>:
  402c28:	ff 25 86 57 00 00    	jmpq   *0x5786(%rip)        # 4083b4 <__imp_strncmp>
  402c2e:	90                   	nop
  402c2f:	90                   	nop

0000000000402c30 <strlen>:
  402c30:	ff 25 76 57 00 00    	jmpq   *0x5776(%rip)        # 4083ac <__imp_strlen>
  402c36:	90                   	nop
  402c37:	90                   	nop

0000000000402c38 <srand>:
  402c38:	ff 25 66 57 00 00    	jmpq   *0x5766(%rip)        # 4083a4 <__imp_srand>
  402c3e:	90                   	nop
  402c3f:	90                   	nop

0000000000402c40 <signal>:
  402c40:	ff 25 56 57 00 00    	jmpq   *0x5756(%rip)        # 40839c <__imp_signal>
  402c46:	90                   	nop
  402c47:	90                   	nop

0000000000402c48 <scanf>:
  402c48:	ff 25 46 57 00 00    	jmpq   *0x5746(%rip)        # 408394 <__imp_scanf>
  402c4e:	90                   	nop
  402c4f:	90                   	nop

0000000000402c50 <rand>:
  402c50:	ff 25 36 57 00 00    	jmpq   *0x5736(%rip)        # 40838c <__imp_rand>
  402c56:	90                   	nop
  402c57:	90                   	nop

0000000000402c58 <puts>:
  402c58:	ff 25 26 57 00 00    	jmpq   *0x5726(%rip)        # 408384 <__imp_puts>
  402c5e:	90                   	nop
  402c5f:	90                   	nop

0000000000402c60 <printf>:
  402c60:	ff 25 16 57 00 00    	jmpq   *0x5716(%rip)        # 40837c <__imp_printf>
  402c66:	90                   	nop
  402c67:	90                   	nop

0000000000402c68 <memcpy>:
  402c68:	ff 25 06 57 00 00    	jmpq   *0x5706(%rip)        # 408374 <__imp_memcpy>
  402c6e:	90                   	nop
  402c6f:	90                   	nop

0000000000402c70 <malloc>:
  402c70:	ff 25 f6 56 00 00    	jmpq   *0x56f6(%rip)        # 40836c <__imp_malloc>
  402c76:	90                   	nop
  402c77:	90                   	nop

0000000000402c78 <fwrite>:
  402c78:	ff 25 e6 56 00 00    	jmpq   *0x56e6(%rip)        # 408364 <__imp_fwrite>
  402c7e:	90                   	nop
  402c7f:	90                   	nop

0000000000402c80 <free>:
  402c80:	ff 25 d6 56 00 00    	jmpq   *0x56d6(%rip)        # 40835c <__imp_free>
  402c86:	90                   	nop
  402c87:	90                   	nop

0000000000402c88 <fprintf>:
  402c88:	ff 25 c6 56 00 00    	jmpq   *0x56c6(%rip)        # 408354 <__imp_fprintf>
  402c8e:	90                   	nop
  402c8f:	90                   	nop

0000000000402c90 <exit>:
  402c90:	ff 25 b6 56 00 00    	jmpq   *0x56b6(%rip)        # 40834c <__imp_exit>
  402c96:	90                   	nop
  402c97:	90                   	nop

0000000000402c98 <calloc>:
  402c98:	ff 25 a6 56 00 00    	jmpq   *0x56a6(%rip)        # 408344 <__imp_calloc>
  402c9e:	90                   	nop
  402c9f:	90                   	nop

0000000000402ca0 <abort>:
  402ca0:	ff 25 96 56 00 00    	jmpq   *0x5696(%rip)        # 40833c <__imp_abort>
  402ca6:	90                   	nop
  402ca7:	90                   	nop

0000000000402ca8 <_time64>:
  402ca8:	ff 25 86 56 00 00    	jmpq   *0x5686(%rip)        # 408334 <__imp__time64>
  402cae:	90                   	nop
  402caf:	90                   	nop

0000000000402cb0 <_onexit>:
  402cb0:	ff 25 76 56 00 00    	jmpq   *0x5676(%rip)        # 40832c <__imp__onexit>
  402cb6:	90                   	nop
  402cb7:	90                   	nop

0000000000402cb8 <_initterm>:
  402cb8:	ff 25 66 56 00 00    	jmpq   *0x5666(%rip)        # 408324 <__imp__initterm>
  402cbe:	90                   	nop
  402cbf:	90                   	nop

0000000000402cc0 <_cexit>:
  402cc0:	ff 25 4e 56 00 00    	jmpq   *0x564e(%rip)        # 408314 <__imp__cexit>
  402cc6:	90                   	nop
  402cc7:	90                   	nop

0000000000402cc8 <_amsg_exit>:
  402cc8:	ff 25 3e 56 00 00    	jmpq   *0x563e(%rip)        # 40830c <__imp__amsg_exit>
  402cce:	90                   	nop
  402ccf:	90                   	nop

0000000000402cd0 <__setusermatherr>:
  402cd0:	ff 25 26 56 00 00    	jmpq   *0x5626(%rip)        # 4082fc <__imp___setusermatherr>
  402cd6:	90                   	nop
  402cd7:	90                   	nop

0000000000402cd8 <__set_app_type>:
  402cd8:	ff 25 16 56 00 00    	jmpq   *0x5616(%rip)        # 4082f4 <__imp___set_app_type>
  402cde:	90                   	nop
  402cdf:	90                   	nop

0000000000402ce0 <__lconv_init>:
  402ce0:	ff 25 06 56 00 00    	jmpq   *0x5606(%rip)        # 4082ec <__imp___lconv_init>
  402ce6:	90                   	nop
  402ce7:	90                   	nop

0000000000402ce8 <__getmainargs>:
  402ce8:	ff 25 e6 55 00 00    	jmpq   *0x55e6(%rip)        # 4082d4 <__imp___getmainargs>
  402cee:	90                   	nop
  402cef:	90                   	nop

0000000000402cf0 <__C_specific_handler>:
  402cf0:	ff 25 d6 55 00 00    	jmpq   *0x55d6(%rip)        # 4082cc <__imp___C_specific_handler>
  402cf6:	90                   	nop
  402cf7:	90                   	nop
  402cf8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402cff:	00 

0000000000402d00 <__acrt_iob_func>:
  402d00:	53                   	push   %rbx
  402d01:	48 83 ec 20          	sub    $0x20,%rsp
  402d05:	89 cb                	mov    %ecx,%ebx
  402d07:	e8 54 00 00 00       	callq  402d60 <__iob_func>
  402d0c:	89 d9                	mov    %ebx,%ecx
  402d0e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402d12:	48 c1 e2 04          	shl    $0x4,%rdx
  402d16:	48 01 d0             	add    %rdx,%rax
  402d19:	48 83 c4 20          	add    $0x20,%rsp
  402d1d:	5b                   	pop    %rbx
  402d1e:	c3                   	retq   
  402d1f:	90                   	nop

0000000000402d20 <_get_invalid_parameter_handler>:
  402d20:	48 8b 05 29 4c 00 00 	mov    0x4c29(%rip),%rax        # 407950 <handler>
  402d27:	c3                   	retq   
  402d28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402d2f:	00 

0000000000402d30 <_set_invalid_parameter_handler>:
  402d30:	48 89 c8             	mov    %rcx,%rax
  402d33:	48 87 05 16 4c 00 00 	xchg   %rax,0x4c16(%rip)        # 407950 <handler>
  402d3a:	c3                   	retq   
  402d3b:	90                   	nop
  402d3c:	90                   	nop
  402d3d:	90                   	nop
  402d3e:	90                   	nop
  402d3f:	90                   	nop

0000000000402d40 <__p__acmdln>:
  402d40:	48 8b 05 49 17 00 00 	mov    0x1749(%rip),%rax        # 404490 <.refptr.__imp__acmdln>
  402d47:	48 8b 00             	mov    (%rax),%rax
  402d4a:	c3                   	retq   
  402d4b:	90                   	nop
  402d4c:	90                   	nop
  402d4d:	90                   	nop
  402d4e:	90                   	nop
  402d4f:	90                   	nop

0000000000402d50 <__p__fmode>:
  402d50:	48 8b 05 49 17 00 00 	mov    0x1749(%rip),%rax        # 4044a0 <.refptr.__imp__fmode>
  402d57:	48 8b 00             	mov    (%rax),%rax
  402d5a:	c3                   	retq   
  402d5b:	90                   	nop
  402d5c:	90                   	nop
  402d5d:	90                   	nop
  402d5e:	90                   	nop
  402d5f:	90                   	nop

0000000000402d60 <__iob_func>:
  402d60:	ff 25 7e 55 00 00    	jmpq   *0x557e(%rip)        # 4082e4 <__imp___iob_func>
  402d66:	90                   	nop
  402d67:	90                   	nop
  402d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402d6f:	00 

0000000000402d70 <VirtualQuery>:
  402d70:	ff 25 46 55 00 00    	jmpq   *0x5546(%rip)        # 4082bc <__imp_VirtualQuery>
  402d76:	90                   	nop
  402d77:	90                   	nop

0000000000402d78 <VirtualProtect>:
  402d78:	ff 25 36 55 00 00    	jmpq   *0x5536(%rip)        # 4082b4 <__imp_VirtualProtect>
  402d7e:	90                   	nop
  402d7f:	90                   	nop

0000000000402d80 <UnhandledExceptionFilter>:
  402d80:	ff 25 26 55 00 00    	jmpq   *0x5526(%rip)        # 4082ac <__imp_UnhandledExceptionFilter>
  402d86:	90                   	nop
  402d87:	90                   	nop

0000000000402d88 <TlsGetValue>:
  402d88:	ff 25 16 55 00 00    	jmpq   *0x5516(%rip)        # 4082a4 <__imp_TlsGetValue>
  402d8e:	90                   	nop
  402d8f:	90                   	nop

0000000000402d90 <TerminateProcess>:
  402d90:	ff 25 06 55 00 00    	jmpq   *0x5506(%rip)        # 40829c <__imp_TerminateProcess>
  402d96:	90                   	nop
  402d97:	90                   	nop

0000000000402d98 <Sleep>:
  402d98:	ff 25 f6 54 00 00    	jmpq   *0x54f6(%rip)        # 408294 <__imp_Sleep>
  402d9e:	90                   	nop
  402d9f:	90                   	nop

0000000000402da0 <SetUnhandledExceptionFilter>:
  402da0:	ff 25 e6 54 00 00    	jmpq   *0x54e6(%rip)        # 40828c <__imp_SetUnhandledExceptionFilter>
  402da6:	90                   	nop
  402da7:	90                   	nop

0000000000402da8 <SetConsoleTitleA>:
  402da8:	ff 25 d6 54 00 00    	jmpq   *0x54d6(%rip)        # 408284 <__imp_SetConsoleTitleA>
  402dae:	90                   	nop
  402daf:	90                   	nop

0000000000402db0 <RtlVirtualUnwind>:
  402db0:	ff 25 c6 54 00 00    	jmpq   *0x54c6(%rip)        # 40827c <__imp_RtlVirtualUnwind>
  402db6:	90                   	nop
  402db7:	90                   	nop

0000000000402db8 <RtlLookupFunctionEntry>:
  402db8:	ff 25 b6 54 00 00    	jmpq   *0x54b6(%rip)        # 408274 <__imp_RtlLookupFunctionEntry>
  402dbe:	90                   	nop
  402dbf:	90                   	nop

0000000000402dc0 <RtlCaptureContext>:
  402dc0:	ff 25 a6 54 00 00    	jmpq   *0x54a6(%rip)        # 40826c <__imp_RtlCaptureContext>
  402dc6:	90                   	nop
  402dc7:	90                   	nop

0000000000402dc8 <RtlAddFunctionTable>:
  402dc8:	ff 25 96 54 00 00    	jmpq   *0x5496(%rip)        # 408264 <__imp_RtlAddFunctionTable>
  402dce:	90                   	nop
  402dcf:	90                   	nop

0000000000402dd0 <QueryPerformanceCounter>:
  402dd0:	ff 25 86 54 00 00    	jmpq   *0x5486(%rip)        # 40825c <__imp_QueryPerformanceCounter>
  402dd6:	90                   	nop
  402dd7:	90                   	nop

0000000000402dd8 <LeaveCriticalSection>:
  402dd8:	ff 25 76 54 00 00    	jmpq   *0x5476(%rip)        # 408254 <__imp_LeaveCriticalSection>
  402dde:	90                   	nop
  402ddf:	90                   	nop

0000000000402de0 <InitializeCriticalSection>:
  402de0:	ff 25 66 54 00 00    	jmpq   *0x5466(%rip)        # 40824c <__imp_InitializeCriticalSection>
  402de6:	90                   	nop
  402de7:	90                   	nop

0000000000402de8 <GetTickCount>:
  402de8:	ff 25 56 54 00 00    	jmpq   *0x5456(%rip)        # 408244 <__imp_GetTickCount>
  402dee:	90                   	nop
  402def:	90                   	nop

0000000000402df0 <GetSystemTimeAsFileTime>:
  402df0:	ff 25 46 54 00 00    	jmpq   *0x5446(%rip)        # 40823c <__imp_GetSystemTimeAsFileTime>
  402df6:	90                   	nop
  402df7:	90                   	nop

0000000000402df8 <GetStartupInfoA>:
  402df8:	ff 25 36 54 00 00    	jmpq   *0x5436(%rip)        # 408234 <__imp_GetStartupInfoA>
  402dfe:	90                   	nop
  402dff:	90                   	nop

0000000000402e00 <GetLastError>:
  402e00:	ff 25 26 54 00 00    	jmpq   *0x5426(%rip)        # 40822c <__imp_GetLastError>
  402e06:	90                   	nop
  402e07:	90                   	nop

0000000000402e08 <GetCurrentThreadId>:
  402e08:	ff 25 16 54 00 00    	jmpq   *0x5416(%rip)        # 408224 <__imp_GetCurrentThreadId>
  402e0e:	90                   	nop
  402e0f:	90                   	nop

0000000000402e10 <GetCurrentProcessId>:
  402e10:	ff 25 06 54 00 00    	jmpq   *0x5406(%rip)        # 40821c <__imp_GetCurrentProcessId>
  402e16:	90                   	nop
  402e17:	90                   	nop

0000000000402e18 <GetCurrentProcess>:
  402e18:	ff 25 f6 53 00 00    	jmpq   *0x53f6(%rip)        # 408214 <__imp_GetCurrentProcess>
  402e1e:	90                   	nop
  402e1f:	90                   	nop

0000000000402e20 <EnterCriticalSection>:
  402e20:	ff 25 e6 53 00 00    	jmpq   *0x53e6(%rip)        # 40820c <__imp_EnterCriticalSection>
  402e26:	90                   	nop
  402e27:	90                   	nop

0000000000402e28 <DeleteCriticalSection>:
  402e28:	ff 25 d6 53 00 00    	jmpq   *0x53d6(%rip)        # 408204 <__IAT_start__>
  402e2e:	90                   	nop
  402e2f:	90                   	nop

0000000000402e30 <register_frame_ctor>:
  402e30:	e9 0b e7 ff ff       	jmpq   401540 <__gcc_register_frame>
  402e35:	90                   	nop
  402e36:	90                   	nop
  402e37:	90                   	nop
  402e38:	90                   	nop
  402e39:	90                   	nop
  402e3a:	90                   	nop
  402e3b:	90                   	nop
  402e3c:	90                   	nop
  402e3d:	90                   	nop
  402e3e:	90                   	nop
  402e3f:	90                   	nop

0000000000402e40 <__CTOR_LIST__>:
  402e40:	ff                   	(bad)  
  402e41:	ff                   	(bad)  
  402e42:	ff                   	(bad)  
  402e43:	ff                   	(bad)  
  402e44:	ff                   	(bad)  
  402e45:	ff                   	(bad)  
  402e46:	ff                   	(bad)  
  402e47:	ff                   	.byte 0xff

0000000000402e48 <.ctors.65535>:
  402e48:	30 2e                	xor    %ch,(%rsi)
  402e4a:	40 00 00             	add    %al,(%rax)
	...

0000000000402e58 <__DTOR_LIST__>:
  402e58:	ff                   	(bad)  
  402e59:	ff                   	(bad)  
  402e5a:	ff                   	(bad)  
  402e5b:	ff                   	(bad)  
  402e5c:	ff                   	(bad)  
  402e5d:	ff                   	(bad)  
  402e5e:	ff                   	(bad)  
  402e5f:	ff 00                	incl   (%rax)
  402e61:	00 00                	add    %al,(%rax)
  402e63:	00 00                	add    %al,(%rax)
  402e65:	00 00                	add    %al,(%rax)
	...
