
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	pushq  0x2f6a(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmpq *0x2f6b(%rip)        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop

Disassembly of section .plt.got:

0000000000001080 <__cxa_finalize@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 3d 2f 00 00 	bnd jmpq *0x2f3d(%rip)        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001090 <__cxa_atexit@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 05 2f 00 00 	bnd jmpq *0x2f05(%rip)        # 3fa0 <__cxa_atexit@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010a0 <_ZNSolsEPFRSoS_E@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 fd 2e 00 00 	bnd jmpq *0x2efd(%rip)        # 3fa8 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    10ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010b0 <_ZNSt8ios_base4InitC1Ev@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 f5 2e 00 00 	bnd jmpq *0x2ef5(%rip)        # 3fb0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    10bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010c0 <_ZNSolsEi@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 ed 2e 00 00 	bnd jmpq *0x2eed(%rip)        # 3fb8 <_ZNSolsEi@GLIBCXX_3.4>
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010d0 <_ZNSolsEd@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 e5 2e 00 00 	bnd jmpq *0x2ee5(%rip)        # 3fc0 <_ZNSolsEd@GLIBCXX_3.4>
    10db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	4c 8d 05 66 02 00 00 	lea    0x266(%rip),%r8        # 1360 <__libc_csu_fini>
    10fa:	48 8d 0d ef 01 00 00 	lea    0x1ef(%rip),%rcx        # 12f0 <__libc_csu_init>
    1101:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 11c9 <main>
    1108:	ff 15 d2 2e 00 00    	callq  *0x2ed2(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    110e:	f4                   	hlt    
    110f:	90                   	nop

0000000000001110 <deregister_tm_clones>:
    1110:	48 8d 3d f9 2e 00 00 	lea    0x2ef9(%rip),%rdi        # 4010 <__TMC_END__>
    1117:	48 8d 05 f2 2e 00 00 	lea    0x2ef2(%rip),%rax        # 4010 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <deregister_tm_clones+0x28>
    1123:	48 8b 05 ae 2e 00 00 	mov    0x2eae(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <deregister_tm_clones+0x28>
    112f:	ff e0                	jmpq   *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	retq   
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <register_tm_clones>:
    1140:	48 8d 3d c9 2e 00 00 	lea    0x2ec9(%rip),%rdi        # 4010 <__TMC_END__>
    1147:	48 8d 35 c2 2e 00 00 	lea    0x2ec2(%rip),%rsi        # 4010 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    %rsi
    1162:	74 14                	je     1178 <register_tm_clones+0x38>
    1164:	48 8b 05 85 2e 00 00 	mov    0x2e85(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <register_tm_clones+0x38>
    1170:	ff e0                	jmpq   *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	retq   
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <__do_global_dtors_aux>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	80 3d c5 2f 00 00 00 	cmpb   $0x0,0x2fc5(%rip)        # 4150 <completed.8060>
    118b:	75 2b                	jne    11b8 <__do_global_dtors_aux+0x38>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 32 2e 00 00 	cmpq   $0x0,0x2e32(%rip)        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0c                	je     11a7 <__do_global_dtors_aux+0x27>
    119b:	48 8b 3d 66 2e 00 00 	mov    0x2e66(%rip),%rdi        # 4008 <__dso_handle>
    11a2:	e8 d9 fe ff ff       	callq  1080 <__cxa_finalize@plt>
    11a7:	e8 64 ff ff ff       	callq  1110 <deregister_tm_clones>
    11ac:	c6 05 9d 2f 00 00 01 	movb   $0x1,0x2f9d(%rip)        # 4150 <completed.8060>
    11b3:	5d                   	pop    %rbp
    11b4:	c3                   	retq   
    11b5:	0f 1f 00             	nopl   (%rax)
    11b8:	c3                   	retq   
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <frame_dummy>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	e9 77 ff ff ff       	jmpq   1140 <register_tm_clones>

00000000000011c9 <main>:
    11c9:	f3 0f 1e fa          	endbr64 
    11cd:	55                   	push   %rbp
    11ce:	48 89 e5             	mov    %rsp,%rbp
    11d1:	be 02 00 00 00       	mov    $0x2,%esi
    11d6:	bf 01 00 00 00       	mov    $0x1,%edi
    11db:	e8 68 00 00 00       	callq  1248 <_Z5sommaii>
    11e0:	89 c6                	mov    %eax,%esi
    11e2:	48 8d 3d 57 2e 00 00 	lea    0x2e57(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    11e9:	e8 d2 fe ff ff       	callq  10c0 <_ZNSolsEi@plt>
    11ee:	48 89 c2             	mov    %rax,%rdx
    11f1:	48 8b 05 d8 2d 00 00 	mov    0x2dd8(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    11f8:	48 89 c6             	mov    %rax,%rsi
    11fb:	48 89 d7             	mov    %rdx,%rdi
    11fe:	e8 9d fe ff ff       	callq  10a0 <_ZNSolsEPFRSoS_E@plt>
    1203:	f2 0f 10 05 05 0e 00 	movsd  0xe05(%rip),%xmm0        # 2010 <_ZStL19piecewise_construct+0x8>
    120a:	00 
    120b:	48 8b 05 06 0e 00 00 	mov    0xe06(%rip),%rax        # 2018 <_ZStL19piecewise_construct+0x10>
    1212:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1216:	66 48 0f 6e c0       	movq   %rax,%xmm0
    121b:	e8 40 00 00 00       	callq  1260 <_Z5sommadd>
    1220:	48 8d 3d 19 2e 00 00 	lea    0x2e19(%rip),%rdi        # 4040 <_ZSt4cout@@GLIBCXX_3.4>
    1227:	e8 a4 fe ff ff       	callq  10d0 <_ZNSolsEd@plt>
    122c:	48 89 c2             	mov    %rax,%rdx
    122f:	48 8b 05 9a 2d 00 00 	mov    0x2d9a(%rip),%rax        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1236:	48 89 c6             	mov    %rax,%rsi
    1239:	48 89 d7             	mov    %rdx,%rdi
    123c:	e8 5f fe ff ff       	callq  10a0 <_ZNSolsEPFRSoS_E@plt>
    1241:	b8 00 00 00 00       	mov    $0x0,%eax
    1246:	5d                   	pop    %rbp
    1247:	c3                   	retq   

0000000000001248 <_Z5sommaii>:
    1248:	f3 0f 1e fa          	endbr64 
    124c:	55                   	push   %rbp
    124d:	48 89 e5             	mov    %rsp,%rbp
    1250:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1253:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1256:	8b 55 fc             	mov    -0x4(%rbp),%edx
    1259:	8b 45 f8             	mov    -0x8(%rbp),%eax
    125c:	01 d0                	add    %edx,%eax
    125e:	5d                   	pop    %rbp
    125f:	c3                   	retq   

0000000000001260 <_Z5sommadd>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	55                   	push   %rbp
    1265:	48 89 e5             	mov    %rsp,%rbp
    1268:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
    126d:	f2 0f 11 4d f0       	movsd  %xmm1,-0x10(%rbp)
    1272:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
    1277:	f2 0f 58 45 f0       	addsd  -0x10(%rbp),%xmm0
    127c:	5d                   	pop    %rbp
    127d:	c3                   	retq   

000000000000127e <_Z41__static_initialization_and_destruction_0ii>:
    127e:	f3 0f 1e fa          	endbr64 
    1282:	55                   	push   %rbp
    1283:	48 89 e5             	mov    %rsp,%rbp
    1286:	48 83 ec 10          	sub    $0x10,%rsp
    128a:	89 7d fc             	mov    %edi,-0x4(%rbp)
    128d:	89 75 f8             	mov    %esi,-0x8(%rbp)
    1290:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    1294:	75 32                	jne    12c8 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    1296:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    129d:	75 29                	jne    12c8 <_Z41__static_initialization_and_destruction_0ii+0x4a>
    129f:	48 8d 3d ab 2e 00 00 	lea    0x2eab(%rip),%rdi        # 4151 <_ZStL8__ioinit>
    12a6:	e8 05 fe ff ff       	callq  10b0 <_ZNSt8ios_base4InitC1Ev@plt>
    12ab:	48 8d 15 56 2d 00 00 	lea    0x2d56(%rip),%rdx        # 4008 <__dso_handle>
    12b2:	48 8d 35 98 2e 00 00 	lea    0x2e98(%rip),%rsi        # 4151 <_ZStL8__ioinit>
    12b9:	48 8b 05 38 2d 00 00 	mov    0x2d38(%rip),%rax        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    12c0:	48 89 c7             	mov    %rax,%rdi
    12c3:	e8 c8 fd ff ff       	callq  1090 <__cxa_atexit@plt>
    12c8:	90                   	nop
    12c9:	c9                   	leaveq 
    12ca:	c3                   	retq   

00000000000012cb <_GLOBAL__sub_I_main>:
    12cb:	f3 0f 1e fa          	endbr64 
    12cf:	55                   	push   %rbp
    12d0:	48 89 e5             	mov    %rsp,%rbp
    12d3:	be ff ff 00 00       	mov    $0xffff,%esi
    12d8:	bf 01 00 00 00       	mov    $0x1,%edi
    12dd:	e8 9c ff ff ff       	callq  127e <_Z41__static_initialization_and_destruction_0ii>
    12e2:	5d                   	pop    %rbp
    12e3:	c3                   	retq   
    12e4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12eb:	00 00 00 
    12ee:	66 90                	xchg   %ax,%ax

00000000000012f0 <__libc_csu_init>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	41 57                	push   %r15
    12f6:	4c 8d 3d 73 2a 00 00 	lea    0x2a73(%rip),%r15        # 3d70 <__frame_dummy_init_array_entry>
    12fd:	41 56                	push   %r14
    12ff:	49 89 d6             	mov    %rdx,%r14
    1302:	41 55                	push   %r13
    1304:	49 89 f5             	mov    %rsi,%r13
    1307:	41 54                	push   %r12
    1309:	41 89 fc             	mov    %edi,%r12d
    130c:	55                   	push   %rbp
    130d:	48 8d 2d 6c 2a 00 00 	lea    0x2a6c(%rip),%rbp        # 3d80 <__do_global_dtors_aux_fini_array_entry>
    1314:	53                   	push   %rbx
    1315:	4c 29 fd             	sub    %r15,%rbp
    1318:	48 83 ec 08          	sub    $0x8,%rsp
    131c:	e8 df fc ff ff       	callq  1000 <_init>
    1321:	48 c1 fd 03          	sar    $0x3,%rbp
    1325:	74 1f                	je     1346 <__libc_csu_init+0x56>
    1327:	31 db                	xor    %ebx,%ebx
    1329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1330:	4c 89 f2             	mov    %r14,%rdx
    1333:	4c 89 ee             	mov    %r13,%rsi
    1336:	44 89 e7             	mov    %r12d,%edi
    1339:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    133d:	48 83 c3 01          	add    $0x1,%rbx
    1341:	48 39 dd             	cmp    %rbx,%rbp
    1344:	75 ea                	jne    1330 <__libc_csu_init+0x40>
    1346:	48 83 c4 08          	add    $0x8,%rsp
    134a:	5b                   	pop    %rbx
    134b:	5d                   	pop    %rbp
    134c:	41 5c                	pop    %r12
    134e:	41 5d                	pop    %r13
    1350:	41 5e                	pop    %r14
    1352:	41 5f                	pop    %r15
    1354:	c3                   	retq   
    1355:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    135c:	00 00 00 00 

0000000000001360 <__libc_csu_fini>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	c3                   	retq   

Disassembly of section .fini:

0000000000001368 <_fini>:
    1368:	f3 0f 1e fa          	endbr64 
    136c:	48 83 ec 08          	sub    $0x8,%rsp
    1370:	48 83 c4 08          	add    $0x8,%rsp
    1374:	c3                   	retq   
