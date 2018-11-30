
bm:     file format elf64-x86-64


Disassembly of section .init:

0000000000000838 <_init>:
 838:	48 83 ec 08          	sub    $0x8,%rsp
 83c:	48 8d 05 cd 00 00 00 	lea    0xcd(%rip),%rax        # 910 <__gmon_start__>
 843:	48 85 c0             	test   %rax,%rax
 846:	74 02                	je     84a <_init+0x12>
 848:	ff d0                	callq  *%rax
 84a:	48 83 c4 08          	add    $0x8,%rsp
 84e:	c3                   	retq   

Disassembly of section .plt:

0000000000000850 <.plt>:
 850:	ff 35 2a c7 20 00    	pushq  0x20c72a(%rip)        # 20cf80 <_GLOBAL_OFFSET_TABLE_+0x8>
 856:	ff 25 2c c7 20 00    	jmpq   *0x20c72c(%rip)        # 20cf88 <_GLOBAL_OFFSET_TABLE_+0x10>
 85c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000860 <__cxa_atexit@plt>:
 860:	ff 25 2a c7 20 00    	jmpq   *0x20c72a(%rip)        # 20cf90 <__cxa_atexit@GLIBC_2.2.5>
 866:	68 00 00 00 00       	pushq  $0x0
 86b:	e9 e0 ff ff ff       	jmpq   850 <.plt>

0000000000000870 <_ZNSolsEy@plt>:
 870:	ff 25 22 c7 20 00    	jmpq   *0x20c722(%rip)        # 20cf98 <_ZNSolsEy@GLIBCXX_3.4>
 876:	68 01 00 00 00       	pushq  $0x1
 87b:	e9 d0 ff ff ff       	jmpq   850 <.plt>

0000000000000880 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
 880:	ff 25 1a c7 20 00    	jmpq   *0x20c71a(%rip)        # 20cfa0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
 886:	68 02 00 00 00       	pushq  $0x2
 88b:	e9 c0 ff ff ff       	jmpq   850 <.plt>

0000000000000890 <__monstartup@plt>:
 890:	ff 25 12 c7 20 00    	jmpq   *0x20c712(%rip)        # 20cfa8 <__monstartup@GLIBC_2.2.5>
 896:	68 03 00 00 00       	pushq  $0x3
 89b:	e9 b0 ff ff ff       	jmpq   850 <.plt>

00000000000008a0 <_ZNSolsEPFRSoS_E@plt>:
 8a0:	ff 25 0a c7 20 00    	jmpq   *0x20c70a(%rip)        # 20cfb0 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
 8a6:	68 04 00 00 00       	pushq  $0x4
 8ab:	e9 a0 ff ff ff       	jmpq   850 <.plt>

00000000000008b0 <__stack_chk_fail@plt>:
 8b0:	ff 25 02 c7 20 00    	jmpq   *0x20c702(%rip)        # 20cfb8 <__stack_chk_fail@GLIBC_2.4>
 8b6:	68 05 00 00 00       	pushq  $0x5
 8bb:	e9 90 ff ff ff       	jmpq   850 <.plt>

00000000000008c0 <_ZNSt8ios_base4InitC1Ev@plt>:
 8c0:	ff 25 fa c6 20 00    	jmpq   *0x20c6fa(%rip)        # 20cfc0 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 8c6:	68 06 00 00 00       	pushq  $0x6
 8cb:	e9 80 ff ff ff       	jmpq   850 <.plt>

Disassembly of section .plt.got:

00000000000008d0 <__cxa_finalize@plt>:
 8d0:	ff 25 f2 c6 20 00    	jmpq   *0x20c6f2(%rip)        # 20cfc8 <__cxa_finalize@GLIBC_2.2.5>
 8d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000008e0 <_start>:
     8e0:	31 ed                	xor    %ebp,%ebp
     8e2:	49 89 d1             	mov    %rdx,%r9
     8e5:	5e                   	pop    %rsi
     8e6:	48 89 e2             	mov    %rsp,%rdx
     8e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     8ed:	50                   	push   %rax
     8ee:	54                   	push   %rsp
     8ef:	4c 8d 05 ba b2 00 00 	lea    0xb2ba(%rip),%r8        # bbb0 <__libc_csu_fini>
     8f6:	48 8d 0d 43 b2 00 00 	lea    0xb243(%rip),%rcx        # bb40 <__libc_csu_init>
     8fd:	48 8d 3d 8a 01 00 00 	lea    0x18a(%rip),%rdi        # a8e <main>
     904:	ff 15 de c6 20 00    	callq  *0x20c6de(%rip)        # 20cfe8 <__libc_start_main@GLIBC_2.2.5>
     90a:	f4                   	hlt    
     90b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000910 <__gmon_start__>:
     910:	8b 05 1a c8 20 00    	mov    0x20c81a(%rip),%eax        # 20d130 <called.4604>
     916:	85 c0                	test   %eax,%eax
     918:	74 06                	je     920 <__gmon_start__+0x10>
     91a:	f3 c3                	repz retq 
     91c:	0f 1f 40 00          	nopl   0x0(%rax)
     920:	48 83 ec 08          	sub    $0x8,%rsp
     924:	48 8d 3d b5 ff ff ff 	lea    -0x4b(%rip),%rdi        # 8e0 <_start>
     92b:	48 8d 35 a7 b2 00 00 	lea    0xb2a7(%rip),%rsi        # bbd9 <etext>
     932:	c7 05 f4 c7 20 00 01 	movl   $0x1,0x20c7f4(%rip)        # 20d130 <called.4604>
     939:	00 00 00 
     93c:	e8 4f ff ff ff       	callq  890 <__monstartup@plt>
     941:	48 8b 3d 90 c6 20 00 	mov    0x20c690(%rip),%rdi        # 20cfd8 <_mcleanup@GLIBC_2.2.5>
     948:	48 83 c4 08          	add    $0x8,%rsp
     94c:	e9 6f b2 00 00       	jmpq   bbc0 <atexit>
     951:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     958:	00 00 00 
     95b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000960 <_dl_relocate_static_pie>:
     960:	f3 c3                	repz retq 
     962:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     969:	00 00 00 
     96c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000970 <deregister_tm_clones>:
     970:	48 8d 3d 99 c6 20 00 	lea    0x20c699(%rip),%rdi        # 20d010 <__TMC_END__>
     977:	55                   	push   %rbp
     978:	48 8d 05 91 c6 20 00 	lea    0x20c691(%rip),%rax        # 20d010 <__TMC_END__>
     97f:	48 39 f8             	cmp    %rdi,%rax
     982:	48 89 e5             	mov    %rsp,%rbp
     985:	74 19                	je     9a0 <deregister_tm_clones+0x30>
     987:	48 8b 05 52 c6 20 00 	mov    0x20c652(%rip),%rax        # 20cfe0 <_ITM_deregisterTMCloneTable>
     98e:	48 85 c0             	test   %rax,%rax
     991:	74 0d                	je     9a0 <deregister_tm_clones+0x30>
     993:	5d                   	pop    %rbp
     994:	ff e0                	jmpq   *%rax
     996:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     99d:	00 00 00 
     9a0:	5d                   	pop    %rbp
     9a1:	c3                   	retq   
     9a2:	0f 1f 40 00          	nopl   0x0(%rax)
     9a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     9ad:	00 00 00 

00000000000009b0 <register_tm_clones>:
     9b0:	48 8d 3d 59 c6 20 00 	lea    0x20c659(%rip),%rdi        # 20d010 <__TMC_END__>
     9b7:	48 8d 35 52 c6 20 00 	lea    0x20c652(%rip),%rsi        # 20d010 <__TMC_END__>
     9be:	55                   	push   %rbp
     9bf:	48 29 fe             	sub    %rdi,%rsi
     9c2:	48 89 e5             	mov    %rsp,%rbp
     9c5:	48 c1 fe 03          	sar    $0x3,%rsi
     9c9:	48 89 f0             	mov    %rsi,%rax
     9cc:	48 c1 e8 3f          	shr    $0x3f,%rax
     9d0:	48 01 c6             	add    %rax,%rsi
     9d3:	48 d1 fe             	sar    %rsi
     9d6:	74 18                	je     9f0 <register_tm_clones+0x40>
     9d8:	48 8b 05 11 c6 20 00 	mov    0x20c611(%rip),%rax        # 20cff0 <_ITM_registerTMCloneTable>
     9df:	48 85 c0             	test   %rax,%rax
     9e2:	74 0c                	je     9f0 <register_tm_clones+0x40>
     9e4:	5d                   	pop    %rbp
     9e5:	ff e0                	jmpq   *%rax
     9e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     9ee:	00 00 
     9f0:	5d                   	pop    %rbp
     9f1:	c3                   	retq   
     9f2:	0f 1f 40 00          	nopl   0x0(%rax)
     9f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     9fd:	00 00 00 

0000000000000a00 <__do_global_dtors_aux>:
     a00:	80 3d 2d c7 20 00 00 	cmpb   $0x0,0x20c72d(%rip)        # 20d134 <completed.7696>
     a07:	75 2f                	jne    a38 <__do_global_dtors_aux+0x38>
     a09:	48 83 3d b7 c5 20 00 	cmpq   $0x0,0x20c5b7(%rip)        # 20cfc8 <__cxa_finalize@GLIBC_2.2.5>
     a10:	00 
     a11:	55                   	push   %rbp
     a12:	48 89 e5             	mov    %rsp,%rbp
     a15:	74 0c                	je     a23 <__do_global_dtors_aux+0x23>
     a17:	48 8b 3d ea c5 20 00 	mov    0x20c5ea(%rip),%rdi        # 20d008 <__dso_handle>
     a1e:	e8 ad fe ff ff       	callq  8d0 <__cxa_finalize@plt>
     a23:	e8 48 ff ff ff       	callq  970 <deregister_tm_clones>
     a28:	c6 05 05 c7 20 00 01 	movb   $0x1,0x20c705(%rip)        # 20d134 <completed.7696>
     a2f:	5d                   	pop    %rbp
     a30:	c3                   	retq   
     a31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     a38:	f3 c3                	repz retq 
     a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a40 <frame_dummy>:
     a40:	55                   	push   %rbp
     a41:	48 89 e5             	mov    %rsp,%rbp
     a44:	5d                   	pop    %rbp
     a45:	e9 66 ff ff ff       	jmpq   9b0 <register_tm_clones>

0000000000000a4a <_Z10init_gridsP4Grid>:
     a4a:	55                   	push   %rbp
     a4b:	48 89 e5             	mov    %rsp,%rbp
     a4e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     a52:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     a59:	81 7d fc 8f 01 00 00 	cmpl   $0x18f,-0x4(%rbp)
     a60:	7f 29                	jg     a8b <_Z10init_gridsP4Grid+0x41>
     a62:	8b 45 fc             	mov    -0x4(%rbp),%eax
     a65:	48 63 d0             	movslq %eax,%rdx
     a68:	48 89 d0             	mov    %rdx,%rax
     a6b:	48 01 c0             	add    %rax,%rax
     a6e:	48 01 d0             	add    %rdx,%rax
     a71:	48 c1 e0 02          	shl    $0x2,%rax
     a75:	48 89 c2             	mov    %rax,%rdx
     a78:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     a7c:	48 01 c2             	add    %rax,%rdx
     a7f:	8b 45 fc             	mov    -0x4(%rbp),%eax
     a82:	89 42 04             	mov    %eax,0x4(%rdx)
     a85:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     a89:	eb ce                	jmp    a59 <_Z10init_gridsP4Grid+0xf>
     a8b:	90                   	nop
     a8c:	5d                   	pop    %rbp
     a8d:	c3                   	retq   

0000000000000a8e <main>:
     a8e:	55                   	push   %rbp
     a8f:	48 89 e5             	mov    %rsp,%rbp
     a92:	48 81 ec f0 12 20 00 	sub    $0x2012f0,%rsp
     a99:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     aa0:	00 00 
     aa2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     aa6:	31 c0                	xor    %eax,%eax
     aa8:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     aaf:	48 89 c7             	mov    %rax,%rdi
     ab2:	e8 4b ad 00 00       	callq  b802 <_ZN4HeapC1Ev>
     ab7:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     abe:	48 89 c7             	mov    %rax,%rdi
     ac1:	e8 84 ff ff ff       	callq  a4a <_Z10init_gridsP4Grid>
     ac6:	c7 85 1c ed df ff 02 	movl   $0x2,-0x2012e4(%rbp)
     acd:	00 00 00 
     ad0:	81 bd 1c ed df ff 90 	cmpl   $0x190,-0x2012e4(%rbp)
     ad7:	01 00 00 
     ada:	7f 3c                	jg     b18 <main+0x8a>
     adc:	48 8d 8d 30 ed df ff 	lea    -0x2012d0(%rbp),%rcx
     ae3:	8b 85 1c ed df ff    	mov    -0x2012e4(%rbp),%eax
     ae9:	48 63 d0             	movslq %eax,%rdx
     aec:	48 89 d0             	mov    %rdx,%rax
     aef:	48 01 c0             	add    %rax,%rax
     af2:	48 01 d0             	add    %rdx,%rax
     af5:	48 c1 e0 02          	shl    $0x2,%rax
     af9:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
     afd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     b04:	48 89 d6             	mov    %rdx,%rsi
     b07:	48 89 c7             	mov    %rax,%rdi
     b0a:	e8 2f ad 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     b0f:	83 85 1c ed df ff 01 	addl   $0x1,-0x2012e4(%rbp)
     b16:	eb b8                	jmp    ad0 <main+0x42>
     b18:	e8 ff af 00 00       	callq  bb1c <_Z5rdtscv>
     b1d:	48 89 85 20 ed df ff 	mov    %rax,-0x2012e0(%rbp)
     b24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     b2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     b2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     b36:	48 89 d6             	mov    %rdx,%rsi
     b39:	48 89 c7             	mov    %rax,%rdi
     b3c:	e8 fd ac 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     b41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     b48:	48 89 c7             	mov    %rax,%rdi
     b4b:	e8 24 ae 00 00       	callq  b974 <_ZN4Heap3popEv>
     b50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     b57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     b5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     b62:	48 89 d6             	mov    %rdx,%rsi
     b65:	48 89 c7             	mov    %rax,%rdi
     b68:	e8 d1 ac 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     b6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     b74:	48 89 c7             	mov    %rax,%rdi
     b77:	e8 f8 ad 00 00       	callq  b974 <_ZN4Heap3popEv>
     b7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     b83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     b87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     b8e:	48 89 d6             	mov    %rdx,%rsi
     b91:	48 89 c7             	mov    %rax,%rdi
     b94:	e8 a5 ac 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     b99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ba0:	48 89 c7             	mov    %rax,%rdi
     ba3:	e8 cc ad 00 00       	callq  b974 <_ZN4Heap3popEv>
     ba8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     baf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     bb3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     bba:	48 89 d6             	mov    %rdx,%rsi
     bbd:	48 89 c7             	mov    %rax,%rdi
     bc0:	e8 79 ac 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     bc5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     bcc:	48 89 c7             	mov    %rax,%rdi
     bcf:	e8 a0 ad 00 00       	callq  b974 <_ZN4Heap3popEv>
     bd4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     bdb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     bdf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     be6:	48 89 d6             	mov    %rdx,%rsi
     be9:	48 89 c7             	mov    %rax,%rdi
     bec:	e8 4d ac 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     bf1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     bf8:	48 89 c7             	mov    %rax,%rdi
     bfb:	e8 74 ad 00 00       	callq  b974 <_ZN4Heap3popEv>
     c00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     c07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     c0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c12:	48 89 d6             	mov    %rdx,%rsi
     c15:	48 89 c7             	mov    %rax,%rdi
     c18:	e8 21 ac 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     c1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c24:	48 89 c7             	mov    %rax,%rdi
     c27:	e8 48 ad 00 00       	callq  b974 <_ZN4Heap3popEv>
     c2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     c33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     c37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c3e:	48 89 d6             	mov    %rdx,%rsi
     c41:	48 89 c7             	mov    %rax,%rdi
     c44:	e8 f5 ab 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     c49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c50:	48 89 c7             	mov    %rax,%rdi
     c53:	e8 1c ad 00 00       	callq  b974 <_ZN4Heap3popEv>
     c58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     c5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     c63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c6a:	48 89 d6             	mov    %rdx,%rsi
     c6d:	48 89 c7             	mov    %rax,%rdi
     c70:	e8 c9 ab 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     c75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c7c:	48 89 c7             	mov    %rax,%rdi
     c7f:	e8 f0 ac 00 00       	callq  b974 <_ZN4Heap3popEv>
     c84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     c8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     c8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c96:	48 89 d6             	mov    %rdx,%rsi
     c99:	48 89 c7             	mov    %rax,%rdi
     c9c:	e8 9d ab 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     ca1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ca8:	48 89 c7             	mov    %rax,%rdi
     cab:	e8 c4 ac 00 00       	callq  b974 <_ZN4Heap3popEv>
     cb0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     cb7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     cbb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     cc2:	48 89 d6             	mov    %rdx,%rsi
     cc5:	48 89 c7             	mov    %rax,%rdi
     cc8:	e8 71 ab 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     ccd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     cd4:	48 89 c7             	mov    %rax,%rdi
     cd7:	e8 98 ac 00 00       	callq  b974 <_ZN4Heap3popEv>
     cdc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     ce3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     ce7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     cee:	48 89 d6             	mov    %rdx,%rsi
     cf1:	48 89 c7             	mov    %rax,%rdi
     cf4:	e8 45 ab 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     cf9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d00:	48 89 c7             	mov    %rax,%rdi
     d03:	e8 6c ac 00 00       	callq  b974 <_ZN4Heap3popEv>
     d08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     d0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     d13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d1a:	48 89 d6             	mov    %rdx,%rsi
     d1d:	48 89 c7             	mov    %rax,%rdi
     d20:	e8 19 ab 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     d25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d2c:	48 89 c7             	mov    %rax,%rdi
     d2f:	e8 40 ac 00 00       	callq  b974 <_ZN4Heap3popEv>
     d34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     d3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     d3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d46:	48 89 d6             	mov    %rdx,%rsi
     d49:	48 89 c7             	mov    %rax,%rdi
     d4c:	e8 ed aa 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     d51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d58:	48 89 c7             	mov    %rax,%rdi
     d5b:	e8 14 ac 00 00       	callq  b974 <_ZN4Heap3popEv>
     d60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     d67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     d6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d72:	48 89 d6             	mov    %rdx,%rsi
     d75:	48 89 c7             	mov    %rax,%rdi
     d78:	e8 c1 aa 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     d7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d84:	48 89 c7             	mov    %rax,%rdi
     d87:	e8 e8 ab 00 00       	callq  b974 <_ZN4Heap3popEv>
     d8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     d93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     d97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d9e:	48 89 d6             	mov    %rdx,%rsi
     da1:	48 89 c7             	mov    %rax,%rdi
     da4:	e8 95 aa 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     da9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     db0:	48 89 c7             	mov    %rax,%rdi
     db3:	e8 bc ab 00 00       	callq  b974 <_ZN4Heap3popEv>
     db8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     dbf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     dc3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     dca:	48 89 d6             	mov    %rdx,%rsi
     dcd:	48 89 c7             	mov    %rax,%rdi
     dd0:	e8 69 aa 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     dd5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ddc:	48 89 c7             	mov    %rax,%rdi
     ddf:	e8 90 ab 00 00       	callq  b974 <_ZN4Heap3popEv>
     de4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     deb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     def:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     df6:	48 89 d6             	mov    %rdx,%rsi
     df9:	48 89 c7             	mov    %rax,%rdi
     dfc:	e8 3d aa 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     e01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e08:	48 89 c7             	mov    %rax,%rdi
     e0b:	e8 64 ab 00 00       	callq  b974 <_ZN4Heap3popEv>
     e10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     e17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     e1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e22:	48 89 d6             	mov    %rdx,%rsi
     e25:	48 89 c7             	mov    %rax,%rdi
     e28:	e8 11 aa 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     e2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e34:	48 89 c7             	mov    %rax,%rdi
     e37:	e8 38 ab 00 00       	callq  b974 <_ZN4Heap3popEv>
     e3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     e43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     e47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e4e:	48 89 d6             	mov    %rdx,%rsi
     e51:	48 89 c7             	mov    %rax,%rdi
     e54:	e8 e5 a9 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     e59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e60:	48 89 c7             	mov    %rax,%rdi
     e63:	e8 0c ab 00 00       	callq  b974 <_ZN4Heap3popEv>
     e68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     e6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     e73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e7a:	48 89 d6             	mov    %rdx,%rsi
     e7d:	48 89 c7             	mov    %rax,%rdi
     e80:	e8 b9 a9 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     e85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e8c:	48 89 c7             	mov    %rax,%rdi
     e8f:	e8 e0 aa 00 00       	callq  b974 <_ZN4Heap3popEv>
     e94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     e9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     e9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ea6:	48 89 d6             	mov    %rdx,%rsi
     ea9:	48 89 c7             	mov    %rax,%rdi
     eac:	e8 8d a9 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     eb1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     eb8:	48 89 c7             	mov    %rax,%rdi
     ebb:	e8 b4 aa 00 00       	callq  b974 <_ZN4Heap3popEv>
     ec0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     ec7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     ecb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ed2:	48 89 d6             	mov    %rdx,%rsi
     ed5:	48 89 c7             	mov    %rax,%rdi
     ed8:	e8 61 a9 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     edd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ee4:	48 89 c7             	mov    %rax,%rdi
     ee7:	e8 88 aa 00 00       	callq  b974 <_ZN4Heap3popEv>
     eec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     ef3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     ef7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     efe:	48 89 d6             	mov    %rdx,%rsi
     f01:	48 89 c7             	mov    %rax,%rdi
     f04:	e8 35 a9 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     f09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f10:	48 89 c7             	mov    %rax,%rdi
     f13:	e8 5c aa 00 00       	callq  b974 <_ZN4Heap3popEv>
     f18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     f1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     f23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f2a:	48 89 d6             	mov    %rdx,%rsi
     f2d:	48 89 c7             	mov    %rax,%rdi
     f30:	e8 09 a9 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     f35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f3c:	48 89 c7             	mov    %rax,%rdi
     f3f:	e8 30 aa 00 00       	callq  b974 <_ZN4Heap3popEv>
     f44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     f4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     f4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f56:	48 89 d6             	mov    %rdx,%rsi
     f59:	48 89 c7             	mov    %rax,%rdi
     f5c:	e8 dd a8 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     f61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f68:	48 89 c7             	mov    %rax,%rdi
     f6b:	e8 04 aa 00 00       	callq  b974 <_ZN4Heap3popEv>
     f70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     f77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     f7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f82:	48 89 d6             	mov    %rdx,%rsi
     f85:	48 89 c7             	mov    %rax,%rdi
     f88:	e8 b1 a8 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     f8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f94:	48 89 c7             	mov    %rax,%rdi
     f97:	e8 d8 a9 00 00       	callq  b974 <_ZN4Heap3popEv>
     f9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     fa3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     fa7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     fae:	48 89 d6             	mov    %rdx,%rsi
     fb1:	48 89 c7             	mov    %rax,%rdi
     fb4:	e8 85 a8 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     fb9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     fc0:	48 89 c7             	mov    %rax,%rdi
     fc3:	e8 ac a9 00 00       	callq  b974 <_ZN4Heap3popEv>
     fc8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     fcf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     fd3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     fda:	48 89 d6             	mov    %rdx,%rsi
     fdd:	48 89 c7             	mov    %rax,%rdi
     fe0:	e8 59 a8 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
     fe5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     fec:	48 89 c7             	mov    %rax,%rdi
     fef:	e8 80 a9 00 00       	callq  b974 <_ZN4Heap3popEv>
     ff4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     ffb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     fff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1006:	48 89 d6             	mov    %rdx,%rsi
    1009:	48 89 c7             	mov    %rax,%rdi
    100c:	e8 2d a8 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1011:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1018:	48 89 c7             	mov    %rax,%rdi
    101b:	e8 54 a9 00 00       	callq  b974 <_ZN4Heap3popEv>
    1020:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1027:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    102b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1032:	48 89 d6             	mov    %rdx,%rsi
    1035:	48 89 c7             	mov    %rax,%rdi
    1038:	e8 01 a8 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    103d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1044:	48 89 c7             	mov    %rax,%rdi
    1047:	e8 28 a9 00 00       	callq  b974 <_ZN4Heap3popEv>
    104c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1053:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1057:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    105e:	48 89 d6             	mov    %rdx,%rsi
    1061:	48 89 c7             	mov    %rax,%rdi
    1064:	e8 d5 a7 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1069:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1070:	48 89 c7             	mov    %rax,%rdi
    1073:	e8 fc a8 00 00       	callq  b974 <_ZN4Heap3popEv>
    1078:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    107f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1083:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    108a:	48 89 d6             	mov    %rdx,%rsi
    108d:	48 89 c7             	mov    %rax,%rdi
    1090:	e8 a9 a7 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1095:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    109c:	48 89 c7             	mov    %rax,%rdi
    109f:	e8 d0 a8 00 00       	callq  b974 <_ZN4Heap3popEv>
    10a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    10ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    10af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    10b6:	48 89 d6             	mov    %rdx,%rsi
    10b9:	48 89 c7             	mov    %rax,%rdi
    10bc:	e8 7d a7 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    10c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    10c8:	48 89 c7             	mov    %rax,%rdi
    10cb:	e8 a4 a8 00 00       	callq  b974 <_ZN4Heap3popEv>
    10d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    10d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    10db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    10e2:	48 89 d6             	mov    %rdx,%rsi
    10e5:	48 89 c7             	mov    %rax,%rdi
    10e8:	e8 51 a7 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    10ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    10f4:	48 89 c7             	mov    %rax,%rdi
    10f7:	e8 78 a8 00 00       	callq  b974 <_ZN4Heap3popEv>
    10fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1103:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1107:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    110e:	48 89 d6             	mov    %rdx,%rsi
    1111:	48 89 c7             	mov    %rax,%rdi
    1114:	e8 25 a7 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1119:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1120:	48 89 c7             	mov    %rax,%rdi
    1123:	e8 4c a8 00 00       	callq  b974 <_ZN4Heap3popEv>
    1128:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    112f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1133:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    113a:	48 89 d6             	mov    %rdx,%rsi
    113d:	48 89 c7             	mov    %rax,%rdi
    1140:	e8 f9 a6 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1145:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    114c:	48 89 c7             	mov    %rax,%rdi
    114f:	e8 20 a8 00 00       	callq  b974 <_ZN4Heap3popEv>
    1154:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    115b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    115f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1166:	48 89 d6             	mov    %rdx,%rsi
    1169:	48 89 c7             	mov    %rax,%rdi
    116c:	e8 cd a6 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1171:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1178:	48 89 c7             	mov    %rax,%rdi
    117b:	e8 f4 a7 00 00       	callq  b974 <_ZN4Heap3popEv>
    1180:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1187:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    118b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1192:	48 89 d6             	mov    %rdx,%rsi
    1195:	48 89 c7             	mov    %rax,%rdi
    1198:	e8 a1 a6 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    119d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    11a4:	48 89 c7             	mov    %rax,%rdi
    11a7:	e8 c8 a7 00 00       	callq  b974 <_ZN4Heap3popEv>
    11ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    11b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    11b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    11be:	48 89 d6             	mov    %rdx,%rsi
    11c1:	48 89 c7             	mov    %rax,%rdi
    11c4:	e8 75 a6 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    11c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    11d0:	48 89 c7             	mov    %rax,%rdi
    11d3:	e8 9c a7 00 00       	callq  b974 <_ZN4Heap3popEv>
    11d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    11df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    11e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    11ea:	48 89 d6             	mov    %rdx,%rsi
    11ed:	48 89 c7             	mov    %rax,%rdi
    11f0:	e8 49 a6 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    11f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    11fc:	48 89 c7             	mov    %rax,%rdi
    11ff:	e8 70 a7 00 00       	callq  b974 <_ZN4Heap3popEv>
    1204:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    120b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    120f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1216:	48 89 d6             	mov    %rdx,%rsi
    1219:	48 89 c7             	mov    %rax,%rdi
    121c:	e8 1d a6 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1221:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1228:	48 89 c7             	mov    %rax,%rdi
    122b:	e8 44 a7 00 00       	callq  b974 <_ZN4Heap3popEv>
    1230:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1237:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    123b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1242:	48 89 d6             	mov    %rdx,%rsi
    1245:	48 89 c7             	mov    %rax,%rdi
    1248:	e8 f1 a5 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    124d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1254:	48 89 c7             	mov    %rax,%rdi
    1257:	e8 18 a7 00 00       	callq  b974 <_ZN4Heap3popEv>
    125c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1263:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1267:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    126e:	48 89 d6             	mov    %rdx,%rsi
    1271:	48 89 c7             	mov    %rax,%rdi
    1274:	e8 c5 a5 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1279:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1280:	48 89 c7             	mov    %rax,%rdi
    1283:	e8 ec a6 00 00       	callq  b974 <_ZN4Heap3popEv>
    1288:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    128f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1293:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    129a:	48 89 d6             	mov    %rdx,%rsi
    129d:	48 89 c7             	mov    %rax,%rdi
    12a0:	e8 99 a5 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    12a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    12ac:	48 89 c7             	mov    %rax,%rdi
    12af:	e8 c0 a6 00 00       	callq  b974 <_ZN4Heap3popEv>
    12b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    12bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    12bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    12c6:	48 89 d6             	mov    %rdx,%rsi
    12c9:	48 89 c7             	mov    %rax,%rdi
    12cc:	e8 6d a5 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    12d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    12d8:	48 89 c7             	mov    %rax,%rdi
    12db:	e8 94 a6 00 00       	callq  b974 <_ZN4Heap3popEv>
    12e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    12e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    12eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    12f2:	48 89 d6             	mov    %rdx,%rsi
    12f5:	48 89 c7             	mov    %rax,%rdi
    12f8:	e8 41 a5 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    12fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1304:	48 89 c7             	mov    %rax,%rdi
    1307:	e8 68 a6 00 00       	callq  b974 <_ZN4Heap3popEv>
    130c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1313:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1317:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    131e:	48 89 d6             	mov    %rdx,%rsi
    1321:	48 89 c7             	mov    %rax,%rdi
    1324:	e8 15 a5 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1329:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1330:	48 89 c7             	mov    %rax,%rdi
    1333:	e8 3c a6 00 00       	callq  b974 <_ZN4Heap3popEv>
    1338:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    133f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1343:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    134a:	48 89 d6             	mov    %rdx,%rsi
    134d:	48 89 c7             	mov    %rax,%rdi
    1350:	e8 e9 a4 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1355:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    135c:	48 89 c7             	mov    %rax,%rdi
    135f:	e8 10 a6 00 00       	callq  b974 <_ZN4Heap3popEv>
    1364:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    136b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    136f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1376:	48 89 d6             	mov    %rdx,%rsi
    1379:	48 89 c7             	mov    %rax,%rdi
    137c:	e8 bd a4 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1381:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1388:	48 89 c7             	mov    %rax,%rdi
    138b:	e8 e4 a5 00 00       	callq  b974 <_ZN4Heap3popEv>
    1390:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1397:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    139b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    13a2:	48 89 d6             	mov    %rdx,%rsi
    13a5:	48 89 c7             	mov    %rax,%rdi
    13a8:	e8 91 a4 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    13ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    13b4:	48 89 c7             	mov    %rax,%rdi
    13b7:	e8 b8 a5 00 00       	callq  b974 <_ZN4Heap3popEv>
    13bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    13c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    13c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    13ce:	48 89 d6             	mov    %rdx,%rsi
    13d1:	48 89 c7             	mov    %rax,%rdi
    13d4:	e8 65 a4 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    13d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    13e0:	48 89 c7             	mov    %rax,%rdi
    13e3:	e8 8c a5 00 00       	callq  b974 <_ZN4Heap3popEv>
    13e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    13ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    13f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    13fa:	48 89 d6             	mov    %rdx,%rsi
    13fd:	48 89 c7             	mov    %rax,%rdi
    1400:	e8 39 a4 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1405:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    140c:	48 89 c7             	mov    %rax,%rdi
    140f:	e8 60 a5 00 00       	callq  b974 <_ZN4Heap3popEv>
    1414:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    141b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    141f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1426:	48 89 d6             	mov    %rdx,%rsi
    1429:	48 89 c7             	mov    %rax,%rdi
    142c:	e8 0d a4 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1431:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1438:	48 89 c7             	mov    %rax,%rdi
    143b:	e8 34 a5 00 00       	callq  b974 <_ZN4Heap3popEv>
    1440:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1447:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    144b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1452:	48 89 d6             	mov    %rdx,%rsi
    1455:	48 89 c7             	mov    %rax,%rdi
    1458:	e8 e1 a3 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    145d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1464:	48 89 c7             	mov    %rax,%rdi
    1467:	e8 08 a5 00 00       	callq  b974 <_ZN4Heap3popEv>
    146c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1473:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1477:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    147e:	48 89 d6             	mov    %rdx,%rsi
    1481:	48 89 c7             	mov    %rax,%rdi
    1484:	e8 b5 a3 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1489:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1490:	48 89 c7             	mov    %rax,%rdi
    1493:	e8 dc a4 00 00       	callq  b974 <_ZN4Heap3popEv>
    1498:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    149f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    14a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    14aa:	48 89 d6             	mov    %rdx,%rsi
    14ad:	48 89 c7             	mov    %rax,%rdi
    14b0:	e8 89 a3 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    14b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    14bc:	48 89 c7             	mov    %rax,%rdi
    14bf:	e8 b0 a4 00 00       	callq  b974 <_ZN4Heap3popEv>
    14c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    14cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    14cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    14d6:	48 89 d6             	mov    %rdx,%rsi
    14d9:	48 89 c7             	mov    %rax,%rdi
    14dc:	e8 5d a3 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    14e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    14e8:	48 89 c7             	mov    %rax,%rdi
    14eb:	e8 84 a4 00 00       	callq  b974 <_ZN4Heap3popEv>
    14f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    14f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    14fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1502:	48 89 d6             	mov    %rdx,%rsi
    1505:	48 89 c7             	mov    %rax,%rdi
    1508:	e8 31 a3 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    150d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1514:	48 89 c7             	mov    %rax,%rdi
    1517:	e8 58 a4 00 00       	callq  b974 <_ZN4Heap3popEv>
    151c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1523:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1527:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    152e:	48 89 d6             	mov    %rdx,%rsi
    1531:	48 89 c7             	mov    %rax,%rdi
    1534:	e8 05 a3 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1539:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1540:	48 89 c7             	mov    %rax,%rdi
    1543:	e8 2c a4 00 00       	callq  b974 <_ZN4Heap3popEv>
    1548:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    154f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1553:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    155a:	48 89 d6             	mov    %rdx,%rsi
    155d:	48 89 c7             	mov    %rax,%rdi
    1560:	e8 d9 a2 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1565:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    156c:	48 89 c7             	mov    %rax,%rdi
    156f:	e8 00 a4 00 00       	callq  b974 <_ZN4Heap3popEv>
    1574:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    157b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    157f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1586:	48 89 d6             	mov    %rdx,%rsi
    1589:	48 89 c7             	mov    %rax,%rdi
    158c:	e8 ad a2 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1591:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1598:	48 89 c7             	mov    %rax,%rdi
    159b:	e8 d4 a3 00 00       	callq  b974 <_ZN4Heap3popEv>
    15a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    15a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    15ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    15b2:	48 89 d6             	mov    %rdx,%rsi
    15b5:	48 89 c7             	mov    %rax,%rdi
    15b8:	e8 81 a2 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    15bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    15c4:	48 89 c7             	mov    %rax,%rdi
    15c7:	e8 a8 a3 00 00       	callq  b974 <_ZN4Heap3popEv>
    15cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    15d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    15d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    15de:	48 89 d6             	mov    %rdx,%rsi
    15e1:	48 89 c7             	mov    %rax,%rdi
    15e4:	e8 55 a2 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    15e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    15f0:	48 89 c7             	mov    %rax,%rdi
    15f3:	e8 7c a3 00 00       	callq  b974 <_ZN4Heap3popEv>
    15f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    15ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1603:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    160a:	48 89 d6             	mov    %rdx,%rsi
    160d:	48 89 c7             	mov    %rax,%rdi
    1610:	e8 29 a2 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1615:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    161c:	48 89 c7             	mov    %rax,%rdi
    161f:	e8 50 a3 00 00       	callq  b974 <_ZN4Heap3popEv>
    1624:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    162b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    162f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1636:	48 89 d6             	mov    %rdx,%rsi
    1639:	48 89 c7             	mov    %rax,%rdi
    163c:	e8 fd a1 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1641:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1648:	48 89 c7             	mov    %rax,%rdi
    164b:	e8 24 a3 00 00       	callq  b974 <_ZN4Heap3popEv>
    1650:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1657:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    165b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1662:	48 89 d6             	mov    %rdx,%rsi
    1665:	48 89 c7             	mov    %rax,%rdi
    1668:	e8 d1 a1 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    166d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1674:	48 89 c7             	mov    %rax,%rdi
    1677:	e8 f8 a2 00 00       	callq  b974 <_ZN4Heap3popEv>
    167c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1683:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1687:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    168e:	48 89 d6             	mov    %rdx,%rsi
    1691:	48 89 c7             	mov    %rax,%rdi
    1694:	e8 a5 a1 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1699:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    16a0:	48 89 c7             	mov    %rax,%rdi
    16a3:	e8 cc a2 00 00       	callq  b974 <_ZN4Heap3popEv>
    16a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    16af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    16b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    16ba:	48 89 d6             	mov    %rdx,%rsi
    16bd:	48 89 c7             	mov    %rax,%rdi
    16c0:	e8 79 a1 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    16c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    16cc:	48 89 c7             	mov    %rax,%rdi
    16cf:	e8 a0 a2 00 00       	callq  b974 <_ZN4Heap3popEv>
    16d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    16db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    16df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    16e6:	48 89 d6             	mov    %rdx,%rsi
    16e9:	48 89 c7             	mov    %rax,%rdi
    16ec:	e8 4d a1 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    16f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    16f8:	48 89 c7             	mov    %rax,%rdi
    16fb:	e8 74 a2 00 00       	callq  b974 <_ZN4Heap3popEv>
    1700:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1707:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    170b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1712:	48 89 d6             	mov    %rdx,%rsi
    1715:	48 89 c7             	mov    %rax,%rdi
    1718:	e8 21 a1 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    171d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1724:	48 89 c7             	mov    %rax,%rdi
    1727:	e8 48 a2 00 00       	callq  b974 <_ZN4Heap3popEv>
    172c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1733:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1737:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    173e:	48 89 d6             	mov    %rdx,%rsi
    1741:	48 89 c7             	mov    %rax,%rdi
    1744:	e8 f5 a0 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1749:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1750:	48 89 c7             	mov    %rax,%rdi
    1753:	e8 1c a2 00 00       	callq  b974 <_ZN4Heap3popEv>
    1758:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    175f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1763:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    176a:	48 89 d6             	mov    %rdx,%rsi
    176d:	48 89 c7             	mov    %rax,%rdi
    1770:	e8 c9 a0 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1775:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    177c:	48 89 c7             	mov    %rax,%rdi
    177f:	e8 f0 a1 00 00       	callq  b974 <_ZN4Heap3popEv>
    1784:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    178b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    178f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1796:	48 89 d6             	mov    %rdx,%rsi
    1799:	48 89 c7             	mov    %rax,%rdi
    179c:	e8 9d a0 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    17a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    17a8:	48 89 c7             	mov    %rax,%rdi
    17ab:	e8 c4 a1 00 00       	callq  b974 <_ZN4Heap3popEv>
    17b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    17b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    17bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    17c2:	48 89 d6             	mov    %rdx,%rsi
    17c5:	48 89 c7             	mov    %rax,%rdi
    17c8:	e8 71 a0 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    17cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    17d4:	48 89 c7             	mov    %rax,%rdi
    17d7:	e8 98 a1 00 00       	callq  b974 <_ZN4Heap3popEv>
    17dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    17e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    17e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    17ee:	48 89 d6             	mov    %rdx,%rsi
    17f1:	48 89 c7             	mov    %rax,%rdi
    17f4:	e8 45 a0 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    17f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1800:	48 89 c7             	mov    %rax,%rdi
    1803:	e8 6c a1 00 00       	callq  b974 <_ZN4Heap3popEv>
    1808:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    180f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1813:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    181a:	48 89 d6             	mov    %rdx,%rsi
    181d:	48 89 c7             	mov    %rax,%rdi
    1820:	e8 19 a0 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1825:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    182c:	48 89 c7             	mov    %rax,%rdi
    182f:	e8 40 a1 00 00       	callq  b974 <_ZN4Heap3popEv>
    1834:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    183b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    183f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1846:	48 89 d6             	mov    %rdx,%rsi
    1849:	48 89 c7             	mov    %rax,%rdi
    184c:	e8 ed 9f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1851:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1858:	48 89 c7             	mov    %rax,%rdi
    185b:	e8 14 a1 00 00       	callq  b974 <_ZN4Heap3popEv>
    1860:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1867:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    186b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1872:	48 89 d6             	mov    %rdx,%rsi
    1875:	48 89 c7             	mov    %rax,%rdi
    1878:	e8 c1 9f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    187d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1884:	48 89 c7             	mov    %rax,%rdi
    1887:	e8 e8 a0 00 00       	callq  b974 <_ZN4Heap3popEv>
    188c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1893:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1897:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    189e:	48 89 d6             	mov    %rdx,%rsi
    18a1:	48 89 c7             	mov    %rax,%rdi
    18a4:	e8 95 9f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    18a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    18b0:	48 89 c7             	mov    %rax,%rdi
    18b3:	e8 bc a0 00 00       	callq  b974 <_ZN4Heap3popEv>
    18b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    18bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    18c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    18ca:	48 89 d6             	mov    %rdx,%rsi
    18cd:	48 89 c7             	mov    %rax,%rdi
    18d0:	e8 69 9f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    18d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    18dc:	48 89 c7             	mov    %rax,%rdi
    18df:	e8 90 a0 00 00       	callq  b974 <_ZN4Heap3popEv>
    18e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    18eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    18ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    18f6:	48 89 d6             	mov    %rdx,%rsi
    18f9:	48 89 c7             	mov    %rax,%rdi
    18fc:	e8 3d 9f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1901:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1908:	48 89 c7             	mov    %rax,%rdi
    190b:	e8 64 a0 00 00       	callq  b974 <_ZN4Heap3popEv>
    1910:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1917:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    191b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1922:	48 89 d6             	mov    %rdx,%rsi
    1925:	48 89 c7             	mov    %rax,%rdi
    1928:	e8 11 9f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    192d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1934:	48 89 c7             	mov    %rax,%rdi
    1937:	e8 38 a0 00 00       	callq  b974 <_ZN4Heap3popEv>
    193c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1943:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1947:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    194e:	48 89 d6             	mov    %rdx,%rsi
    1951:	48 89 c7             	mov    %rax,%rdi
    1954:	e8 e5 9e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1959:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1960:	48 89 c7             	mov    %rax,%rdi
    1963:	e8 0c a0 00 00       	callq  b974 <_ZN4Heap3popEv>
    1968:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    196f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1973:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    197a:	48 89 d6             	mov    %rdx,%rsi
    197d:	48 89 c7             	mov    %rax,%rdi
    1980:	e8 b9 9e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1985:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    198c:	48 89 c7             	mov    %rax,%rdi
    198f:	e8 e0 9f 00 00       	callq  b974 <_ZN4Heap3popEv>
    1994:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    199b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    199f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    19a6:	48 89 d6             	mov    %rdx,%rsi
    19a9:	48 89 c7             	mov    %rax,%rdi
    19ac:	e8 8d 9e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    19b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    19b8:	48 89 c7             	mov    %rax,%rdi
    19bb:	e8 b4 9f 00 00       	callq  b974 <_ZN4Heap3popEv>
    19c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    19c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    19cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    19d2:	48 89 d6             	mov    %rdx,%rsi
    19d5:	48 89 c7             	mov    %rax,%rdi
    19d8:	e8 61 9e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    19dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    19e4:	48 89 c7             	mov    %rax,%rdi
    19e7:	e8 88 9f 00 00       	callq  b974 <_ZN4Heap3popEv>
    19ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    19f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    19f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    19fe:	48 89 d6             	mov    %rdx,%rsi
    1a01:	48 89 c7             	mov    %rax,%rdi
    1a04:	e8 35 9e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1a09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a10:	48 89 c7             	mov    %rax,%rdi
    1a13:	e8 5c 9f 00 00       	callq  b974 <_ZN4Heap3popEv>
    1a18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1a1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1a23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a2a:	48 89 d6             	mov    %rdx,%rsi
    1a2d:	48 89 c7             	mov    %rax,%rdi
    1a30:	e8 09 9e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1a35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a3c:	48 89 c7             	mov    %rax,%rdi
    1a3f:	e8 30 9f 00 00       	callq  b974 <_ZN4Heap3popEv>
    1a44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1a4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1a4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a56:	48 89 d6             	mov    %rdx,%rsi
    1a59:	48 89 c7             	mov    %rax,%rdi
    1a5c:	e8 dd 9d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1a61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a68:	48 89 c7             	mov    %rax,%rdi
    1a6b:	e8 04 9f 00 00       	callq  b974 <_ZN4Heap3popEv>
    1a70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1a77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1a7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a82:	48 89 d6             	mov    %rdx,%rsi
    1a85:	48 89 c7             	mov    %rax,%rdi
    1a88:	e8 b1 9d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1a8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a94:	48 89 c7             	mov    %rax,%rdi
    1a97:	e8 d8 9e 00 00       	callq  b974 <_ZN4Heap3popEv>
    1a9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1aa3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1aa7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1aae:	48 89 d6             	mov    %rdx,%rsi
    1ab1:	48 89 c7             	mov    %rax,%rdi
    1ab4:	e8 85 9d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1ab9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ac0:	48 89 c7             	mov    %rax,%rdi
    1ac3:	e8 ac 9e 00 00       	callq  b974 <_ZN4Heap3popEv>
    1ac8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1acf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1ad3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ada:	48 89 d6             	mov    %rdx,%rsi
    1add:	48 89 c7             	mov    %rax,%rdi
    1ae0:	e8 59 9d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1ae5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1aec:	48 89 c7             	mov    %rax,%rdi
    1aef:	e8 80 9e 00 00       	callq  b974 <_ZN4Heap3popEv>
    1af4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1afb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1aff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b06:	48 89 d6             	mov    %rdx,%rsi
    1b09:	48 89 c7             	mov    %rax,%rdi
    1b0c:	e8 2d 9d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1b11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b18:	48 89 c7             	mov    %rax,%rdi
    1b1b:	e8 54 9e 00 00       	callq  b974 <_ZN4Heap3popEv>
    1b20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1b27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1b2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b32:	48 89 d6             	mov    %rdx,%rsi
    1b35:	48 89 c7             	mov    %rax,%rdi
    1b38:	e8 01 9d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1b3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b44:	48 89 c7             	mov    %rax,%rdi
    1b47:	e8 28 9e 00 00       	callq  b974 <_ZN4Heap3popEv>
    1b4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1b53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1b57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b5e:	48 89 d6             	mov    %rdx,%rsi
    1b61:	48 89 c7             	mov    %rax,%rdi
    1b64:	e8 d5 9c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1b69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b70:	48 89 c7             	mov    %rax,%rdi
    1b73:	e8 fc 9d 00 00       	callq  b974 <_ZN4Heap3popEv>
    1b78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1b7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1b83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b8a:	48 89 d6             	mov    %rdx,%rsi
    1b8d:	48 89 c7             	mov    %rax,%rdi
    1b90:	e8 a9 9c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1b95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b9c:	48 89 c7             	mov    %rax,%rdi
    1b9f:	e8 d0 9d 00 00       	callq  b974 <_ZN4Heap3popEv>
    1ba4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1bab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1baf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1bb6:	48 89 d6             	mov    %rdx,%rsi
    1bb9:	48 89 c7             	mov    %rax,%rdi
    1bbc:	e8 7d 9c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1bc1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1bc8:	48 89 c7             	mov    %rax,%rdi
    1bcb:	e8 a4 9d 00 00       	callq  b974 <_ZN4Heap3popEv>
    1bd0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1bd7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1bdb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1be2:	48 89 d6             	mov    %rdx,%rsi
    1be5:	48 89 c7             	mov    %rax,%rdi
    1be8:	e8 51 9c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1bed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1bf4:	48 89 c7             	mov    %rax,%rdi
    1bf7:	e8 78 9d 00 00       	callq  b974 <_ZN4Heap3popEv>
    1bfc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1c03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1c07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c0e:	48 89 d6             	mov    %rdx,%rsi
    1c11:	48 89 c7             	mov    %rax,%rdi
    1c14:	e8 25 9c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1c19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c20:	48 89 c7             	mov    %rax,%rdi
    1c23:	e8 4c 9d 00 00       	callq  b974 <_ZN4Heap3popEv>
    1c28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1c2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1c33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c3a:	48 89 d6             	mov    %rdx,%rsi
    1c3d:	48 89 c7             	mov    %rax,%rdi
    1c40:	e8 f9 9b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1c45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c4c:	48 89 c7             	mov    %rax,%rdi
    1c4f:	e8 20 9d 00 00       	callq  b974 <_ZN4Heap3popEv>
    1c54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1c5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1c5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c66:	48 89 d6             	mov    %rdx,%rsi
    1c69:	48 89 c7             	mov    %rax,%rdi
    1c6c:	e8 cd 9b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1c71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c78:	48 89 c7             	mov    %rax,%rdi
    1c7b:	e8 f4 9c 00 00       	callq  b974 <_ZN4Heap3popEv>
    1c80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1c87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1c8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c92:	48 89 d6             	mov    %rdx,%rsi
    1c95:	48 89 c7             	mov    %rax,%rdi
    1c98:	e8 a1 9b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1c9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ca4:	48 89 c7             	mov    %rax,%rdi
    1ca7:	e8 c8 9c 00 00       	callq  b974 <_ZN4Heap3popEv>
    1cac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1cb3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1cb7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1cbe:	48 89 d6             	mov    %rdx,%rsi
    1cc1:	48 89 c7             	mov    %rax,%rdi
    1cc4:	e8 75 9b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1cc9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1cd0:	48 89 c7             	mov    %rax,%rdi
    1cd3:	e8 9c 9c 00 00       	callq  b974 <_ZN4Heap3popEv>
    1cd8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1cdf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1ce3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1cea:	48 89 d6             	mov    %rdx,%rsi
    1ced:	48 89 c7             	mov    %rax,%rdi
    1cf0:	e8 49 9b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1cf5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1cfc:	48 89 c7             	mov    %rax,%rdi
    1cff:	e8 70 9c 00 00       	callq  b974 <_ZN4Heap3popEv>
    1d04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1d0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1d0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d16:	48 89 d6             	mov    %rdx,%rsi
    1d19:	48 89 c7             	mov    %rax,%rdi
    1d1c:	e8 1d 9b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1d21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d28:	48 89 c7             	mov    %rax,%rdi
    1d2b:	e8 44 9c 00 00       	callq  b974 <_ZN4Heap3popEv>
    1d30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1d37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1d3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d42:	48 89 d6             	mov    %rdx,%rsi
    1d45:	48 89 c7             	mov    %rax,%rdi
    1d48:	e8 f1 9a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1d4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d54:	48 89 c7             	mov    %rax,%rdi
    1d57:	e8 18 9c 00 00       	callq  b974 <_ZN4Heap3popEv>
    1d5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1d63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1d67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d6e:	48 89 d6             	mov    %rdx,%rsi
    1d71:	48 89 c7             	mov    %rax,%rdi
    1d74:	e8 c5 9a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1d79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d80:	48 89 c7             	mov    %rax,%rdi
    1d83:	e8 ec 9b 00 00       	callq  b974 <_ZN4Heap3popEv>
    1d88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1d8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1d93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d9a:	48 89 d6             	mov    %rdx,%rsi
    1d9d:	48 89 c7             	mov    %rax,%rdi
    1da0:	e8 99 9a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1da5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1dac:	48 89 c7             	mov    %rax,%rdi
    1daf:	e8 c0 9b 00 00       	callq  b974 <_ZN4Heap3popEv>
    1db4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1dbb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1dbf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1dc6:	48 89 d6             	mov    %rdx,%rsi
    1dc9:	48 89 c7             	mov    %rax,%rdi
    1dcc:	e8 6d 9a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1dd1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1dd8:	48 89 c7             	mov    %rax,%rdi
    1ddb:	e8 94 9b 00 00       	callq  b974 <_ZN4Heap3popEv>
    1de0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1de7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1deb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1df2:	48 89 d6             	mov    %rdx,%rsi
    1df5:	48 89 c7             	mov    %rax,%rdi
    1df8:	e8 41 9a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1dfd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e04:	48 89 c7             	mov    %rax,%rdi
    1e07:	e8 68 9b 00 00       	callq  b974 <_ZN4Heap3popEv>
    1e0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1e13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1e17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e1e:	48 89 d6             	mov    %rdx,%rsi
    1e21:	48 89 c7             	mov    %rax,%rdi
    1e24:	e8 15 9a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1e29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e30:	48 89 c7             	mov    %rax,%rdi
    1e33:	e8 3c 9b 00 00       	callq  b974 <_ZN4Heap3popEv>
    1e38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1e3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1e43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e4a:	48 89 d6             	mov    %rdx,%rsi
    1e4d:	48 89 c7             	mov    %rax,%rdi
    1e50:	e8 e9 99 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1e55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e5c:	48 89 c7             	mov    %rax,%rdi
    1e5f:	e8 10 9b 00 00       	callq  b974 <_ZN4Heap3popEv>
    1e64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1e6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1e6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e76:	48 89 d6             	mov    %rdx,%rsi
    1e79:	48 89 c7             	mov    %rax,%rdi
    1e7c:	e8 bd 99 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1e81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e88:	48 89 c7             	mov    %rax,%rdi
    1e8b:	e8 e4 9a 00 00       	callq  b974 <_ZN4Heap3popEv>
    1e90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1e97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1e9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ea2:	48 89 d6             	mov    %rdx,%rsi
    1ea5:	48 89 c7             	mov    %rax,%rdi
    1ea8:	e8 91 99 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1ead:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1eb4:	48 89 c7             	mov    %rax,%rdi
    1eb7:	e8 b8 9a 00 00       	callq  b974 <_ZN4Heap3popEv>
    1ebc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1ec3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1ec7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ece:	48 89 d6             	mov    %rdx,%rsi
    1ed1:	48 89 c7             	mov    %rax,%rdi
    1ed4:	e8 65 99 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1ed9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ee0:	48 89 c7             	mov    %rax,%rdi
    1ee3:	e8 8c 9a 00 00       	callq  b974 <_ZN4Heap3popEv>
    1ee8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1eef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1ef3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1efa:	48 89 d6             	mov    %rdx,%rsi
    1efd:	48 89 c7             	mov    %rax,%rdi
    1f00:	e8 39 99 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1f05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f0c:	48 89 c7             	mov    %rax,%rdi
    1f0f:	e8 60 9a 00 00       	callq  b974 <_ZN4Heap3popEv>
    1f14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1f1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1f1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f26:	48 89 d6             	mov    %rdx,%rsi
    1f29:	48 89 c7             	mov    %rax,%rdi
    1f2c:	e8 0d 99 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1f31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f38:	48 89 c7             	mov    %rax,%rdi
    1f3b:	e8 34 9a 00 00       	callq  b974 <_ZN4Heap3popEv>
    1f40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1f47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1f4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f52:	48 89 d6             	mov    %rdx,%rsi
    1f55:	48 89 c7             	mov    %rax,%rdi
    1f58:	e8 e1 98 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1f5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f64:	48 89 c7             	mov    %rax,%rdi
    1f67:	e8 08 9a 00 00       	callq  b974 <_ZN4Heap3popEv>
    1f6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1f73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1f77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f7e:	48 89 d6             	mov    %rdx,%rsi
    1f81:	48 89 c7             	mov    %rax,%rdi
    1f84:	e8 b5 98 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1f89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f90:	48 89 c7             	mov    %rax,%rdi
    1f93:	e8 dc 99 00 00       	callq  b974 <_ZN4Heap3popEv>
    1f98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1f9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1fa3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1faa:	48 89 d6             	mov    %rdx,%rsi
    1fad:	48 89 c7             	mov    %rax,%rdi
    1fb0:	e8 89 98 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1fb5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1fbc:	48 89 c7             	mov    %rax,%rdi
    1fbf:	e8 b0 99 00 00       	callq  b974 <_ZN4Heap3popEv>
    1fc4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1fcb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1fcf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1fd6:	48 89 d6             	mov    %rdx,%rsi
    1fd9:	48 89 c7             	mov    %rax,%rdi
    1fdc:	e8 5d 98 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    1fe1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1fe8:	48 89 c7             	mov    %rax,%rdi
    1feb:	e8 84 99 00 00       	callq  b974 <_ZN4Heap3popEv>
    1ff0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1ff7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1ffb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2002:	48 89 d6             	mov    %rdx,%rsi
    2005:	48 89 c7             	mov    %rax,%rdi
    2008:	e8 31 98 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    200d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2014:	48 89 c7             	mov    %rax,%rdi
    2017:	e8 58 99 00 00       	callq  b974 <_ZN4Heap3popEv>
    201c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2023:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2027:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    202e:	48 89 d6             	mov    %rdx,%rsi
    2031:	48 89 c7             	mov    %rax,%rdi
    2034:	e8 05 98 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2039:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2040:	48 89 c7             	mov    %rax,%rdi
    2043:	e8 2c 99 00 00       	callq  b974 <_ZN4Heap3popEv>
    2048:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    204f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2053:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    205a:	48 89 d6             	mov    %rdx,%rsi
    205d:	48 89 c7             	mov    %rax,%rdi
    2060:	e8 d9 97 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2065:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    206c:	48 89 c7             	mov    %rax,%rdi
    206f:	e8 00 99 00 00       	callq  b974 <_ZN4Heap3popEv>
    2074:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    207b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    207f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2086:	48 89 d6             	mov    %rdx,%rsi
    2089:	48 89 c7             	mov    %rax,%rdi
    208c:	e8 ad 97 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2091:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2098:	48 89 c7             	mov    %rax,%rdi
    209b:	e8 d4 98 00 00       	callq  b974 <_ZN4Heap3popEv>
    20a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    20a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    20ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    20b2:	48 89 d6             	mov    %rdx,%rsi
    20b5:	48 89 c7             	mov    %rax,%rdi
    20b8:	e8 81 97 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    20bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    20c4:	48 89 c7             	mov    %rax,%rdi
    20c7:	e8 a8 98 00 00       	callq  b974 <_ZN4Heap3popEv>
    20cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    20d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    20d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    20de:	48 89 d6             	mov    %rdx,%rsi
    20e1:	48 89 c7             	mov    %rax,%rdi
    20e4:	e8 55 97 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    20e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    20f0:	48 89 c7             	mov    %rax,%rdi
    20f3:	e8 7c 98 00 00       	callq  b974 <_ZN4Heap3popEv>
    20f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    20ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2103:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    210a:	48 89 d6             	mov    %rdx,%rsi
    210d:	48 89 c7             	mov    %rax,%rdi
    2110:	e8 29 97 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2115:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    211c:	48 89 c7             	mov    %rax,%rdi
    211f:	e8 50 98 00 00       	callq  b974 <_ZN4Heap3popEv>
    2124:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    212b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    212f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2136:	48 89 d6             	mov    %rdx,%rsi
    2139:	48 89 c7             	mov    %rax,%rdi
    213c:	e8 fd 96 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2141:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2148:	48 89 c7             	mov    %rax,%rdi
    214b:	e8 24 98 00 00       	callq  b974 <_ZN4Heap3popEv>
    2150:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2157:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    215b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2162:	48 89 d6             	mov    %rdx,%rsi
    2165:	48 89 c7             	mov    %rax,%rdi
    2168:	e8 d1 96 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    216d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2174:	48 89 c7             	mov    %rax,%rdi
    2177:	e8 f8 97 00 00       	callq  b974 <_ZN4Heap3popEv>
    217c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2183:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2187:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    218e:	48 89 d6             	mov    %rdx,%rsi
    2191:	48 89 c7             	mov    %rax,%rdi
    2194:	e8 a5 96 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2199:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    21a0:	48 89 c7             	mov    %rax,%rdi
    21a3:	e8 cc 97 00 00       	callq  b974 <_ZN4Heap3popEv>
    21a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    21af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    21b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    21ba:	48 89 d6             	mov    %rdx,%rsi
    21bd:	48 89 c7             	mov    %rax,%rdi
    21c0:	e8 79 96 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    21c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    21cc:	48 89 c7             	mov    %rax,%rdi
    21cf:	e8 a0 97 00 00       	callq  b974 <_ZN4Heap3popEv>
    21d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    21db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    21df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    21e6:	48 89 d6             	mov    %rdx,%rsi
    21e9:	48 89 c7             	mov    %rax,%rdi
    21ec:	e8 4d 96 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    21f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    21f8:	48 89 c7             	mov    %rax,%rdi
    21fb:	e8 74 97 00 00       	callq  b974 <_ZN4Heap3popEv>
    2200:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2207:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    220b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2212:	48 89 d6             	mov    %rdx,%rsi
    2215:	48 89 c7             	mov    %rax,%rdi
    2218:	e8 21 96 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    221d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2224:	48 89 c7             	mov    %rax,%rdi
    2227:	e8 48 97 00 00       	callq  b974 <_ZN4Heap3popEv>
    222c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2233:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2237:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    223e:	48 89 d6             	mov    %rdx,%rsi
    2241:	48 89 c7             	mov    %rax,%rdi
    2244:	e8 f5 95 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2249:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2250:	48 89 c7             	mov    %rax,%rdi
    2253:	e8 1c 97 00 00       	callq  b974 <_ZN4Heap3popEv>
    2258:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    225f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2263:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    226a:	48 89 d6             	mov    %rdx,%rsi
    226d:	48 89 c7             	mov    %rax,%rdi
    2270:	e8 c9 95 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2275:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    227c:	48 89 c7             	mov    %rax,%rdi
    227f:	e8 f0 96 00 00       	callq  b974 <_ZN4Heap3popEv>
    2284:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    228b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    228f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2296:	48 89 d6             	mov    %rdx,%rsi
    2299:	48 89 c7             	mov    %rax,%rdi
    229c:	e8 9d 95 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    22a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    22a8:	48 89 c7             	mov    %rax,%rdi
    22ab:	e8 c4 96 00 00       	callq  b974 <_ZN4Heap3popEv>
    22b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    22b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    22bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    22c2:	48 89 d6             	mov    %rdx,%rsi
    22c5:	48 89 c7             	mov    %rax,%rdi
    22c8:	e8 71 95 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    22cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    22d4:	48 89 c7             	mov    %rax,%rdi
    22d7:	e8 98 96 00 00       	callq  b974 <_ZN4Heap3popEv>
    22dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    22e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    22e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    22ee:	48 89 d6             	mov    %rdx,%rsi
    22f1:	48 89 c7             	mov    %rax,%rdi
    22f4:	e8 45 95 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    22f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2300:	48 89 c7             	mov    %rax,%rdi
    2303:	e8 6c 96 00 00       	callq  b974 <_ZN4Heap3popEv>
    2308:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    230f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2313:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    231a:	48 89 d6             	mov    %rdx,%rsi
    231d:	48 89 c7             	mov    %rax,%rdi
    2320:	e8 19 95 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2325:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    232c:	48 89 c7             	mov    %rax,%rdi
    232f:	e8 40 96 00 00       	callq  b974 <_ZN4Heap3popEv>
    2334:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    233b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    233f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2346:	48 89 d6             	mov    %rdx,%rsi
    2349:	48 89 c7             	mov    %rax,%rdi
    234c:	e8 ed 94 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2351:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2358:	48 89 c7             	mov    %rax,%rdi
    235b:	e8 14 96 00 00       	callq  b974 <_ZN4Heap3popEv>
    2360:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2367:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    236b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2372:	48 89 d6             	mov    %rdx,%rsi
    2375:	48 89 c7             	mov    %rax,%rdi
    2378:	e8 c1 94 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    237d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2384:	48 89 c7             	mov    %rax,%rdi
    2387:	e8 e8 95 00 00       	callq  b974 <_ZN4Heap3popEv>
    238c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2393:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2397:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    239e:	48 89 d6             	mov    %rdx,%rsi
    23a1:	48 89 c7             	mov    %rax,%rdi
    23a4:	e8 95 94 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    23a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    23b0:	48 89 c7             	mov    %rax,%rdi
    23b3:	e8 bc 95 00 00       	callq  b974 <_ZN4Heap3popEv>
    23b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    23bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    23c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    23ca:	48 89 d6             	mov    %rdx,%rsi
    23cd:	48 89 c7             	mov    %rax,%rdi
    23d0:	e8 69 94 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    23d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    23dc:	48 89 c7             	mov    %rax,%rdi
    23df:	e8 90 95 00 00       	callq  b974 <_ZN4Heap3popEv>
    23e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    23eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    23ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    23f6:	48 89 d6             	mov    %rdx,%rsi
    23f9:	48 89 c7             	mov    %rax,%rdi
    23fc:	e8 3d 94 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2401:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2408:	48 89 c7             	mov    %rax,%rdi
    240b:	e8 64 95 00 00       	callq  b974 <_ZN4Heap3popEv>
    2410:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2417:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    241b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2422:	48 89 d6             	mov    %rdx,%rsi
    2425:	48 89 c7             	mov    %rax,%rdi
    2428:	e8 11 94 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    242d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2434:	48 89 c7             	mov    %rax,%rdi
    2437:	e8 38 95 00 00       	callq  b974 <_ZN4Heap3popEv>
    243c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2443:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2447:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    244e:	48 89 d6             	mov    %rdx,%rsi
    2451:	48 89 c7             	mov    %rax,%rdi
    2454:	e8 e5 93 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2459:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2460:	48 89 c7             	mov    %rax,%rdi
    2463:	e8 0c 95 00 00       	callq  b974 <_ZN4Heap3popEv>
    2468:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    246f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2473:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    247a:	48 89 d6             	mov    %rdx,%rsi
    247d:	48 89 c7             	mov    %rax,%rdi
    2480:	e8 b9 93 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2485:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    248c:	48 89 c7             	mov    %rax,%rdi
    248f:	e8 e0 94 00 00       	callq  b974 <_ZN4Heap3popEv>
    2494:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    249b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    249f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    24a6:	48 89 d6             	mov    %rdx,%rsi
    24a9:	48 89 c7             	mov    %rax,%rdi
    24ac:	e8 8d 93 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    24b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    24b8:	48 89 c7             	mov    %rax,%rdi
    24bb:	e8 b4 94 00 00       	callq  b974 <_ZN4Heap3popEv>
    24c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    24c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    24cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    24d2:	48 89 d6             	mov    %rdx,%rsi
    24d5:	48 89 c7             	mov    %rax,%rdi
    24d8:	e8 61 93 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    24dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    24e4:	48 89 c7             	mov    %rax,%rdi
    24e7:	e8 88 94 00 00       	callq  b974 <_ZN4Heap3popEv>
    24ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    24f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    24f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    24fe:	48 89 d6             	mov    %rdx,%rsi
    2501:	48 89 c7             	mov    %rax,%rdi
    2504:	e8 35 93 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2509:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2510:	48 89 c7             	mov    %rax,%rdi
    2513:	e8 5c 94 00 00       	callq  b974 <_ZN4Heap3popEv>
    2518:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    251f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2523:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    252a:	48 89 d6             	mov    %rdx,%rsi
    252d:	48 89 c7             	mov    %rax,%rdi
    2530:	e8 09 93 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2535:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    253c:	48 89 c7             	mov    %rax,%rdi
    253f:	e8 30 94 00 00       	callq  b974 <_ZN4Heap3popEv>
    2544:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    254b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    254f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2556:	48 89 d6             	mov    %rdx,%rsi
    2559:	48 89 c7             	mov    %rax,%rdi
    255c:	e8 dd 92 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2561:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2568:	48 89 c7             	mov    %rax,%rdi
    256b:	e8 04 94 00 00       	callq  b974 <_ZN4Heap3popEv>
    2570:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2577:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    257b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2582:	48 89 d6             	mov    %rdx,%rsi
    2585:	48 89 c7             	mov    %rax,%rdi
    2588:	e8 b1 92 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    258d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2594:	48 89 c7             	mov    %rax,%rdi
    2597:	e8 d8 93 00 00       	callq  b974 <_ZN4Heap3popEv>
    259c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    25a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    25a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    25ae:	48 89 d6             	mov    %rdx,%rsi
    25b1:	48 89 c7             	mov    %rax,%rdi
    25b4:	e8 85 92 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    25b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    25c0:	48 89 c7             	mov    %rax,%rdi
    25c3:	e8 ac 93 00 00       	callq  b974 <_ZN4Heap3popEv>
    25c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    25cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    25d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    25da:	48 89 d6             	mov    %rdx,%rsi
    25dd:	48 89 c7             	mov    %rax,%rdi
    25e0:	e8 59 92 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    25e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    25ec:	48 89 c7             	mov    %rax,%rdi
    25ef:	e8 80 93 00 00       	callq  b974 <_ZN4Heap3popEv>
    25f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    25fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    25ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2606:	48 89 d6             	mov    %rdx,%rsi
    2609:	48 89 c7             	mov    %rax,%rdi
    260c:	e8 2d 92 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2611:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2618:	48 89 c7             	mov    %rax,%rdi
    261b:	e8 54 93 00 00       	callq  b974 <_ZN4Heap3popEv>
    2620:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2627:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    262b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2632:	48 89 d6             	mov    %rdx,%rsi
    2635:	48 89 c7             	mov    %rax,%rdi
    2638:	e8 01 92 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    263d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2644:	48 89 c7             	mov    %rax,%rdi
    2647:	e8 28 93 00 00       	callq  b974 <_ZN4Heap3popEv>
    264c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2653:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2657:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    265e:	48 89 d6             	mov    %rdx,%rsi
    2661:	48 89 c7             	mov    %rax,%rdi
    2664:	e8 d5 91 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2669:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2670:	48 89 c7             	mov    %rax,%rdi
    2673:	e8 fc 92 00 00       	callq  b974 <_ZN4Heap3popEv>
    2678:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    267f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2683:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    268a:	48 89 d6             	mov    %rdx,%rsi
    268d:	48 89 c7             	mov    %rax,%rdi
    2690:	e8 a9 91 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2695:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    269c:	48 89 c7             	mov    %rax,%rdi
    269f:	e8 d0 92 00 00       	callq  b974 <_ZN4Heap3popEv>
    26a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    26ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    26af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    26b6:	48 89 d6             	mov    %rdx,%rsi
    26b9:	48 89 c7             	mov    %rax,%rdi
    26bc:	e8 7d 91 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    26c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    26c8:	48 89 c7             	mov    %rax,%rdi
    26cb:	e8 a4 92 00 00       	callq  b974 <_ZN4Heap3popEv>
    26d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    26d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    26db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    26e2:	48 89 d6             	mov    %rdx,%rsi
    26e5:	48 89 c7             	mov    %rax,%rdi
    26e8:	e8 51 91 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    26ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    26f4:	48 89 c7             	mov    %rax,%rdi
    26f7:	e8 78 92 00 00       	callq  b974 <_ZN4Heap3popEv>
    26fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2703:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2707:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    270e:	48 89 d6             	mov    %rdx,%rsi
    2711:	48 89 c7             	mov    %rax,%rdi
    2714:	e8 25 91 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2719:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2720:	48 89 c7             	mov    %rax,%rdi
    2723:	e8 4c 92 00 00       	callq  b974 <_ZN4Heap3popEv>
    2728:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    272f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2733:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    273a:	48 89 d6             	mov    %rdx,%rsi
    273d:	48 89 c7             	mov    %rax,%rdi
    2740:	e8 f9 90 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2745:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    274c:	48 89 c7             	mov    %rax,%rdi
    274f:	e8 20 92 00 00       	callq  b974 <_ZN4Heap3popEv>
    2754:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    275b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    275f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2766:	48 89 d6             	mov    %rdx,%rsi
    2769:	48 89 c7             	mov    %rax,%rdi
    276c:	e8 cd 90 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2771:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2778:	48 89 c7             	mov    %rax,%rdi
    277b:	e8 f4 91 00 00       	callq  b974 <_ZN4Heap3popEv>
    2780:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2787:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    278b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2792:	48 89 d6             	mov    %rdx,%rsi
    2795:	48 89 c7             	mov    %rax,%rdi
    2798:	e8 a1 90 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    279d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    27a4:	48 89 c7             	mov    %rax,%rdi
    27a7:	e8 c8 91 00 00       	callq  b974 <_ZN4Heap3popEv>
    27ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    27b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    27b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    27be:	48 89 d6             	mov    %rdx,%rsi
    27c1:	48 89 c7             	mov    %rax,%rdi
    27c4:	e8 75 90 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    27c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    27d0:	48 89 c7             	mov    %rax,%rdi
    27d3:	e8 9c 91 00 00       	callq  b974 <_ZN4Heap3popEv>
    27d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    27df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    27e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    27ea:	48 89 d6             	mov    %rdx,%rsi
    27ed:	48 89 c7             	mov    %rax,%rdi
    27f0:	e8 49 90 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    27f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    27fc:	48 89 c7             	mov    %rax,%rdi
    27ff:	e8 70 91 00 00       	callq  b974 <_ZN4Heap3popEv>
    2804:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    280b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    280f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2816:	48 89 d6             	mov    %rdx,%rsi
    2819:	48 89 c7             	mov    %rax,%rdi
    281c:	e8 1d 90 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2821:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2828:	48 89 c7             	mov    %rax,%rdi
    282b:	e8 44 91 00 00       	callq  b974 <_ZN4Heap3popEv>
    2830:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2837:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    283b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2842:	48 89 d6             	mov    %rdx,%rsi
    2845:	48 89 c7             	mov    %rax,%rdi
    2848:	e8 f1 8f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    284d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2854:	48 89 c7             	mov    %rax,%rdi
    2857:	e8 18 91 00 00       	callq  b974 <_ZN4Heap3popEv>
    285c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2863:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2867:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    286e:	48 89 d6             	mov    %rdx,%rsi
    2871:	48 89 c7             	mov    %rax,%rdi
    2874:	e8 c5 8f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2879:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2880:	48 89 c7             	mov    %rax,%rdi
    2883:	e8 ec 90 00 00       	callq  b974 <_ZN4Heap3popEv>
    2888:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    288f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2893:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    289a:	48 89 d6             	mov    %rdx,%rsi
    289d:	48 89 c7             	mov    %rax,%rdi
    28a0:	e8 99 8f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    28a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    28ac:	48 89 c7             	mov    %rax,%rdi
    28af:	e8 c0 90 00 00       	callq  b974 <_ZN4Heap3popEv>
    28b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    28bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    28bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    28c6:	48 89 d6             	mov    %rdx,%rsi
    28c9:	48 89 c7             	mov    %rax,%rdi
    28cc:	e8 6d 8f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    28d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    28d8:	48 89 c7             	mov    %rax,%rdi
    28db:	e8 94 90 00 00       	callq  b974 <_ZN4Heap3popEv>
    28e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    28e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    28eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    28f2:	48 89 d6             	mov    %rdx,%rsi
    28f5:	48 89 c7             	mov    %rax,%rdi
    28f8:	e8 41 8f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    28fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2904:	48 89 c7             	mov    %rax,%rdi
    2907:	e8 68 90 00 00       	callq  b974 <_ZN4Heap3popEv>
    290c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2913:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2917:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    291e:	48 89 d6             	mov    %rdx,%rsi
    2921:	48 89 c7             	mov    %rax,%rdi
    2924:	e8 15 8f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2929:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2930:	48 89 c7             	mov    %rax,%rdi
    2933:	e8 3c 90 00 00       	callq  b974 <_ZN4Heap3popEv>
    2938:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    293f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2943:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    294a:	48 89 d6             	mov    %rdx,%rsi
    294d:	48 89 c7             	mov    %rax,%rdi
    2950:	e8 e9 8e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2955:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    295c:	48 89 c7             	mov    %rax,%rdi
    295f:	e8 10 90 00 00       	callq  b974 <_ZN4Heap3popEv>
    2964:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    296b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    296f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2976:	48 89 d6             	mov    %rdx,%rsi
    2979:	48 89 c7             	mov    %rax,%rdi
    297c:	e8 bd 8e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2981:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2988:	48 89 c7             	mov    %rax,%rdi
    298b:	e8 e4 8f 00 00       	callq  b974 <_ZN4Heap3popEv>
    2990:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2997:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    299b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    29a2:	48 89 d6             	mov    %rdx,%rsi
    29a5:	48 89 c7             	mov    %rax,%rdi
    29a8:	e8 91 8e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    29ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    29b4:	48 89 c7             	mov    %rax,%rdi
    29b7:	e8 b8 8f 00 00       	callq  b974 <_ZN4Heap3popEv>
    29bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    29c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    29c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    29ce:	48 89 d6             	mov    %rdx,%rsi
    29d1:	48 89 c7             	mov    %rax,%rdi
    29d4:	e8 65 8e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    29d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    29e0:	48 89 c7             	mov    %rax,%rdi
    29e3:	e8 8c 8f 00 00       	callq  b974 <_ZN4Heap3popEv>
    29e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    29ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    29f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    29fa:	48 89 d6             	mov    %rdx,%rsi
    29fd:	48 89 c7             	mov    %rax,%rdi
    2a00:	e8 39 8e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2a05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a0c:	48 89 c7             	mov    %rax,%rdi
    2a0f:	e8 60 8f 00 00       	callq  b974 <_ZN4Heap3popEv>
    2a14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2a1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2a1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a26:	48 89 d6             	mov    %rdx,%rsi
    2a29:	48 89 c7             	mov    %rax,%rdi
    2a2c:	e8 0d 8e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2a31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a38:	48 89 c7             	mov    %rax,%rdi
    2a3b:	e8 34 8f 00 00       	callq  b974 <_ZN4Heap3popEv>
    2a40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2a47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2a4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a52:	48 89 d6             	mov    %rdx,%rsi
    2a55:	48 89 c7             	mov    %rax,%rdi
    2a58:	e8 e1 8d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2a5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a64:	48 89 c7             	mov    %rax,%rdi
    2a67:	e8 08 8f 00 00       	callq  b974 <_ZN4Heap3popEv>
    2a6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2a73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2a77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a7e:	48 89 d6             	mov    %rdx,%rsi
    2a81:	48 89 c7             	mov    %rax,%rdi
    2a84:	e8 b5 8d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2a89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a90:	48 89 c7             	mov    %rax,%rdi
    2a93:	e8 dc 8e 00 00       	callq  b974 <_ZN4Heap3popEv>
    2a98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2a9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2aa3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2aaa:	48 89 d6             	mov    %rdx,%rsi
    2aad:	48 89 c7             	mov    %rax,%rdi
    2ab0:	e8 89 8d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2ab5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2abc:	48 89 c7             	mov    %rax,%rdi
    2abf:	e8 b0 8e 00 00       	callq  b974 <_ZN4Heap3popEv>
    2ac4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2acb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2acf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ad6:	48 89 d6             	mov    %rdx,%rsi
    2ad9:	48 89 c7             	mov    %rax,%rdi
    2adc:	e8 5d 8d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2ae1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ae8:	48 89 c7             	mov    %rax,%rdi
    2aeb:	e8 84 8e 00 00       	callq  b974 <_ZN4Heap3popEv>
    2af0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2af7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2afb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b02:	48 89 d6             	mov    %rdx,%rsi
    2b05:	48 89 c7             	mov    %rax,%rdi
    2b08:	e8 31 8d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2b0d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b14:	48 89 c7             	mov    %rax,%rdi
    2b17:	e8 58 8e 00 00       	callq  b974 <_ZN4Heap3popEv>
    2b1c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2b23:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2b27:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b2e:	48 89 d6             	mov    %rdx,%rsi
    2b31:	48 89 c7             	mov    %rax,%rdi
    2b34:	e8 05 8d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2b39:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b40:	48 89 c7             	mov    %rax,%rdi
    2b43:	e8 2c 8e 00 00       	callq  b974 <_ZN4Heap3popEv>
    2b48:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2b4f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2b53:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b5a:	48 89 d6             	mov    %rdx,%rsi
    2b5d:	48 89 c7             	mov    %rax,%rdi
    2b60:	e8 d9 8c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2b65:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b6c:	48 89 c7             	mov    %rax,%rdi
    2b6f:	e8 00 8e 00 00       	callq  b974 <_ZN4Heap3popEv>
    2b74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2b7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2b7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b86:	48 89 d6             	mov    %rdx,%rsi
    2b89:	48 89 c7             	mov    %rax,%rdi
    2b8c:	e8 ad 8c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2b91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b98:	48 89 c7             	mov    %rax,%rdi
    2b9b:	e8 d4 8d 00 00       	callq  b974 <_ZN4Heap3popEv>
    2ba0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2ba7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2bab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2bb2:	48 89 d6             	mov    %rdx,%rsi
    2bb5:	48 89 c7             	mov    %rax,%rdi
    2bb8:	e8 81 8c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2bbd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2bc4:	48 89 c7             	mov    %rax,%rdi
    2bc7:	e8 a8 8d 00 00       	callq  b974 <_ZN4Heap3popEv>
    2bcc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2bd3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2bd7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2bde:	48 89 d6             	mov    %rdx,%rsi
    2be1:	48 89 c7             	mov    %rax,%rdi
    2be4:	e8 55 8c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2be9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2bf0:	48 89 c7             	mov    %rax,%rdi
    2bf3:	e8 7c 8d 00 00       	callq  b974 <_ZN4Heap3popEv>
    2bf8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2bff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2c03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c0a:	48 89 d6             	mov    %rdx,%rsi
    2c0d:	48 89 c7             	mov    %rax,%rdi
    2c10:	e8 29 8c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2c15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c1c:	48 89 c7             	mov    %rax,%rdi
    2c1f:	e8 50 8d 00 00       	callq  b974 <_ZN4Heap3popEv>
    2c24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2c2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2c2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c36:	48 89 d6             	mov    %rdx,%rsi
    2c39:	48 89 c7             	mov    %rax,%rdi
    2c3c:	e8 fd 8b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2c41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c48:	48 89 c7             	mov    %rax,%rdi
    2c4b:	e8 24 8d 00 00       	callq  b974 <_ZN4Heap3popEv>
    2c50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2c57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2c5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c62:	48 89 d6             	mov    %rdx,%rsi
    2c65:	48 89 c7             	mov    %rax,%rdi
    2c68:	e8 d1 8b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2c6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c74:	48 89 c7             	mov    %rax,%rdi
    2c77:	e8 f8 8c 00 00       	callq  b974 <_ZN4Heap3popEv>
    2c7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2c83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2c87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c8e:	48 89 d6             	mov    %rdx,%rsi
    2c91:	48 89 c7             	mov    %rax,%rdi
    2c94:	e8 a5 8b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2c99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ca0:	48 89 c7             	mov    %rax,%rdi
    2ca3:	e8 cc 8c 00 00       	callq  b974 <_ZN4Heap3popEv>
    2ca8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2caf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2cb3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2cba:	48 89 d6             	mov    %rdx,%rsi
    2cbd:	48 89 c7             	mov    %rax,%rdi
    2cc0:	e8 79 8b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2cc5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ccc:	48 89 c7             	mov    %rax,%rdi
    2ccf:	e8 a0 8c 00 00       	callq  b974 <_ZN4Heap3popEv>
    2cd4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2cdb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2cdf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ce6:	48 89 d6             	mov    %rdx,%rsi
    2ce9:	48 89 c7             	mov    %rax,%rdi
    2cec:	e8 4d 8b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2cf1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2cf8:	48 89 c7             	mov    %rax,%rdi
    2cfb:	e8 74 8c 00 00       	callq  b974 <_ZN4Heap3popEv>
    2d00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2d07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2d0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d12:	48 89 d6             	mov    %rdx,%rsi
    2d15:	48 89 c7             	mov    %rax,%rdi
    2d18:	e8 21 8b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2d1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d24:	48 89 c7             	mov    %rax,%rdi
    2d27:	e8 48 8c 00 00       	callq  b974 <_ZN4Heap3popEv>
    2d2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2d33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2d37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d3e:	48 89 d6             	mov    %rdx,%rsi
    2d41:	48 89 c7             	mov    %rax,%rdi
    2d44:	e8 f5 8a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2d49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d50:	48 89 c7             	mov    %rax,%rdi
    2d53:	e8 1c 8c 00 00       	callq  b974 <_ZN4Heap3popEv>
    2d58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2d5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2d63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d6a:	48 89 d6             	mov    %rdx,%rsi
    2d6d:	48 89 c7             	mov    %rax,%rdi
    2d70:	e8 c9 8a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2d75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d7c:	48 89 c7             	mov    %rax,%rdi
    2d7f:	e8 f0 8b 00 00       	callq  b974 <_ZN4Heap3popEv>
    2d84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2d8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2d8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d96:	48 89 d6             	mov    %rdx,%rsi
    2d99:	48 89 c7             	mov    %rax,%rdi
    2d9c:	e8 9d 8a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2da1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2da8:	48 89 c7             	mov    %rax,%rdi
    2dab:	e8 c4 8b 00 00       	callq  b974 <_ZN4Heap3popEv>
    2db0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2db7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2dbb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2dc2:	48 89 d6             	mov    %rdx,%rsi
    2dc5:	48 89 c7             	mov    %rax,%rdi
    2dc8:	e8 71 8a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2dcd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2dd4:	48 89 c7             	mov    %rax,%rdi
    2dd7:	e8 98 8b 00 00       	callq  b974 <_ZN4Heap3popEv>
    2ddc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2de3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2de7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2dee:	48 89 d6             	mov    %rdx,%rsi
    2df1:	48 89 c7             	mov    %rax,%rdi
    2df4:	e8 45 8a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2df9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e00:	48 89 c7             	mov    %rax,%rdi
    2e03:	e8 6c 8b 00 00       	callq  b974 <_ZN4Heap3popEv>
    2e08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2e0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2e13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e1a:	48 89 d6             	mov    %rdx,%rsi
    2e1d:	48 89 c7             	mov    %rax,%rdi
    2e20:	e8 19 8a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2e25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e2c:	48 89 c7             	mov    %rax,%rdi
    2e2f:	e8 40 8b 00 00       	callq  b974 <_ZN4Heap3popEv>
    2e34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2e3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2e3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e46:	48 89 d6             	mov    %rdx,%rsi
    2e49:	48 89 c7             	mov    %rax,%rdi
    2e4c:	e8 ed 89 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2e51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e58:	48 89 c7             	mov    %rax,%rdi
    2e5b:	e8 14 8b 00 00       	callq  b974 <_ZN4Heap3popEv>
    2e60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2e67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2e6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e72:	48 89 d6             	mov    %rdx,%rsi
    2e75:	48 89 c7             	mov    %rax,%rdi
    2e78:	e8 c1 89 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2e7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e84:	48 89 c7             	mov    %rax,%rdi
    2e87:	e8 e8 8a 00 00       	callq  b974 <_ZN4Heap3popEv>
    2e8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2e93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2e97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e9e:	48 89 d6             	mov    %rdx,%rsi
    2ea1:	48 89 c7             	mov    %rax,%rdi
    2ea4:	e8 95 89 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2ea9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2eb0:	48 89 c7             	mov    %rax,%rdi
    2eb3:	e8 bc 8a 00 00       	callq  b974 <_ZN4Heap3popEv>
    2eb8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2ebf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2ec3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2eca:	48 89 d6             	mov    %rdx,%rsi
    2ecd:	48 89 c7             	mov    %rax,%rdi
    2ed0:	e8 69 89 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2ed5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2edc:	48 89 c7             	mov    %rax,%rdi
    2edf:	e8 90 8a 00 00       	callq  b974 <_ZN4Heap3popEv>
    2ee4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2eeb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2eef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ef6:	48 89 d6             	mov    %rdx,%rsi
    2ef9:	48 89 c7             	mov    %rax,%rdi
    2efc:	e8 3d 89 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2f01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f08:	48 89 c7             	mov    %rax,%rdi
    2f0b:	e8 64 8a 00 00       	callq  b974 <_ZN4Heap3popEv>
    2f10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2f17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2f1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f22:	48 89 d6             	mov    %rdx,%rsi
    2f25:	48 89 c7             	mov    %rax,%rdi
    2f28:	e8 11 89 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2f2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f34:	48 89 c7             	mov    %rax,%rdi
    2f37:	e8 38 8a 00 00       	callq  b974 <_ZN4Heap3popEv>
    2f3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2f43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2f47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f4e:	48 89 d6             	mov    %rdx,%rsi
    2f51:	48 89 c7             	mov    %rax,%rdi
    2f54:	e8 e5 88 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2f59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f60:	48 89 c7             	mov    %rax,%rdi
    2f63:	e8 0c 8a 00 00       	callq  b974 <_ZN4Heap3popEv>
    2f68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2f6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2f73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f7a:	48 89 d6             	mov    %rdx,%rsi
    2f7d:	48 89 c7             	mov    %rax,%rdi
    2f80:	e8 b9 88 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2f85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f8c:	48 89 c7             	mov    %rax,%rdi
    2f8f:	e8 e0 89 00 00       	callq  b974 <_ZN4Heap3popEv>
    2f94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2f9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2f9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2fa6:	48 89 d6             	mov    %rdx,%rsi
    2fa9:	48 89 c7             	mov    %rax,%rdi
    2fac:	e8 8d 88 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2fb1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2fb8:	48 89 c7             	mov    %rax,%rdi
    2fbb:	e8 b4 89 00 00       	callq  b974 <_ZN4Heap3popEv>
    2fc0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2fc7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2fcb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2fd2:	48 89 d6             	mov    %rdx,%rsi
    2fd5:	48 89 c7             	mov    %rax,%rdi
    2fd8:	e8 61 88 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    2fdd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2fe4:	48 89 c7             	mov    %rax,%rdi
    2fe7:	e8 88 89 00 00       	callq  b974 <_ZN4Heap3popEv>
    2fec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2ff3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2ff7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ffe:	48 89 d6             	mov    %rdx,%rsi
    3001:	48 89 c7             	mov    %rax,%rdi
    3004:	e8 35 88 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3009:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3010:	48 89 c7             	mov    %rax,%rdi
    3013:	e8 5c 89 00 00       	callq  b974 <_ZN4Heap3popEv>
    3018:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    301f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3023:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    302a:	48 89 d6             	mov    %rdx,%rsi
    302d:	48 89 c7             	mov    %rax,%rdi
    3030:	e8 09 88 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3035:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    303c:	48 89 c7             	mov    %rax,%rdi
    303f:	e8 30 89 00 00       	callq  b974 <_ZN4Heap3popEv>
    3044:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    304b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    304f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3056:	48 89 d6             	mov    %rdx,%rsi
    3059:	48 89 c7             	mov    %rax,%rdi
    305c:	e8 dd 87 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3061:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3068:	48 89 c7             	mov    %rax,%rdi
    306b:	e8 04 89 00 00       	callq  b974 <_ZN4Heap3popEv>
    3070:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3077:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    307b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3082:	48 89 d6             	mov    %rdx,%rsi
    3085:	48 89 c7             	mov    %rax,%rdi
    3088:	e8 b1 87 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    308d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3094:	48 89 c7             	mov    %rax,%rdi
    3097:	e8 d8 88 00 00       	callq  b974 <_ZN4Heap3popEv>
    309c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    30a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    30a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    30ae:	48 89 d6             	mov    %rdx,%rsi
    30b1:	48 89 c7             	mov    %rax,%rdi
    30b4:	e8 85 87 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    30b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    30c0:	48 89 c7             	mov    %rax,%rdi
    30c3:	e8 ac 88 00 00       	callq  b974 <_ZN4Heap3popEv>
    30c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    30cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    30d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    30da:	48 89 d6             	mov    %rdx,%rsi
    30dd:	48 89 c7             	mov    %rax,%rdi
    30e0:	e8 59 87 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    30e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    30ec:	48 89 c7             	mov    %rax,%rdi
    30ef:	e8 80 88 00 00       	callq  b974 <_ZN4Heap3popEv>
    30f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    30fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    30ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3106:	48 89 d6             	mov    %rdx,%rsi
    3109:	48 89 c7             	mov    %rax,%rdi
    310c:	e8 2d 87 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3111:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3118:	48 89 c7             	mov    %rax,%rdi
    311b:	e8 54 88 00 00       	callq  b974 <_ZN4Heap3popEv>
    3120:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3127:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    312b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3132:	48 89 d6             	mov    %rdx,%rsi
    3135:	48 89 c7             	mov    %rax,%rdi
    3138:	e8 01 87 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    313d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3144:	48 89 c7             	mov    %rax,%rdi
    3147:	e8 28 88 00 00       	callq  b974 <_ZN4Heap3popEv>
    314c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3153:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3157:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    315e:	48 89 d6             	mov    %rdx,%rsi
    3161:	48 89 c7             	mov    %rax,%rdi
    3164:	e8 d5 86 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3169:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3170:	48 89 c7             	mov    %rax,%rdi
    3173:	e8 fc 87 00 00       	callq  b974 <_ZN4Heap3popEv>
    3178:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    317f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3183:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    318a:	48 89 d6             	mov    %rdx,%rsi
    318d:	48 89 c7             	mov    %rax,%rdi
    3190:	e8 a9 86 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3195:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    319c:	48 89 c7             	mov    %rax,%rdi
    319f:	e8 d0 87 00 00       	callq  b974 <_ZN4Heap3popEv>
    31a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    31ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    31af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    31b6:	48 89 d6             	mov    %rdx,%rsi
    31b9:	48 89 c7             	mov    %rax,%rdi
    31bc:	e8 7d 86 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    31c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    31c8:	48 89 c7             	mov    %rax,%rdi
    31cb:	e8 a4 87 00 00       	callq  b974 <_ZN4Heap3popEv>
    31d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    31d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    31db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    31e2:	48 89 d6             	mov    %rdx,%rsi
    31e5:	48 89 c7             	mov    %rax,%rdi
    31e8:	e8 51 86 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    31ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    31f4:	48 89 c7             	mov    %rax,%rdi
    31f7:	e8 78 87 00 00       	callq  b974 <_ZN4Heap3popEv>
    31fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3203:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3207:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    320e:	48 89 d6             	mov    %rdx,%rsi
    3211:	48 89 c7             	mov    %rax,%rdi
    3214:	e8 25 86 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3219:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3220:	48 89 c7             	mov    %rax,%rdi
    3223:	e8 4c 87 00 00       	callq  b974 <_ZN4Heap3popEv>
    3228:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    322f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3233:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    323a:	48 89 d6             	mov    %rdx,%rsi
    323d:	48 89 c7             	mov    %rax,%rdi
    3240:	e8 f9 85 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3245:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    324c:	48 89 c7             	mov    %rax,%rdi
    324f:	e8 20 87 00 00       	callq  b974 <_ZN4Heap3popEv>
    3254:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    325b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    325f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3266:	48 89 d6             	mov    %rdx,%rsi
    3269:	48 89 c7             	mov    %rax,%rdi
    326c:	e8 cd 85 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3271:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3278:	48 89 c7             	mov    %rax,%rdi
    327b:	e8 f4 86 00 00       	callq  b974 <_ZN4Heap3popEv>
    3280:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3287:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    328b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3292:	48 89 d6             	mov    %rdx,%rsi
    3295:	48 89 c7             	mov    %rax,%rdi
    3298:	e8 a1 85 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    329d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    32a4:	48 89 c7             	mov    %rax,%rdi
    32a7:	e8 c8 86 00 00       	callq  b974 <_ZN4Heap3popEv>
    32ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    32b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    32b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    32be:	48 89 d6             	mov    %rdx,%rsi
    32c1:	48 89 c7             	mov    %rax,%rdi
    32c4:	e8 75 85 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    32c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    32d0:	48 89 c7             	mov    %rax,%rdi
    32d3:	e8 9c 86 00 00       	callq  b974 <_ZN4Heap3popEv>
    32d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    32df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    32e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    32ea:	48 89 d6             	mov    %rdx,%rsi
    32ed:	48 89 c7             	mov    %rax,%rdi
    32f0:	e8 49 85 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    32f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    32fc:	48 89 c7             	mov    %rax,%rdi
    32ff:	e8 70 86 00 00       	callq  b974 <_ZN4Heap3popEv>
    3304:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    330b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    330f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3316:	48 89 d6             	mov    %rdx,%rsi
    3319:	48 89 c7             	mov    %rax,%rdi
    331c:	e8 1d 85 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3321:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3328:	48 89 c7             	mov    %rax,%rdi
    332b:	e8 44 86 00 00       	callq  b974 <_ZN4Heap3popEv>
    3330:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3337:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    333b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3342:	48 89 d6             	mov    %rdx,%rsi
    3345:	48 89 c7             	mov    %rax,%rdi
    3348:	e8 f1 84 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    334d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3354:	48 89 c7             	mov    %rax,%rdi
    3357:	e8 18 86 00 00       	callq  b974 <_ZN4Heap3popEv>
    335c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3363:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3367:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    336e:	48 89 d6             	mov    %rdx,%rsi
    3371:	48 89 c7             	mov    %rax,%rdi
    3374:	e8 c5 84 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3379:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3380:	48 89 c7             	mov    %rax,%rdi
    3383:	e8 ec 85 00 00       	callq  b974 <_ZN4Heap3popEv>
    3388:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    338f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3393:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    339a:	48 89 d6             	mov    %rdx,%rsi
    339d:	48 89 c7             	mov    %rax,%rdi
    33a0:	e8 99 84 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    33a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    33ac:	48 89 c7             	mov    %rax,%rdi
    33af:	e8 c0 85 00 00       	callq  b974 <_ZN4Heap3popEv>
    33b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    33bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    33bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    33c6:	48 89 d6             	mov    %rdx,%rsi
    33c9:	48 89 c7             	mov    %rax,%rdi
    33cc:	e8 6d 84 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    33d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    33d8:	48 89 c7             	mov    %rax,%rdi
    33db:	e8 94 85 00 00       	callq  b974 <_ZN4Heap3popEv>
    33e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    33e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    33eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    33f2:	48 89 d6             	mov    %rdx,%rsi
    33f5:	48 89 c7             	mov    %rax,%rdi
    33f8:	e8 41 84 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    33fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3404:	48 89 c7             	mov    %rax,%rdi
    3407:	e8 68 85 00 00       	callq  b974 <_ZN4Heap3popEv>
    340c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3413:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3417:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    341e:	48 89 d6             	mov    %rdx,%rsi
    3421:	48 89 c7             	mov    %rax,%rdi
    3424:	e8 15 84 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3429:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3430:	48 89 c7             	mov    %rax,%rdi
    3433:	e8 3c 85 00 00       	callq  b974 <_ZN4Heap3popEv>
    3438:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    343f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3443:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    344a:	48 89 d6             	mov    %rdx,%rsi
    344d:	48 89 c7             	mov    %rax,%rdi
    3450:	e8 e9 83 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3455:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    345c:	48 89 c7             	mov    %rax,%rdi
    345f:	e8 10 85 00 00       	callq  b974 <_ZN4Heap3popEv>
    3464:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    346b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    346f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3476:	48 89 d6             	mov    %rdx,%rsi
    3479:	48 89 c7             	mov    %rax,%rdi
    347c:	e8 bd 83 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3481:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3488:	48 89 c7             	mov    %rax,%rdi
    348b:	e8 e4 84 00 00       	callq  b974 <_ZN4Heap3popEv>
    3490:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3497:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    349b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    34a2:	48 89 d6             	mov    %rdx,%rsi
    34a5:	48 89 c7             	mov    %rax,%rdi
    34a8:	e8 91 83 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    34ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    34b4:	48 89 c7             	mov    %rax,%rdi
    34b7:	e8 b8 84 00 00       	callq  b974 <_ZN4Heap3popEv>
    34bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    34c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    34c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    34ce:	48 89 d6             	mov    %rdx,%rsi
    34d1:	48 89 c7             	mov    %rax,%rdi
    34d4:	e8 65 83 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    34d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    34e0:	48 89 c7             	mov    %rax,%rdi
    34e3:	e8 8c 84 00 00       	callq  b974 <_ZN4Heap3popEv>
    34e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    34ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    34f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    34fa:	48 89 d6             	mov    %rdx,%rsi
    34fd:	48 89 c7             	mov    %rax,%rdi
    3500:	e8 39 83 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3505:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    350c:	48 89 c7             	mov    %rax,%rdi
    350f:	e8 60 84 00 00       	callq  b974 <_ZN4Heap3popEv>
    3514:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    351b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    351f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3526:	48 89 d6             	mov    %rdx,%rsi
    3529:	48 89 c7             	mov    %rax,%rdi
    352c:	e8 0d 83 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3531:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3538:	48 89 c7             	mov    %rax,%rdi
    353b:	e8 34 84 00 00       	callq  b974 <_ZN4Heap3popEv>
    3540:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3547:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    354b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3552:	48 89 d6             	mov    %rdx,%rsi
    3555:	48 89 c7             	mov    %rax,%rdi
    3558:	e8 e1 82 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    355d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3564:	48 89 c7             	mov    %rax,%rdi
    3567:	e8 08 84 00 00       	callq  b974 <_ZN4Heap3popEv>
    356c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3573:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3577:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    357e:	48 89 d6             	mov    %rdx,%rsi
    3581:	48 89 c7             	mov    %rax,%rdi
    3584:	e8 b5 82 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3589:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3590:	48 89 c7             	mov    %rax,%rdi
    3593:	e8 dc 83 00 00       	callq  b974 <_ZN4Heap3popEv>
    3598:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    359f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    35a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    35aa:	48 89 d6             	mov    %rdx,%rsi
    35ad:	48 89 c7             	mov    %rax,%rdi
    35b0:	e8 89 82 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    35b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    35bc:	48 89 c7             	mov    %rax,%rdi
    35bf:	e8 b0 83 00 00       	callq  b974 <_ZN4Heap3popEv>
    35c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    35cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    35cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    35d6:	48 89 d6             	mov    %rdx,%rsi
    35d9:	48 89 c7             	mov    %rax,%rdi
    35dc:	e8 5d 82 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    35e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    35e8:	48 89 c7             	mov    %rax,%rdi
    35eb:	e8 84 83 00 00       	callq  b974 <_ZN4Heap3popEv>
    35f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    35f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    35fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3602:	48 89 d6             	mov    %rdx,%rsi
    3605:	48 89 c7             	mov    %rax,%rdi
    3608:	e8 31 82 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    360d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3614:	48 89 c7             	mov    %rax,%rdi
    3617:	e8 58 83 00 00       	callq  b974 <_ZN4Heap3popEv>
    361c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3623:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3627:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    362e:	48 89 d6             	mov    %rdx,%rsi
    3631:	48 89 c7             	mov    %rax,%rdi
    3634:	e8 05 82 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3639:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3640:	48 89 c7             	mov    %rax,%rdi
    3643:	e8 2c 83 00 00       	callq  b974 <_ZN4Heap3popEv>
    3648:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    364f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3653:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    365a:	48 89 d6             	mov    %rdx,%rsi
    365d:	48 89 c7             	mov    %rax,%rdi
    3660:	e8 d9 81 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3665:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    366c:	48 89 c7             	mov    %rax,%rdi
    366f:	e8 00 83 00 00       	callq  b974 <_ZN4Heap3popEv>
    3674:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    367b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    367f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3686:	48 89 d6             	mov    %rdx,%rsi
    3689:	48 89 c7             	mov    %rax,%rdi
    368c:	e8 ad 81 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3691:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3698:	48 89 c7             	mov    %rax,%rdi
    369b:	e8 d4 82 00 00       	callq  b974 <_ZN4Heap3popEv>
    36a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    36a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    36ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    36b2:	48 89 d6             	mov    %rdx,%rsi
    36b5:	48 89 c7             	mov    %rax,%rdi
    36b8:	e8 81 81 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    36bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    36c4:	48 89 c7             	mov    %rax,%rdi
    36c7:	e8 a8 82 00 00       	callq  b974 <_ZN4Heap3popEv>
    36cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    36d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    36d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    36de:	48 89 d6             	mov    %rdx,%rsi
    36e1:	48 89 c7             	mov    %rax,%rdi
    36e4:	e8 55 81 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    36e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    36f0:	48 89 c7             	mov    %rax,%rdi
    36f3:	e8 7c 82 00 00       	callq  b974 <_ZN4Heap3popEv>
    36f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    36ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3703:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    370a:	48 89 d6             	mov    %rdx,%rsi
    370d:	48 89 c7             	mov    %rax,%rdi
    3710:	e8 29 81 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3715:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    371c:	48 89 c7             	mov    %rax,%rdi
    371f:	e8 50 82 00 00       	callq  b974 <_ZN4Heap3popEv>
    3724:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    372b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    372f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3736:	48 89 d6             	mov    %rdx,%rsi
    3739:	48 89 c7             	mov    %rax,%rdi
    373c:	e8 fd 80 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3741:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3748:	48 89 c7             	mov    %rax,%rdi
    374b:	e8 24 82 00 00       	callq  b974 <_ZN4Heap3popEv>
    3750:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3757:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    375b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3762:	48 89 d6             	mov    %rdx,%rsi
    3765:	48 89 c7             	mov    %rax,%rdi
    3768:	e8 d1 80 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    376d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3774:	48 89 c7             	mov    %rax,%rdi
    3777:	e8 f8 81 00 00       	callq  b974 <_ZN4Heap3popEv>
    377c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3783:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3787:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    378e:	48 89 d6             	mov    %rdx,%rsi
    3791:	48 89 c7             	mov    %rax,%rdi
    3794:	e8 a5 80 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3799:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    37a0:	48 89 c7             	mov    %rax,%rdi
    37a3:	e8 cc 81 00 00       	callq  b974 <_ZN4Heap3popEv>
    37a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    37af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    37b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    37ba:	48 89 d6             	mov    %rdx,%rsi
    37bd:	48 89 c7             	mov    %rax,%rdi
    37c0:	e8 79 80 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    37c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    37cc:	48 89 c7             	mov    %rax,%rdi
    37cf:	e8 a0 81 00 00       	callq  b974 <_ZN4Heap3popEv>
    37d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    37db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    37df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    37e6:	48 89 d6             	mov    %rdx,%rsi
    37e9:	48 89 c7             	mov    %rax,%rdi
    37ec:	e8 4d 80 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    37f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    37f8:	48 89 c7             	mov    %rax,%rdi
    37fb:	e8 74 81 00 00       	callq  b974 <_ZN4Heap3popEv>
    3800:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3807:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    380b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3812:	48 89 d6             	mov    %rdx,%rsi
    3815:	48 89 c7             	mov    %rax,%rdi
    3818:	e8 21 80 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    381d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3824:	48 89 c7             	mov    %rax,%rdi
    3827:	e8 48 81 00 00       	callq  b974 <_ZN4Heap3popEv>
    382c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3833:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3837:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    383e:	48 89 d6             	mov    %rdx,%rsi
    3841:	48 89 c7             	mov    %rax,%rdi
    3844:	e8 f5 7f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3849:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3850:	48 89 c7             	mov    %rax,%rdi
    3853:	e8 1c 81 00 00       	callq  b974 <_ZN4Heap3popEv>
    3858:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    385f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3863:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    386a:	48 89 d6             	mov    %rdx,%rsi
    386d:	48 89 c7             	mov    %rax,%rdi
    3870:	e8 c9 7f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3875:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    387c:	48 89 c7             	mov    %rax,%rdi
    387f:	e8 f0 80 00 00       	callq  b974 <_ZN4Heap3popEv>
    3884:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    388b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    388f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3896:	48 89 d6             	mov    %rdx,%rsi
    3899:	48 89 c7             	mov    %rax,%rdi
    389c:	e8 9d 7f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    38a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    38a8:	48 89 c7             	mov    %rax,%rdi
    38ab:	e8 c4 80 00 00       	callq  b974 <_ZN4Heap3popEv>
    38b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    38b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    38bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    38c2:	48 89 d6             	mov    %rdx,%rsi
    38c5:	48 89 c7             	mov    %rax,%rdi
    38c8:	e8 71 7f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    38cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    38d4:	48 89 c7             	mov    %rax,%rdi
    38d7:	e8 98 80 00 00       	callq  b974 <_ZN4Heap3popEv>
    38dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    38e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    38e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    38ee:	48 89 d6             	mov    %rdx,%rsi
    38f1:	48 89 c7             	mov    %rax,%rdi
    38f4:	e8 45 7f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    38f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3900:	48 89 c7             	mov    %rax,%rdi
    3903:	e8 6c 80 00 00       	callq  b974 <_ZN4Heap3popEv>
    3908:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    390f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3913:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    391a:	48 89 d6             	mov    %rdx,%rsi
    391d:	48 89 c7             	mov    %rax,%rdi
    3920:	e8 19 7f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3925:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    392c:	48 89 c7             	mov    %rax,%rdi
    392f:	e8 40 80 00 00       	callq  b974 <_ZN4Heap3popEv>
    3934:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    393b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    393f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3946:	48 89 d6             	mov    %rdx,%rsi
    3949:	48 89 c7             	mov    %rax,%rdi
    394c:	e8 ed 7e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3951:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3958:	48 89 c7             	mov    %rax,%rdi
    395b:	e8 14 80 00 00       	callq  b974 <_ZN4Heap3popEv>
    3960:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3967:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    396b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3972:	48 89 d6             	mov    %rdx,%rsi
    3975:	48 89 c7             	mov    %rax,%rdi
    3978:	e8 c1 7e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    397d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3984:	48 89 c7             	mov    %rax,%rdi
    3987:	e8 e8 7f 00 00       	callq  b974 <_ZN4Heap3popEv>
    398c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3993:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3997:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    399e:	48 89 d6             	mov    %rdx,%rsi
    39a1:	48 89 c7             	mov    %rax,%rdi
    39a4:	e8 95 7e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    39a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    39b0:	48 89 c7             	mov    %rax,%rdi
    39b3:	e8 bc 7f 00 00       	callq  b974 <_ZN4Heap3popEv>
    39b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    39bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    39c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    39ca:	48 89 d6             	mov    %rdx,%rsi
    39cd:	48 89 c7             	mov    %rax,%rdi
    39d0:	e8 69 7e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    39d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    39dc:	48 89 c7             	mov    %rax,%rdi
    39df:	e8 90 7f 00 00       	callq  b974 <_ZN4Heap3popEv>
    39e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    39eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    39ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    39f6:	48 89 d6             	mov    %rdx,%rsi
    39f9:	48 89 c7             	mov    %rax,%rdi
    39fc:	e8 3d 7e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3a01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a08:	48 89 c7             	mov    %rax,%rdi
    3a0b:	e8 64 7f 00 00       	callq  b974 <_ZN4Heap3popEv>
    3a10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3a17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3a1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a22:	48 89 d6             	mov    %rdx,%rsi
    3a25:	48 89 c7             	mov    %rax,%rdi
    3a28:	e8 11 7e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3a2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a34:	48 89 c7             	mov    %rax,%rdi
    3a37:	e8 38 7f 00 00       	callq  b974 <_ZN4Heap3popEv>
    3a3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3a43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3a47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a4e:	48 89 d6             	mov    %rdx,%rsi
    3a51:	48 89 c7             	mov    %rax,%rdi
    3a54:	e8 e5 7d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3a59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a60:	48 89 c7             	mov    %rax,%rdi
    3a63:	e8 0c 7f 00 00       	callq  b974 <_ZN4Heap3popEv>
    3a68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3a6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3a73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a7a:	48 89 d6             	mov    %rdx,%rsi
    3a7d:	48 89 c7             	mov    %rax,%rdi
    3a80:	e8 b9 7d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3a85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a8c:	48 89 c7             	mov    %rax,%rdi
    3a8f:	e8 e0 7e 00 00       	callq  b974 <_ZN4Heap3popEv>
    3a94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3a9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3a9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3aa6:	48 89 d6             	mov    %rdx,%rsi
    3aa9:	48 89 c7             	mov    %rax,%rdi
    3aac:	e8 8d 7d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3ab1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ab8:	48 89 c7             	mov    %rax,%rdi
    3abb:	e8 b4 7e 00 00       	callq  b974 <_ZN4Heap3popEv>
    3ac0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3ac7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3acb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ad2:	48 89 d6             	mov    %rdx,%rsi
    3ad5:	48 89 c7             	mov    %rax,%rdi
    3ad8:	e8 61 7d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3add:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ae4:	48 89 c7             	mov    %rax,%rdi
    3ae7:	e8 88 7e 00 00       	callq  b974 <_ZN4Heap3popEv>
    3aec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3af3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3af7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3afe:	48 89 d6             	mov    %rdx,%rsi
    3b01:	48 89 c7             	mov    %rax,%rdi
    3b04:	e8 35 7d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3b09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b10:	48 89 c7             	mov    %rax,%rdi
    3b13:	e8 5c 7e 00 00       	callq  b974 <_ZN4Heap3popEv>
    3b18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3b1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3b23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b2a:	48 89 d6             	mov    %rdx,%rsi
    3b2d:	48 89 c7             	mov    %rax,%rdi
    3b30:	e8 09 7d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3b35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b3c:	48 89 c7             	mov    %rax,%rdi
    3b3f:	e8 30 7e 00 00       	callq  b974 <_ZN4Heap3popEv>
    3b44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3b4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3b4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b56:	48 89 d6             	mov    %rdx,%rsi
    3b59:	48 89 c7             	mov    %rax,%rdi
    3b5c:	e8 dd 7c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3b61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b68:	48 89 c7             	mov    %rax,%rdi
    3b6b:	e8 04 7e 00 00       	callq  b974 <_ZN4Heap3popEv>
    3b70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3b77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3b7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b82:	48 89 d6             	mov    %rdx,%rsi
    3b85:	48 89 c7             	mov    %rax,%rdi
    3b88:	e8 b1 7c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3b8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b94:	48 89 c7             	mov    %rax,%rdi
    3b97:	e8 d8 7d 00 00       	callq  b974 <_ZN4Heap3popEv>
    3b9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3ba3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3ba7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3bae:	48 89 d6             	mov    %rdx,%rsi
    3bb1:	48 89 c7             	mov    %rax,%rdi
    3bb4:	e8 85 7c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3bb9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3bc0:	48 89 c7             	mov    %rax,%rdi
    3bc3:	e8 ac 7d 00 00       	callq  b974 <_ZN4Heap3popEv>
    3bc8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3bcf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3bd3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3bda:	48 89 d6             	mov    %rdx,%rsi
    3bdd:	48 89 c7             	mov    %rax,%rdi
    3be0:	e8 59 7c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3be5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3bec:	48 89 c7             	mov    %rax,%rdi
    3bef:	e8 80 7d 00 00       	callq  b974 <_ZN4Heap3popEv>
    3bf4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3bfb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3bff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c06:	48 89 d6             	mov    %rdx,%rsi
    3c09:	48 89 c7             	mov    %rax,%rdi
    3c0c:	e8 2d 7c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3c11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c18:	48 89 c7             	mov    %rax,%rdi
    3c1b:	e8 54 7d 00 00       	callq  b974 <_ZN4Heap3popEv>
    3c20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3c27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3c2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c32:	48 89 d6             	mov    %rdx,%rsi
    3c35:	48 89 c7             	mov    %rax,%rdi
    3c38:	e8 01 7c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3c3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c44:	48 89 c7             	mov    %rax,%rdi
    3c47:	e8 28 7d 00 00       	callq  b974 <_ZN4Heap3popEv>
    3c4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3c53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3c57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c5e:	48 89 d6             	mov    %rdx,%rsi
    3c61:	48 89 c7             	mov    %rax,%rdi
    3c64:	e8 d5 7b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3c69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c70:	48 89 c7             	mov    %rax,%rdi
    3c73:	e8 fc 7c 00 00       	callq  b974 <_ZN4Heap3popEv>
    3c78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3c7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3c83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c8a:	48 89 d6             	mov    %rdx,%rsi
    3c8d:	48 89 c7             	mov    %rax,%rdi
    3c90:	e8 a9 7b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3c95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c9c:	48 89 c7             	mov    %rax,%rdi
    3c9f:	e8 d0 7c 00 00       	callq  b974 <_ZN4Heap3popEv>
    3ca4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3cab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3caf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3cb6:	48 89 d6             	mov    %rdx,%rsi
    3cb9:	48 89 c7             	mov    %rax,%rdi
    3cbc:	e8 7d 7b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3cc1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3cc8:	48 89 c7             	mov    %rax,%rdi
    3ccb:	e8 a4 7c 00 00       	callq  b974 <_ZN4Heap3popEv>
    3cd0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3cd7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3cdb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ce2:	48 89 d6             	mov    %rdx,%rsi
    3ce5:	48 89 c7             	mov    %rax,%rdi
    3ce8:	e8 51 7b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3ced:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3cf4:	48 89 c7             	mov    %rax,%rdi
    3cf7:	e8 78 7c 00 00       	callq  b974 <_ZN4Heap3popEv>
    3cfc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3d03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3d07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d0e:	48 89 d6             	mov    %rdx,%rsi
    3d11:	48 89 c7             	mov    %rax,%rdi
    3d14:	e8 25 7b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3d19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d20:	48 89 c7             	mov    %rax,%rdi
    3d23:	e8 4c 7c 00 00       	callq  b974 <_ZN4Heap3popEv>
    3d28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3d2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3d33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d3a:	48 89 d6             	mov    %rdx,%rsi
    3d3d:	48 89 c7             	mov    %rax,%rdi
    3d40:	e8 f9 7a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3d45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d4c:	48 89 c7             	mov    %rax,%rdi
    3d4f:	e8 20 7c 00 00       	callq  b974 <_ZN4Heap3popEv>
    3d54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3d5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3d5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d66:	48 89 d6             	mov    %rdx,%rsi
    3d69:	48 89 c7             	mov    %rax,%rdi
    3d6c:	e8 cd 7a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3d71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d78:	48 89 c7             	mov    %rax,%rdi
    3d7b:	e8 f4 7b 00 00       	callq  b974 <_ZN4Heap3popEv>
    3d80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3d87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3d8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d92:	48 89 d6             	mov    %rdx,%rsi
    3d95:	48 89 c7             	mov    %rax,%rdi
    3d98:	e8 a1 7a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3d9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3da4:	48 89 c7             	mov    %rax,%rdi
    3da7:	e8 c8 7b 00 00       	callq  b974 <_ZN4Heap3popEv>
    3dac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3db3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3db7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3dbe:	48 89 d6             	mov    %rdx,%rsi
    3dc1:	48 89 c7             	mov    %rax,%rdi
    3dc4:	e8 75 7a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3dc9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3dd0:	48 89 c7             	mov    %rax,%rdi
    3dd3:	e8 9c 7b 00 00       	callq  b974 <_ZN4Heap3popEv>
    3dd8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3ddf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3de3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3dea:	48 89 d6             	mov    %rdx,%rsi
    3ded:	48 89 c7             	mov    %rax,%rdi
    3df0:	e8 49 7a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3df5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3dfc:	48 89 c7             	mov    %rax,%rdi
    3dff:	e8 70 7b 00 00       	callq  b974 <_ZN4Heap3popEv>
    3e04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3e0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3e0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e16:	48 89 d6             	mov    %rdx,%rsi
    3e19:	48 89 c7             	mov    %rax,%rdi
    3e1c:	e8 1d 7a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3e21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e28:	48 89 c7             	mov    %rax,%rdi
    3e2b:	e8 44 7b 00 00       	callq  b974 <_ZN4Heap3popEv>
    3e30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3e37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3e3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e42:	48 89 d6             	mov    %rdx,%rsi
    3e45:	48 89 c7             	mov    %rax,%rdi
    3e48:	e8 f1 79 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3e4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e54:	48 89 c7             	mov    %rax,%rdi
    3e57:	e8 18 7b 00 00       	callq  b974 <_ZN4Heap3popEv>
    3e5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3e63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3e67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e6e:	48 89 d6             	mov    %rdx,%rsi
    3e71:	48 89 c7             	mov    %rax,%rdi
    3e74:	e8 c5 79 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3e79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e80:	48 89 c7             	mov    %rax,%rdi
    3e83:	e8 ec 7a 00 00       	callq  b974 <_ZN4Heap3popEv>
    3e88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3e8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3e93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e9a:	48 89 d6             	mov    %rdx,%rsi
    3e9d:	48 89 c7             	mov    %rax,%rdi
    3ea0:	e8 99 79 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3ea5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3eac:	48 89 c7             	mov    %rax,%rdi
    3eaf:	e8 c0 7a 00 00       	callq  b974 <_ZN4Heap3popEv>
    3eb4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3ebb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3ebf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ec6:	48 89 d6             	mov    %rdx,%rsi
    3ec9:	48 89 c7             	mov    %rax,%rdi
    3ecc:	e8 6d 79 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3ed1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ed8:	48 89 c7             	mov    %rax,%rdi
    3edb:	e8 94 7a 00 00       	callq  b974 <_ZN4Heap3popEv>
    3ee0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3ee7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3eeb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ef2:	48 89 d6             	mov    %rdx,%rsi
    3ef5:	48 89 c7             	mov    %rax,%rdi
    3ef8:	e8 41 79 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3efd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f04:	48 89 c7             	mov    %rax,%rdi
    3f07:	e8 68 7a 00 00       	callq  b974 <_ZN4Heap3popEv>
    3f0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3f13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3f17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f1e:	48 89 d6             	mov    %rdx,%rsi
    3f21:	48 89 c7             	mov    %rax,%rdi
    3f24:	e8 15 79 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3f29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f30:	48 89 c7             	mov    %rax,%rdi
    3f33:	e8 3c 7a 00 00       	callq  b974 <_ZN4Heap3popEv>
    3f38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3f3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3f43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f4a:	48 89 d6             	mov    %rdx,%rsi
    3f4d:	48 89 c7             	mov    %rax,%rdi
    3f50:	e8 e9 78 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3f55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f5c:	48 89 c7             	mov    %rax,%rdi
    3f5f:	e8 10 7a 00 00       	callq  b974 <_ZN4Heap3popEv>
    3f64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3f6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3f6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f76:	48 89 d6             	mov    %rdx,%rsi
    3f79:	48 89 c7             	mov    %rax,%rdi
    3f7c:	e8 bd 78 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3f81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f88:	48 89 c7             	mov    %rax,%rdi
    3f8b:	e8 e4 79 00 00       	callq  b974 <_ZN4Heap3popEv>
    3f90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3f97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3f9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3fa2:	48 89 d6             	mov    %rdx,%rsi
    3fa5:	48 89 c7             	mov    %rax,%rdi
    3fa8:	e8 91 78 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3fad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3fb4:	48 89 c7             	mov    %rax,%rdi
    3fb7:	e8 b8 79 00 00       	callq  b974 <_ZN4Heap3popEv>
    3fbc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3fc3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3fc7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3fce:	48 89 d6             	mov    %rdx,%rsi
    3fd1:	48 89 c7             	mov    %rax,%rdi
    3fd4:	e8 65 78 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    3fd9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3fe0:	48 89 c7             	mov    %rax,%rdi
    3fe3:	e8 8c 79 00 00       	callq  b974 <_ZN4Heap3popEv>
    3fe8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3fef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3ff3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ffa:	48 89 d6             	mov    %rdx,%rsi
    3ffd:	48 89 c7             	mov    %rax,%rdi
    4000:	e8 39 78 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4005:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    400c:	48 89 c7             	mov    %rax,%rdi
    400f:	e8 60 79 00 00       	callq  b974 <_ZN4Heap3popEv>
    4014:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    401b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    401f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4026:	48 89 d6             	mov    %rdx,%rsi
    4029:	48 89 c7             	mov    %rax,%rdi
    402c:	e8 0d 78 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4031:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4038:	48 89 c7             	mov    %rax,%rdi
    403b:	e8 34 79 00 00       	callq  b974 <_ZN4Heap3popEv>
    4040:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4047:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    404b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4052:	48 89 d6             	mov    %rdx,%rsi
    4055:	48 89 c7             	mov    %rax,%rdi
    4058:	e8 e1 77 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    405d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4064:	48 89 c7             	mov    %rax,%rdi
    4067:	e8 08 79 00 00       	callq  b974 <_ZN4Heap3popEv>
    406c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4073:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4077:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    407e:	48 89 d6             	mov    %rdx,%rsi
    4081:	48 89 c7             	mov    %rax,%rdi
    4084:	e8 b5 77 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4089:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4090:	48 89 c7             	mov    %rax,%rdi
    4093:	e8 dc 78 00 00       	callq  b974 <_ZN4Heap3popEv>
    4098:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    409f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    40a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    40aa:	48 89 d6             	mov    %rdx,%rsi
    40ad:	48 89 c7             	mov    %rax,%rdi
    40b0:	e8 89 77 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    40b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    40bc:	48 89 c7             	mov    %rax,%rdi
    40bf:	e8 b0 78 00 00       	callq  b974 <_ZN4Heap3popEv>
    40c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    40cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    40cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    40d6:	48 89 d6             	mov    %rdx,%rsi
    40d9:	48 89 c7             	mov    %rax,%rdi
    40dc:	e8 5d 77 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    40e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    40e8:	48 89 c7             	mov    %rax,%rdi
    40eb:	e8 84 78 00 00       	callq  b974 <_ZN4Heap3popEv>
    40f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    40f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    40fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4102:	48 89 d6             	mov    %rdx,%rsi
    4105:	48 89 c7             	mov    %rax,%rdi
    4108:	e8 31 77 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    410d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4114:	48 89 c7             	mov    %rax,%rdi
    4117:	e8 58 78 00 00       	callq  b974 <_ZN4Heap3popEv>
    411c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4123:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4127:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    412e:	48 89 d6             	mov    %rdx,%rsi
    4131:	48 89 c7             	mov    %rax,%rdi
    4134:	e8 05 77 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4139:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4140:	48 89 c7             	mov    %rax,%rdi
    4143:	e8 2c 78 00 00       	callq  b974 <_ZN4Heap3popEv>
    4148:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    414f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4153:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    415a:	48 89 d6             	mov    %rdx,%rsi
    415d:	48 89 c7             	mov    %rax,%rdi
    4160:	e8 d9 76 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4165:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    416c:	48 89 c7             	mov    %rax,%rdi
    416f:	e8 00 78 00 00       	callq  b974 <_ZN4Heap3popEv>
    4174:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    417b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    417f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4186:	48 89 d6             	mov    %rdx,%rsi
    4189:	48 89 c7             	mov    %rax,%rdi
    418c:	e8 ad 76 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4191:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4198:	48 89 c7             	mov    %rax,%rdi
    419b:	e8 d4 77 00 00       	callq  b974 <_ZN4Heap3popEv>
    41a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    41a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    41ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    41b2:	48 89 d6             	mov    %rdx,%rsi
    41b5:	48 89 c7             	mov    %rax,%rdi
    41b8:	e8 81 76 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    41bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    41c4:	48 89 c7             	mov    %rax,%rdi
    41c7:	e8 a8 77 00 00       	callq  b974 <_ZN4Heap3popEv>
    41cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    41d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    41d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    41de:	48 89 d6             	mov    %rdx,%rsi
    41e1:	48 89 c7             	mov    %rax,%rdi
    41e4:	e8 55 76 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    41e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    41f0:	48 89 c7             	mov    %rax,%rdi
    41f3:	e8 7c 77 00 00       	callq  b974 <_ZN4Heap3popEv>
    41f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    41ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4203:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    420a:	48 89 d6             	mov    %rdx,%rsi
    420d:	48 89 c7             	mov    %rax,%rdi
    4210:	e8 29 76 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4215:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    421c:	48 89 c7             	mov    %rax,%rdi
    421f:	e8 50 77 00 00       	callq  b974 <_ZN4Heap3popEv>
    4224:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    422b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    422f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4236:	48 89 d6             	mov    %rdx,%rsi
    4239:	48 89 c7             	mov    %rax,%rdi
    423c:	e8 fd 75 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4241:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4248:	48 89 c7             	mov    %rax,%rdi
    424b:	e8 24 77 00 00       	callq  b974 <_ZN4Heap3popEv>
    4250:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4257:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    425b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4262:	48 89 d6             	mov    %rdx,%rsi
    4265:	48 89 c7             	mov    %rax,%rdi
    4268:	e8 d1 75 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    426d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4274:	48 89 c7             	mov    %rax,%rdi
    4277:	e8 f8 76 00 00       	callq  b974 <_ZN4Heap3popEv>
    427c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4283:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4287:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    428e:	48 89 d6             	mov    %rdx,%rsi
    4291:	48 89 c7             	mov    %rax,%rdi
    4294:	e8 a5 75 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4299:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    42a0:	48 89 c7             	mov    %rax,%rdi
    42a3:	e8 cc 76 00 00       	callq  b974 <_ZN4Heap3popEv>
    42a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    42af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    42b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    42ba:	48 89 d6             	mov    %rdx,%rsi
    42bd:	48 89 c7             	mov    %rax,%rdi
    42c0:	e8 79 75 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    42c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    42cc:	48 89 c7             	mov    %rax,%rdi
    42cf:	e8 a0 76 00 00       	callq  b974 <_ZN4Heap3popEv>
    42d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    42db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    42df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    42e6:	48 89 d6             	mov    %rdx,%rsi
    42e9:	48 89 c7             	mov    %rax,%rdi
    42ec:	e8 4d 75 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    42f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    42f8:	48 89 c7             	mov    %rax,%rdi
    42fb:	e8 74 76 00 00       	callq  b974 <_ZN4Heap3popEv>
    4300:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4307:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    430b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4312:	48 89 d6             	mov    %rdx,%rsi
    4315:	48 89 c7             	mov    %rax,%rdi
    4318:	e8 21 75 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    431d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4324:	48 89 c7             	mov    %rax,%rdi
    4327:	e8 48 76 00 00       	callq  b974 <_ZN4Heap3popEv>
    432c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4333:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4337:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    433e:	48 89 d6             	mov    %rdx,%rsi
    4341:	48 89 c7             	mov    %rax,%rdi
    4344:	e8 f5 74 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4349:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4350:	48 89 c7             	mov    %rax,%rdi
    4353:	e8 1c 76 00 00       	callq  b974 <_ZN4Heap3popEv>
    4358:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    435f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4363:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    436a:	48 89 d6             	mov    %rdx,%rsi
    436d:	48 89 c7             	mov    %rax,%rdi
    4370:	e8 c9 74 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4375:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    437c:	48 89 c7             	mov    %rax,%rdi
    437f:	e8 f0 75 00 00       	callq  b974 <_ZN4Heap3popEv>
    4384:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    438b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    438f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4396:	48 89 d6             	mov    %rdx,%rsi
    4399:	48 89 c7             	mov    %rax,%rdi
    439c:	e8 9d 74 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    43a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    43a8:	48 89 c7             	mov    %rax,%rdi
    43ab:	e8 c4 75 00 00       	callq  b974 <_ZN4Heap3popEv>
    43b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    43b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    43bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    43c2:	48 89 d6             	mov    %rdx,%rsi
    43c5:	48 89 c7             	mov    %rax,%rdi
    43c8:	e8 71 74 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    43cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    43d4:	48 89 c7             	mov    %rax,%rdi
    43d7:	e8 98 75 00 00       	callq  b974 <_ZN4Heap3popEv>
    43dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    43e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    43e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    43ee:	48 89 d6             	mov    %rdx,%rsi
    43f1:	48 89 c7             	mov    %rax,%rdi
    43f4:	e8 45 74 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    43f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4400:	48 89 c7             	mov    %rax,%rdi
    4403:	e8 6c 75 00 00       	callq  b974 <_ZN4Heap3popEv>
    4408:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    440f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4413:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    441a:	48 89 d6             	mov    %rdx,%rsi
    441d:	48 89 c7             	mov    %rax,%rdi
    4420:	e8 19 74 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4425:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    442c:	48 89 c7             	mov    %rax,%rdi
    442f:	e8 40 75 00 00       	callq  b974 <_ZN4Heap3popEv>
    4434:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    443b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    443f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4446:	48 89 d6             	mov    %rdx,%rsi
    4449:	48 89 c7             	mov    %rax,%rdi
    444c:	e8 ed 73 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4451:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4458:	48 89 c7             	mov    %rax,%rdi
    445b:	e8 14 75 00 00       	callq  b974 <_ZN4Heap3popEv>
    4460:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4467:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    446b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4472:	48 89 d6             	mov    %rdx,%rsi
    4475:	48 89 c7             	mov    %rax,%rdi
    4478:	e8 c1 73 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    447d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4484:	48 89 c7             	mov    %rax,%rdi
    4487:	e8 e8 74 00 00       	callq  b974 <_ZN4Heap3popEv>
    448c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4493:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4497:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    449e:	48 89 d6             	mov    %rdx,%rsi
    44a1:	48 89 c7             	mov    %rax,%rdi
    44a4:	e8 95 73 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    44a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    44b0:	48 89 c7             	mov    %rax,%rdi
    44b3:	e8 bc 74 00 00       	callq  b974 <_ZN4Heap3popEv>
    44b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    44bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    44c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    44ca:	48 89 d6             	mov    %rdx,%rsi
    44cd:	48 89 c7             	mov    %rax,%rdi
    44d0:	e8 69 73 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    44d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    44dc:	48 89 c7             	mov    %rax,%rdi
    44df:	e8 90 74 00 00       	callq  b974 <_ZN4Heap3popEv>
    44e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    44eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    44ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    44f6:	48 89 d6             	mov    %rdx,%rsi
    44f9:	48 89 c7             	mov    %rax,%rdi
    44fc:	e8 3d 73 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4501:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4508:	48 89 c7             	mov    %rax,%rdi
    450b:	e8 64 74 00 00       	callq  b974 <_ZN4Heap3popEv>
    4510:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4517:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    451b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4522:	48 89 d6             	mov    %rdx,%rsi
    4525:	48 89 c7             	mov    %rax,%rdi
    4528:	e8 11 73 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    452d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4534:	48 89 c7             	mov    %rax,%rdi
    4537:	e8 38 74 00 00       	callq  b974 <_ZN4Heap3popEv>
    453c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4543:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4547:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    454e:	48 89 d6             	mov    %rdx,%rsi
    4551:	48 89 c7             	mov    %rax,%rdi
    4554:	e8 e5 72 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4559:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4560:	48 89 c7             	mov    %rax,%rdi
    4563:	e8 0c 74 00 00       	callq  b974 <_ZN4Heap3popEv>
    4568:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    456f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4573:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    457a:	48 89 d6             	mov    %rdx,%rsi
    457d:	48 89 c7             	mov    %rax,%rdi
    4580:	e8 b9 72 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4585:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    458c:	48 89 c7             	mov    %rax,%rdi
    458f:	e8 e0 73 00 00       	callq  b974 <_ZN4Heap3popEv>
    4594:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    459b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    459f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    45a6:	48 89 d6             	mov    %rdx,%rsi
    45a9:	48 89 c7             	mov    %rax,%rdi
    45ac:	e8 8d 72 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    45b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    45b8:	48 89 c7             	mov    %rax,%rdi
    45bb:	e8 b4 73 00 00       	callq  b974 <_ZN4Heap3popEv>
    45c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    45c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    45cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    45d2:	48 89 d6             	mov    %rdx,%rsi
    45d5:	48 89 c7             	mov    %rax,%rdi
    45d8:	e8 61 72 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    45dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    45e4:	48 89 c7             	mov    %rax,%rdi
    45e7:	e8 88 73 00 00       	callq  b974 <_ZN4Heap3popEv>
    45ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    45f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    45f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    45fe:	48 89 d6             	mov    %rdx,%rsi
    4601:	48 89 c7             	mov    %rax,%rdi
    4604:	e8 35 72 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4609:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4610:	48 89 c7             	mov    %rax,%rdi
    4613:	e8 5c 73 00 00       	callq  b974 <_ZN4Heap3popEv>
    4618:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    461f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4623:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    462a:	48 89 d6             	mov    %rdx,%rsi
    462d:	48 89 c7             	mov    %rax,%rdi
    4630:	e8 09 72 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4635:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    463c:	48 89 c7             	mov    %rax,%rdi
    463f:	e8 30 73 00 00       	callq  b974 <_ZN4Heap3popEv>
    4644:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    464b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    464f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4656:	48 89 d6             	mov    %rdx,%rsi
    4659:	48 89 c7             	mov    %rax,%rdi
    465c:	e8 dd 71 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4661:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4668:	48 89 c7             	mov    %rax,%rdi
    466b:	e8 04 73 00 00       	callq  b974 <_ZN4Heap3popEv>
    4670:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4677:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    467b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4682:	48 89 d6             	mov    %rdx,%rsi
    4685:	48 89 c7             	mov    %rax,%rdi
    4688:	e8 b1 71 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    468d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4694:	48 89 c7             	mov    %rax,%rdi
    4697:	e8 d8 72 00 00       	callq  b974 <_ZN4Heap3popEv>
    469c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    46a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    46a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    46ae:	48 89 d6             	mov    %rdx,%rsi
    46b1:	48 89 c7             	mov    %rax,%rdi
    46b4:	e8 85 71 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    46b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    46c0:	48 89 c7             	mov    %rax,%rdi
    46c3:	e8 ac 72 00 00       	callq  b974 <_ZN4Heap3popEv>
    46c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    46cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    46d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    46da:	48 89 d6             	mov    %rdx,%rsi
    46dd:	48 89 c7             	mov    %rax,%rdi
    46e0:	e8 59 71 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    46e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    46ec:	48 89 c7             	mov    %rax,%rdi
    46ef:	e8 80 72 00 00       	callq  b974 <_ZN4Heap3popEv>
    46f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    46fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    46ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4706:	48 89 d6             	mov    %rdx,%rsi
    4709:	48 89 c7             	mov    %rax,%rdi
    470c:	e8 2d 71 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4711:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4718:	48 89 c7             	mov    %rax,%rdi
    471b:	e8 54 72 00 00       	callq  b974 <_ZN4Heap3popEv>
    4720:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4727:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    472b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4732:	48 89 d6             	mov    %rdx,%rsi
    4735:	48 89 c7             	mov    %rax,%rdi
    4738:	e8 01 71 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    473d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4744:	48 89 c7             	mov    %rax,%rdi
    4747:	e8 28 72 00 00       	callq  b974 <_ZN4Heap3popEv>
    474c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4753:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4757:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    475e:	48 89 d6             	mov    %rdx,%rsi
    4761:	48 89 c7             	mov    %rax,%rdi
    4764:	e8 d5 70 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4769:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4770:	48 89 c7             	mov    %rax,%rdi
    4773:	e8 fc 71 00 00       	callq  b974 <_ZN4Heap3popEv>
    4778:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    477f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4783:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    478a:	48 89 d6             	mov    %rdx,%rsi
    478d:	48 89 c7             	mov    %rax,%rdi
    4790:	e8 a9 70 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4795:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    479c:	48 89 c7             	mov    %rax,%rdi
    479f:	e8 d0 71 00 00       	callq  b974 <_ZN4Heap3popEv>
    47a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    47ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    47af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    47b6:	48 89 d6             	mov    %rdx,%rsi
    47b9:	48 89 c7             	mov    %rax,%rdi
    47bc:	e8 7d 70 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    47c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    47c8:	48 89 c7             	mov    %rax,%rdi
    47cb:	e8 a4 71 00 00       	callq  b974 <_ZN4Heap3popEv>
    47d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    47d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    47db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    47e2:	48 89 d6             	mov    %rdx,%rsi
    47e5:	48 89 c7             	mov    %rax,%rdi
    47e8:	e8 51 70 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    47ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    47f4:	48 89 c7             	mov    %rax,%rdi
    47f7:	e8 78 71 00 00       	callq  b974 <_ZN4Heap3popEv>
    47fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4803:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4807:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    480e:	48 89 d6             	mov    %rdx,%rsi
    4811:	48 89 c7             	mov    %rax,%rdi
    4814:	e8 25 70 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4819:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4820:	48 89 c7             	mov    %rax,%rdi
    4823:	e8 4c 71 00 00       	callq  b974 <_ZN4Heap3popEv>
    4828:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    482f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4833:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    483a:	48 89 d6             	mov    %rdx,%rsi
    483d:	48 89 c7             	mov    %rax,%rdi
    4840:	e8 f9 6f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4845:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    484c:	48 89 c7             	mov    %rax,%rdi
    484f:	e8 20 71 00 00       	callq  b974 <_ZN4Heap3popEv>
    4854:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    485b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    485f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4866:	48 89 d6             	mov    %rdx,%rsi
    4869:	48 89 c7             	mov    %rax,%rdi
    486c:	e8 cd 6f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4871:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4878:	48 89 c7             	mov    %rax,%rdi
    487b:	e8 f4 70 00 00       	callq  b974 <_ZN4Heap3popEv>
    4880:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4887:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    488b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4892:	48 89 d6             	mov    %rdx,%rsi
    4895:	48 89 c7             	mov    %rax,%rdi
    4898:	e8 a1 6f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    489d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    48a4:	48 89 c7             	mov    %rax,%rdi
    48a7:	e8 c8 70 00 00       	callq  b974 <_ZN4Heap3popEv>
    48ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    48b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    48b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    48be:	48 89 d6             	mov    %rdx,%rsi
    48c1:	48 89 c7             	mov    %rax,%rdi
    48c4:	e8 75 6f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    48c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    48d0:	48 89 c7             	mov    %rax,%rdi
    48d3:	e8 9c 70 00 00       	callq  b974 <_ZN4Heap3popEv>
    48d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    48df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    48e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    48ea:	48 89 d6             	mov    %rdx,%rsi
    48ed:	48 89 c7             	mov    %rax,%rdi
    48f0:	e8 49 6f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    48f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    48fc:	48 89 c7             	mov    %rax,%rdi
    48ff:	e8 70 70 00 00       	callq  b974 <_ZN4Heap3popEv>
    4904:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    490b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    490f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4916:	48 89 d6             	mov    %rdx,%rsi
    4919:	48 89 c7             	mov    %rax,%rdi
    491c:	e8 1d 6f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4921:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4928:	48 89 c7             	mov    %rax,%rdi
    492b:	e8 44 70 00 00       	callq  b974 <_ZN4Heap3popEv>
    4930:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4937:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    493b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4942:	48 89 d6             	mov    %rdx,%rsi
    4945:	48 89 c7             	mov    %rax,%rdi
    4948:	e8 f1 6e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    494d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4954:	48 89 c7             	mov    %rax,%rdi
    4957:	e8 18 70 00 00       	callq  b974 <_ZN4Heap3popEv>
    495c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4963:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4967:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    496e:	48 89 d6             	mov    %rdx,%rsi
    4971:	48 89 c7             	mov    %rax,%rdi
    4974:	e8 c5 6e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4979:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4980:	48 89 c7             	mov    %rax,%rdi
    4983:	e8 ec 6f 00 00       	callq  b974 <_ZN4Heap3popEv>
    4988:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    498f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4993:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    499a:	48 89 d6             	mov    %rdx,%rsi
    499d:	48 89 c7             	mov    %rax,%rdi
    49a0:	e8 99 6e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    49a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    49ac:	48 89 c7             	mov    %rax,%rdi
    49af:	e8 c0 6f 00 00       	callq  b974 <_ZN4Heap3popEv>
    49b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    49bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    49bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    49c6:	48 89 d6             	mov    %rdx,%rsi
    49c9:	48 89 c7             	mov    %rax,%rdi
    49cc:	e8 6d 6e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    49d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    49d8:	48 89 c7             	mov    %rax,%rdi
    49db:	e8 94 6f 00 00       	callq  b974 <_ZN4Heap3popEv>
    49e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    49e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    49eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    49f2:	48 89 d6             	mov    %rdx,%rsi
    49f5:	48 89 c7             	mov    %rax,%rdi
    49f8:	e8 41 6e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    49fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a04:	48 89 c7             	mov    %rax,%rdi
    4a07:	e8 68 6f 00 00       	callq  b974 <_ZN4Heap3popEv>
    4a0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4a13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4a17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a1e:	48 89 d6             	mov    %rdx,%rsi
    4a21:	48 89 c7             	mov    %rax,%rdi
    4a24:	e8 15 6e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4a29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a30:	48 89 c7             	mov    %rax,%rdi
    4a33:	e8 3c 6f 00 00       	callq  b974 <_ZN4Heap3popEv>
    4a38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4a3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4a43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a4a:	48 89 d6             	mov    %rdx,%rsi
    4a4d:	48 89 c7             	mov    %rax,%rdi
    4a50:	e8 e9 6d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4a55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a5c:	48 89 c7             	mov    %rax,%rdi
    4a5f:	e8 10 6f 00 00       	callq  b974 <_ZN4Heap3popEv>
    4a64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4a6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4a6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a76:	48 89 d6             	mov    %rdx,%rsi
    4a79:	48 89 c7             	mov    %rax,%rdi
    4a7c:	e8 bd 6d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4a81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a88:	48 89 c7             	mov    %rax,%rdi
    4a8b:	e8 e4 6e 00 00       	callq  b974 <_ZN4Heap3popEv>
    4a90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4a97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4a9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4aa2:	48 89 d6             	mov    %rdx,%rsi
    4aa5:	48 89 c7             	mov    %rax,%rdi
    4aa8:	e8 91 6d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4aad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ab4:	48 89 c7             	mov    %rax,%rdi
    4ab7:	e8 b8 6e 00 00       	callq  b974 <_ZN4Heap3popEv>
    4abc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4ac3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4ac7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ace:	48 89 d6             	mov    %rdx,%rsi
    4ad1:	48 89 c7             	mov    %rax,%rdi
    4ad4:	e8 65 6d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4ad9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ae0:	48 89 c7             	mov    %rax,%rdi
    4ae3:	e8 8c 6e 00 00       	callq  b974 <_ZN4Heap3popEv>
    4ae8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4aef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4af3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4afa:	48 89 d6             	mov    %rdx,%rsi
    4afd:	48 89 c7             	mov    %rax,%rdi
    4b00:	e8 39 6d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4b05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b0c:	48 89 c7             	mov    %rax,%rdi
    4b0f:	e8 60 6e 00 00       	callq  b974 <_ZN4Heap3popEv>
    4b14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4b1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4b1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b26:	48 89 d6             	mov    %rdx,%rsi
    4b29:	48 89 c7             	mov    %rax,%rdi
    4b2c:	e8 0d 6d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4b31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b38:	48 89 c7             	mov    %rax,%rdi
    4b3b:	e8 34 6e 00 00       	callq  b974 <_ZN4Heap3popEv>
    4b40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4b47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4b4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b52:	48 89 d6             	mov    %rdx,%rsi
    4b55:	48 89 c7             	mov    %rax,%rdi
    4b58:	e8 e1 6c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4b5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b64:	48 89 c7             	mov    %rax,%rdi
    4b67:	e8 08 6e 00 00       	callq  b974 <_ZN4Heap3popEv>
    4b6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4b73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4b77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b7e:	48 89 d6             	mov    %rdx,%rsi
    4b81:	48 89 c7             	mov    %rax,%rdi
    4b84:	e8 b5 6c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4b89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b90:	48 89 c7             	mov    %rax,%rdi
    4b93:	e8 dc 6d 00 00       	callq  b974 <_ZN4Heap3popEv>
    4b98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4b9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4ba3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4baa:	48 89 d6             	mov    %rdx,%rsi
    4bad:	48 89 c7             	mov    %rax,%rdi
    4bb0:	e8 89 6c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4bb5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4bbc:	48 89 c7             	mov    %rax,%rdi
    4bbf:	e8 b0 6d 00 00       	callq  b974 <_ZN4Heap3popEv>
    4bc4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4bcb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4bcf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4bd6:	48 89 d6             	mov    %rdx,%rsi
    4bd9:	48 89 c7             	mov    %rax,%rdi
    4bdc:	e8 5d 6c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4be1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4be8:	48 89 c7             	mov    %rax,%rdi
    4beb:	e8 84 6d 00 00       	callq  b974 <_ZN4Heap3popEv>
    4bf0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4bf7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4bfb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c02:	48 89 d6             	mov    %rdx,%rsi
    4c05:	48 89 c7             	mov    %rax,%rdi
    4c08:	e8 31 6c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4c0d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c14:	48 89 c7             	mov    %rax,%rdi
    4c17:	e8 58 6d 00 00       	callq  b974 <_ZN4Heap3popEv>
    4c1c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4c23:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4c27:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c2e:	48 89 d6             	mov    %rdx,%rsi
    4c31:	48 89 c7             	mov    %rax,%rdi
    4c34:	e8 05 6c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4c39:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c40:	48 89 c7             	mov    %rax,%rdi
    4c43:	e8 2c 6d 00 00       	callq  b974 <_ZN4Heap3popEv>
    4c48:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4c4f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4c53:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c5a:	48 89 d6             	mov    %rdx,%rsi
    4c5d:	48 89 c7             	mov    %rax,%rdi
    4c60:	e8 d9 6b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4c65:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c6c:	48 89 c7             	mov    %rax,%rdi
    4c6f:	e8 00 6d 00 00       	callq  b974 <_ZN4Heap3popEv>
    4c74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4c7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4c7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c86:	48 89 d6             	mov    %rdx,%rsi
    4c89:	48 89 c7             	mov    %rax,%rdi
    4c8c:	e8 ad 6b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4c91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c98:	48 89 c7             	mov    %rax,%rdi
    4c9b:	e8 d4 6c 00 00       	callq  b974 <_ZN4Heap3popEv>
    4ca0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4ca7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4cab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4cb2:	48 89 d6             	mov    %rdx,%rsi
    4cb5:	48 89 c7             	mov    %rax,%rdi
    4cb8:	e8 81 6b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4cbd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4cc4:	48 89 c7             	mov    %rax,%rdi
    4cc7:	e8 a8 6c 00 00       	callq  b974 <_ZN4Heap3popEv>
    4ccc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4cd3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4cd7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4cde:	48 89 d6             	mov    %rdx,%rsi
    4ce1:	48 89 c7             	mov    %rax,%rdi
    4ce4:	e8 55 6b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4ce9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4cf0:	48 89 c7             	mov    %rax,%rdi
    4cf3:	e8 7c 6c 00 00       	callq  b974 <_ZN4Heap3popEv>
    4cf8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4cff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4d03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d0a:	48 89 d6             	mov    %rdx,%rsi
    4d0d:	48 89 c7             	mov    %rax,%rdi
    4d10:	e8 29 6b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4d15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d1c:	48 89 c7             	mov    %rax,%rdi
    4d1f:	e8 50 6c 00 00       	callq  b974 <_ZN4Heap3popEv>
    4d24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4d2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4d2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d36:	48 89 d6             	mov    %rdx,%rsi
    4d39:	48 89 c7             	mov    %rax,%rdi
    4d3c:	e8 fd 6a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4d41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d48:	48 89 c7             	mov    %rax,%rdi
    4d4b:	e8 24 6c 00 00       	callq  b974 <_ZN4Heap3popEv>
    4d50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4d57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4d5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d62:	48 89 d6             	mov    %rdx,%rsi
    4d65:	48 89 c7             	mov    %rax,%rdi
    4d68:	e8 d1 6a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4d6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d74:	48 89 c7             	mov    %rax,%rdi
    4d77:	e8 f8 6b 00 00       	callq  b974 <_ZN4Heap3popEv>
    4d7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4d83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4d87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d8e:	48 89 d6             	mov    %rdx,%rsi
    4d91:	48 89 c7             	mov    %rax,%rdi
    4d94:	e8 a5 6a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4d99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4da0:	48 89 c7             	mov    %rax,%rdi
    4da3:	e8 cc 6b 00 00       	callq  b974 <_ZN4Heap3popEv>
    4da8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4daf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4db3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4dba:	48 89 d6             	mov    %rdx,%rsi
    4dbd:	48 89 c7             	mov    %rax,%rdi
    4dc0:	e8 79 6a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4dc5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4dcc:	48 89 c7             	mov    %rax,%rdi
    4dcf:	e8 a0 6b 00 00       	callq  b974 <_ZN4Heap3popEv>
    4dd4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4ddb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4ddf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4de6:	48 89 d6             	mov    %rdx,%rsi
    4de9:	48 89 c7             	mov    %rax,%rdi
    4dec:	e8 4d 6a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4df1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4df8:	48 89 c7             	mov    %rax,%rdi
    4dfb:	e8 74 6b 00 00       	callq  b974 <_ZN4Heap3popEv>
    4e00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4e07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4e0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e12:	48 89 d6             	mov    %rdx,%rsi
    4e15:	48 89 c7             	mov    %rax,%rdi
    4e18:	e8 21 6a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4e1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e24:	48 89 c7             	mov    %rax,%rdi
    4e27:	e8 48 6b 00 00       	callq  b974 <_ZN4Heap3popEv>
    4e2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4e33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4e37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e3e:	48 89 d6             	mov    %rdx,%rsi
    4e41:	48 89 c7             	mov    %rax,%rdi
    4e44:	e8 f5 69 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4e49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e50:	48 89 c7             	mov    %rax,%rdi
    4e53:	e8 1c 6b 00 00       	callq  b974 <_ZN4Heap3popEv>
    4e58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4e5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4e63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e6a:	48 89 d6             	mov    %rdx,%rsi
    4e6d:	48 89 c7             	mov    %rax,%rdi
    4e70:	e8 c9 69 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4e75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e7c:	48 89 c7             	mov    %rax,%rdi
    4e7f:	e8 f0 6a 00 00       	callq  b974 <_ZN4Heap3popEv>
    4e84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4e8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4e8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e96:	48 89 d6             	mov    %rdx,%rsi
    4e99:	48 89 c7             	mov    %rax,%rdi
    4e9c:	e8 9d 69 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4ea1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ea8:	48 89 c7             	mov    %rax,%rdi
    4eab:	e8 c4 6a 00 00       	callq  b974 <_ZN4Heap3popEv>
    4eb0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4eb7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4ebb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ec2:	48 89 d6             	mov    %rdx,%rsi
    4ec5:	48 89 c7             	mov    %rax,%rdi
    4ec8:	e8 71 69 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4ecd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ed4:	48 89 c7             	mov    %rax,%rdi
    4ed7:	e8 98 6a 00 00       	callq  b974 <_ZN4Heap3popEv>
    4edc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4ee3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4ee7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4eee:	48 89 d6             	mov    %rdx,%rsi
    4ef1:	48 89 c7             	mov    %rax,%rdi
    4ef4:	e8 45 69 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4ef9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f00:	48 89 c7             	mov    %rax,%rdi
    4f03:	e8 6c 6a 00 00       	callq  b974 <_ZN4Heap3popEv>
    4f08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4f0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4f13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f1a:	48 89 d6             	mov    %rdx,%rsi
    4f1d:	48 89 c7             	mov    %rax,%rdi
    4f20:	e8 19 69 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4f25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f2c:	48 89 c7             	mov    %rax,%rdi
    4f2f:	e8 40 6a 00 00       	callq  b974 <_ZN4Heap3popEv>
    4f34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4f3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4f3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f46:	48 89 d6             	mov    %rdx,%rsi
    4f49:	48 89 c7             	mov    %rax,%rdi
    4f4c:	e8 ed 68 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4f51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f58:	48 89 c7             	mov    %rax,%rdi
    4f5b:	e8 14 6a 00 00       	callq  b974 <_ZN4Heap3popEv>
    4f60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4f67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4f6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f72:	48 89 d6             	mov    %rdx,%rsi
    4f75:	48 89 c7             	mov    %rax,%rdi
    4f78:	e8 c1 68 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4f7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f84:	48 89 c7             	mov    %rax,%rdi
    4f87:	e8 e8 69 00 00       	callq  b974 <_ZN4Heap3popEv>
    4f8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4f93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4f97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f9e:	48 89 d6             	mov    %rdx,%rsi
    4fa1:	48 89 c7             	mov    %rax,%rdi
    4fa4:	e8 95 68 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4fa9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4fb0:	48 89 c7             	mov    %rax,%rdi
    4fb3:	e8 bc 69 00 00       	callq  b974 <_ZN4Heap3popEv>
    4fb8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4fbf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4fc3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4fca:	48 89 d6             	mov    %rdx,%rsi
    4fcd:	48 89 c7             	mov    %rax,%rdi
    4fd0:	e8 69 68 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    4fd5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4fdc:	48 89 c7             	mov    %rax,%rdi
    4fdf:	e8 90 69 00 00       	callq  b974 <_ZN4Heap3popEv>
    4fe4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4feb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4fef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ff6:	48 89 d6             	mov    %rdx,%rsi
    4ff9:	48 89 c7             	mov    %rax,%rdi
    4ffc:	e8 3d 68 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5001:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5008:	48 89 c7             	mov    %rax,%rdi
    500b:	e8 64 69 00 00       	callq  b974 <_ZN4Heap3popEv>
    5010:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5017:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    501b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5022:	48 89 d6             	mov    %rdx,%rsi
    5025:	48 89 c7             	mov    %rax,%rdi
    5028:	e8 11 68 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    502d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5034:	48 89 c7             	mov    %rax,%rdi
    5037:	e8 38 69 00 00       	callq  b974 <_ZN4Heap3popEv>
    503c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5043:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5047:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    504e:	48 89 d6             	mov    %rdx,%rsi
    5051:	48 89 c7             	mov    %rax,%rdi
    5054:	e8 e5 67 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5059:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5060:	48 89 c7             	mov    %rax,%rdi
    5063:	e8 0c 69 00 00       	callq  b974 <_ZN4Heap3popEv>
    5068:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    506f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5073:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    507a:	48 89 d6             	mov    %rdx,%rsi
    507d:	48 89 c7             	mov    %rax,%rdi
    5080:	e8 b9 67 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5085:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    508c:	48 89 c7             	mov    %rax,%rdi
    508f:	e8 e0 68 00 00       	callq  b974 <_ZN4Heap3popEv>
    5094:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    509b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    509f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    50a6:	48 89 d6             	mov    %rdx,%rsi
    50a9:	48 89 c7             	mov    %rax,%rdi
    50ac:	e8 8d 67 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    50b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    50b8:	48 89 c7             	mov    %rax,%rdi
    50bb:	e8 b4 68 00 00       	callq  b974 <_ZN4Heap3popEv>
    50c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    50c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    50cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    50d2:	48 89 d6             	mov    %rdx,%rsi
    50d5:	48 89 c7             	mov    %rax,%rdi
    50d8:	e8 61 67 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    50dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    50e4:	48 89 c7             	mov    %rax,%rdi
    50e7:	e8 88 68 00 00       	callq  b974 <_ZN4Heap3popEv>
    50ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    50f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    50f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    50fe:	48 89 d6             	mov    %rdx,%rsi
    5101:	48 89 c7             	mov    %rax,%rdi
    5104:	e8 35 67 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5109:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5110:	48 89 c7             	mov    %rax,%rdi
    5113:	e8 5c 68 00 00       	callq  b974 <_ZN4Heap3popEv>
    5118:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    511f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5123:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    512a:	48 89 d6             	mov    %rdx,%rsi
    512d:	48 89 c7             	mov    %rax,%rdi
    5130:	e8 09 67 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5135:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    513c:	48 89 c7             	mov    %rax,%rdi
    513f:	e8 30 68 00 00       	callq  b974 <_ZN4Heap3popEv>
    5144:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    514b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    514f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5156:	48 89 d6             	mov    %rdx,%rsi
    5159:	48 89 c7             	mov    %rax,%rdi
    515c:	e8 dd 66 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5161:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5168:	48 89 c7             	mov    %rax,%rdi
    516b:	e8 04 68 00 00       	callq  b974 <_ZN4Heap3popEv>
    5170:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5177:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    517b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5182:	48 89 d6             	mov    %rdx,%rsi
    5185:	48 89 c7             	mov    %rax,%rdi
    5188:	e8 b1 66 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    518d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5194:	48 89 c7             	mov    %rax,%rdi
    5197:	e8 d8 67 00 00       	callq  b974 <_ZN4Heap3popEv>
    519c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    51a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    51a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    51ae:	48 89 d6             	mov    %rdx,%rsi
    51b1:	48 89 c7             	mov    %rax,%rdi
    51b4:	e8 85 66 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    51b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    51c0:	48 89 c7             	mov    %rax,%rdi
    51c3:	e8 ac 67 00 00       	callq  b974 <_ZN4Heap3popEv>
    51c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    51cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    51d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    51da:	48 89 d6             	mov    %rdx,%rsi
    51dd:	48 89 c7             	mov    %rax,%rdi
    51e0:	e8 59 66 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    51e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    51ec:	48 89 c7             	mov    %rax,%rdi
    51ef:	e8 80 67 00 00       	callq  b974 <_ZN4Heap3popEv>
    51f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    51fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    51ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5206:	48 89 d6             	mov    %rdx,%rsi
    5209:	48 89 c7             	mov    %rax,%rdi
    520c:	e8 2d 66 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5211:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5218:	48 89 c7             	mov    %rax,%rdi
    521b:	e8 54 67 00 00       	callq  b974 <_ZN4Heap3popEv>
    5220:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5227:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    522b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5232:	48 89 d6             	mov    %rdx,%rsi
    5235:	48 89 c7             	mov    %rax,%rdi
    5238:	e8 01 66 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    523d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5244:	48 89 c7             	mov    %rax,%rdi
    5247:	e8 28 67 00 00       	callq  b974 <_ZN4Heap3popEv>
    524c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5253:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5257:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    525e:	48 89 d6             	mov    %rdx,%rsi
    5261:	48 89 c7             	mov    %rax,%rdi
    5264:	e8 d5 65 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5269:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5270:	48 89 c7             	mov    %rax,%rdi
    5273:	e8 fc 66 00 00       	callq  b974 <_ZN4Heap3popEv>
    5278:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    527f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5283:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    528a:	48 89 d6             	mov    %rdx,%rsi
    528d:	48 89 c7             	mov    %rax,%rdi
    5290:	e8 a9 65 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5295:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    529c:	48 89 c7             	mov    %rax,%rdi
    529f:	e8 d0 66 00 00       	callq  b974 <_ZN4Heap3popEv>
    52a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    52ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    52af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    52b6:	48 89 d6             	mov    %rdx,%rsi
    52b9:	48 89 c7             	mov    %rax,%rdi
    52bc:	e8 7d 65 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    52c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    52c8:	48 89 c7             	mov    %rax,%rdi
    52cb:	e8 a4 66 00 00       	callq  b974 <_ZN4Heap3popEv>
    52d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    52d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    52db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    52e2:	48 89 d6             	mov    %rdx,%rsi
    52e5:	48 89 c7             	mov    %rax,%rdi
    52e8:	e8 51 65 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    52ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    52f4:	48 89 c7             	mov    %rax,%rdi
    52f7:	e8 78 66 00 00       	callq  b974 <_ZN4Heap3popEv>
    52fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5303:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5307:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    530e:	48 89 d6             	mov    %rdx,%rsi
    5311:	48 89 c7             	mov    %rax,%rdi
    5314:	e8 25 65 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5319:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5320:	48 89 c7             	mov    %rax,%rdi
    5323:	e8 4c 66 00 00       	callq  b974 <_ZN4Heap3popEv>
    5328:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    532f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5333:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    533a:	48 89 d6             	mov    %rdx,%rsi
    533d:	48 89 c7             	mov    %rax,%rdi
    5340:	e8 f9 64 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5345:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    534c:	48 89 c7             	mov    %rax,%rdi
    534f:	e8 20 66 00 00       	callq  b974 <_ZN4Heap3popEv>
    5354:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    535b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    535f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5366:	48 89 d6             	mov    %rdx,%rsi
    5369:	48 89 c7             	mov    %rax,%rdi
    536c:	e8 cd 64 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5371:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5378:	48 89 c7             	mov    %rax,%rdi
    537b:	e8 f4 65 00 00       	callq  b974 <_ZN4Heap3popEv>
    5380:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5387:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    538b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5392:	48 89 d6             	mov    %rdx,%rsi
    5395:	48 89 c7             	mov    %rax,%rdi
    5398:	e8 a1 64 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    539d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    53a4:	48 89 c7             	mov    %rax,%rdi
    53a7:	e8 c8 65 00 00       	callq  b974 <_ZN4Heap3popEv>
    53ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    53b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    53b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    53be:	48 89 d6             	mov    %rdx,%rsi
    53c1:	48 89 c7             	mov    %rax,%rdi
    53c4:	e8 75 64 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    53c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    53d0:	48 89 c7             	mov    %rax,%rdi
    53d3:	e8 9c 65 00 00       	callq  b974 <_ZN4Heap3popEv>
    53d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    53df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    53e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    53ea:	48 89 d6             	mov    %rdx,%rsi
    53ed:	48 89 c7             	mov    %rax,%rdi
    53f0:	e8 49 64 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    53f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    53fc:	48 89 c7             	mov    %rax,%rdi
    53ff:	e8 70 65 00 00       	callq  b974 <_ZN4Heap3popEv>
    5404:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    540b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    540f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5416:	48 89 d6             	mov    %rdx,%rsi
    5419:	48 89 c7             	mov    %rax,%rdi
    541c:	e8 1d 64 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5421:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5428:	48 89 c7             	mov    %rax,%rdi
    542b:	e8 44 65 00 00       	callq  b974 <_ZN4Heap3popEv>
    5430:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5437:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    543b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5442:	48 89 d6             	mov    %rdx,%rsi
    5445:	48 89 c7             	mov    %rax,%rdi
    5448:	e8 f1 63 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    544d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5454:	48 89 c7             	mov    %rax,%rdi
    5457:	e8 18 65 00 00       	callq  b974 <_ZN4Heap3popEv>
    545c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5463:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5467:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    546e:	48 89 d6             	mov    %rdx,%rsi
    5471:	48 89 c7             	mov    %rax,%rdi
    5474:	e8 c5 63 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5479:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5480:	48 89 c7             	mov    %rax,%rdi
    5483:	e8 ec 64 00 00       	callq  b974 <_ZN4Heap3popEv>
    5488:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    548f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5493:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    549a:	48 89 d6             	mov    %rdx,%rsi
    549d:	48 89 c7             	mov    %rax,%rdi
    54a0:	e8 99 63 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    54a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    54ac:	48 89 c7             	mov    %rax,%rdi
    54af:	e8 c0 64 00 00       	callq  b974 <_ZN4Heap3popEv>
    54b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    54bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    54bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    54c6:	48 89 d6             	mov    %rdx,%rsi
    54c9:	48 89 c7             	mov    %rax,%rdi
    54cc:	e8 6d 63 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    54d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    54d8:	48 89 c7             	mov    %rax,%rdi
    54db:	e8 94 64 00 00       	callq  b974 <_ZN4Heap3popEv>
    54e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    54e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    54eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    54f2:	48 89 d6             	mov    %rdx,%rsi
    54f5:	48 89 c7             	mov    %rax,%rdi
    54f8:	e8 41 63 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    54fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5504:	48 89 c7             	mov    %rax,%rdi
    5507:	e8 68 64 00 00       	callq  b974 <_ZN4Heap3popEv>
    550c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5513:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5517:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    551e:	48 89 d6             	mov    %rdx,%rsi
    5521:	48 89 c7             	mov    %rax,%rdi
    5524:	e8 15 63 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5529:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5530:	48 89 c7             	mov    %rax,%rdi
    5533:	e8 3c 64 00 00       	callq  b974 <_ZN4Heap3popEv>
    5538:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    553f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5543:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    554a:	48 89 d6             	mov    %rdx,%rsi
    554d:	48 89 c7             	mov    %rax,%rdi
    5550:	e8 e9 62 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5555:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    555c:	48 89 c7             	mov    %rax,%rdi
    555f:	e8 10 64 00 00       	callq  b974 <_ZN4Heap3popEv>
    5564:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    556b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    556f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5576:	48 89 d6             	mov    %rdx,%rsi
    5579:	48 89 c7             	mov    %rax,%rdi
    557c:	e8 bd 62 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5581:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5588:	48 89 c7             	mov    %rax,%rdi
    558b:	e8 e4 63 00 00       	callq  b974 <_ZN4Heap3popEv>
    5590:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5597:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    559b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    55a2:	48 89 d6             	mov    %rdx,%rsi
    55a5:	48 89 c7             	mov    %rax,%rdi
    55a8:	e8 91 62 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    55ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    55b4:	48 89 c7             	mov    %rax,%rdi
    55b7:	e8 b8 63 00 00       	callq  b974 <_ZN4Heap3popEv>
    55bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    55c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    55c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    55ce:	48 89 d6             	mov    %rdx,%rsi
    55d1:	48 89 c7             	mov    %rax,%rdi
    55d4:	e8 65 62 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    55d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    55e0:	48 89 c7             	mov    %rax,%rdi
    55e3:	e8 8c 63 00 00       	callq  b974 <_ZN4Heap3popEv>
    55e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    55ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    55f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    55fa:	48 89 d6             	mov    %rdx,%rsi
    55fd:	48 89 c7             	mov    %rax,%rdi
    5600:	e8 39 62 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5605:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    560c:	48 89 c7             	mov    %rax,%rdi
    560f:	e8 60 63 00 00       	callq  b974 <_ZN4Heap3popEv>
    5614:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    561b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    561f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5626:	48 89 d6             	mov    %rdx,%rsi
    5629:	48 89 c7             	mov    %rax,%rdi
    562c:	e8 0d 62 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5631:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5638:	48 89 c7             	mov    %rax,%rdi
    563b:	e8 34 63 00 00       	callq  b974 <_ZN4Heap3popEv>
    5640:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5647:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    564b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5652:	48 89 d6             	mov    %rdx,%rsi
    5655:	48 89 c7             	mov    %rax,%rdi
    5658:	e8 e1 61 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    565d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5664:	48 89 c7             	mov    %rax,%rdi
    5667:	e8 08 63 00 00       	callq  b974 <_ZN4Heap3popEv>
    566c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5673:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5677:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    567e:	48 89 d6             	mov    %rdx,%rsi
    5681:	48 89 c7             	mov    %rax,%rdi
    5684:	e8 b5 61 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5689:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5690:	48 89 c7             	mov    %rax,%rdi
    5693:	e8 dc 62 00 00       	callq  b974 <_ZN4Heap3popEv>
    5698:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    569f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    56a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    56aa:	48 89 d6             	mov    %rdx,%rsi
    56ad:	48 89 c7             	mov    %rax,%rdi
    56b0:	e8 89 61 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    56b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    56bc:	48 89 c7             	mov    %rax,%rdi
    56bf:	e8 b0 62 00 00       	callq  b974 <_ZN4Heap3popEv>
    56c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    56cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    56cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    56d6:	48 89 d6             	mov    %rdx,%rsi
    56d9:	48 89 c7             	mov    %rax,%rdi
    56dc:	e8 5d 61 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    56e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    56e8:	48 89 c7             	mov    %rax,%rdi
    56eb:	e8 84 62 00 00       	callq  b974 <_ZN4Heap3popEv>
    56f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    56f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    56fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5702:	48 89 d6             	mov    %rdx,%rsi
    5705:	48 89 c7             	mov    %rax,%rdi
    5708:	e8 31 61 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    570d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5714:	48 89 c7             	mov    %rax,%rdi
    5717:	e8 58 62 00 00       	callq  b974 <_ZN4Heap3popEv>
    571c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5723:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5727:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    572e:	48 89 d6             	mov    %rdx,%rsi
    5731:	48 89 c7             	mov    %rax,%rdi
    5734:	e8 05 61 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5739:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5740:	48 89 c7             	mov    %rax,%rdi
    5743:	e8 2c 62 00 00       	callq  b974 <_ZN4Heap3popEv>
    5748:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    574f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5753:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    575a:	48 89 d6             	mov    %rdx,%rsi
    575d:	48 89 c7             	mov    %rax,%rdi
    5760:	e8 d9 60 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5765:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    576c:	48 89 c7             	mov    %rax,%rdi
    576f:	e8 00 62 00 00       	callq  b974 <_ZN4Heap3popEv>
    5774:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    577b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    577f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5786:	48 89 d6             	mov    %rdx,%rsi
    5789:	48 89 c7             	mov    %rax,%rdi
    578c:	e8 ad 60 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5791:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5798:	48 89 c7             	mov    %rax,%rdi
    579b:	e8 d4 61 00 00       	callq  b974 <_ZN4Heap3popEv>
    57a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    57a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    57ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    57b2:	48 89 d6             	mov    %rdx,%rsi
    57b5:	48 89 c7             	mov    %rax,%rdi
    57b8:	e8 81 60 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    57bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    57c4:	48 89 c7             	mov    %rax,%rdi
    57c7:	e8 a8 61 00 00       	callq  b974 <_ZN4Heap3popEv>
    57cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    57d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    57d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    57de:	48 89 d6             	mov    %rdx,%rsi
    57e1:	48 89 c7             	mov    %rax,%rdi
    57e4:	e8 55 60 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    57e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    57f0:	48 89 c7             	mov    %rax,%rdi
    57f3:	e8 7c 61 00 00       	callq  b974 <_ZN4Heap3popEv>
    57f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    57ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5803:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    580a:	48 89 d6             	mov    %rdx,%rsi
    580d:	48 89 c7             	mov    %rax,%rdi
    5810:	e8 29 60 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5815:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    581c:	48 89 c7             	mov    %rax,%rdi
    581f:	e8 50 61 00 00       	callq  b974 <_ZN4Heap3popEv>
    5824:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    582b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    582f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5836:	48 89 d6             	mov    %rdx,%rsi
    5839:	48 89 c7             	mov    %rax,%rdi
    583c:	e8 fd 5f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5841:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5848:	48 89 c7             	mov    %rax,%rdi
    584b:	e8 24 61 00 00       	callq  b974 <_ZN4Heap3popEv>
    5850:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5857:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    585b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5862:	48 89 d6             	mov    %rdx,%rsi
    5865:	48 89 c7             	mov    %rax,%rdi
    5868:	e8 d1 5f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    586d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5874:	48 89 c7             	mov    %rax,%rdi
    5877:	e8 f8 60 00 00       	callq  b974 <_ZN4Heap3popEv>
    587c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5883:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5887:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    588e:	48 89 d6             	mov    %rdx,%rsi
    5891:	48 89 c7             	mov    %rax,%rdi
    5894:	e8 a5 5f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5899:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    58a0:	48 89 c7             	mov    %rax,%rdi
    58a3:	e8 cc 60 00 00       	callq  b974 <_ZN4Heap3popEv>
    58a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    58af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    58b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    58ba:	48 89 d6             	mov    %rdx,%rsi
    58bd:	48 89 c7             	mov    %rax,%rdi
    58c0:	e8 79 5f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    58c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    58cc:	48 89 c7             	mov    %rax,%rdi
    58cf:	e8 a0 60 00 00       	callq  b974 <_ZN4Heap3popEv>
    58d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    58db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    58df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    58e6:	48 89 d6             	mov    %rdx,%rsi
    58e9:	48 89 c7             	mov    %rax,%rdi
    58ec:	e8 4d 5f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    58f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    58f8:	48 89 c7             	mov    %rax,%rdi
    58fb:	e8 74 60 00 00       	callq  b974 <_ZN4Heap3popEv>
    5900:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5907:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    590b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5912:	48 89 d6             	mov    %rdx,%rsi
    5915:	48 89 c7             	mov    %rax,%rdi
    5918:	e8 21 5f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    591d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5924:	48 89 c7             	mov    %rax,%rdi
    5927:	e8 48 60 00 00       	callq  b974 <_ZN4Heap3popEv>
    592c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5933:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5937:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    593e:	48 89 d6             	mov    %rdx,%rsi
    5941:	48 89 c7             	mov    %rax,%rdi
    5944:	e8 f5 5e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5949:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5950:	48 89 c7             	mov    %rax,%rdi
    5953:	e8 1c 60 00 00       	callq  b974 <_ZN4Heap3popEv>
    5958:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    595f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5963:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    596a:	48 89 d6             	mov    %rdx,%rsi
    596d:	48 89 c7             	mov    %rax,%rdi
    5970:	e8 c9 5e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5975:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    597c:	48 89 c7             	mov    %rax,%rdi
    597f:	e8 f0 5f 00 00       	callq  b974 <_ZN4Heap3popEv>
    5984:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    598b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    598f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5996:	48 89 d6             	mov    %rdx,%rsi
    5999:	48 89 c7             	mov    %rax,%rdi
    599c:	e8 9d 5e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    59a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    59a8:	48 89 c7             	mov    %rax,%rdi
    59ab:	e8 c4 5f 00 00       	callq  b974 <_ZN4Heap3popEv>
    59b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    59b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    59bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    59c2:	48 89 d6             	mov    %rdx,%rsi
    59c5:	48 89 c7             	mov    %rax,%rdi
    59c8:	e8 71 5e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    59cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    59d4:	48 89 c7             	mov    %rax,%rdi
    59d7:	e8 98 5f 00 00       	callq  b974 <_ZN4Heap3popEv>
    59dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    59e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    59e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    59ee:	48 89 d6             	mov    %rdx,%rsi
    59f1:	48 89 c7             	mov    %rax,%rdi
    59f4:	e8 45 5e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    59f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a00:	48 89 c7             	mov    %rax,%rdi
    5a03:	e8 6c 5f 00 00       	callq  b974 <_ZN4Heap3popEv>
    5a08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5a0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5a13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a1a:	48 89 d6             	mov    %rdx,%rsi
    5a1d:	48 89 c7             	mov    %rax,%rdi
    5a20:	e8 19 5e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5a25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a2c:	48 89 c7             	mov    %rax,%rdi
    5a2f:	e8 40 5f 00 00       	callq  b974 <_ZN4Heap3popEv>
    5a34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5a3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5a3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a46:	48 89 d6             	mov    %rdx,%rsi
    5a49:	48 89 c7             	mov    %rax,%rdi
    5a4c:	e8 ed 5d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5a51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a58:	48 89 c7             	mov    %rax,%rdi
    5a5b:	e8 14 5f 00 00       	callq  b974 <_ZN4Heap3popEv>
    5a60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5a67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5a6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a72:	48 89 d6             	mov    %rdx,%rsi
    5a75:	48 89 c7             	mov    %rax,%rdi
    5a78:	e8 c1 5d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5a7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a84:	48 89 c7             	mov    %rax,%rdi
    5a87:	e8 e8 5e 00 00       	callq  b974 <_ZN4Heap3popEv>
    5a8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5a93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5a97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a9e:	48 89 d6             	mov    %rdx,%rsi
    5aa1:	48 89 c7             	mov    %rax,%rdi
    5aa4:	e8 95 5d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5aa9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ab0:	48 89 c7             	mov    %rax,%rdi
    5ab3:	e8 bc 5e 00 00       	callq  b974 <_ZN4Heap3popEv>
    5ab8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5abf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5ac3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5aca:	48 89 d6             	mov    %rdx,%rsi
    5acd:	48 89 c7             	mov    %rax,%rdi
    5ad0:	e8 69 5d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5ad5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5adc:	48 89 c7             	mov    %rax,%rdi
    5adf:	e8 90 5e 00 00       	callq  b974 <_ZN4Heap3popEv>
    5ae4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5aeb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5aef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5af6:	48 89 d6             	mov    %rdx,%rsi
    5af9:	48 89 c7             	mov    %rax,%rdi
    5afc:	e8 3d 5d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5b01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b08:	48 89 c7             	mov    %rax,%rdi
    5b0b:	e8 64 5e 00 00       	callq  b974 <_ZN4Heap3popEv>
    5b10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5b17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5b1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b22:	48 89 d6             	mov    %rdx,%rsi
    5b25:	48 89 c7             	mov    %rax,%rdi
    5b28:	e8 11 5d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5b2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b34:	48 89 c7             	mov    %rax,%rdi
    5b37:	e8 38 5e 00 00       	callq  b974 <_ZN4Heap3popEv>
    5b3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5b43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5b47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b4e:	48 89 d6             	mov    %rdx,%rsi
    5b51:	48 89 c7             	mov    %rax,%rdi
    5b54:	e8 e5 5c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5b59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b60:	48 89 c7             	mov    %rax,%rdi
    5b63:	e8 0c 5e 00 00       	callq  b974 <_ZN4Heap3popEv>
    5b68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5b6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5b73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b7a:	48 89 d6             	mov    %rdx,%rsi
    5b7d:	48 89 c7             	mov    %rax,%rdi
    5b80:	e8 b9 5c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5b85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b8c:	48 89 c7             	mov    %rax,%rdi
    5b8f:	e8 e0 5d 00 00       	callq  b974 <_ZN4Heap3popEv>
    5b94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5b9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5b9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ba6:	48 89 d6             	mov    %rdx,%rsi
    5ba9:	48 89 c7             	mov    %rax,%rdi
    5bac:	e8 8d 5c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5bb1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5bb8:	48 89 c7             	mov    %rax,%rdi
    5bbb:	e8 b4 5d 00 00       	callq  b974 <_ZN4Heap3popEv>
    5bc0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5bc7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5bcb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5bd2:	48 89 d6             	mov    %rdx,%rsi
    5bd5:	48 89 c7             	mov    %rax,%rdi
    5bd8:	e8 61 5c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5bdd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5be4:	48 89 c7             	mov    %rax,%rdi
    5be7:	e8 88 5d 00 00       	callq  b974 <_ZN4Heap3popEv>
    5bec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5bf3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5bf7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5bfe:	48 89 d6             	mov    %rdx,%rsi
    5c01:	48 89 c7             	mov    %rax,%rdi
    5c04:	e8 35 5c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5c09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c10:	48 89 c7             	mov    %rax,%rdi
    5c13:	e8 5c 5d 00 00       	callq  b974 <_ZN4Heap3popEv>
    5c18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5c1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5c23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c2a:	48 89 d6             	mov    %rdx,%rsi
    5c2d:	48 89 c7             	mov    %rax,%rdi
    5c30:	e8 09 5c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5c35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c3c:	48 89 c7             	mov    %rax,%rdi
    5c3f:	e8 30 5d 00 00       	callq  b974 <_ZN4Heap3popEv>
    5c44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5c4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5c4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c56:	48 89 d6             	mov    %rdx,%rsi
    5c59:	48 89 c7             	mov    %rax,%rdi
    5c5c:	e8 dd 5b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5c61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c68:	48 89 c7             	mov    %rax,%rdi
    5c6b:	e8 04 5d 00 00       	callq  b974 <_ZN4Heap3popEv>
    5c70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5c77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5c7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c82:	48 89 d6             	mov    %rdx,%rsi
    5c85:	48 89 c7             	mov    %rax,%rdi
    5c88:	e8 b1 5b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5c8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c94:	48 89 c7             	mov    %rax,%rdi
    5c97:	e8 d8 5c 00 00       	callq  b974 <_ZN4Heap3popEv>
    5c9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5ca3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5ca7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5cae:	48 89 d6             	mov    %rdx,%rsi
    5cb1:	48 89 c7             	mov    %rax,%rdi
    5cb4:	e8 85 5b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5cb9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5cc0:	48 89 c7             	mov    %rax,%rdi
    5cc3:	e8 ac 5c 00 00       	callq  b974 <_ZN4Heap3popEv>
    5cc8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5ccf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5cd3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5cda:	48 89 d6             	mov    %rdx,%rsi
    5cdd:	48 89 c7             	mov    %rax,%rdi
    5ce0:	e8 59 5b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5ce5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5cec:	48 89 c7             	mov    %rax,%rdi
    5cef:	e8 80 5c 00 00       	callq  b974 <_ZN4Heap3popEv>
    5cf4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5cfb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5cff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d06:	48 89 d6             	mov    %rdx,%rsi
    5d09:	48 89 c7             	mov    %rax,%rdi
    5d0c:	e8 2d 5b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5d11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d18:	48 89 c7             	mov    %rax,%rdi
    5d1b:	e8 54 5c 00 00       	callq  b974 <_ZN4Heap3popEv>
    5d20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5d27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5d2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d32:	48 89 d6             	mov    %rdx,%rsi
    5d35:	48 89 c7             	mov    %rax,%rdi
    5d38:	e8 01 5b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5d3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d44:	48 89 c7             	mov    %rax,%rdi
    5d47:	e8 28 5c 00 00       	callq  b974 <_ZN4Heap3popEv>
    5d4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5d53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5d57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d5e:	48 89 d6             	mov    %rdx,%rsi
    5d61:	48 89 c7             	mov    %rax,%rdi
    5d64:	e8 d5 5a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5d69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d70:	48 89 c7             	mov    %rax,%rdi
    5d73:	e8 fc 5b 00 00       	callq  b974 <_ZN4Heap3popEv>
    5d78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5d7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5d83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d8a:	48 89 d6             	mov    %rdx,%rsi
    5d8d:	48 89 c7             	mov    %rax,%rdi
    5d90:	e8 a9 5a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5d95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d9c:	48 89 c7             	mov    %rax,%rdi
    5d9f:	e8 d0 5b 00 00       	callq  b974 <_ZN4Heap3popEv>
    5da4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5dab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5daf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5db6:	48 89 d6             	mov    %rdx,%rsi
    5db9:	48 89 c7             	mov    %rax,%rdi
    5dbc:	e8 7d 5a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5dc1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5dc8:	48 89 c7             	mov    %rax,%rdi
    5dcb:	e8 a4 5b 00 00       	callq  b974 <_ZN4Heap3popEv>
    5dd0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5dd7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5ddb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5de2:	48 89 d6             	mov    %rdx,%rsi
    5de5:	48 89 c7             	mov    %rax,%rdi
    5de8:	e8 51 5a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5ded:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5df4:	48 89 c7             	mov    %rax,%rdi
    5df7:	e8 78 5b 00 00       	callq  b974 <_ZN4Heap3popEv>
    5dfc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5e03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5e07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e0e:	48 89 d6             	mov    %rdx,%rsi
    5e11:	48 89 c7             	mov    %rax,%rdi
    5e14:	e8 25 5a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5e19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e20:	48 89 c7             	mov    %rax,%rdi
    5e23:	e8 4c 5b 00 00       	callq  b974 <_ZN4Heap3popEv>
    5e28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5e2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5e33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e3a:	48 89 d6             	mov    %rdx,%rsi
    5e3d:	48 89 c7             	mov    %rax,%rdi
    5e40:	e8 f9 59 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5e45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e4c:	48 89 c7             	mov    %rax,%rdi
    5e4f:	e8 20 5b 00 00       	callq  b974 <_ZN4Heap3popEv>
    5e54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5e5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5e5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e66:	48 89 d6             	mov    %rdx,%rsi
    5e69:	48 89 c7             	mov    %rax,%rdi
    5e6c:	e8 cd 59 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5e71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e78:	48 89 c7             	mov    %rax,%rdi
    5e7b:	e8 f4 5a 00 00       	callq  b974 <_ZN4Heap3popEv>
    5e80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5e87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5e8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e92:	48 89 d6             	mov    %rdx,%rsi
    5e95:	48 89 c7             	mov    %rax,%rdi
    5e98:	e8 a1 59 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5e9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ea4:	48 89 c7             	mov    %rax,%rdi
    5ea7:	e8 c8 5a 00 00       	callq  b974 <_ZN4Heap3popEv>
    5eac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5eb3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5eb7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ebe:	48 89 d6             	mov    %rdx,%rsi
    5ec1:	48 89 c7             	mov    %rax,%rdi
    5ec4:	e8 75 59 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5ec9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ed0:	48 89 c7             	mov    %rax,%rdi
    5ed3:	e8 9c 5a 00 00       	callq  b974 <_ZN4Heap3popEv>
    5ed8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5edf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5ee3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5eea:	48 89 d6             	mov    %rdx,%rsi
    5eed:	48 89 c7             	mov    %rax,%rdi
    5ef0:	e8 49 59 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5ef5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5efc:	48 89 c7             	mov    %rax,%rdi
    5eff:	e8 70 5a 00 00       	callq  b974 <_ZN4Heap3popEv>
    5f04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5f0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5f0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f16:	48 89 d6             	mov    %rdx,%rsi
    5f19:	48 89 c7             	mov    %rax,%rdi
    5f1c:	e8 1d 59 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5f21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f28:	48 89 c7             	mov    %rax,%rdi
    5f2b:	e8 44 5a 00 00       	callq  b974 <_ZN4Heap3popEv>
    5f30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5f37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5f3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f42:	48 89 d6             	mov    %rdx,%rsi
    5f45:	48 89 c7             	mov    %rax,%rdi
    5f48:	e8 f1 58 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5f4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f54:	48 89 c7             	mov    %rax,%rdi
    5f57:	e8 18 5a 00 00       	callq  b974 <_ZN4Heap3popEv>
    5f5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5f63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5f67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f6e:	48 89 d6             	mov    %rdx,%rsi
    5f71:	48 89 c7             	mov    %rax,%rdi
    5f74:	e8 c5 58 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5f79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f80:	48 89 c7             	mov    %rax,%rdi
    5f83:	e8 ec 59 00 00       	callq  b974 <_ZN4Heap3popEv>
    5f88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5f8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5f93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f9a:	48 89 d6             	mov    %rdx,%rsi
    5f9d:	48 89 c7             	mov    %rax,%rdi
    5fa0:	e8 99 58 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5fa5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5fac:	48 89 c7             	mov    %rax,%rdi
    5faf:	e8 c0 59 00 00       	callq  b974 <_ZN4Heap3popEv>
    5fb4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5fbb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5fbf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5fc6:	48 89 d6             	mov    %rdx,%rsi
    5fc9:	48 89 c7             	mov    %rax,%rdi
    5fcc:	e8 6d 58 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5fd1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5fd8:	48 89 c7             	mov    %rax,%rdi
    5fdb:	e8 94 59 00 00       	callq  b974 <_ZN4Heap3popEv>
    5fe0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5fe7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5feb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ff2:	48 89 d6             	mov    %rdx,%rsi
    5ff5:	48 89 c7             	mov    %rax,%rdi
    5ff8:	e8 41 58 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    5ffd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6004:	48 89 c7             	mov    %rax,%rdi
    6007:	e8 68 59 00 00       	callq  b974 <_ZN4Heap3popEv>
    600c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6013:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6017:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    601e:	48 89 d6             	mov    %rdx,%rsi
    6021:	48 89 c7             	mov    %rax,%rdi
    6024:	e8 15 58 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6029:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6030:	48 89 c7             	mov    %rax,%rdi
    6033:	e8 3c 59 00 00       	callq  b974 <_ZN4Heap3popEv>
    6038:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    603f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6043:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    604a:	48 89 d6             	mov    %rdx,%rsi
    604d:	48 89 c7             	mov    %rax,%rdi
    6050:	e8 e9 57 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6055:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    605c:	48 89 c7             	mov    %rax,%rdi
    605f:	e8 10 59 00 00       	callq  b974 <_ZN4Heap3popEv>
    6064:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    606b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    606f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6076:	48 89 d6             	mov    %rdx,%rsi
    6079:	48 89 c7             	mov    %rax,%rdi
    607c:	e8 bd 57 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6081:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6088:	48 89 c7             	mov    %rax,%rdi
    608b:	e8 e4 58 00 00       	callq  b974 <_ZN4Heap3popEv>
    6090:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6097:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    609b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    60a2:	48 89 d6             	mov    %rdx,%rsi
    60a5:	48 89 c7             	mov    %rax,%rdi
    60a8:	e8 91 57 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    60ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    60b4:	48 89 c7             	mov    %rax,%rdi
    60b7:	e8 b8 58 00 00       	callq  b974 <_ZN4Heap3popEv>
    60bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    60c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    60c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    60ce:	48 89 d6             	mov    %rdx,%rsi
    60d1:	48 89 c7             	mov    %rax,%rdi
    60d4:	e8 65 57 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    60d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    60e0:	48 89 c7             	mov    %rax,%rdi
    60e3:	e8 8c 58 00 00       	callq  b974 <_ZN4Heap3popEv>
    60e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    60ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    60f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    60fa:	48 89 d6             	mov    %rdx,%rsi
    60fd:	48 89 c7             	mov    %rax,%rdi
    6100:	e8 39 57 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6105:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    610c:	48 89 c7             	mov    %rax,%rdi
    610f:	e8 60 58 00 00       	callq  b974 <_ZN4Heap3popEv>
    6114:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    611b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    611f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6126:	48 89 d6             	mov    %rdx,%rsi
    6129:	48 89 c7             	mov    %rax,%rdi
    612c:	e8 0d 57 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6131:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6138:	48 89 c7             	mov    %rax,%rdi
    613b:	e8 34 58 00 00       	callq  b974 <_ZN4Heap3popEv>
    6140:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6147:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    614b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6152:	48 89 d6             	mov    %rdx,%rsi
    6155:	48 89 c7             	mov    %rax,%rdi
    6158:	e8 e1 56 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    615d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6164:	48 89 c7             	mov    %rax,%rdi
    6167:	e8 08 58 00 00       	callq  b974 <_ZN4Heap3popEv>
    616c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6173:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6177:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    617e:	48 89 d6             	mov    %rdx,%rsi
    6181:	48 89 c7             	mov    %rax,%rdi
    6184:	e8 b5 56 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6189:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6190:	48 89 c7             	mov    %rax,%rdi
    6193:	e8 dc 57 00 00       	callq  b974 <_ZN4Heap3popEv>
    6198:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    619f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    61a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    61aa:	48 89 d6             	mov    %rdx,%rsi
    61ad:	48 89 c7             	mov    %rax,%rdi
    61b0:	e8 89 56 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    61b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    61bc:	48 89 c7             	mov    %rax,%rdi
    61bf:	e8 b0 57 00 00       	callq  b974 <_ZN4Heap3popEv>
    61c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    61cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    61cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    61d6:	48 89 d6             	mov    %rdx,%rsi
    61d9:	48 89 c7             	mov    %rax,%rdi
    61dc:	e8 5d 56 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    61e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    61e8:	48 89 c7             	mov    %rax,%rdi
    61eb:	e8 84 57 00 00       	callq  b974 <_ZN4Heap3popEv>
    61f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    61f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    61fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6202:	48 89 d6             	mov    %rdx,%rsi
    6205:	48 89 c7             	mov    %rax,%rdi
    6208:	e8 31 56 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    620d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6214:	48 89 c7             	mov    %rax,%rdi
    6217:	e8 58 57 00 00       	callq  b974 <_ZN4Heap3popEv>
    621c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6223:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6227:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    622e:	48 89 d6             	mov    %rdx,%rsi
    6231:	48 89 c7             	mov    %rax,%rdi
    6234:	e8 05 56 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6239:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6240:	48 89 c7             	mov    %rax,%rdi
    6243:	e8 2c 57 00 00       	callq  b974 <_ZN4Heap3popEv>
    6248:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    624f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6253:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    625a:	48 89 d6             	mov    %rdx,%rsi
    625d:	48 89 c7             	mov    %rax,%rdi
    6260:	e8 d9 55 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6265:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    626c:	48 89 c7             	mov    %rax,%rdi
    626f:	e8 00 57 00 00       	callq  b974 <_ZN4Heap3popEv>
    6274:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    627b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    627f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6286:	48 89 d6             	mov    %rdx,%rsi
    6289:	48 89 c7             	mov    %rax,%rdi
    628c:	e8 ad 55 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6291:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6298:	48 89 c7             	mov    %rax,%rdi
    629b:	e8 d4 56 00 00       	callq  b974 <_ZN4Heap3popEv>
    62a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    62a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    62ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    62b2:	48 89 d6             	mov    %rdx,%rsi
    62b5:	48 89 c7             	mov    %rax,%rdi
    62b8:	e8 81 55 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    62bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    62c4:	48 89 c7             	mov    %rax,%rdi
    62c7:	e8 a8 56 00 00       	callq  b974 <_ZN4Heap3popEv>
    62cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    62d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    62d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    62de:	48 89 d6             	mov    %rdx,%rsi
    62e1:	48 89 c7             	mov    %rax,%rdi
    62e4:	e8 55 55 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    62e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    62f0:	48 89 c7             	mov    %rax,%rdi
    62f3:	e8 7c 56 00 00       	callq  b974 <_ZN4Heap3popEv>
    62f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    62ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6303:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    630a:	48 89 d6             	mov    %rdx,%rsi
    630d:	48 89 c7             	mov    %rax,%rdi
    6310:	e8 29 55 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6315:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    631c:	48 89 c7             	mov    %rax,%rdi
    631f:	e8 50 56 00 00       	callq  b974 <_ZN4Heap3popEv>
    6324:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    632b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    632f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6336:	48 89 d6             	mov    %rdx,%rsi
    6339:	48 89 c7             	mov    %rax,%rdi
    633c:	e8 fd 54 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6341:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6348:	48 89 c7             	mov    %rax,%rdi
    634b:	e8 24 56 00 00       	callq  b974 <_ZN4Heap3popEv>
    6350:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6357:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    635b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6362:	48 89 d6             	mov    %rdx,%rsi
    6365:	48 89 c7             	mov    %rax,%rdi
    6368:	e8 d1 54 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    636d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6374:	48 89 c7             	mov    %rax,%rdi
    6377:	e8 f8 55 00 00       	callq  b974 <_ZN4Heap3popEv>
    637c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6383:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6387:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    638e:	48 89 d6             	mov    %rdx,%rsi
    6391:	48 89 c7             	mov    %rax,%rdi
    6394:	e8 a5 54 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6399:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    63a0:	48 89 c7             	mov    %rax,%rdi
    63a3:	e8 cc 55 00 00       	callq  b974 <_ZN4Heap3popEv>
    63a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    63af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    63b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    63ba:	48 89 d6             	mov    %rdx,%rsi
    63bd:	48 89 c7             	mov    %rax,%rdi
    63c0:	e8 79 54 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    63c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    63cc:	48 89 c7             	mov    %rax,%rdi
    63cf:	e8 a0 55 00 00       	callq  b974 <_ZN4Heap3popEv>
    63d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    63db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    63df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    63e6:	48 89 d6             	mov    %rdx,%rsi
    63e9:	48 89 c7             	mov    %rax,%rdi
    63ec:	e8 4d 54 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    63f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    63f8:	48 89 c7             	mov    %rax,%rdi
    63fb:	e8 74 55 00 00       	callq  b974 <_ZN4Heap3popEv>
    6400:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6407:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    640b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6412:	48 89 d6             	mov    %rdx,%rsi
    6415:	48 89 c7             	mov    %rax,%rdi
    6418:	e8 21 54 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    641d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6424:	48 89 c7             	mov    %rax,%rdi
    6427:	e8 48 55 00 00       	callq  b974 <_ZN4Heap3popEv>
    642c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6433:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6437:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    643e:	48 89 d6             	mov    %rdx,%rsi
    6441:	48 89 c7             	mov    %rax,%rdi
    6444:	e8 f5 53 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6449:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6450:	48 89 c7             	mov    %rax,%rdi
    6453:	e8 1c 55 00 00       	callq  b974 <_ZN4Heap3popEv>
    6458:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    645f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6463:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    646a:	48 89 d6             	mov    %rdx,%rsi
    646d:	48 89 c7             	mov    %rax,%rdi
    6470:	e8 c9 53 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6475:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    647c:	48 89 c7             	mov    %rax,%rdi
    647f:	e8 f0 54 00 00       	callq  b974 <_ZN4Heap3popEv>
    6484:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    648b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    648f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6496:	48 89 d6             	mov    %rdx,%rsi
    6499:	48 89 c7             	mov    %rax,%rdi
    649c:	e8 9d 53 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    64a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    64a8:	48 89 c7             	mov    %rax,%rdi
    64ab:	e8 c4 54 00 00       	callq  b974 <_ZN4Heap3popEv>
    64b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    64b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    64bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    64c2:	48 89 d6             	mov    %rdx,%rsi
    64c5:	48 89 c7             	mov    %rax,%rdi
    64c8:	e8 71 53 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    64cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    64d4:	48 89 c7             	mov    %rax,%rdi
    64d7:	e8 98 54 00 00       	callq  b974 <_ZN4Heap3popEv>
    64dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    64e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    64e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    64ee:	48 89 d6             	mov    %rdx,%rsi
    64f1:	48 89 c7             	mov    %rax,%rdi
    64f4:	e8 45 53 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    64f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6500:	48 89 c7             	mov    %rax,%rdi
    6503:	e8 6c 54 00 00       	callq  b974 <_ZN4Heap3popEv>
    6508:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    650f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6513:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    651a:	48 89 d6             	mov    %rdx,%rsi
    651d:	48 89 c7             	mov    %rax,%rdi
    6520:	e8 19 53 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6525:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    652c:	48 89 c7             	mov    %rax,%rdi
    652f:	e8 40 54 00 00       	callq  b974 <_ZN4Heap3popEv>
    6534:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    653b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    653f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6546:	48 89 d6             	mov    %rdx,%rsi
    6549:	48 89 c7             	mov    %rax,%rdi
    654c:	e8 ed 52 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6551:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6558:	48 89 c7             	mov    %rax,%rdi
    655b:	e8 14 54 00 00       	callq  b974 <_ZN4Heap3popEv>
    6560:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6567:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    656b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6572:	48 89 d6             	mov    %rdx,%rsi
    6575:	48 89 c7             	mov    %rax,%rdi
    6578:	e8 c1 52 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    657d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6584:	48 89 c7             	mov    %rax,%rdi
    6587:	e8 e8 53 00 00       	callq  b974 <_ZN4Heap3popEv>
    658c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6593:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6597:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    659e:	48 89 d6             	mov    %rdx,%rsi
    65a1:	48 89 c7             	mov    %rax,%rdi
    65a4:	e8 95 52 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    65a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    65b0:	48 89 c7             	mov    %rax,%rdi
    65b3:	e8 bc 53 00 00       	callq  b974 <_ZN4Heap3popEv>
    65b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    65bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    65c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    65ca:	48 89 d6             	mov    %rdx,%rsi
    65cd:	48 89 c7             	mov    %rax,%rdi
    65d0:	e8 69 52 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    65d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    65dc:	48 89 c7             	mov    %rax,%rdi
    65df:	e8 90 53 00 00       	callq  b974 <_ZN4Heap3popEv>
    65e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    65eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    65ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    65f6:	48 89 d6             	mov    %rdx,%rsi
    65f9:	48 89 c7             	mov    %rax,%rdi
    65fc:	e8 3d 52 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6601:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6608:	48 89 c7             	mov    %rax,%rdi
    660b:	e8 64 53 00 00       	callq  b974 <_ZN4Heap3popEv>
    6610:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6617:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    661b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6622:	48 89 d6             	mov    %rdx,%rsi
    6625:	48 89 c7             	mov    %rax,%rdi
    6628:	e8 11 52 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    662d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6634:	48 89 c7             	mov    %rax,%rdi
    6637:	e8 38 53 00 00       	callq  b974 <_ZN4Heap3popEv>
    663c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6643:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6647:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    664e:	48 89 d6             	mov    %rdx,%rsi
    6651:	48 89 c7             	mov    %rax,%rdi
    6654:	e8 e5 51 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6659:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6660:	48 89 c7             	mov    %rax,%rdi
    6663:	e8 0c 53 00 00       	callq  b974 <_ZN4Heap3popEv>
    6668:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    666f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6673:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    667a:	48 89 d6             	mov    %rdx,%rsi
    667d:	48 89 c7             	mov    %rax,%rdi
    6680:	e8 b9 51 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6685:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    668c:	48 89 c7             	mov    %rax,%rdi
    668f:	e8 e0 52 00 00       	callq  b974 <_ZN4Heap3popEv>
    6694:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    669b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    669f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    66a6:	48 89 d6             	mov    %rdx,%rsi
    66a9:	48 89 c7             	mov    %rax,%rdi
    66ac:	e8 8d 51 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    66b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    66b8:	48 89 c7             	mov    %rax,%rdi
    66bb:	e8 b4 52 00 00       	callq  b974 <_ZN4Heap3popEv>
    66c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    66c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    66cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    66d2:	48 89 d6             	mov    %rdx,%rsi
    66d5:	48 89 c7             	mov    %rax,%rdi
    66d8:	e8 61 51 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    66dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    66e4:	48 89 c7             	mov    %rax,%rdi
    66e7:	e8 88 52 00 00       	callq  b974 <_ZN4Heap3popEv>
    66ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    66f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    66f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    66fe:	48 89 d6             	mov    %rdx,%rsi
    6701:	48 89 c7             	mov    %rax,%rdi
    6704:	e8 35 51 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6709:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6710:	48 89 c7             	mov    %rax,%rdi
    6713:	e8 5c 52 00 00       	callq  b974 <_ZN4Heap3popEv>
    6718:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    671f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6723:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    672a:	48 89 d6             	mov    %rdx,%rsi
    672d:	48 89 c7             	mov    %rax,%rdi
    6730:	e8 09 51 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6735:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    673c:	48 89 c7             	mov    %rax,%rdi
    673f:	e8 30 52 00 00       	callq  b974 <_ZN4Heap3popEv>
    6744:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    674b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    674f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6756:	48 89 d6             	mov    %rdx,%rsi
    6759:	48 89 c7             	mov    %rax,%rdi
    675c:	e8 dd 50 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6761:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6768:	48 89 c7             	mov    %rax,%rdi
    676b:	e8 04 52 00 00       	callq  b974 <_ZN4Heap3popEv>
    6770:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6777:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    677b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6782:	48 89 d6             	mov    %rdx,%rsi
    6785:	48 89 c7             	mov    %rax,%rdi
    6788:	e8 b1 50 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    678d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6794:	48 89 c7             	mov    %rax,%rdi
    6797:	e8 d8 51 00 00       	callq  b974 <_ZN4Heap3popEv>
    679c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    67a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    67a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    67ae:	48 89 d6             	mov    %rdx,%rsi
    67b1:	48 89 c7             	mov    %rax,%rdi
    67b4:	e8 85 50 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    67b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    67c0:	48 89 c7             	mov    %rax,%rdi
    67c3:	e8 ac 51 00 00       	callq  b974 <_ZN4Heap3popEv>
    67c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    67cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    67d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    67da:	48 89 d6             	mov    %rdx,%rsi
    67dd:	48 89 c7             	mov    %rax,%rdi
    67e0:	e8 59 50 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    67e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    67ec:	48 89 c7             	mov    %rax,%rdi
    67ef:	e8 80 51 00 00       	callq  b974 <_ZN4Heap3popEv>
    67f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    67fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    67ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6806:	48 89 d6             	mov    %rdx,%rsi
    6809:	48 89 c7             	mov    %rax,%rdi
    680c:	e8 2d 50 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6811:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6818:	48 89 c7             	mov    %rax,%rdi
    681b:	e8 54 51 00 00       	callq  b974 <_ZN4Heap3popEv>
    6820:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6827:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    682b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6832:	48 89 d6             	mov    %rdx,%rsi
    6835:	48 89 c7             	mov    %rax,%rdi
    6838:	e8 01 50 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    683d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6844:	48 89 c7             	mov    %rax,%rdi
    6847:	e8 28 51 00 00       	callq  b974 <_ZN4Heap3popEv>
    684c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6853:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6857:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    685e:	48 89 d6             	mov    %rdx,%rsi
    6861:	48 89 c7             	mov    %rax,%rdi
    6864:	e8 d5 4f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6869:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6870:	48 89 c7             	mov    %rax,%rdi
    6873:	e8 fc 50 00 00       	callq  b974 <_ZN4Heap3popEv>
    6878:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    687f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6883:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    688a:	48 89 d6             	mov    %rdx,%rsi
    688d:	48 89 c7             	mov    %rax,%rdi
    6890:	e8 a9 4f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6895:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    689c:	48 89 c7             	mov    %rax,%rdi
    689f:	e8 d0 50 00 00       	callq  b974 <_ZN4Heap3popEv>
    68a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    68ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    68af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    68b6:	48 89 d6             	mov    %rdx,%rsi
    68b9:	48 89 c7             	mov    %rax,%rdi
    68bc:	e8 7d 4f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    68c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    68c8:	48 89 c7             	mov    %rax,%rdi
    68cb:	e8 a4 50 00 00       	callq  b974 <_ZN4Heap3popEv>
    68d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    68d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    68db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    68e2:	48 89 d6             	mov    %rdx,%rsi
    68e5:	48 89 c7             	mov    %rax,%rdi
    68e8:	e8 51 4f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    68ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    68f4:	48 89 c7             	mov    %rax,%rdi
    68f7:	e8 78 50 00 00       	callq  b974 <_ZN4Heap3popEv>
    68fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6903:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6907:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    690e:	48 89 d6             	mov    %rdx,%rsi
    6911:	48 89 c7             	mov    %rax,%rdi
    6914:	e8 25 4f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6919:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6920:	48 89 c7             	mov    %rax,%rdi
    6923:	e8 4c 50 00 00       	callq  b974 <_ZN4Heap3popEv>
    6928:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    692f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6933:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    693a:	48 89 d6             	mov    %rdx,%rsi
    693d:	48 89 c7             	mov    %rax,%rdi
    6940:	e8 f9 4e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6945:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    694c:	48 89 c7             	mov    %rax,%rdi
    694f:	e8 20 50 00 00       	callq  b974 <_ZN4Heap3popEv>
    6954:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    695b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    695f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6966:	48 89 d6             	mov    %rdx,%rsi
    6969:	48 89 c7             	mov    %rax,%rdi
    696c:	e8 cd 4e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6971:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6978:	48 89 c7             	mov    %rax,%rdi
    697b:	e8 f4 4f 00 00       	callq  b974 <_ZN4Heap3popEv>
    6980:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6987:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    698b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6992:	48 89 d6             	mov    %rdx,%rsi
    6995:	48 89 c7             	mov    %rax,%rdi
    6998:	e8 a1 4e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    699d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    69a4:	48 89 c7             	mov    %rax,%rdi
    69a7:	e8 c8 4f 00 00       	callq  b974 <_ZN4Heap3popEv>
    69ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    69b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    69b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    69be:	48 89 d6             	mov    %rdx,%rsi
    69c1:	48 89 c7             	mov    %rax,%rdi
    69c4:	e8 75 4e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    69c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    69d0:	48 89 c7             	mov    %rax,%rdi
    69d3:	e8 9c 4f 00 00       	callq  b974 <_ZN4Heap3popEv>
    69d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    69df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    69e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    69ea:	48 89 d6             	mov    %rdx,%rsi
    69ed:	48 89 c7             	mov    %rax,%rdi
    69f0:	e8 49 4e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    69f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    69fc:	48 89 c7             	mov    %rax,%rdi
    69ff:	e8 70 4f 00 00       	callq  b974 <_ZN4Heap3popEv>
    6a04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6a0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6a0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a16:	48 89 d6             	mov    %rdx,%rsi
    6a19:	48 89 c7             	mov    %rax,%rdi
    6a1c:	e8 1d 4e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6a21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a28:	48 89 c7             	mov    %rax,%rdi
    6a2b:	e8 44 4f 00 00       	callq  b974 <_ZN4Heap3popEv>
    6a30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6a37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6a3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a42:	48 89 d6             	mov    %rdx,%rsi
    6a45:	48 89 c7             	mov    %rax,%rdi
    6a48:	e8 f1 4d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6a4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a54:	48 89 c7             	mov    %rax,%rdi
    6a57:	e8 18 4f 00 00       	callq  b974 <_ZN4Heap3popEv>
    6a5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6a63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6a67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a6e:	48 89 d6             	mov    %rdx,%rsi
    6a71:	48 89 c7             	mov    %rax,%rdi
    6a74:	e8 c5 4d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6a79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a80:	48 89 c7             	mov    %rax,%rdi
    6a83:	e8 ec 4e 00 00       	callq  b974 <_ZN4Heap3popEv>
    6a88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6a8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6a93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a9a:	48 89 d6             	mov    %rdx,%rsi
    6a9d:	48 89 c7             	mov    %rax,%rdi
    6aa0:	e8 99 4d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6aa5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6aac:	48 89 c7             	mov    %rax,%rdi
    6aaf:	e8 c0 4e 00 00       	callq  b974 <_ZN4Heap3popEv>
    6ab4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6abb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6abf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ac6:	48 89 d6             	mov    %rdx,%rsi
    6ac9:	48 89 c7             	mov    %rax,%rdi
    6acc:	e8 6d 4d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6ad1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ad8:	48 89 c7             	mov    %rax,%rdi
    6adb:	e8 94 4e 00 00       	callq  b974 <_ZN4Heap3popEv>
    6ae0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6ae7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6aeb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6af2:	48 89 d6             	mov    %rdx,%rsi
    6af5:	48 89 c7             	mov    %rax,%rdi
    6af8:	e8 41 4d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6afd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b04:	48 89 c7             	mov    %rax,%rdi
    6b07:	e8 68 4e 00 00       	callq  b974 <_ZN4Heap3popEv>
    6b0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6b13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6b17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b1e:	48 89 d6             	mov    %rdx,%rsi
    6b21:	48 89 c7             	mov    %rax,%rdi
    6b24:	e8 15 4d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6b29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b30:	48 89 c7             	mov    %rax,%rdi
    6b33:	e8 3c 4e 00 00       	callq  b974 <_ZN4Heap3popEv>
    6b38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6b3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6b43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b4a:	48 89 d6             	mov    %rdx,%rsi
    6b4d:	48 89 c7             	mov    %rax,%rdi
    6b50:	e8 e9 4c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6b55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b5c:	48 89 c7             	mov    %rax,%rdi
    6b5f:	e8 10 4e 00 00       	callq  b974 <_ZN4Heap3popEv>
    6b64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6b6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6b6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b76:	48 89 d6             	mov    %rdx,%rsi
    6b79:	48 89 c7             	mov    %rax,%rdi
    6b7c:	e8 bd 4c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6b81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b88:	48 89 c7             	mov    %rax,%rdi
    6b8b:	e8 e4 4d 00 00       	callq  b974 <_ZN4Heap3popEv>
    6b90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6b97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6b9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ba2:	48 89 d6             	mov    %rdx,%rsi
    6ba5:	48 89 c7             	mov    %rax,%rdi
    6ba8:	e8 91 4c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6bad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6bb4:	48 89 c7             	mov    %rax,%rdi
    6bb7:	e8 b8 4d 00 00       	callq  b974 <_ZN4Heap3popEv>
    6bbc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6bc3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6bc7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6bce:	48 89 d6             	mov    %rdx,%rsi
    6bd1:	48 89 c7             	mov    %rax,%rdi
    6bd4:	e8 65 4c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6bd9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6be0:	48 89 c7             	mov    %rax,%rdi
    6be3:	e8 8c 4d 00 00       	callq  b974 <_ZN4Heap3popEv>
    6be8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6bef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6bf3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6bfa:	48 89 d6             	mov    %rdx,%rsi
    6bfd:	48 89 c7             	mov    %rax,%rdi
    6c00:	e8 39 4c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6c05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c0c:	48 89 c7             	mov    %rax,%rdi
    6c0f:	e8 60 4d 00 00       	callq  b974 <_ZN4Heap3popEv>
    6c14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6c1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6c1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c26:	48 89 d6             	mov    %rdx,%rsi
    6c29:	48 89 c7             	mov    %rax,%rdi
    6c2c:	e8 0d 4c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6c31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c38:	48 89 c7             	mov    %rax,%rdi
    6c3b:	e8 34 4d 00 00       	callq  b974 <_ZN4Heap3popEv>
    6c40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6c47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6c4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c52:	48 89 d6             	mov    %rdx,%rsi
    6c55:	48 89 c7             	mov    %rax,%rdi
    6c58:	e8 e1 4b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6c5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c64:	48 89 c7             	mov    %rax,%rdi
    6c67:	e8 08 4d 00 00       	callq  b974 <_ZN4Heap3popEv>
    6c6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6c73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6c77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c7e:	48 89 d6             	mov    %rdx,%rsi
    6c81:	48 89 c7             	mov    %rax,%rdi
    6c84:	e8 b5 4b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6c89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c90:	48 89 c7             	mov    %rax,%rdi
    6c93:	e8 dc 4c 00 00       	callq  b974 <_ZN4Heap3popEv>
    6c98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6c9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6ca3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6caa:	48 89 d6             	mov    %rdx,%rsi
    6cad:	48 89 c7             	mov    %rax,%rdi
    6cb0:	e8 89 4b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6cb5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6cbc:	48 89 c7             	mov    %rax,%rdi
    6cbf:	e8 b0 4c 00 00       	callq  b974 <_ZN4Heap3popEv>
    6cc4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6ccb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6ccf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6cd6:	48 89 d6             	mov    %rdx,%rsi
    6cd9:	48 89 c7             	mov    %rax,%rdi
    6cdc:	e8 5d 4b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6ce1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ce8:	48 89 c7             	mov    %rax,%rdi
    6ceb:	e8 84 4c 00 00       	callq  b974 <_ZN4Heap3popEv>
    6cf0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6cf7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6cfb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d02:	48 89 d6             	mov    %rdx,%rsi
    6d05:	48 89 c7             	mov    %rax,%rdi
    6d08:	e8 31 4b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6d0d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d14:	48 89 c7             	mov    %rax,%rdi
    6d17:	e8 58 4c 00 00       	callq  b974 <_ZN4Heap3popEv>
    6d1c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6d23:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6d27:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d2e:	48 89 d6             	mov    %rdx,%rsi
    6d31:	48 89 c7             	mov    %rax,%rdi
    6d34:	e8 05 4b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6d39:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d40:	48 89 c7             	mov    %rax,%rdi
    6d43:	e8 2c 4c 00 00       	callq  b974 <_ZN4Heap3popEv>
    6d48:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6d4f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6d53:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d5a:	48 89 d6             	mov    %rdx,%rsi
    6d5d:	48 89 c7             	mov    %rax,%rdi
    6d60:	e8 d9 4a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6d65:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d6c:	48 89 c7             	mov    %rax,%rdi
    6d6f:	e8 00 4c 00 00       	callq  b974 <_ZN4Heap3popEv>
    6d74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6d7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6d7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d86:	48 89 d6             	mov    %rdx,%rsi
    6d89:	48 89 c7             	mov    %rax,%rdi
    6d8c:	e8 ad 4a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6d91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d98:	48 89 c7             	mov    %rax,%rdi
    6d9b:	e8 d4 4b 00 00       	callq  b974 <_ZN4Heap3popEv>
    6da0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6da7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6dab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6db2:	48 89 d6             	mov    %rdx,%rsi
    6db5:	48 89 c7             	mov    %rax,%rdi
    6db8:	e8 81 4a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6dbd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6dc4:	48 89 c7             	mov    %rax,%rdi
    6dc7:	e8 a8 4b 00 00       	callq  b974 <_ZN4Heap3popEv>
    6dcc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6dd3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6dd7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6dde:	48 89 d6             	mov    %rdx,%rsi
    6de1:	48 89 c7             	mov    %rax,%rdi
    6de4:	e8 55 4a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6de9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6df0:	48 89 c7             	mov    %rax,%rdi
    6df3:	e8 7c 4b 00 00       	callq  b974 <_ZN4Heap3popEv>
    6df8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6dff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6e03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e0a:	48 89 d6             	mov    %rdx,%rsi
    6e0d:	48 89 c7             	mov    %rax,%rdi
    6e10:	e8 29 4a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6e15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e1c:	48 89 c7             	mov    %rax,%rdi
    6e1f:	e8 50 4b 00 00       	callq  b974 <_ZN4Heap3popEv>
    6e24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6e2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6e2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e36:	48 89 d6             	mov    %rdx,%rsi
    6e39:	48 89 c7             	mov    %rax,%rdi
    6e3c:	e8 fd 49 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6e41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e48:	48 89 c7             	mov    %rax,%rdi
    6e4b:	e8 24 4b 00 00       	callq  b974 <_ZN4Heap3popEv>
    6e50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6e57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6e5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e62:	48 89 d6             	mov    %rdx,%rsi
    6e65:	48 89 c7             	mov    %rax,%rdi
    6e68:	e8 d1 49 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6e6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e74:	48 89 c7             	mov    %rax,%rdi
    6e77:	e8 f8 4a 00 00       	callq  b974 <_ZN4Heap3popEv>
    6e7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6e83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6e87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e8e:	48 89 d6             	mov    %rdx,%rsi
    6e91:	48 89 c7             	mov    %rax,%rdi
    6e94:	e8 a5 49 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6e99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ea0:	48 89 c7             	mov    %rax,%rdi
    6ea3:	e8 cc 4a 00 00       	callq  b974 <_ZN4Heap3popEv>
    6ea8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6eaf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6eb3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6eba:	48 89 d6             	mov    %rdx,%rsi
    6ebd:	48 89 c7             	mov    %rax,%rdi
    6ec0:	e8 79 49 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6ec5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ecc:	48 89 c7             	mov    %rax,%rdi
    6ecf:	e8 a0 4a 00 00       	callq  b974 <_ZN4Heap3popEv>
    6ed4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6edb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6edf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ee6:	48 89 d6             	mov    %rdx,%rsi
    6ee9:	48 89 c7             	mov    %rax,%rdi
    6eec:	e8 4d 49 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6ef1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ef8:	48 89 c7             	mov    %rax,%rdi
    6efb:	e8 74 4a 00 00       	callq  b974 <_ZN4Heap3popEv>
    6f00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6f07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6f0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f12:	48 89 d6             	mov    %rdx,%rsi
    6f15:	48 89 c7             	mov    %rax,%rdi
    6f18:	e8 21 49 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6f1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f24:	48 89 c7             	mov    %rax,%rdi
    6f27:	e8 48 4a 00 00       	callq  b974 <_ZN4Heap3popEv>
    6f2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6f33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6f37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f3e:	48 89 d6             	mov    %rdx,%rsi
    6f41:	48 89 c7             	mov    %rax,%rdi
    6f44:	e8 f5 48 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6f49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f50:	48 89 c7             	mov    %rax,%rdi
    6f53:	e8 1c 4a 00 00       	callq  b974 <_ZN4Heap3popEv>
    6f58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6f5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6f63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f6a:	48 89 d6             	mov    %rdx,%rsi
    6f6d:	48 89 c7             	mov    %rax,%rdi
    6f70:	e8 c9 48 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6f75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f7c:	48 89 c7             	mov    %rax,%rdi
    6f7f:	e8 f0 49 00 00       	callq  b974 <_ZN4Heap3popEv>
    6f84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6f8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6f8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f96:	48 89 d6             	mov    %rdx,%rsi
    6f99:	48 89 c7             	mov    %rax,%rdi
    6f9c:	e8 9d 48 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6fa1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6fa8:	48 89 c7             	mov    %rax,%rdi
    6fab:	e8 c4 49 00 00       	callq  b974 <_ZN4Heap3popEv>
    6fb0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6fb7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6fbb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6fc2:	48 89 d6             	mov    %rdx,%rsi
    6fc5:	48 89 c7             	mov    %rax,%rdi
    6fc8:	e8 71 48 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6fcd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6fd4:	48 89 c7             	mov    %rax,%rdi
    6fd7:	e8 98 49 00 00       	callq  b974 <_ZN4Heap3popEv>
    6fdc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6fe3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6fe7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6fee:	48 89 d6             	mov    %rdx,%rsi
    6ff1:	48 89 c7             	mov    %rax,%rdi
    6ff4:	e8 45 48 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    6ff9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7000:	48 89 c7             	mov    %rax,%rdi
    7003:	e8 6c 49 00 00       	callq  b974 <_ZN4Heap3popEv>
    7008:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    700f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7013:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    701a:	48 89 d6             	mov    %rdx,%rsi
    701d:	48 89 c7             	mov    %rax,%rdi
    7020:	e8 19 48 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7025:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    702c:	48 89 c7             	mov    %rax,%rdi
    702f:	e8 40 49 00 00       	callq  b974 <_ZN4Heap3popEv>
    7034:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    703b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    703f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7046:	48 89 d6             	mov    %rdx,%rsi
    7049:	48 89 c7             	mov    %rax,%rdi
    704c:	e8 ed 47 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7051:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7058:	48 89 c7             	mov    %rax,%rdi
    705b:	e8 14 49 00 00       	callq  b974 <_ZN4Heap3popEv>
    7060:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7067:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    706b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7072:	48 89 d6             	mov    %rdx,%rsi
    7075:	48 89 c7             	mov    %rax,%rdi
    7078:	e8 c1 47 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    707d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7084:	48 89 c7             	mov    %rax,%rdi
    7087:	e8 e8 48 00 00       	callq  b974 <_ZN4Heap3popEv>
    708c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7093:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7097:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    709e:	48 89 d6             	mov    %rdx,%rsi
    70a1:	48 89 c7             	mov    %rax,%rdi
    70a4:	e8 95 47 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    70a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    70b0:	48 89 c7             	mov    %rax,%rdi
    70b3:	e8 bc 48 00 00       	callq  b974 <_ZN4Heap3popEv>
    70b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    70bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    70c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    70ca:	48 89 d6             	mov    %rdx,%rsi
    70cd:	48 89 c7             	mov    %rax,%rdi
    70d0:	e8 69 47 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    70d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    70dc:	48 89 c7             	mov    %rax,%rdi
    70df:	e8 90 48 00 00       	callq  b974 <_ZN4Heap3popEv>
    70e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    70eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    70ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    70f6:	48 89 d6             	mov    %rdx,%rsi
    70f9:	48 89 c7             	mov    %rax,%rdi
    70fc:	e8 3d 47 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7101:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7108:	48 89 c7             	mov    %rax,%rdi
    710b:	e8 64 48 00 00       	callq  b974 <_ZN4Heap3popEv>
    7110:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7117:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    711b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7122:	48 89 d6             	mov    %rdx,%rsi
    7125:	48 89 c7             	mov    %rax,%rdi
    7128:	e8 11 47 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    712d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7134:	48 89 c7             	mov    %rax,%rdi
    7137:	e8 38 48 00 00       	callq  b974 <_ZN4Heap3popEv>
    713c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7143:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7147:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    714e:	48 89 d6             	mov    %rdx,%rsi
    7151:	48 89 c7             	mov    %rax,%rdi
    7154:	e8 e5 46 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7159:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7160:	48 89 c7             	mov    %rax,%rdi
    7163:	e8 0c 48 00 00       	callq  b974 <_ZN4Heap3popEv>
    7168:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    716f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7173:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    717a:	48 89 d6             	mov    %rdx,%rsi
    717d:	48 89 c7             	mov    %rax,%rdi
    7180:	e8 b9 46 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7185:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    718c:	48 89 c7             	mov    %rax,%rdi
    718f:	e8 e0 47 00 00       	callq  b974 <_ZN4Heap3popEv>
    7194:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    719b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    719f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    71a6:	48 89 d6             	mov    %rdx,%rsi
    71a9:	48 89 c7             	mov    %rax,%rdi
    71ac:	e8 8d 46 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    71b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    71b8:	48 89 c7             	mov    %rax,%rdi
    71bb:	e8 b4 47 00 00       	callq  b974 <_ZN4Heap3popEv>
    71c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    71c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    71cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    71d2:	48 89 d6             	mov    %rdx,%rsi
    71d5:	48 89 c7             	mov    %rax,%rdi
    71d8:	e8 61 46 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    71dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    71e4:	48 89 c7             	mov    %rax,%rdi
    71e7:	e8 88 47 00 00       	callq  b974 <_ZN4Heap3popEv>
    71ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    71f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    71f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    71fe:	48 89 d6             	mov    %rdx,%rsi
    7201:	48 89 c7             	mov    %rax,%rdi
    7204:	e8 35 46 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7209:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7210:	48 89 c7             	mov    %rax,%rdi
    7213:	e8 5c 47 00 00       	callq  b974 <_ZN4Heap3popEv>
    7218:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    721f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7223:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    722a:	48 89 d6             	mov    %rdx,%rsi
    722d:	48 89 c7             	mov    %rax,%rdi
    7230:	e8 09 46 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7235:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    723c:	48 89 c7             	mov    %rax,%rdi
    723f:	e8 30 47 00 00       	callq  b974 <_ZN4Heap3popEv>
    7244:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    724b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    724f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7256:	48 89 d6             	mov    %rdx,%rsi
    7259:	48 89 c7             	mov    %rax,%rdi
    725c:	e8 dd 45 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7261:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7268:	48 89 c7             	mov    %rax,%rdi
    726b:	e8 04 47 00 00       	callq  b974 <_ZN4Heap3popEv>
    7270:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7277:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    727b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7282:	48 89 d6             	mov    %rdx,%rsi
    7285:	48 89 c7             	mov    %rax,%rdi
    7288:	e8 b1 45 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    728d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7294:	48 89 c7             	mov    %rax,%rdi
    7297:	e8 d8 46 00 00       	callq  b974 <_ZN4Heap3popEv>
    729c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    72a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    72a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    72ae:	48 89 d6             	mov    %rdx,%rsi
    72b1:	48 89 c7             	mov    %rax,%rdi
    72b4:	e8 85 45 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    72b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    72c0:	48 89 c7             	mov    %rax,%rdi
    72c3:	e8 ac 46 00 00       	callq  b974 <_ZN4Heap3popEv>
    72c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    72cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    72d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    72da:	48 89 d6             	mov    %rdx,%rsi
    72dd:	48 89 c7             	mov    %rax,%rdi
    72e0:	e8 59 45 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    72e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    72ec:	48 89 c7             	mov    %rax,%rdi
    72ef:	e8 80 46 00 00       	callq  b974 <_ZN4Heap3popEv>
    72f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    72fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    72ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7306:	48 89 d6             	mov    %rdx,%rsi
    7309:	48 89 c7             	mov    %rax,%rdi
    730c:	e8 2d 45 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7311:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7318:	48 89 c7             	mov    %rax,%rdi
    731b:	e8 54 46 00 00       	callq  b974 <_ZN4Heap3popEv>
    7320:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7327:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    732b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7332:	48 89 d6             	mov    %rdx,%rsi
    7335:	48 89 c7             	mov    %rax,%rdi
    7338:	e8 01 45 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    733d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7344:	48 89 c7             	mov    %rax,%rdi
    7347:	e8 28 46 00 00       	callq  b974 <_ZN4Heap3popEv>
    734c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7353:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7357:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    735e:	48 89 d6             	mov    %rdx,%rsi
    7361:	48 89 c7             	mov    %rax,%rdi
    7364:	e8 d5 44 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7369:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7370:	48 89 c7             	mov    %rax,%rdi
    7373:	e8 fc 45 00 00       	callq  b974 <_ZN4Heap3popEv>
    7378:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    737f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7383:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    738a:	48 89 d6             	mov    %rdx,%rsi
    738d:	48 89 c7             	mov    %rax,%rdi
    7390:	e8 a9 44 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7395:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    739c:	48 89 c7             	mov    %rax,%rdi
    739f:	e8 d0 45 00 00       	callq  b974 <_ZN4Heap3popEv>
    73a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    73ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    73af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    73b6:	48 89 d6             	mov    %rdx,%rsi
    73b9:	48 89 c7             	mov    %rax,%rdi
    73bc:	e8 7d 44 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    73c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    73c8:	48 89 c7             	mov    %rax,%rdi
    73cb:	e8 a4 45 00 00       	callq  b974 <_ZN4Heap3popEv>
    73d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    73d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    73db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    73e2:	48 89 d6             	mov    %rdx,%rsi
    73e5:	48 89 c7             	mov    %rax,%rdi
    73e8:	e8 51 44 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    73ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    73f4:	48 89 c7             	mov    %rax,%rdi
    73f7:	e8 78 45 00 00       	callq  b974 <_ZN4Heap3popEv>
    73fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7403:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7407:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    740e:	48 89 d6             	mov    %rdx,%rsi
    7411:	48 89 c7             	mov    %rax,%rdi
    7414:	e8 25 44 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7419:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7420:	48 89 c7             	mov    %rax,%rdi
    7423:	e8 4c 45 00 00       	callq  b974 <_ZN4Heap3popEv>
    7428:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    742f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7433:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    743a:	48 89 d6             	mov    %rdx,%rsi
    743d:	48 89 c7             	mov    %rax,%rdi
    7440:	e8 f9 43 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7445:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    744c:	48 89 c7             	mov    %rax,%rdi
    744f:	e8 20 45 00 00       	callq  b974 <_ZN4Heap3popEv>
    7454:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    745b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    745f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7466:	48 89 d6             	mov    %rdx,%rsi
    7469:	48 89 c7             	mov    %rax,%rdi
    746c:	e8 cd 43 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7471:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7478:	48 89 c7             	mov    %rax,%rdi
    747b:	e8 f4 44 00 00       	callq  b974 <_ZN4Heap3popEv>
    7480:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7487:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    748b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7492:	48 89 d6             	mov    %rdx,%rsi
    7495:	48 89 c7             	mov    %rax,%rdi
    7498:	e8 a1 43 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    749d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    74a4:	48 89 c7             	mov    %rax,%rdi
    74a7:	e8 c8 44 00 00       	callq  b974 <_ZN4Heap3popEv>
    74ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    74b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    74b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    74be:	48 89 d6             	mov    %rdx,%rsi
    74c1:	48 89 c7             	mov    %rax,%rdi
    74c4:	e8 75 43 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    74c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    74d0:	48 89 c7             	mov    %rax,%rdi
    74d3:	e8 9c 44 00 00       	callq  b974 <_ZN4Heap3popEv>
    74d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    74df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    74e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    74ea:	48 89 d6             	mov    %rdx,%rsi
    74ed:	48 89 c7             	mov    %rax,%rdi
    74f0:	e8 49 43 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    74f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    74fc:	48 89 c7             	mov    %rax,%rdi
    74ff:	e8 70 44 00 00       	callq  b974 <_ZN4Heap3popEv>
    7504:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    750b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    750f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7516:	48 89 d6             	mov    %rdx,%rsi
    7519:	48 89 c7             	mov    %rax,%rdi
    751c:	e8 1d 43 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7521:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7528:	48 89 c7             	mov    %rax,%rdi
    752b:	e8 44 44 00 00       	callq  b974 <_ZN4Heap3popEv>
    7530:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7537:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    753b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7542:	48 89 d6             	mov    %rdx,%rsi
    7545:	48 89 c7             	mov    %rax,%rdi
    7548:	e8 f1 42 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    754d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7554:	48 89 c7             	mov    %rax,%rdi
    7557:	e8 18 44 00 00       	callq  b974 <_ZN4Heap3popEv>
    755c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7563:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7567:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    756e:	48 89 d6             	mov    %rdx,%rsi
    7571:	48 89 c7             	mov    %rax,%rdi
    7574:	e8 c5 42 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7579:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7580:	48 89 c7             	mov    %rax,%rdi
    7583:	e8 ec 43 00 00       	callq  b974 <_ZN4Heap3popEv>
    7588:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    758f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7593:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    759a:	48 89 d6             	mov    %rdx,%rsi
    759d:	48 89 c7             	mov    %rax,%rdi
    75a0:	e8 99 42 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    75a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    75ac:	48 89 c7             	mov    %rax,%rdi
    75af:	e8 c0 43 00 00       	callq  b974 <_ZN4Heap3popEv>
    75b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    75bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    75bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    75c6:	48 89 d6             	mov    %rdx,%rsi
    75c9:	48 89 c7             	mov    %rax,%rdi
    75cc:	e8 6d 42 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    75d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    75d8:	48 89 c7             	mov    %rax,%rdi
    75db:	e8 94 43 00 00       	callq  b974 <_ZN4Heap3popEv>
    75e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    75e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    75eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    75f2:	48 89 d6             	mov    %rdx,%rsi
    75f5:	48 89 c7             	mov    %rax,%rdi
    75f8:	e8 41 42 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    75fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7604:	48 89 c7             	mov    %rax,%rdi
    7607:	e8 68 43 00 00       	callq  b974 <_ZN4Heap3popEv>
    760c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7613:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7617:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    761e:	48 89 d6             	mov    %rdx,%rsi
    7621:	48 89 c7             	mov    %rax,%rdi
    7624:	e8 15 42 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7629:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7630:	48 89 c7             	mov    %rax,%rdi
    7633:	e8 3c 43 00 00       	callq  b974 <_ZN4Heap3popEv>
    7638:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    763f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7643:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    764a:	48 89 d6             	mov    %rdx,%rsi
    764d:	48 89 c7             	mov    %rax,%rdi
    7650:	e8 e9 41 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7655:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    765c:	48 89 c7             	mov    %rax,%rdi
    765f:	e8 10 43 00 00       	callq  b974 <_ZN4Heap3popEv>
    7664:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    766b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    766f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7676:	48 89 d6             	mov    %rdx,%rsi
    7679:	48 89 c7             	mov    %rax,%rdi
    767c:	e8 bd 41 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7681:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7688:	48 89 c7             	mov    %rax,%rdi
    768b:	e8 e4 42 00 00       	callq  b974 <_ZN4Heap3popEv>
    7690:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7697:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    769b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    76a2:	48 89 d6             	mov    %rdx,%rsi
    76a5:	48 89 c7             	mov    %rax,%rdi
    76a8:	e8 91 41 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    76ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    76b4:	48 89 c7             	mov    %rax,%rdi
    76b7:	e8 b8 42 00 00       	callq  b974 <_ZN4Heap3popEv>
    76bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    76c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    76c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    76ce:	48 89 d6             	mov    %rdx,%rsi
    76d1:	48 89 c7             	mov    %rax,%rdi
    76d4:	e8 65 41 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    76d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    76e0:	48 89 c7             	mov    %rax,%rdi
    76e3:	e8 8c 42 00 00       	callq  b974 <_ZN4Heap3popEv>
    76e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    76ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    76f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    76fa:	48 89 d6             	mov    %rdx,%rsi
    76fd:	48 89 c7             	mov    %rax,%rdi
    7700:	e8 39 41 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7705:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    770c:	48 89 c7             	mov    %rax,%rdi
    770f:	e8 60 42 00 00       	callq  b974 <_ZN4Heap3popEv>
    7714:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    771b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    771f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7726:	48 89 d6             	mov    %rdx,%rsi
    7729:	48 89 c7             	mov    %rax,%rdi
    772c:	e8 0d 41 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7731:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7738:	48 89 c7             	mov    %rax,%rdi
    773b:	e8 34 42 00 00       	callq  b974 <_ZN4Heap3popEv>
    7740:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7747:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    774b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7752:	48 89 d6             	mov    %rdx,%rsi
    7755:	48 89 c7             	mov    %rax,%rdi
    7758:	e8 e1 40 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    775d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7764:	48 89 c7             	mov    %rax,%rdi
    7767:	e8 08 42 00 00       	callq  b974 <_ZN4Heap3popEv>
    776c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7773:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7777:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    777e:	48 89 d6             	mov    %rdx,%rsi
    7781:	48 89 c7             	mov    %rax,%rdi
    7784:	e8 b5 40 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7789:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7790:	48 89 c7             	mov    %rax,%rdi
    7793:	e8 dc 41 00 00       	callq  b974 <_ZN4Heap3popEv>
    7798:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    779f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    77a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    77aa:	48 89 d6             	mov    %rdx,%rsi
    77ad:	48 89 c7             	mov    %rax,%rdi
    77b0:	e8 89 40 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    77b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    77bc:	48 89 c7             	mov    %rax,%rdi
    77bf:	e8 b0 41 00 00       	callq  b974 <_ZN4Heap3popEv>
    77c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    77cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    77cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    77d6:	48 89 d6             	mov    %rdx,%rsi
    77d9:	48 89 c7             	mov    %rax,%rdi
    77dc:	e8 5d 40 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    77e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    77e8:	48 89 c7             	mov    %rax,%rdi
    77eb:	e8 84 41 00 00       	callq  b974 <_ZN4Heap3popEv>
    77f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    77f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    77fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7802:	48 89 d6             	mov    %rdx,%rsi
    7805:	48 89 c7             	mov    %rax,%rdi
    7808:	e8 31 40 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    780d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7814:	48 89 c7             	mov    %rax,%rdi
    7817:	e8 58 41 00 00       	callq  b974 <_ZN4Heap3popEv>
    781c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7823:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7827:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    782e:	48 89 d6             	mov    %rdx,%rsi
    7831:	48 89 c7             	mov    %rax,%rdi
    7834:	e8 05 40 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7839:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7840:	48 89 c7             	mov    %rax,%rdi
    7843:	e8 2c 41 00 00       	callq  b974 <_ZN4Heap3popEv>
    7848:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    784f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7853:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    785a:	48 89 d6             	mov    %rdx,%rsi
    785d:	48 89 c7             	mov    %rax,%rdi
    7860:	e8 d9 3f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7865:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    786c:	48 89 c7             	mov    %rax,%rdi
    786f:	e8 00 41 00 00       	callq  b974 <_ZN4Heap3popEv>
    7874:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    787b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    787f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7886:	48 89 d6             	mov    %rdx,%rsi
    7889:	48 89 c7             	mov    %rax,%rdi
    788c:	e8 ad 3f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7891:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7898:	48 89 c7             	mov    %rax,%rdi
    789b:	e8 d4 40 00 00       	callq  b974 <_ZN4Heap3popEv>
    78a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    78a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    78ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    78b2:	48 89 d6             	mov    %rdx,%rsi
    78b5:	48 89 c7             	mov    %rax,%rdi
    78b8:	e8 81 3f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    78bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    78c4:	48 89 c7             	mov    %rax,%rdi
    78c7:	e8 a8 40 00 00       	callq  b974 <_ZN4Heap3popEv>
    78cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    78d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    78d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    78de:	48 89 d6             	mov    %rdx,%rsi
    78e1:	48 89 c7             	mov    %rax,%rdi
    78e4:	e8 55 3f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    78e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    78f0:	48 89 c7             	mov    %rax,%rdi
    78f3:	e8 7c 40 00 00       	callq  b974 <_ZN4Heap3popEv>
    78f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    78ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7903:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    790a:	48 89 d6             	mov    %rdx,%rsi
    790d:	48 89 c7             	mov    %rax,%rdi
    7910:	e8 29 3f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7915:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    791c:	48 89 c7             	mov    %rax,%rdi
    791f:	e8 50 40 00 00       	callq  b974 <_ZN4Heap3popEv>
    7924:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    792b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    792f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7936:	48 89 d6             	mov    %rdx,%rsi
    7939:	48 89 c7             	mov    %rax,%rdi
    793c:	e8 fd 3e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7941:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7948:	48 89 c7             	mov    %rax,%rdi
    794b:	e8 24 40 00 00       	callq  b974 <_ZN4Heap3popEv>
    7950:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7957:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    795b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7962:	48 89 d6             	mov    %rdx,%rsi
    7965:	48 89 c7             	mov    %rax,%rdi
    7968:	e8 d1 3e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    796d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7974:	48 89 c7             	mov    %rax,%rdi
    7977:	e8 f8 3f 00 00       	callq  b974 <_ZN4Heap3popEv>
    797c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7983:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7987:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    798e:	48 89 d6             	mov    %rdx,%rsi
    7991:	48 89 c7             	mov    %rax,%rdi
    7994:	e8 a5 3e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7999:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    79a0:	48 89 c7             	mov    %rax,%rdi
    79a3:	e8 cc 3f 00 00       	callq  b974 <_ZN4Heap3popEv>
    79a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    79af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    79b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    79ba:	48 89 d6             	mov    %rdx,%rsi
    79bd:	48 89 c7             	mov    %rax,%rdi
    79c0:	e8 79 3e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    79c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    79cc:	48 89 c7             	mov    %rax,%rdi
    79cf:	e8 a0 3f 00 00       	callq  b974 <_ZN4Heap3popEv>
    79d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    79db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    79df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    79e6:	48 89 d6             	mov    %rdx,%rsi
    79e9:	48 89 c7             	mov    %rax,%rdi
    79ec:	e8 4d 3e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    79f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    79f8:	48 89 c7             	mov    %rax,%rdi
    79fb:	e8 74 3f 00 00       	callq  b974 <_ZN4Heap3popEv>
    7a00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7a07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7a0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a12:	48 89 d6             	mov    %rdx,%rsi
    7a15:	48 89 c7             	mov    %rax,%rdi
    7a18:	e8 21 3e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7a1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a24:	48 89 c7             	mov    %rax,%rdi
    7a27:	e8 48 3f 00 00       	callq  b974 <_ZN4Heap3popEv>
    7a2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7a33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7a37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a3e:	48 89 d6             	mov    %rdx,%rsi
    7a41:	48 89 c7             	mov    %rax,%rdi
    7a44:	e8 f5 3d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7a49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a50:	48 89 c7             	mov    %rax,%rdi
    7a53:	e8 1c 3f 00 00       	callq  b974 <_ZN4Heap3popEv>
    7a58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7a5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7a63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a6a:	48 89 d6             	mov    %rdx,%rsi
    7a6d:	48 89 c7             	mov    %rax,%rdi
    7a70:	e8 c9 3d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7a75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a7c:	48 89 c7             	mov    %rax,%rdi
    7a7f:	e8 f0 3e 00 00       	callq  b974 <_ZN4Heap3popEv>
    7a84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7a8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7a8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a96:	48 89 d6             	mov    %rdx,%rsi
    7a99:	48 89 c7             	mov    %rax,%rdi
    7a9c:	e8 9d 3d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7aa1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7aa8:	48 89 c7             	mov    %rax,%rdi
    7aab:	e8 c4 3e 00 00       	callq  b974 <_ZN4Heap3popEv>
    7ab0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7ab7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7abb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ac2:	48 89 d6             	mov    %rdx,%rsi
    7ac5:	48 89 c7             	mov    %rax,%rdi
    7ac8:	e8 71 3d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7acd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ad4:	48 89 c7             	mov    %rax,%rdi
    7ad7:	e8 98 3e 00 00       	callq  b974 <_ZN4Heap3popEv>
    7adc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7ae3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7ae7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7aee:	48 89 d6             	mov    %rdx,%rsi
    7af1:	48 89 c7             	mov    %rax,%rdi
    7af4:	e8 45 3d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7af9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b00:	48 89 c7             	mov    %rax,%rdi
    7b03:	e8 6c 3e 00 00       	callq  b974 <_ZN4Heap3popEv>
    7b08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7b0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7b13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b1a:	48 89 d6             	mov    %rdx,%rsi
    7b1d:	48 89 c7             	mov    %rax,%rdi
    7b20:	e8 19 3d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7b25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b2c:	48 89 c7             	mov    %rax,%rdi
    7b2f:	e8 40 3e 00 00       	callq  b974 <_ZN4Heap3popEv>
    7b34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7b3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7b3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b46:	48 89 d6             	mov    %rdx,%rsi
    7b49:	48 89 c7             	mov    %rax,%rdi
    7b4c:	e8 ed 3c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7b51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b58:	48 89 c7             	mov    %rax,%rdi
    7b5b:	e8 14 3e 00 00       	callq  b974 <_ZN4Heap3popEv>
    7b60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7b67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7b6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b72:	48 89 d6             	mov    %rdx,%rsi
    7b75:	48 89 c7             	mov    %rax,%rdi
    7b78:	e8 c1 3c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7b7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b84:	48 89 c7             	mov    %rax,%rdi
    7b87:	e8 e8 3d 00 00       	callq  b974 <_ZN4Heap3popEv>
    7b8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7b93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7b97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b9e:	48 89 d6             	mov    %rdx,%rsi
    7ba1:	48 89 c7             	mov    %rax,%rdi
    7ba4:	e8 95 3c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7ba9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7bb0:	48 89 c7             	mov    %rax,%rdi
    7bb3:	e8 bc 3d 00 00       	callq  b974 <_ZN4Heap3popEv>
    7bb8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7bbf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7bc3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7bca:	48 89 d6             	mov    %rdx,%rsi
    7bcd:	48 89 c7             	mov    %rax,%rdi
    7bd0:	e8 69 3c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7bd5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7bdc:	48 89 c7             	mov    %rax,%rdi
    7bdf:	e8 90 3d 00 00       	callq  b974 <_ZN4Heap3popEv>
    7be4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7beb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7bef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7bf6:	48 89 d6             	mov    %rdx,%rsi
    7bf9:	48 89 c7             	mov    %rax,%rdi
    7bfc:	e8 3d 3c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7c01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c08:	48 89 c7             	mov    %rax,%rdi
    7c0b:	e8 64 3d 00 00       	callq  b974 <_ZN4Heap3popEv>
    7c10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7c17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7c1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c22:	48 89 d6             	mov    %rdx,%rsi
    7c25:	48 89 c7             	mov    %rax,%rdi
    7c28:	e8 11 3c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7c2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c34:	48 89 c7             	mov    %rax,%rdi
    7c37:	e8 38 3d 00 00       	callq  b974 <_ZN4Heap3popEv>
    7c3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7c43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7c47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c4e:	48 89 d6             	mov    %rdx,%rsi
    7c51:	48 89 c7             	mov    %rax,%rdi
    7c54:	e8 e5 3b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7c59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c60:	48 89 c7             	mov    %rax,%rdi
    7c63:	e8 0c 3d 00 00       	callq  b974 <_ZN4Heap3popEv>
    7c68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7c6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7c73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c7a:	48 89 d6             	mov    %rdx,%rsi
    7c7d:	48 89 c7             	mov    %rax,%rdi
    7c80:	e8 b9 3b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7c85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c8c:	48 89 c7             	mov    %rax,%rdi
    7c8f:	e8 e0 3c 00 00       	callq  b974 <_ZN4Heap3popEv>
    7c94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7c9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7c9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ca6:	48 89 d6             	mov    %rdx,%rsi
    7ca9:	48 89 c7             	mov    %rax,%rdi
    7cac:	e8 8d 3b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7cb1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7cb8:	48 89 c7             	mov    %rax,%rdi
    7cbb:	e8 b4 3c 00 00       	callq  b974 <_ZN4Heap3popEv>
    7cc0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7cc7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7ccb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7cd2:	48 89 d6             	mov    %rdx,%rsi
    7cd5:	48 89 c7             	mov    %rax,%rdi
    7cd8:	e8 61 3b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7cdd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ce4:	48 89 c7             	mov    %rax,%rdi
    7ce7:	e8 88 3c 00 00       	callq  b974 <_ZN4Heap3popEv>
    7cec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7cf3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7cf7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7cfe:	48 89 d6             	mov    %rdx,%rsi
    7d01:	48 89 c7             	mov    %rax,%rdi
    7d04:	e8 35 3b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7d09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d10:	48 89 c7             	mov    %rax,%rdi
    7d13:	e8 5c 3c 00 00       	callq  b974 <_ZN4Heap3popEv>
    7d18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7d1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7d23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d2a:	48 89 d6             	mov    %rdx,%rsi
    7d2d:	48 89 c7             	mov    %rax,%rdi
    7d30:	e8 09 3b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7d35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d3c:	48 89 c7             	mov    %rax,%rdi
    7d3f:	e8 30 3c 00 00       	callq  b974 <_ZN4Heap3popEv>
    7d44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7d4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7d4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d56:	48 89 d6             	mov    %rdx,%rsi
    7d59:	48 89 c7             	mov    %rax,%rdi
    7d5c:	e8 dd 3a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7d61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d68:	48 89 c7             	mov    %rax,%rdi
    7d6b:	e8 04 3c 00 00       	callq  b974 <_ZN4Heap3popEv>
    7d70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7d77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7d7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d82:	48 89 d6             	mov    %rdx,%rsi
    7d85:	48 89 c7             	mov    %rax,%rdi
    7d88:	e8 b1 3a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7d8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d94:	48 89 c7             	mov    %rax,%rdi
    7d97:	e8 d8 3b 00 00       	callq  b974 <_ZN4Heap3popEv>
    7d9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7da3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7da7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7dae:	48 89 d6             	mov    %rdx,%rsi
    7db1:	48 89 c7             	mov    %rax,%rdi
    7db4:	e8 85 3a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7db9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7dc0:	48 89 c7             	mov    %rax,%rdi
    7dc3:	e8 ac 3b 00 00       	callq  b974 <_ZN4Heap3popEv>
    7dc8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7dcf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7dd3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7dda:	48 89 d6             	mov    %rdx,%rsi
    7ddd:	48 89 c7             	mov    %rax,%rdi
    7de0:	e8 59 3a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7de5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7dec:	48 89 c7             	mov    %rax,%rdi
    7def:	e8 80 3b 00 00       	callq  b974 <_ZN4Heap3popEv>
    7df4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7dfb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7dff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e06:	48 89 d6             	mov    %rdx,%rsi
    7e09:	48 89 c7             	mov    %rax,%rdi
    7e0c:	e8 2d 3a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7e11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e18:	48 89 c7             	mov    %rax,%rdi
    7e1b:	e8 54 3b 00 00       	callq  b974 <_ZN4Heap3popEv>
    7e20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7e27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7e2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e32:	48 89 d6             	mov    %rdx,%rsi
    7e35:	48 89 c7             	mov    %rax,%rdi
    7e38:	e8 01 3a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7e3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e44:	48 89 c7             	mov    %rax,%rdi
    7e47:	e8 28 3b 00 00       	callq  b974 <_ZN4Heap3popEv>
    7e4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7e53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7e57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e5e:	48 89 d6             	mov    %rdx,%rsi
    7e61:	48 89 c7             	mov    %rax,%rdi
    7e64:	e8 d5 39 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7e69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e70:	48 89 c7             	mov    %rax,%rdi
    7e73:	e8 fc 3a 00 00       	callq  b974 <_ZN4Heap3popEv>
    7e78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7e7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7e83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e8a:	48 89 d6             	mov    %rdx,%rsi
    7e8d:	48 89 c7             	mov    %rax,%rdi
    7e90:	e8 a9 39 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7e95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e9c:	48 89 c7             	mov    %rax,%rdi
    7e9f:	e8 d0 3a 00 00       	callq  b974 <_ZN4Heap3popEv>
    7ea4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7eab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7eaf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7eb6:	48 89 d6             	mov    %rdx,%rsi
    7eb9:	48 89 c7             	mov    %rax,%rdi
    7ebc:	e8 7d 39 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7ec1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ec8:	48 89 c7             	mov    %rax,%rdi
    7ecb:	e8 a4 3a 00 00       	callq  b974 <_ZN4Heap3popEv>
    7ed0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7ed7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7edb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ee2:	48 89 d6             	mov    %rdx,%rsi
    7ee5:	48 89 c7             	mov    %rax,%rdi
    7ee8:	e8 51 39 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7eed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ef4:	48 89 c7             	mov    %rax,%rdi
    7ef7:	e8 78 3a 00 00       	callq  b974 <_ZN4Heap3popEv>
    7efc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7f03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7f07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f0e:	48 89 d6             	mov    %rdx,%rsi
    7f11:	48 89 c7             	mov    %rax,%rdi
    7f14:	e8 25 39 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7f19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f20:	48 89 c7             	mov    %rax,%rdi
    7f23:	e8 4c 3a 00 00       	callq  b974 <_ZN4Heap3popEv>
    7f28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7f2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7f33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f3a:	48 89 d6             	mov    %rdx,%rsi
    7f3d:	48 89 c7             	mov    %rax,%rdi
    7f40:	e8 f9 38 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7f45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f4c:	48 89 c7             	mov    %rax,%rdi
    7f4f:	e8 20 3a 00 00       	callq  b974 <_ZN4Heap3popEv>
    7f54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7f5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7f5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f66:	48 89 d6             	mov    %rdx,%rsi
    7f69:	48 89 c7             	mov    %rax,%rdi
    7f6c:	e8 cd 38 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7f71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f78:	48 89 c7             	mov    %rax,%rdi
    7f7b:	e8 f4 39 00 00       	callq  b974 <_ZN4Heap3popEv>
    7f80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7f87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7f8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f92:	48 89 d6             	mov    %rdx,%rsi
    7f95:	48 89 c7             	mov    %rax,%rdi
    7f98:	e8 a1 38 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7f9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7fa4:	48 89 c7             	mov    %rax,%rdi
    7fa7:	e8 c8 39 00 00       	callq  b974 <_ZN4Heap3popEv>
    7fac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7fb3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7fb7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7fbe:	48 89 d6             	mov    %rdx,%rsi
    7fc1:	48 89 c7             	mov    %rax,%rdi
    7fc4:	e8 75 38 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7fc9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7fd0:	48 89 c7             	mov    %rax,%rdi
    7fd3:	e8 9c 39 00 00       	callq  b974 <_ZN4Heap3popEv>
    7fd8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7fdf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7fe3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7fea:	48 89 d6             	mov    %rdx,%rsi
    7fed:	48 89 c7             	mov    %rax,%rdi
    7ff0:	e8 49 38 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    7ff5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ffc:	48 89 c7             	mov    %rax,%rdi
    7fff:	e8 70 39 00 00       	callq  b974 <_ZN4Heap3popEv>
    8004:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    800b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    800f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8016:	48 89 d6             	mov    %rdx,%rsi
    8019:	48 89 c7             	mov    %rax,%rdi
    801c:	e8 1d 38 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8021:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8028:	48 89 c7             	mov    %rax,%rdi
    802b:	e8 44 39 00 00       	callq  b974 <_ZN4Heap3popEv>
    8030:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8037:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    803b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8042:	48 89 d6             	mov    %rdx,%rsi
    8045:	48 89 c7             	mov    %rax,%rdi
    8048:	e8 f1 37 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    804d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8054:	48 89 c7             	mov    %rax,%rdi
    8057:	e8 18 39 00 00       	callq  b974 <_ZN4Heap3popEv>
    805c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8063:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8067:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    806e:	48 89 d6             	mov    %rdx,%rsi
    8071:	48 89 c7             	mov    %rax,%rdi
    8074:	e8 c5 37 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8079:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8080:	48 89 c7             	mov    %rax,%rdi
    8083:	e8 ec 38 00 00       	callq  b974 <_ZN4Heap3popEv>
    8088:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    808f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8093:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    809a:	48 89 d6             	mov    %rdx,%rsi
    809d:	48 89 c7             	mov    %rax,%rdi
    80a0:	e8 99 37 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    80a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    80ac:	48 89 c7             	mov    %rax,%rdi
    80af:	e8 c0 38 00 00       	callq  b974 <_ZN4Heap3popEv>
    80b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    80bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    80bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    80c6:	48 89 d6             	mov    %rdx,%rsi
    80c9:	48 89 c7             	mov    %rax,%rdi
    80cc:	e8 6d 37 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    80d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    80d8:	48 89 c7             	mov    %rax,%rdi
    80db:	e8 94 38 00 00       	callq  b974 <_ZN4Heap3popEv>
    80e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    80e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    80eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    80f2:	48 89 d6             	mov    %rdx,%rsi
    80f5:	48 89 c7             	mov    %rax,%rdi
    80f8:	e8 41 37 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    80fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8104:	48 89 c7             	mov    %rax,%rdi
    8107:	e8 68 38 00 00       	callq  b974 <_ZN4Heap3popEv>
    810c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8113:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8117:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    811e:	48 89 d6             	mov    %rdx,%rsi
    8121:	48 89 c7             	mov    %rax,%rdi
    8124:	e8 15 37 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8129:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8130:	48 89 c7             	mov    %rax,%rdi
    8133:	e8 3c 38 00 00       	callq  b974 <_ZN4Heap3popEv>
    8138:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    813f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8143:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    814a:	48 89 d6             	mov    %rdx,%rsi
    814d:	48 89 c7             	mov    %rax,%rdi
    8150:	e8 e9 36 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8155:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    815c:	48 89 c7             	mov    %rax,%rdi
    815f:	e8 10 38 00 00       	callq  b974 <_ZN4Heap3popEv>
    8164:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    816b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    816f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8176:	48 89 d6             	mov    %rdx,%rsi
    8179:	48 89 c7             	mov    %rax,%rdi
    817c:	e8 bd 36 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8181:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8188:	48 89 c7             	mov    %rax,%rdi
    818b:	e8 e4 37 00 00       	callq  b974 <_ZN4Heap3popEv>
    8190:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8197:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    819b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    81a2:	48 89 d6             	mov    %rdx,%rsi
    81a5:	48 89 c7             	mov    %rax,%rdi
    81a8:	e8 91 36 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    81ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    81b4:	48 89 c7             	mov    %rax,%rdi
    81b7:	e8 b8 37 00 00       	callq  b974 <_ZN4Heap3popEv>
    81bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    81c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    81c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    81ce:	48 89 d6             	mov    %rdx,%rsi
    81d1:	48 89 c7             	mov    %rax,%rdi
    81d4:	e8 65 36 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    81d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    81e0:	48 89 c7             	mov    %rax,%rdi
    81e3:	e8 8c 37 00 00       	callq  b974 <_ZN4Heap3popEv>
    81e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    81ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    81f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    81fa:	48 89 d6             	mov    %rdx,%rsi
    81fd:	48 89 c7             	mov    %rax,%rdi
    8200:	e8 39 36 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8205:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    820c:	48 89 c7             	mov    %rax,%rdi
    820f:	e8 60 37 00 00       	callq  b974 <_ZN4Heap3popEv>
    8214:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    821b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    821f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8226:	48 89 d6             	mov    %rdx,%rsi
    8229:	48 89 c7             	mov    %rax,%rdi
    822c:	e8 0d 36 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8231:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8238:	48 89 c7             	mov    %rax,%rdi
    823b:	e8 34 37 00 00       	callq  b974 <_ZN4Heap3popEv>
    8240:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8247:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    824b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8252:	48 89 d6             	mov    %rdx,%rsi
    8255:	48 89 c7             	mov    %rax,%rdi
    8258:	e8 e1 35 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    825d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8264:	48 89 c7             	mov    %rax,%rdi
    8267:	e8 08 37 00 00       	callq  b974 <_ZN4Heap3popEv>
    826c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8273:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8277:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    827e:	48 89 d6             	mov    %rdx,%rsi
    8281:	48 89 c7             	mov    %rax,%rdi
    8284:	e8 b5 35 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8289:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8290:	48 89 c7             	mov    %rax,%rdi
    8293:	e8 dc 36 00 00       	callq  b974 <_ZN4Heap3popEv>
    8298:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    829f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    82a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    82aa:	48 89 d6             	mov    %rdx,%rsi
    82ad:	48 89 c7             	mov    %rax,%rdi
    82b0:	e8 89 35 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    82b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    82bc:	48 89 c7             	mov    %rax,%rdi
    82bf:	e8 b0 36 00 00       	callq  b974 <_ZN4Heap3popEv>
    82c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    82cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    82cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    82d6:	48 89 d6             	mov    %rdx,%rsi
    82d9:	48 89 c7             	mov    %rax,%rdi
    82dc:	e8 5d 35 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    82e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    82e8:	48 89 c7             	mov    %rax,%rdi
    82eb:	e8 84 36 00 00       	callq  b974 <_ZN4Heap3popEv>
    82f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    82f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    82fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8302:	48 89 d6             	mov    %rdx,%rsi
    8305:	48 89 c7             	mov    %rax,%rdi
    8308:	e8 31 35 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    830d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8314:	48 89 c7             	mov    %rax,%rdi
    8317:	e8 58 36 00 00       	callq  b974 <_ZN4Heap3popEv>
    831c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8323:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8327:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    832e:	48 89 d6             	mov    %rdx,%rsi
    8331:	48 89 c7             	mov    %rax,%rdi
    8334:	e8 05 35 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8339:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8340:	48 89 c7             	mov    %rax,%rdi
    8343:	e8 2c 36 00 00       	callq  b974 <_ZN4Heap3popEv>
    8348:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    834f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8353:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    835a:	48 89 d6             	mov    %rdx,%rsi
    835d:	48 89 c7             	mov    %rax,%rdi
    8360:	e8 d9 34 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8365:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    836c:	48 89 c7             	mov    %rax,%rdi
    836f:	e8 00 36 00 00       	callq  b974 <_ZN4Heap3popEv>
    8374:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    837b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    837f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8386:	48 89 d6             	mov    %rdx,%rsi
    8389:	48 89 c7             	mov    %rax,%rdi
    838c:	e8 ad 34 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8391:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8398:	48 89 c7             	mov    %rax,%rdi
    839b:	e8 d4 35 00 00       	callq  b974 <_ZN4Heap3popEv>
    83a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    83a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    83ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    83b2:	48 89 d6             	mov    %rdx,%rsi
    83b5:	48 89 c7             	mov    %rax,%rdi
    83b8:	e8 81 34 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    83bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    83c4:	48 89 c7             	mov    %rax,%rdi
    83c7:	e8 a8 35 00 00       	callq  b974 <_ZN4Heap3popEv>
    83cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    83d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    83d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    83de:	48 89 d6             	mov    %rdx,%rsi
    83e1:	48 89 c7             	mov    %rax,%rdi
    83e4:	e8 55 34 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    83e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    83f0:	48 89 c7             	mov    %rax,%rdi
    83f3:	e8 7c 35 00 00       	callq  b974 <_ZN4Heap3popEv>
    83f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    83ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8403:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    840a:	48 89 d6             	mov    %rdx,%rsi
    840d:	48 89 c7             	mov    %rax,%rdi
    8410:	e8 29 34 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8415:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    841c:	48 89 c7             	mov    %rax,%rdi
    841f:	e8 50 35 00 00       	callq  b974 <_ZN4Heap3popEv>
    8424:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    842b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    842f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8436:	48 89 d6             	mov    %rdx,%rsi
    8439:	48 89 c7             	mov    %rax,%rdi
    843c:	e8 fd 33 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8441:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8448:	48 89 c7             	mov    %rax,%rdi
    844b:	e8 24 35 00 00       	callq  b974 <_ZN4Heap3popEv>
    8450:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8457:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    845b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8462:	48 89 d6             	mov    %rdx,%rsi
    8465:	48 89 c7             	mov    %rax,%rdi
    8468:	e8 d1 33 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    846d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8474:	48 89 c7             	mov    %rax,%rdi
    8477:	e8 f8 34 00 00       	callq  b974 <_ZN4Heap3popEv>
    847c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8483:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8487:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    848e:	48 89 d6             	mov    %rdx,%rsi
    8491:	48 89 c7             	mov    %rax,%rdi
    8494:	e8 a5 33 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8499:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    84a0:	48 89 c7             	mov    %rax,%rdi
    84a3:	e8 cc 34 00 00       	callq  b974 <_ZN4Heap3popEv>
    84a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    84af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    84b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    84ba:	48 89 d6             	mov    %rdx,%rsi
    84bd:	48 89 c7             	mov    %rax,%rdi
    84c0:	e8 79 33 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    84c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    84cc:	48 89 c7             	mov    %rax,%rdi
    84cf:	e8 a0 34 00 00       	callq  b974 <_ZN4Heap3popEv>
    84d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    84db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    84df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    84e6:	48 89 d6             	mov    %rdx,%rsi
    84e9:	48 89 c7             	mov    %rax,%rdi
    84ec:	e8 4d 33 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    84f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    84f8:	48 89 c7             	mov    %rax,%rdi
    84fb:	e8 74 34 00 00       	callq  b974 <_ZN4Heap3popEv>
    8500:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8507:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    850b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8512:	48 89 d6             	mov    %rdx,%rsi
    8515:	48 89 c7             	mov    %rax,%rdi
    8518:	e8 21 33 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    851d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8524:	48 89 c7             	mov    %rax,%rdi
    8527:	e8 48 34 00 00       	callq  b974 <_ZN4Heap3popEv>
    852c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8533:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8537:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    853e:	48 89 d6             	mov    %rdx,%rsi
    8541:	48 89 c7             	mov    %rax,%rdi
    8544:	e8 f5 32 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8549:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8550:	48 89 c7             	mov    %rax,%rdi
    8553:	e8 1c 34 00 00       	callq  b974 <_ZN4Heap3popEv>
    8558:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    855f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8563:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    856a:	48 89 d6             	mov    %rdx,%rsi
    856d:	48 89 c7             	mov    %rax,%rdi
    8570:	e8 c9 32 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8575:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    857c:	48 89 c7             	mov    %rax,%rdi
    857f:	e8 f0 33 00 00       	callq  b974 <_ZN4Heap3popEv>
    8584:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    858b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    858f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8596:	48 89 d6             	mov    %rdx,%rsi
    8599:	48 89 c7             	mov    %rax,%rdi
    859c:	e8 9d 32 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    85a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    85a8:	48 89 c7             	mov    %rax,%rdi
    85ab:	e8 c4 33 00 00       	callq  b974 <_ZN4Heap3popEv>
    85b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    85b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    85bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    85c2:	48 89 d6             	mov    %rdx,%rsi
    85c5:	48 89 c7             	mov    %rax,%rdi
    85c8:	e8 71 32 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    85cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    85d4:	48 89 c7             	mov    %rax,%rdi
    85d7:	e8 98 33 00 00       	callq  b974 <_ZN4Heap3popEv>
    85dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    85e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    85e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    85ee:	48 89 d6             	mov    %rdx,%rsi
    85f1:	48 89 c7             	mov    %rax,%rdi
    85f4:	e8 45 32 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    85f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8600:	48 89 c7             	mov    %rax,%rdi
    8603:	e8 6c 33 00 00       	callq  b974 <_ZN4Heap3popEv>
    8608:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    860f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8613:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    861a:	48 89 d6             	mov    %rdx,%rsi
    861d:	48 89 c7             	mov    %rax,%rdi
    8620:	e8 19 32 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8625:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    862c:	48 89 c7             	mov    %rax,%rdi
    862f:	e8 40 33 00 00       	callq  b974 <_ZN4Heap3popEv>
    8634:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    863b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    863f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8646:	48 89 d6             	mov    %rdx,%rsi
    8649:	48 89 c7             	mov    %rax,%rdi
    864c:	e8 ed 31 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8651:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8658:	48 89 c7             	mov    %rax,%rdi
    865b:	e8 14 33 00 00       	callq  b974 <_ZN4Heap3popEv>
    8660:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8667:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    866b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8672:	48 89 d6             	mov    %rdx,%rsi
    8675:	48 89 c7             	mov    %rax,%rdi
    8678:	e8 c1 31 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    867d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8684:	48 89 c7             	mov    %rax,%rdi
    8687:	e8 e8 32 00 00       	callq  b974 <_ZN4Heap3popEv>
    868c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8693:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8697:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    869e:	48 89 d6             	mov    %rdx,%rsi
    86a1:	48 89 c7             	mov    %rax,%rdi
    86a4:	e8 95 31 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    86a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    86b0:	48 89 c7             	mov    %rax,%rdi
    86b3:	e8 bc 32 00 00       	callq  b974 <_ZN4Heap3popEv>
    86b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    86bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    86c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    86ca:	48 89 d6             	mov    %rdx,%rsi
    86cd:	48 89 c7             	mov    %rax,%rdi
    86d0:	e8 69 31 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    86d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    86dc:	48 89 c7             	mov    %rax,%rdi
    86df:	e8 90 32 00 00       	callq  b974 <_ZN4Heap3popEv>
    86e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    86eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    86ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    86f6:	48 89 d6             	mov    %rdx,%rsi
    86f9:	48 89 c7             	mov    %rax,%rdi
    86fc:	e8 3d 31 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8701:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8708:	48 89 c7             	mov    %rax,%rdi
    870b:	e8 64 32 00 00       	callq  b974 <_ZN4Heap3popEv>
    8710:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8717:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    871b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8722:	48 89 d6             	mov    %rdx,%rsi
    8725:	48 89 c7             	mov    %rax,%rdi
    8728:	e8 11 31 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    872d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8734:	48 89 c7             	mov    %rax,%rdi
    8737:	e8 38 32 00 00       	callq  b974 <_ZN4Heap3popEv>
    873c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8743:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8747:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    874e:	48 89 d6             	mov    %rdx,%rsi
    8751:	48 89 c7             	mov    %rax,%rdi
    8754:	e8 e5 30 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8759:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8760:	48 89 c7             	mov    %rax,%rdi
    8763:	e8 0c 32 00 00       	callq  b974 <_ZN4Heap3popEv>
    8768:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    876f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8773:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    877a:	48 89 d6             	mov    %rdx,%rsi
    877d:	48 89 c7             	mov    %rax,%rdi
    8780:	e8 b9 30 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8785:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    878c:	48 89 c7             	mov    %rax,%rdi
    878f:	e8 e0 31 00 00       	callq  b974 <_ZN4Heap3popEv>
    8794:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    879b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    879f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    87a6:	48 89 d6             	mov    %rdx,%rsi
    87a9:	48 89 c7             	mov    %rax,%rdi
    87ac:	e8 8d 30 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    87b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    87b8:	48 89 c7             	mov    %rax,%rdi
    87bb:	e8 b4 31 00 00       	callq  b974 <_ZN4Heap3popEv>
    87c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    87c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    87cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    87d2:	48 89 d6             	mov    %rdx,%rsi
    87d5:	48 89 c7             	mov    %rax,%rdi
    87d8:	e8 61 30 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    87dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    87e4:	48 89 c7             	mov    %rax,%rdi
    87e7:	e8 88 31 00 00       	callq  b974 <_ZN4Heap3popEv>
    87ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    87f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    87f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    87fe:	48 89 d6             	mov    %rdx,%rsi
    8801:	48 89 c7             	mov    %rax,%rdi
    8804:	e8 35 30 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8809:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8810:	48 89 c7             	mov    %rax,%rdi
    8813:	e8 5c 31 00 00       	callq  b974 <_ZN4Heap3popEv>
    8818:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    881f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8823:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    882a:	48 89 d6             	mov    %rdx,%rsi
    882d:	48 89 c7             	mov    %rax,%rdi
    8830:	e8 09 30 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8835:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    883c:	48 89 c7             	mov    %rax,%rdi
    883f:	e8 30 31 00 00       	callq  b974 <_ZN4Heap3popEv>
    8844:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    884b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    884f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8856:	48 89 d6             	mov    %rdx,%rsi
    8859:	48 89 c7             	mov    %rax,%rdi
    885c:	e8 dd 2f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8861:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8868:	48 89 c7             	mov    %rax,%rdi
    886b:	e8 04 31 00 00       	callq  b974 <_ZN4Heap3popEv>
    8870:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8877:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    887b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8882:	48 89 d6             	mov    %rdx,%rsi
    8885:	48 89 c7             	mov    %rax,%rdi
    8888:	e8 b1 2f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    888d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8894:	48 89 c7             	mov    %rax,%rdi
    8897:	e8 d8 30 00 00       	callq  b974 <_ZN4Heap3popEv>
    889c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    88a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    88a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    88ae:	48 89 d6             	mov    %rdx,%rsi
    88b1:	48 89 c7             	mov    %rax,%rdi
    88b4:	e8 85 2f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    88b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    88c0:	48 89 c7             	mov    %rax,%rdi
    88c3:	e8 ac 30 00 00       	callq  b974 <_ZN4Heap3popEv>
    88c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    88cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    88d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    88da:	48 89 d6             	mov    %rdx,%rsi
    88dd:	48 89 c7             	mov    %rax,%rdi
    88e0:	e8 59 2f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    88e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    88ec:	48 89 c7             	mov    %rax,%rdi
    88ef:	e8 80 30 00 00       	callq  b974 <_ZN4Heap3popEv>
    88f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    88fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    88ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8906:	48 89 d6             	mov    %rdx,%rsi
    8909:	48 89 c7             	mov    %rax,%rdi
    890c:	e8 2d 2f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8911:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8918:	48 89 c7             	mov    %rax,%rdi
    891b:	e8 54 30 00 00       	callq  b974 <_ZN4Heap3popEv>
    8920:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8927:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    892b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8932:	48 89 d6             	mov    %rdx,%rsi
    8935:	48 89 c7             	mov    %rax,%rdi
    8938:	e8 01 2f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    893d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8944:	48 89 c7             	mov    %rax,%rdi
    8947:	e8 28 30 00 00       	callq  b974 <_ZN4Heap3popEv>
    894c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8953:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8957:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    895e:	48 89 d6             	mov    %rdx,%rsi
    8961:	48 89 c7             	mov    %rax,%rdi
    8964:	e8 d5 2e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8969:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8970:	48 89 c7             	mov    %rax,%rdi
    8973:	e8 fc 2f 00 00       	callq  b974 <_ZN4Heap3popEv>
    8978:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    897f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8983:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    898a:	48 89 d6             	mov    %rdx,%rsi
    898d:	48 89 c7             	mov    %rax,%rdi
    8990:	e8 a9 2e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8995:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    899c:	48 89 c7             	mov    %rax,%rdi
    899f:	e8 d0 2f 00 00       	callq  b974 <_ZN4Heap3popEv>
    89a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    89ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    89af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    89b6:	48 89 d6             	mov    %rdx,%rsi
    89b9:	48 89 c7             	mov    %rax,%rdi
    89bc:	e8 7d 2e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    89c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    89c8:	48 89 c7             	mov    %rax,%rdi
    89cb:	e8 a4 2f 00 00       	callq  b974 <_ZN4Heap3popEv>
    89d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    89d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    89db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    89e2:	48 89 d6             	mov    %rdx,%rsi
    89e5:	48 89 c7             	mov    %rax,%rdi
    89e8:	e8 51 2e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    89ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    89f4:	48 89 c7             	mov    %rax,%rdi
    89f7:	e8 78 2f 00 00       	callq  b974 <_ZN4Heap3popEv>
    89fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8a03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8a07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a0e:	48 89 d6             	mov    %rdx,%rsi
    8a11:	48 89 c7             	mov    %rax,%rdi
    8a14:	e8 25 2e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8a19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a20:	48 89 c7             	mov    %rax,%rdi
    8a23:	e8 4c 2f 00 00       	callq  b974 <_ZN4Heap3popEv>
    8a28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8a2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8a33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a3a:	48 89 d6             	mov    %rdx,%rsi
    8a3d:	48 89 c7             	mov    %rax,%rdi
    8a40:	e8 f9 2d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8a45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a4c:	48 89 c7             	mov    %rax,%rdi
    8a4f:	e8 20 2f 00 00       	callq  b974 <_ZN4Heap3popEv>
    8a54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8a5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8a5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a66:	48 89 d6             	mov    %rdx,%rsi
    8a69:	48 89 c7             	mov    %rax,%rdi
    8a6c:	e8 cd 2d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8a71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a78:	48 89 c7             	mov    %rax,%rdi
    8a7b:	e8 f4 2e 00 00       	callq  b974 <_ZN4Heap3popEv>
    8a80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8a87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8a8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a92:	48 89 d6             	mov    %rdx,%rsi
    8a95:	48 89 c7             	mov    %rax,%rdi
    8a98:	e8 a1 2d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8a9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8aa4:	48 89 c7             	mov    %rax,%rdi
    8aa7:	e8 c8 2e 00 00       	callq  b974 <_ZN4Heap3popEv>
    8aac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8ab3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8ab7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8abe:	48 89 d6             	mov    %rdx,%rsi
    8ac1:	48 89 c7             	mov    %rax,%rdi
    8ac4:	e8 75 2d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8ac9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ad0:	48 89 c7             	mov    %rax,%rdi
    8ad3:	e8 9c 2e 00 00       	callq  b974 <_ZN4Heap3popEv>
    8ad8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8adf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8ae3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8aea:	48 89 d6             	mov    %rdx,%rsi
    8aed:	48 89 c7             	mov    %rax,%rdi
    8af0:	e8 49 2d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8af5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8afc:	48 89 c7             	mov    %rax,%rdi
    8aff:	e8 70 2e 00 00       	callq  b974 <_ZN4Heap3popEv>
    8b04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8b0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8b0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b16:	48 89 d6             	mov    %rdx,%rsi
    8b19:	48 89 c7             	mov    %rax,%rdi
    8b1c:	e8 1d 2d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8b21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b28:	48 89 c7             	mov    %rax,%rdi
    8b2b:	e8 44 2e 00 00       	callq  b974 <_ZN4Heap3popEv>
    8b30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8b37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8b3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b42:	48 89 d6             	mov    %rdx,%rsi
    8b45:	48 89 c7             	mov    %rax,%rdi
    8b48:	e8 f1 2c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8b4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b54:	48 89 c7             	mov    %rax,%rdi
    8b57:	e8 18 2e 00 00       	callq  b974 <_ZN4Heap3popEv>
    8b5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8b63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8b67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b6e:	48 89 d6             	mov    %rdx,%rsi
    8b71:	48 89 c7             	mov    %rax,%rdi
    8b74:	e8 c5 2c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8b79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b80:	48 89 c7             	mov    %rax,%rdi
    8b83:	e8 ec 2d 00 00       	callq  b974 <_ZN4Heap3popEv>
    8b88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8b8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8b93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b9a:	48 89 d6             	mov    %rdx,%rsi
    8b9d:	48 89 c7             	mov    %rax,%rdi
    8ba0:	e8 99 2c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8ba5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8bac:	48 89 c7             	mov    %rax,%rdi
    8baf:	e8 c0 2d 00 00       	callq  b974 <_ZN4Heap3popEv>
    8bb4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8bbb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8bbf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8bc6:	48 89 d6             	mov    %rdx,%rsi
    8bc9:	48 89 c7             	mov    %rax,%rdi
    8bcc:	e8 6d 2c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8bd1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8bd8:	48 89 c7             	mov    %rax,%rdi
    8bdb:	e8 94 2d 00 00       	callq  b974 <_ZN4Heap3popEv>
    8be0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8be7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8beb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8bf2:	48 89 d6             	mov    %rdx,%rsi
    8bf5:	48 89 c7             	mov    %rax,%rdi
    8bf8:	e8 41 2c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8bfd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c04:	48 89 c7             	mov    %rax,%rdi
    8c07:	e8 68 2d 00 00       	callq  b974 <_ZN4Heap3popEv>
    8c0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8c13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8c17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c1e:	48 89 d6             	mov    %rdx,%rsi
    8c21:	48 89 c7             	mov    %rax,%rdi
    8c24:	e8 15 2c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8c29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c30:	48 89 c7             	mov    %rax,%rdi
    8c33:	e8 3c 2d 00 00       	callq  b974 <_ZN4Heap3popEv>
    8c38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8c3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8c43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c4a:	48 89 d6             	mov    %rdx,%rsi
    8c4d:	48 89 c7             	mov    %rax,%rdi
    8c50:	e8 e9 2b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8c55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c5c:	48 89 c7             	mov    %rax,%rdi
    8c5f:	e8 10 2d 00 00       	callq  b974 <_ZN4Heap3popEv>
    8c64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8c6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8c6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c76:	48 89 d6             	mov    %rdx,%rsi
    8c79:	48 89 c7             	mov    %rax,%rdi
    8c7c:	e8 bd 2b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8c81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c88:	48 89 c7             	mov    %rax,%rdi
    8c8b:	e8 e4 2c 00 00       	callq  b974 <_ZN4Heap3popEv>
    8c90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8c97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8c9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ca2:	48 89 d6             	mov    %rdx,%rsi
    8ca5:	48 89 c7             	mov    %rax,%rdi
    8ca8:	e8 91 2b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8cad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8cb4:	48 89 c7             	mov    %rax,%rdi
    8cb7:	e8 b8 2c 00 00       	callq  b974 <_ZN4Heap3popEv>
    8cbc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8cc3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8cc7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8cce:	48 89 d6             	mov    %rdx,%rsi
    8cd1:	48 89 c7             	mov    %rax,%rdi
    8cd4:	e8 65 2b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8cd9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ce0:	48 89 c7             	mov    %rax,%rdi
    8ce3:	e8 8c 2c 00 00       	callq  b974 <_ZN4Heap3popEv>
    8ce8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8cef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8cf3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8cfa:	48 89 d6             	mov    %rdx,%rsi
    8cfd:	48 89 c7             	mov    %rax,%rdi
    8d00:	e8 39 2b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8d05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d0c:	48 89 c7             	mov    %rax,%rdi
    8d0f:	e8 60 2c 00 00       	callq  b974 <_ZN4Heap3popEv>
    8d14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8d1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8d1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d26:	48 89 d6             	mov    %rdx,%rsi
    8d29:	48 89 c7             	mov    %rax,%rdi
    8d2c:	e8 0d 2b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8d31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d38:	48 89 c7             	mov    %rax,%rdi
    8d3b:	e8 34 2c 00 00       	callq  b974 <_ZN4Heap3popEv>
    8d40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8d47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8d4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d52:	48 89 d6             	mov    %rdx,%rsi
    8d55:	48 89 c7             	mov    %rax,%rdi
    8d58:	e8 e1 2a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8d5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d64:	48 89 c7             	mov    %rax,%rdi
    8d67:	e8 08 2c 00 00       	callq  b974 <_ZN4Heap3popEv>
    8d6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8d73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8d77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d7e:	48 89 d6             	mov    %rdx,%rsi
    8d81:	48 89 c7             	mov    %rax,%rdi
    8d84:	e8 b5 2a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8d89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d90:	48 89 c7             	mov    %rax,%rdi
    8d93:	e8 dc 2b 00 00       	callq  b974 <_ZN4Heap3popEv>
    8d98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8d9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8da3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8daa:	48 89 d6             	mov    %rdx,%rsi
    8dad:	48 89 c7             	mov    %rax,%rdi
    8db0:	e8 89 2a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8db5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8dbc:	48 89 c7             	mov    %rax,%rdi
    8dbf:	e8 b0 2b 00 00       	callq  b974 <_ZN4Heap3popEv>
    8dc4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8dcb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8dcf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8dd6:	48 89 d6             	mov    %rdx,%rsi
    8dd9:	48 89 c7             	mov    %rax,%rdi
    8ddc:	e8 5d 2a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8de1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8de8:	48 89 c7             	mov    %rax,%rdi
    8deb:	e8 84 2b 00 00       	callq  b974 <_ZN4Heap3popEv>
    8df0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8df7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8dfb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e02:	48 89 d6             	mov    %rdx,%rsi
    8e05:	48 89 c7             	mov    %rax,%rdi
    8e08:	e8 31 2a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8e0d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e14:	48 89 c7             	mov    %rax,%rdi
    8e17:	e8 58 2b 00 00       	callq  b974 <_ZN4Heap3popEv>
    8e1c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8e23:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8e27:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e2e:	48 89 d6             	mov    %rdx,%rsi
    8e31:	48 89 c7             	mov    %rax,%rdi
    8e34:	e8 05 2a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8e39:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e40:	48 89 c7             	mov    %rax,%rdi
    8e43:	e8 2c 2b 00 00       	callq  b974 <_ZN4Heap3popEv>
    8e48:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8e4f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8e53:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e5a:	48 89 d6             	mov    %rdx,%rsi
    8e5d:	48 89 c7             	mov    %rax,%rdi
    8e60:	e8 d9 29 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8e65:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e6c:	48 89 c7             	mov    %rax,%rdi
    8e6f:	e8 00 2b 00 00       	callq  b974 <_ZN4Heap3popEv>
    8e74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8e7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8e7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e86:	48 89 d6             	mov    %rdx,%rsi
    8e89:	48 89 c7             	mov    %rax,%rdi
    8e8c:	e8 ad 29 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8e91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e98:	48 89 c7             	mov    %rax,%rdi
    8e9b:	e8 d4 2a 00 00       	callq  b974 <_ZN4Heap3popEv>
    8ea0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8ea7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8eab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8eb2:	48 89 d6             	mov    %rdx,%rsi
    8eb5:	48 89 c7             	mov    %rax,%rdi
    8eb8:	e8 81 29 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8ebd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ec4:	48 89 c7             	mov    %rax,%rdi
    8ec7:	e8 a8 2a 00 00       	callq  b974 <_ZN4Heap3popEv>
    8ecc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8ed3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8ed7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ede:	48 89 d6             	mov    %rdx,%rsi
    8ee1:	48 89 c7             	mov    %rax,%rdi
    8ee4:	e8 55 29 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8ee9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ef0:	48 89 c7             	mov    %rax,%rdi
    8ef3:	e8 7c 2a 00 00       	callq  b974 <_ZN4Heap3popEv>
    8ef8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8eff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8f03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f0a:	48 89 d6             	mov    %rdx,%rsi
    8f0d:	48 89 c7             	mov    %rax,%rdi
    8f10:	e8 29 29 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8f15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f1c:	48 89 c7             	mov    %rax,%rdi
    8f1f:	e8 50 2a 00 00       	callq  b974 <_ZN4Heap3popEv>
    8f24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8f2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8f2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f36:	48 89 d6             	mov    %rdx,%rsi
    8f39:	48 89 c7             	mov    %rax,%rdi
    8f3c:	e8 fd 28 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8f41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f48:	48 89 c7             	mov    %rax,%rdi
    8f4b:	e8 24 2a 00 00       	callq  b974 <_ZN4Heap3popEv>
    8f50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8f57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8f5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f62:	48 89 d6             	mov    %rdx,%rsi
    8f65:	48 89 c7             	mov    %rax,%rdi
    8f68:	e8 d1 28 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8f6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f74:	48 89 c7             	mov    %rax,%rdi
    8f77:	e8 f8 29 00 00       	callq  b974 <_ZN4Heap3popEv>
    8f7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8f83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8f87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f8e:	48 89 d6             	mov    %rdx,%rsi
    8f91:	48 89 c7             	mov    %rax,%rdi
    8f94:	e8 a5 28 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8f99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8fa0:	48 89 c7             	mov    %rax,%rdi
    8fa3:	e8 cc 29 00 00       	callq  b974 <_ZN4Heap3popEv>
    8fa8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8faf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8fb3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8fba:	48 89 d6             	mov    %rdx,%rsi
    8fbd:	48 89 c7             	mov    %rax,%rdi
    8fc0:	e8 79 28 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8fc5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8fcc:	48 89 c7             	mov    %rax,%rdi
    8fcf:	e8 a0 29 00 00       	callq  b974 <_ZN4Heap3popEv>
    8fd4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8fdb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8fdf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8fe6:	48 89 d6             	mov    %rdx,%rsi
    8fe9:	48 89 c7             	mov    %rax,%rdi
    8fec:	e8 4d 28 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    8ff1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ff8:	48 89 c7             	mov    %rax,%rdi
    8ffb:	e8 74 29 00 00       	callq  b974 <_ZN4Heap3popEv>
    9000:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9007:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    900b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9012:	48 89 d6             	mov    %rdx,%rsi
    9015:	48 89 c7             	mov    %rax,%rdi
    9018:	e8 21 28 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    901d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9024:	48 89 c7             	mov    %rax,%rdi
    9027:	e8 48 29 00 00       	callq  b974 <_ZN4Heap3popEv>
    902c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9033:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9037:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    903e:	48 89 d6             	mov    %rdx,%rsi
    9041:	48 89 c7             	mov    %rax,%rdi
    9044:	e8 f5 27 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9049:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9050:	48 89 c7             	mov    %rax,%rdi
    9053:	e8 1c 29 00 00       	callq  b974 <_ZN4Heap3popEv>
    9058:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    905f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9063:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    906a:	48 89 d6             	mov    %rdx,%rsi
    906d:	48 89 c7             	mov    %rax,%rdi
    9070:	e8 c9 27 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9075:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    907c:	48 89 c7             	mov    %rax,%rdi
    907f:	e8 f0 28 00 00       	callq  b974 <_ZN4Heap3popEv>
    9084:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    908b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    908f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9096:	48 89 d6             	mov    %rdx,%rsi
    9099:	48 89 c7             	mov    %rax,%rdi
    909c:	e8 9d 27 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    90a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    90a8:	48 89 c7             	mov    %rax,%rdi
    90ab:	e8 c4 28 00 00       	callq  b974 <_ZN4Heap3popEv>
    90b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    90b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    90bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    90c2:	48 89 d6             	mov    %rdx,%rsi
    90c5:	48 89 c7             	mov    %rax,%rdi
    90c8:	e8 71 27 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    90cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    90d4:	48 89 c7             	mov    %rax,%rdi
    90d7:	e8 98 28 00 00       	callq  b974 <_ZN4Heap3popEv>
    90dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    90e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    90e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    90ee:	48 89 d6             	mov    %rdx,%rsi
    90f1:	48 89 c7             	mov    %rax,%rdi
    90f4:	e8 45 27 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    90f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9100:	48 89 c7             	mov    %rax,%rdi
    9103:	e8 6c 28 00 00       	callq  b974 <_ZN4Heap3popEv>
    9108:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    910f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9113:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    911a:	48 89 d6             	mov    %rdx,%rsi
    911d:	48 89 c7             	mov    %rax,%rdi
    9120:	e8 19 27 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9125:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    912c:	48 89 c7             	mov    %rax,%rdi
    912f:	e8 40 28 00 00       	callq  b974 <_ZN4Heap3popEv>
    9134:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    913b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    913f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9146:	48 89 d6             	mov    %rdx,%rsi
    9149:	48 89 c7             	mov    %rax,%rdi
    914c:	e8 ed 26 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9151:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9158:	48 89 c7             	mov    %rax,%rdi
    915b:	e8 14 28 00 00       	callq  b974 <_ZN4Heap3popEv>
    9160:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9167:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    916b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9172:	48 89 d6             	mov    %rdx,%rsi
    9175:	48 89 c7             	mov    %rax,%rdi
    9178:	e8 c1 26 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    917d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9184:	48 89 c7             	mov    %rax,%rdi
    9187:	e8 e8 27 00 00       	callq  b974 <_ZN4Heap3popEv>
    918c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9193:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9197:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    919e:	48 89 d6             	mov    %rdx,%rsi
    91a1:	48 89 c7             	mov    %rax,%rdi
    91a4:	e8 95 26 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    91a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    91b0:	48 89 c7             	mov    %rax,%rdi
    91b3:	e8 bc 27 00 00       	callq  b974 <_ZN4Heap3popEv>
    91b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    91bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    91c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    91ca:	48 89 d6             	mov    %rdx,%rsi
    91cd:	48 89 c7             	mov    %rax,%rdi
    91d0:	e8 69 26 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    91d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    91dc:	48 89 c7             	mov    %rax,%rdi
    91df:	e8 90 27 00 00       	callq  b974 <_ZN4Heap3popEv>
    91e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    91eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    91ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    91f6:	48 89 d6             	mov    %rdx,%rsi
    91f9:	48 89 c7             	mov    %rax,%rdi
    91fc:	e8 3d 26 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9201:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9208:	48 89 c7             	mov    %rax,%rdi
    920b:	e8 64 27 00 00       	callq  b974 <_ZN4Heap3popEv>
    9210:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9217:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    921b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9222:	48 89 d6             	mov    %rdx,%rsi
    9225:	48 89 c7             	mov    %rax,%rdi
    9228:	e8 11 26 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    922d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9234:	48 89 c7             	mov    %rax,%rdi
    9237:	e8 38 27 00 00       	callq  b974 <_ZN4Heap3popEv>
    923c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9243:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9247:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    924e:	48 89 d6             	mov    %rdx,%rsi
    9251:	48 89 c7             	mov    %rax,%rdi
    9254:	e8 e5 25 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9259:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9260:	48 89 c7             	mov    %rax,%rdi
    9263:	e8 0c 27 00 00       	callq  b974 <_ZN4Heap3popEv>
    9268:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    926f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9273:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    927a:	48 89 d6             	mov    %rdx,%rsi
    927d:	48 89 c7             	mov    %rax,%rdi
    9280:	e8 b9 25 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9285:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    928c:	48 89 c7             	mov    %rax,%rdi
    928f:	e8 e0 26 00 00       	callq  b974 <_ZN4Heap3popEv>
    9294:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    929b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    929f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    92a6:	48 89 d6             	mov    %rdx,%rsi
    92a9:	48 89 c7             	mov    %rax,%rdi
    92ac:	e8 8d 25 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    92b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    92b8:	48 89 c7             	mov    %rax,%rdi
    92bb:	e8 b4 26 00 00       	callq  b974 <_ZN4Heap3popEv>
    92c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    92c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    92cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    92d2:	48 89 d6             	mov    %rdx,%rsi
    92d5:	48 89 c7             	mov    %rax,%rdi
    92d8:	e8 61 25 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    92dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    92e4:	48 89 c7             	mov    %rax,%rdi
    92e7:	e8 88 26 00 00       	callq  b974 <_ZN4Heap3popEv>
    92ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    92f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    92f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    92fe:	48 89 d6             	mov    %rdx,%rsi
    9301:	48 89 c7             	mov    %rax,%rdi
    9304:	e8 35 25 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9309:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9310:	48 89 c7             	mov    %rax,%rdi
    9313:	e8 5c 26 00 00       	callq  b974 <_ZN4Heap3popEv>
    9318:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    931f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9323:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    932a:	48 89 d6             	mov    %rdx,%rsi
    932d:	48 89 c7             	mov    %rax,%rdi
    9330:	e8 09 25 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9335:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    933c:	48 89 c7             	mov    %rax,%rdi
    933f:	e8 30 26 00 00       	callq  b974 <_ZN4Heap3popEv>
    9344:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    934b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    934f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9356:	48 89 d6             	mov    %rdx,%rsi
    9359:	48 89 c7             	mov    %rax,%rdi
    935c:	e8 dd 24 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9361:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9368:	48 89 c7             	mov    %rax,%rdi
    936b:	e8 04 26 00 00       	callq  b974 <_ZN4Heap3popEv>
    9370:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9377:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    937b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9382:	48 89 d6             	mov    %rdx,%rsi
    9385:	48 89 c7             	mov    %rax,%rdi
    9388:	e8 b1 24 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    938d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9394:	48 89 c7             	mov    %rax,%rdi
    9397:	e8 d8 25 00 00       	callq  b974 <_ZN4Heap3popEv>
    939c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    93a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    93a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    93ae:	48 89 d6             	mov    %rdx,%rsi
    93b1:	48 89 c7             	mov    %rax,%rdi
    93b4:	e8 85 24 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    93b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    93c0:	48 89 c7             	mov    %rax,%rdi
    93c3:	e8 ac 25 00 00       	callq  b974 <_ZN4Heap3popEv>
    93c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    93cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    93d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    93da:	48 89 d6             	mov    %rdx,%rsi
    93dd:	48 89 c7             	mov    %rax,%rdi
    93e0:	e8 59 24 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    93e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    93ec:	48 89 c7             	mov    %rax,%rdi
    93ef:	e8 80 25 00 00       	callq  b974 <_ZN4Heap3popEv>
    93f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    93fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    93ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9406:	48 89 d6             	mov    %rdx,%rsi
    9409:	48 89 c7             	mov    %rax,%rdi
    940c:	e8 2d 24 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9411:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9418:	48 89 c7             	mov    %rax,%rdi
    941b:	e8 54 25 00 00       	callq  b974 <_ZN4Heap3popEv>
    9420:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9427:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    942b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9432:	48 89 d6             	mov    %rdx,%rsi
    9435:	48 89 c7             	mov    %rax,%rdi
    9438:	e8 01 24 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    943d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9444:	48 89 c7             	mov    %rax,%rdi
    9447:	e8 28 25 00 00       	callq  b974 <_ZN4Heap3popEv>
    944c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9453:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9457:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    945e:	48 89 d6             	mov    %rdx,%rsi
    9461:	48 89 c7             	mov    %rax,%rdi
    9464:	e8 d5 23 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9469:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9470:	48 89 c7             	mov    %rax,%rdi
    9473:	e8 fc 24 00 00       	callq  b974 <_ZN4Heap3popEv>
    9478:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    947f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9483:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    948a:	48 89 d6             	mov    %rdx,%rsi
    948d:	48 89 c7             	mov    %rax,%rdi
    9490:	e8 a9 23 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9495:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    949c:	48 89 c7             	mov    %rax,%rdi
    949f:	e8 d0 24 00 00       	callq  b974 <_ZN4Heap3popEv>
    94a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    94ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    94af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    94b6:	48 89 d6             	mov    %rdx,%rsi
    94b9:	48 89 c7             	mov    %rax,%rdi
    94bc:	e8 7d 23 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    94c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    94c8:	48 89 c7             	mov    %rax,%rdi
    94cb:	e8 a4 24 00 00       	callq  b974 <_ZN4Heap3popEv>
    94d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    94d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    94db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    94e2:	48 89 d6             	mov    %rdx,%rsi
    94e5:	48 89 c7             	mov    %rax,%rdi
    94e8:	e8 51 23 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    94ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    94f4:	48 89 c7             	mov    %rax,%rdi
    94f7:	e8 78 24 00 00       	callq  b974 <_ZN4Heap3popEv>
    94fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9503:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9507:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    950e:	48 89 d6             	mov    %rdx,%rsi
    9511:	48 89 c7             	mov    %rax,%rdi
    9514:	e8 25 23 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9519:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9520:	48 89 c7             	mov    %rax,%rdi
    9523:	e8 4c 24 00 00       	callq  b974 <_ZN4Heap3popEv>
    9528:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    952f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9533:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    953a:	48 89 d6             	mov    %rdx,%rsi
    953d:	48 89 c7             	mov    %rax,%rdi
    9540:	e8 f9 22 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9545:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    954c:	48 89 c7             	mov    %rax,%rdi
    954f:	e8 20 24 00 00       	callq  b974 <_ZN4Heap3popEv>
    9554:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    955b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    955f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9566:	48 89 d6             	mov    %rdx,%rsi
    9569:	48 89 c7             	mov    %rax,%rdi
    956c:	e8 cd 22 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9571:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9578:	48 89 c7             	mov    %rax,%rdi
    957b:	e8 f4 23 00 00       	callq  b974 <_ZN4Heap3popEv>
    9580:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9587:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    958b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9592:	48 89 d6             	mov    %rdx,%rsi
    9595:	48 89 c7             	mov    %rax,%rdi
    9598:	e8 a1 22 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    959d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    95a4:	48 89 c7             	mov    %rax,%rdi
    95a7:	e8 c8 23 00 00       	callq  b974 <_ZN4Heap3popEv>
    95ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    95b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    95b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    95be:	48 89 d6             	mov    %rdx,%rsi
    95c1:	48 89 c7             	mov    %rax,%rdi
    95c4:	e8 75 22 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    95c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    95d0:	48 89 c7             	mov    %rax,%rdi
    95d3:	e8 9c 23 00 00       	callq  b974 <_ZN4Heap3popEv>
    95d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    95df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    95e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    95ea:	48 89 d6             	mov    %rdx,%rsi
    95ed:	48 89 c7             	mov    %rax,%rdi
    95f0:	e8 49 22 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    95f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    95fc:	48 89 c7             	mov    %rax,%rdi
    95ff:	e8 70 23 00 00       	callq  b974 <_ZN4Heap3popEv>
    9604:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    960b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    960f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9616:	48 89 d6             	mov    %rdx,%rsi
    9619:	48 89 c7             	mov    %rax,%rdi
    961c:	e8 1d 22 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9621:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9628:	48 89 c7             	mov    %rax,%rdi
    962b:	e8 44 23 00 00       	callq  b974 <_ZN4Heap3popEv>
    9630:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9637:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    963b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9642:	48 89 d6             	mov    %rdx,%rsi
    9645:	48 89 c7             	mov    %rax,%rdi
    9648:	e8 f1 21 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    964d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9654:	48 89 c7             	mov    %rax,%rdi
    9657:	e8 18 23 00 00       	callq  b974 <_ZN4Heap3popEv>
    965c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9663:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9667:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    966e:	48 89 d6             	mov    %rdx,%rsi
    9671:	48 89 c7             	mov    %rax,%rdi
    9674:	e8 c5 21 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9679:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9680:	48 89 c7             	mov    %rax,%rdi
    9683:	e8 ec 22 00 00       	callq  b974 <_ZN4Heap3popEv>
    9688:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    968f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9693:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    969a:	48 89 d6             	mov    %rdx,%rsi
    969d:	48 89 c7             	mov    %rax,%rdi
    96a0:	e8 99 21 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    96a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    96ac:	48 89 c7             	mov    %rax,%rdi
    96af:	e8 c0 22 00 00       	callq  b974 <_ZN4Heap3popEv>
    96b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    96bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    96bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    96c6:	48 89 d6             	mov    %rdx,%rsi
    96c9:	48 89 c7             	mov    %rax,%rdi
    96cc:	e8 6d 21 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    96d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    96d8:	48 89 c7             	mov    %rax,%rdi
    96db:	e8 94 22 00 00       	callq  b974 <_ZN4Heap3popEv>
    96e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    96e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    96eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    96f2:	48 89 d6             	mov    %rdx,%rsi
    96f5:	48 89 c7             	mov    %rax,%rdi
    96f8:	e8 41 21 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    96fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9704:	48 89 c7             	mov    %rax,%rdi
    9707:	e8 68 22 00 00       	callq  b974 <_ZN4Heap3popEv>
    970c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9713:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9717:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    971e:	48 89 d6             	mov    %rdx,%rsi
    9721:	48 89 c7             	mov    %rax,%rdi
    9724:	e8 15 21 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9729:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9730:	48 89 c7             	mov    %rax,%rdi
    9733:	e8 3c 22 00 00       	callq  b974 <_ZN4Heap3popEv>
    9738:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    973f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9743:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    974a:	48 89 d6             	mov    %rdx,%rsi
    974d:	48 89 c7             	mov    %rax,%rdi
    9750:	e8 e9 20 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9755:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    975c:	48 89 c7             	mov    %rax,%rdi
    975f:	e8 10 22 00 00       	callq  b974 <_ZN4Heap3popEv>
    9764:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    976b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    976f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9776:	48 89 d6             	mov    %rdx,%rsi
    9779:	48 89 c7             	mov    %rax,%rdi
    977c:	e8 bd 20 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9781:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9788:	48 89 c7             	mov    %rax,%rdi
    978b:	e8 e4 21 00 00       	callq  b974 <_ZN4Heap3popEv>
    9790:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9797:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    979b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    97a2:	48 89 d6             	mov    %rdx,%rsi
    97a5:	48 89 c7             	mov    %rax,%rdi
    97a8:	e8 91 20 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    97ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    97b4:	48 89 c7             	mov    %rax,%rdi
    97b7:	e8 b8 21 00 00       	callq  b974 <_ZN4Heap3popEv>
    97bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    97c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    97c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    97ce:	48 89 d6             	mov    %rdx,%rsi
    97d1:	48 89 c7             	mov    %rax,%rdi
    97d4:	e8 65 20 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    97d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    97e0:	48 89 c7             	mov    %rax,%rdi
    97e3:	e8 8c 21 00 00       	callq  b974 <_ZN4Heap3popEv>
    97e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    97ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    97f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    97fa:	48 89 d6             	mov    %rdx,%rsi
    97fd:	48 89 c7             	mov    %rax,%rdi
    9800:	e8 39 20 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9805:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    980c:	48 89 c7             	mov    %rax,%rdi
    980f:	e8 60 21 00 00       	callq  b974 <_ZN4Heap3popEv>
    9814:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    981b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    981f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9826:	48 89 d6             	mov    %rdx,%rsi
    9829:	48 89 c7             	mov    %rax,%rdi
    982c:	e8 0d 20 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9831:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9838:	48 89 c7             	mov    %rax,%rdi
    983b:	e8 34 21 00 00       	callq  b974 <_ZN4Heap3popEv>
    9840:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9847:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    984b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9852:	48 89 d6             	mov    %rdx,%rsi
    9855:	48 89 c7             	mov    %rax,%rdi
    9858:	e8 e1 1f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    985d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9864:	48 89 c7             	mov    %rax,%rdi
    9867:	e8 08 21 00 00       	callq  b974 <_ZN4Heap3popEv>
    986c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9873:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9877:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    987e:	48 89 d6             	mov    %rdx,%rsi
    9881:	48 89 c7             	mov    %rax,%rdi
    9884:	e8 b5 1f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9889:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9890:	48 89 c7             	mov    %rax,%rdi
    9893:	e8 dc 20 00 00       	callq  b974 <_ZN4Heap3popEv>
    9898:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    989f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    98a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    98aa:	48 89 d6             	mov    %rdx,%rsi
    98ad:	48 89 c7             	mov    %rax,%rdi
    98b0:	e8 89 1f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    98b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    98bc:	48 89 c7             	mov    %rax,%rdi
    98bf:	e8 b0 20 00 00       	callq  b974 <_ZN4Heap3popEv>
    98c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    98cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    98cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    98d6:	48 89 d6             	mov    %rdx,%rsi
    98d9:	48 89 c7             	mov    %rax,%rdi
    98dc:	e8 5d 1f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    98e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    98e8:	48 89 c7             	mov    %rax,%rdi
    98eb:	e8 84 20 00 00       	callq  b974 <_ZN4Heap3popEv>
    98f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    98f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    98fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9902:	48 89 d6             	mov    %rdx,%rsi
    9905:	48 89 c7             	mov    %rax,%rdi
    9908:	e8 31 1f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    990d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9914:	48 89 c7             	mov    %rax,%rdi
    9917:	e8 58 20 00 00       	callq  b974 <_ZN4Heap3popEv>
    991c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9923:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9927:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    992e:	48 89 d6             	mov    %rdx,%rsi
    9931:	48 89 c7             	mov    %rax,%rdi
    9934:	e8 05 1f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9939:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9940:	48 89 c7             	mov    %rax,%rdi
    9943:	e8 2c 20 00 00       	callq  b974 <_ZN4Heap3popEv>
    9948:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    994f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9953:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    995a:	48 89 d6             	mov    %rdx,%rsi
    995d:	48 89 c7             	mov    %rax,%rdi
    9960:	e8 d9 1e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9965:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    996c:	48 89 c7             	mov    %rax,%rdi
    996f:	e8 00 20 00 00       	callq  b974 <_ZN4Heap3popEv>
    9974:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    997b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    997f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9986:	48 89 d6             	mov    %rdx,%rsi
    9989:	48 89 c7             	mov    %rax,%rdi
    998c:	e8 ad 1e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9991:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9998:	48 89 c7             	mov    %rax,%rdi
    999b:	e8 d4 1f 00 00       	callq  b974 <_ZN4Heap3popEv>
    99a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    99a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    99ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    99b2:	48 89 d6             	mov    %rdx,%rsi
    99b5:	48 89 c7             	mov    %rax,%rdi
    99b8:	e8 81 1e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    99bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    99c4:	48 89 c7             	mov    %rax,%rdi
    99c7:	e8 a8 1f 00 00       	callq  b974 <_ZN4Heap3popEv>
    99cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    99d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    99d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    99de:	48 89 d6             	mov    %rdx,%rsi
    99e1:	48 89 c7             	mov    %rax,%rdi
    99e4:	e8 55 1e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    99e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    99f0:	48 89 c7             	mov    %rax,%rdi
    99f3:	e8 7c 1f 00 00       	callq  b974 <_ZN4Heap3popEv>
    99f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    99ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9a03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a0a:	48 89 d6             	mov    %rdx,%rsi
    9a0d:	48 89 c7             	mov    %rax,%rdi
    9a10:	e8 29 1e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9a15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a1c:	48 89 c7             	mov    %rax,%rdi
    9a1f:	e8 50 1f 00 00       	callq  b974 <_ZN4Heap3popEv>
    9a24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9a2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9a2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a36:	48 89 d6             	mov    %rdx,%rsi
    9a39:	48 89 c7             	mov    %rax,%rdi
    9a3c:	e8 fd 1d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9a41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a48:	48 89 c7             	mov    %rax,%rdi
    9a4b:	e8 24 1f 00 00       	callq  b974 <_ZN4Heap3popEv>
    9a50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9a57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9a5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a62:	48 89 d6             	mov    %rdx,%rsi
    9a65:	48 89 c7             	mov    %rax,%rdi
    9a68:	e8 d1 1d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9a6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a74:	48 89 c7             	mov    %rax,%rdi
    9a77:	e8 f8 1e 00 00       	callq  b974 <_ZN4Heap3popEv>
    9a7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9a83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9a87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a8e:	48 89 d6             	mov    %rdx,%rsi
    9a91:	48 89 c7             	mov    %rax,%rdi
    9a94:	e8 a5 1d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9a99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9aa0:	48 89 c7             	mov    %rax,%rdi
    9aa3:	e8 cc 1e 00 00       	callq  b974 <_ZN4Heap3popEv>
    9aa8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9aaf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9ab3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9aba:	48 89 d6             	mov    %rdx,%rsi
    9abd:	48 89 c7             	mov    %rax,%rdi
    9ac0:	e8 79 1d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9ac5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9acc:	48 89 c7             	mov    %rax,%rdi
    9acf:	e8 a0 1e 00 00       	callq  b974 <_ZN4Heap3popEv>
    9ad4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9adb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9adf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ae6:	48 89 d6             	mov    %rdx,%rsi
    9ae9:	48 89 c7             	mov    %rax,%rdi
    9aec:	e8 4d 1d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9af1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9af8:	48 89 c7             	mov    %rax,%rdi
    9afb:	e8 74 1e 00 00       	callq  b974 <_ZN4Heap3popEv>
    9b00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9b07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9b0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b12:	48 89 d6             	mov    %rdx,%rsi
    9b15:	48 89 c7             	mov    %rax,%rdi
    9b18:	e8 21 1d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9b1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b24:	48 89 c7             	mov    %rax,%rdi
    9b27:	e8 48 1e 00 00       	callq  b974 <_ZN4Heap3popEv>
    9b2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9b33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9b37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b3e:	48 89 d6             	mov    %rdx,%rsi
    9b41:	48 89 c7             	mov    %rax,%rdi
    9b44:	e8 f5 1c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9b49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b50:	48 89 c7             	mov    %rax,%rdi
    9b53:	e8 1c 1e 00 00       	callq  b974 <_ZN4Heap3popEv>
    9b58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9b5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9b63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b6a:	48 89 d6             	mov    %rdx,%rsi
    9b6d:	48 89 c7             	mov    %rax,%rdi
    9b70:	e8 c9 1c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9b75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b7c:	48 89 c7             	mov    %rax,%rdi
    9b7f:	e8 f0 1d 00 00       	callq  b974 <_ZN4Heap3popEv>
    9b84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9b8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9b8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b96:	48 89 d6             	mov    %rdx,%rsi
    9b99:	48 89 c7             	mov    %rax,%rdi
    9b9c:	e8 9d 1c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9ba1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ba8:	48 89 c7             	mov    %rax,%rdi
    9bab:	e8 c4 1d 00 00       	callq  b974 <_ZN4Heap3popEv>
    9bb0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9bb7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9bbb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9bc2:	48 89 d6             	mov    %rdx,%rsi
    9bc5:	48 89 c7             	mov    %rax,%rdi
    9bc8:	e8 71 1c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9bcd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9bd4:	48 89 c7             	mov    %rax,%rdi
    9bd7:	e8 98 1d 00 00       	callq  b974 <_ZN4Heap3popEv>
    9bdc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9be3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9be7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9bee:	48 89 d6             	mov    %rdx,%rsi
    9bf1:	48 89 c7             	mov    %rax,%rdi
    9bf4:	e8 45 1c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9bf9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c00:	48 89 c7             	mov    %rax,%rdi
    9c03:	e8 6c 1d 00 00       	callq  b974 <_ZN4Heap3popEv>
    9c08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9c0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9c13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c1a:	48 89 d6             	mov    %rdx,%rsi
    9c1d:	48 89 c7             	mov    %rax,%rdi
    9c20:	e8 19 1c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9c25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c2c:	48 89 c7             	mov    %rax,%rdi
    9c2f:	e8 40 1d 00 00       	callq  b974 <_ZN4Heap3popEv>
    9c34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9c3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9c3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c46:	48 89 d6             	mov    %rdx,%rsi
    9c49:	48 89 c7             	mov    %rax,%rdi
    9c4c:	e8 ed 1b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9c51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c58:	48 89 c7             	mov    %rax,%rdi
    9c5b:	e8 14 1d 00 00       	callq  b974 <_ZN4Heap3popEv>
    9c60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9c67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9c6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c72:	48 89 d6             	mov    %rdx,%rsi
    9c75:	48 89 c7             	mov    %rax,%rdi
    9c78:	e8 c1 1b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9c7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c84:	48 89 c7             	mov    %rax,%rdi
    9c87:	e8 e8 1c 00 00       	callq  b974 <_ZN4Heap3popEv>
    9c8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9c93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9c97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c9e:	48 89 d6             	mov    %rdx,%rsi
    9ca1:	48 89 c7             	mov    %rax,%rdi
    9ca4:	e8 95 1b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9ca9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9cb0:	48 89 c7             	mov    %rax,%rdi
    9cb3:	e8 bc 1c 00 00       	callq  b974 <_ZN4Heap3popEv>
    9cb8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9cbf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9cc3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9cca:	48 89 d6             	mov    %rdx,%rsi
    9ccd:	48 89 c7             	mov    %rax,%rdi
    9cd0:	e8 69 1b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9cd5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9cdc:	48 89 c7             	mov    %rax,%rdi
    9cdf:	e8 90 1c 00 00       	callq  b974 <_ZN4Heap3popEv>
    9ce4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9ceb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9cef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9cf6:	48 89 d6             	mov    %rdx,%rsi
    9cf9:	48 89 c7             	mov    %rax,%rdi
    9cfc:	e8 3d 1b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9d01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d08:	48 89 c7             	mov    %rax,%rdi
    9d0b:	e8 64 1c 00 00       	callq  b974 <_ZN4Heap3popEv>
    9d10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9d17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9d1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d22:	48 89 d6             	mov    %rdx,%rsi
    9d25:	48 89 c7             	mov    %rax,%rdi
    9d28:	e8 11 1b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9d2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d34:	48 89 c7             	mov    %rax,%rdi
    9d37:	e8 38 1c 00 00       	callq  b974 <_ZN4Heap3popEv>
    9d3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9d43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9d47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d4e:	48 89 d6             	mov    %rdx,%rsi
    9d51:	48 89 c7             	mov    %rax,%rdi
    9d54:	e8 e5 1a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9d59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d60:	48 89 c7             	mov    %rax,%rdi
    9d63:	e8 0c 1c 00 00       	callq  b974 <_ZN4Heap3popEv>
    9d68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9d6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9d73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d7a:	48 89 d6             	mov    %rdx,%rsi
    9d7d:	48 89 c7             	mov    %rax,%rdi
    9d80:	e8 b9 1a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9d85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d8c:	48 89 c7             	mov    %rax,%rdi
    9d8f:	e8 e0 1b 00 00       	callq  b974 <_ZN4Heap3popEv>
    9d94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9d9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9d9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9da6:	48 89 d6             	mov    %rdx,%rsi
    9da9:	48 89 c7             	mov    %rax,%rdi
    9dac:	e8 8d 1a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9db1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9db8:	48 89 c7             	mov    %rax,%rdi
    9dbb:	e8 b4 1b 00 00       	callq  b974 <_ZN4Heap3popEv>
    9dc0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9dc7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9dcb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9dd2:	48 89 d6             	mov    %rdx,%rsi
    9dd5:	48 89 c7             	mov    %rax,%rdi
    9dd8:	e8 61 1a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9ddd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9de4:	48 89 c7             	mov    %rax,%rdi
    9de7:	e8 88 1b 00 00       	callq  b974 <_ZN4Heap3popEv>
    9dec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9df3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9df7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9dfe:	48 89 d6             	mov    %rdx,%rsi
    9e01:	48 89 c7             	mov    %rax,%rdi
    9e04:	e8 35 1a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9e09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e10:	48 89 c7             	mov    %rax,%rdi
    9e13:	e8 5c 1b 00 00       	callq  b974 <_ZN4Heap3popEv>
    9e18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9e1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9e23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e2a:	48 89 d6             	mov    %rdx,%rsi
    9e2d:	48 89 c7             	mov    %rax,%rdi
    9e30:	e8 09 1a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9e35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e3c:	48 89 c7             	mov    %rax,%rdi
    9e3f:	e8 30 1b 00 00       	callq  b974 <_ZN4Heap3popEv>
    9e44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9e4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9e4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e56:	48 89 d6             	mov    %rdx,%rsi
    9e59:	48 89 c7             	mov    %rax,%rdi
    9e5c:	e8 dd 19 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9e61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e68:	48 89 c7             	mov    %rax,%rdi
    9e6b:	e8 04 1b 00 00       	callq  b974 <_ZN4Heap3popEv>
    9e70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9e77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9e7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e82:	48 89 d6             	mov    %rdx,%rsi
    9e85:	48 89 c7             	mov    %rax,%rdi
    9e88:	e8 b1 19 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9e8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e94:	48 89 c7             	mov    %rax,%rdi
    9e97:	e8 d8 1a 00 00       	callq  b974 <_ZN4Heap3popEv>
    9e9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9ea3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9ea7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9eae:	48 89 d6             	mov    %rdx,%rsi
    9eb1:	48 89 c7             	mov    %rax,%rdi
    9eb4:	e8 85 19 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9eb9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ec0:	48 89 c7             	mov    %rax,%rdi
    9ec3:	e8 ac 1a 00 00       	callq  b974 <_ZN4Heap3popEv>
    9ec8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9ecf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9ed3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9eda:	48 89 d6             	mov    %rdx,%rsi
    9edd:	48 89 c7             	mov    %rax,%rdi
    9ee0:	e8 59 19 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9ee5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9eec:	48 89 c7             	mov    %rax,%rdi
    9eef:	e8 80 1a 00 00       	callq  b974 <_ZN4Heap3popEv>
    9ef4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9efb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9eff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f06:	48 89 d6             	mov    %rdx,%rsi
    9f09:	48 89 c7             	mov    %rax,%rdi
    9f0c:	e8 2d 19 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9f11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f18:	48 89 c7             	mov    %rax,%rdi
    9f1b:	e8 54 1a 00 00       	callq  b974 <_ZN4Heap3popEv>
    9f20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9f27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9f2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f32:	48 89 d6             	mov    %rdx,%rsi
    9f35:	48 89 c7             	mov    %rax,%rdi
    9f38:	e8 01 19 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9f3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f44:	48 89 c7             	mov    %rax,%rdi
    9f47:	e8 28 1a 00 00       	callq  b974 <_ZN4Heap3popEv>
    9f4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9f53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9f57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f5e:	48 89 d6             	mov    %rdx,%rsi
    9f61:	48 89 c7             	mov    %rax,%rdi
    9f64:	e8 d5 18 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9f69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f70:	48 89 c7             	mov    %rax,%rdi
    9f73:	e8 fc 19 00 00       	callq  b974 <_ZN4Heap3popEv>
    9f78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9f7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9f83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f8a:	48 89 d6             	mov    %rdx,%rsi
    9f8d:	48 89 c7             	mov    %rax,%rdi
    9f90:	e8 a9 18 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9f95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f9c:	48 89 c7             	mov    %rax,%rdi
    9f9f:	e8 d0 19 00 00       	callq  b974 <_ZN4Heap3popEv>
    9fa4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9fab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9faf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9fb6:	48 89 d6             	mov    %rdx,%rsi
    9fb9:	48 89 c7             	mov    %rax,%rdi
    9fbc:	e8 7d 18 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9fc1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9fc8:	48 89 c7             	mov    %rax,%rdi
    9fcb:	e8 a4 19 00 00       	callq  b974 <_ZN4Heap3popEv>
    9fd0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9fd7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9fdb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9fe2:	48 89 d6             	mov    %rdx,%rsi
    9fe5:	48 89 c7             	mov    %rax,%rdi
    9fe8:	e8 51 18 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    9fed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ff4:	48 89 c7             	mov    %rax,%rdi
    9ff7:	e8 78 19 00 00       	callq  b974 <_ZN4Heap3popEv>
    9ffc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a003:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a007:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a00e:	48 89 d6             	mov    %rdx,%rsi
    a011:	48 89 c7             	mov    %rax,%rdi
    a014:	e8 25 18 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a019:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a020:	48 89 c7             	mov    %rax,%rdi
    a023:	e8 4c 19 00 00       	callq  b974 <_ZN4Heap3popEv>
    a028:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a02f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a033:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a03a:	48 89 d6             	mov    %rdx,%rsi
    a03d:	48 89 c7             	mov    %rax,%rdi
    a040:	e8 f9 17 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a045:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a04c:	48 89 c7             	mov    %rax,%rdi
    a04f:	e8 20 19 00 00       	callq  b974 <_ZN4Heap3popEv>
    a054:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a05b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a05f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a066:	48 89 d6             	mov    %rdx,%rsi
    a069:	48 89 c7             	mov    %rax,%rdi
    a06c:	e8 cd 17 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a071:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a078:	48 89 c7             	mov    %rax,%rdi
    a07b:	e8 f4 18 00 00       	callq  b974 <_ZN4Heap3popEv>
    a080:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a087:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a08b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a092:	48 89 d6             	mov    %rdx,%rsi
    a095:	48 89 c7             	mov    %rax,%rdi
    a098:	e8 a1 17 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a09d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a0a4:	48 89 c7             	mov    %rax,%rdi
    a0a7:	e8 c8 18 00 00       	callq  b974 <_ZN4Heap3popEv>
    a0ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a0b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a0b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a0be:	48 89 d6             	mov    %rdx,%rsi
    a0c1:	48 89 c7             	mov    %rax,%rdi
    a0c4:	e8 75 17 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a0c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a0d0:	48 89 c7             	mov    %rax,%rdi
    a0d3:	e8 9c 18 00 00       	callq  b974 <_ZN4Heap3popEv>
    a0d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a0df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a0e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a0ea:	48 89 d6             	mov    %rdx,%rsi
    a0ed:	48 89 c7             	mov    %rax,%rdi
    a0f0:	e8 49 17 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a0f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a0fc:	48 89 c7             	mov    %rax,%rdi
    a0ff:	e8 70 18 00 00       	callq  b974 <_ZN4Heap3popEv>
    a104:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a10b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a10f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a116:	48 89 d6             	mov    %rdx,%rsi
    a119:	48 89 c7             	mov    %rax,%rdi
    a11c:	e8 1d 17 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a121:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a128:	48 89 c7             	mov    %rax,%rdi
    a12b:	e8 44 18 00 00       	callq  b974 <_ZN4Heap3popEv>
    a130:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a137:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a13b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a142:	48 89 d6             	mov    %rdx,%rsi
    a145:	48 89 c7             	mov    %rax,%rdi
    a148:	e8 f1 16 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a14d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a154:	48 89 c7             	mov    %rax,%rdi
    a157:	e8 18 18 00 00       	callq  b974 <_ZN4Heap3popEv>
    a15c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a163:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a167:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a16e:	48 89 d6             	mov    %rdx,%rsi
    a171:	48 89 c7             	mov    %rax,%rdi
    a174:	e8 c5 16 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a179:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a180:	48 89 c7             	mov    %rax,%rdi
    a183:	e8 ec 17 00 00       	callq  b974 <_ZN4Heap3popEv>
    a188:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a18f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a193:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a19a:	48 89 d6             	mov    %rdx,%rsi
    a19d:	48 89 c7             	mov    %rax,%rdi
    a1a0:	e8 99 16 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a1a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a1ac:	48 89 c7             	mov    %rax,%rdi
    a1af:	e8 c0 17 00 00       	callq  b974 <_ZN4Heap3popEv>
    a1b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a1bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a1bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a1c6:	48 89 d6             	mov    %rdx,%rsi
    a1c9:	48 89 c7             	mov    %rax,%rdi
    a1cc:	e8 6d 16 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a1d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a1d8:	48 89 c7             	mov    %rax,%rdi
    a1db:	e8 94 17 00 00       	callq  b974 <_ZN4Heap3popEv>
    a1e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a1e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a1eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a1f2:	48 89 d6             	mov    %rdx,%rsi
    a1f5:	48 89 c7             	mov    %rax,%rdi
    a1f8:	e8 41 16 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a1fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a204:	48 89 c7             	mov    %rax,%rdi
    a207:	e8 68 17 00 00       	callq  b974 <_ZN4Heap3popEv>
    a20c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a213:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a217:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a21e:	48 89 d6             	mov    %rdx,%rsi
    a221:	48 89 c7             	mov    %rax,%rdi
    a224:	e8 15 16 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a229:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a230:	48 89 c7             	mov    %rax,%rdi
    a233:	e8 3c 17 00 00       	callq  b974 <_ZN4Heap3popEv>
    a238:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a23f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a243:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a24a:	48 89 d6             	mov    %rdx,%rsi
    a24d:	48 89 c7             	mov    %rax,%rdi
    a250:	e8 e9 15 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a255:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a25c:	48 89 c7             	mov    %rax,%rdi
    a25f:	e8 10 17 00 00       	callq  b974 <_ZN4Heap3popEv>
    a264:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a26b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a26f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a276:	48 89 d6             	mov    %rdx,%rsi
    a279:	48 89 c7             	mov    %rax,%rdi
    a27c:	e8 bd 15 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a281:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a288:	48 89 c7             	mov    %rax,%rdi
    a28b:	e8 e4 16 00 00       	callq  b974 <_ZN4Heap3popEv>
    a290:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a297:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a29b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a2a2:	48 89 d6             	mov    %rdx,%rsi
    a2a5:	48 89 c7             	mov    %rax,%rdi
    a2a8:	e8 91 15 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a2ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a2b4:	48 89 c7             	mov    %rax,%rdi
    a2b7:	e8 b8 16 00 00       	callq  b974 <_ZN4Heap3popEv>
    a2bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a2c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a2c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a2ce:	48 89 d6             	mov    %rdx,%rsi
    a2d1:	48 89 c7             	mov    %rax,%rdi
    a2d4:	e8 65 15 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a2d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a2e0:	48 89 c7             	mov    %rax,%rdi
    a2e3:	e8 8c 16 00 00       	callq  b974 <_ZN4Heap3popEv>
    a2e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a2ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a2f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a2fa:	48 89 d6             	mov    %rdx,%rsi
    a2fd:	48 89 c7             	mov    %rax,%rdi
    a300:	e8 39 15 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a305:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a30c:	48 89 c7             	mov    %rax,%rdi
    a30f:	e8 60 16 00 00       	callq  b974 <_ZN4Heap3popEv>
    a314:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a31b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a31f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a326:	48 89 d6             	mov    %rdx,%rsi
    a329:	48 89 c7             	mov    %rax,%rdi
    a32c:	e8 0d 15 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a331:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a338:	48 89 c7             	mov    %rax,%rdi
    a33b:	e8 34 16 00 00       	callq  b974 <_ZN4Heap3popEv>
    a340:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a347:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a34b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a352:	48 89 d6             	mov    %rdx,%rsi
    a355:	48 89 c7             	mov    %rax,%rdi
    a358:	e8 e1 14 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a35d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a364:	48 89 c7             	mov    %rax,%rdi
    a367:	e8 08 16 00 00       	callq  b974 <_ZN4Heap3popEv>
    a36c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a373:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a377:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a37e:	48 89 d6             	mov    %rdx,%rsi
    a381:	48 89 c7             	mov    %rax,%rdi
    a384:	e8 b5 14 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a389:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a390:	48 89 c7             	mov    %rax,%rdi
    a393:	e8 dc 15 00 00       	callq  b974 <_ZN4Heap3popEv>
    a398:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a39f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a3a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a3aa:	48 89 d6             	mov    %rdx,%rsi
    a3ad:	48 89 c7             	mov    %rax,%rdi
    a3b0:	e8 89 14 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a3b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a3bc:	48 89 c7             	mov    %rax,%rdi
    a3bf:	e8 b0 15 00 00       	callq  b974 <_ZN4Heap3popEv>
    a3c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a3cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a3cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a3d6:	48 89 d6             	mov    %rdx,%rsi
    a3d9:	48 89 c7             	mov    %rax,%rdi
    a3dc:	e8 5d 14 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a3e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a3e8:	48 89 c7             	mov    %rax,%rdi
    a3eb:	e8 84 15 00 00       	callq  b974 <_ZN4Heap3popEv>
    a3f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a3f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a3fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a402:	48 89 d6             	mov    %rdx,%rsi
    a405:	48 89 c7             	mov    %rax,%rdi
    a408:	e8 31 14 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a40d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a414:	48 89 c7             	mov    %rax,%rdi
    a417:	e8 58 15 00 00       	callq  b974 <_ZN4Heap3popEv>
    a41c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a423:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a427:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a42e:	48 89 d6             	mov    %rdx,%rsi
    a431:	48 89 c7             	mov    %rax,%rdi
    a434:	e8 05 14 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a439:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a440:	48 89 c7             	mov    %rax,%rdi
    a443:	e8 2c 15 00 00       	callq  b974 <_ZN4Heap3popEv>
    a448:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a44f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a453:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a45a:	48 89 d6             	mov    %rdx,%rsi
    a45d:	48 89 c7             	mov    %rax,%rdi
    a460:	e8 d9 13 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a465:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a46c:	48 89 c7             	mov    %rax,%rdi
    a46f:	e8 00 15 00 00       	callq  b974 <_ZN4Heap3popEv>
    a474:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a47b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a47f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a486:	48 89 d6             	mov    %rdx,%rsi
    a489:	48 89 c7             	mov    %rax,%rdi
    a48c:	e8 ad 13 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a491:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a498:	48 89 c7             	mov    %rax,%rdi
    a49b:	e8 d4 14 00 00       	callq  b974 <_ZN4Heap3popEv>
    a4a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a4a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a4ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a4b2:	48 89 d6             	mov    %rdx,%rsi
    a4b5:	48 89 c7             	mov    %rax,%rdi
    a4b8:	e8 81 13 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a4bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a4c4:	48 89 c7             	mov    %rax,%rdi
    a4c7:	e8 a8 14 00 00       	callq  b974 <_ZN4Heap3popEv>
    a4cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a4d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a4d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a4de:	48 89 d6             	mov    %rdx,%rsi
    a4e1:	48 89 c7             	mov    %rax,%rdi
    a4e4:	e8 55 13 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a4e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a4f0:	48 89 c7             	mov    %rax,%rdi
    a4f3:	e8 7c 14 00 00       	callq  b974 <_ZN4Heap3popEv>
    a4f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a4ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a503:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a50a:	48 89 d6             	mov    %rdx,%rsi
    a50d:	48 89 c7             	mov    %rax,%rdi
    a510:	e8 29 13 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a515:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a51c:	48 89 c7             	mov    %rax,%rdi
    a51f:	e8 50 14 00 00       	callq  b974 <_ZN4Heap3popEv>
    a524:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a52b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a52f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a536:	48 89 d6             	mov    %rdx,%rsi
    a539:	48 89 c7             	mov    %rax,%rdi
    a53c:	e8 fd 12 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a541:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a548:	48 89 c7             	mov    %rax,%rdi
    a54b:	e8 24 14 00 00       	callq  b974 <_ZN4Heap3popEv>
    a550:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a557:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a55b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a562:	48 89 d6             	mov    %rdx,%rsi
    a565:	48 89 c7             	mov    %rax,%rdi
    a568:	e8 d1 12 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a56d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a574:	48 89 c7             	mov    %rax,%rdi
    a577:	e8 f8 13 00 00       	callq  b974 <_ZN4Heap3popEv>
    a57c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a583:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a587:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a58e:	48 89 d6             	mov    %rdx,%rsi
    a591:	48 89 c7             	mov    %rax,%rdi
    a594:	e8 a5 12 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a599:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a5a0:	48 89 c7             	mov    %rax,%rdi
    a5a3:	e8 cc 13 00 00       	callq  b974 <_ZN4Heap3popEv>
    a5a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a5af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a5b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a5ba:	48 89 d6             	mov    %rdx,%rsi
    a5bd:	48 89 c7             	mov    %rax,%rdi
    a5c0:	e8 79 12 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a5c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a5cc:	48 89 c7             	mov    %rax,%rdi
    a5cf:	e8 a0 13 00 00       	callq  b974 <_ZN4Heap3popEv>
    a5d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a5db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a5df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a5e6:	48 89 d6             	mov    %rdx,%rsi
    a5e9:	48 89 c7             	mov    %rax,%rdi
    a5ec:	e8 4d 12 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a5f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a5f8:	48 89 c7             	mov    %rax,%rdi
    a5fb:	e8 74 13 00 00       	callq  b974 <_ZN4Heap3popEv>
    a600:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a607:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a60b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a612:	48 89 d6             	mov    %rdx,%rsi
    a615:	48 89 c7             	mov    %rax,%rdi
    a618:	e8 21 12 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a61d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a624:	48 89 c7             	mov    %rax,%rdi
    a627:	e8 48 13 00 00       	callq  b974 <_ZN4Heap3popEv>
    a62c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a633:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a637:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a63e:	48 89 d6             	mov    %rdx,%rsi
    a641:	48 89 c7             	mov    %rax,%rdi
    a644:	e8 f5 11 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a649:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a650:	48 89 c7             	mov    %rax,%rdi
    a653:	e8 1c 13 00 00       	callq  b974 <_ZN4Heap3popEv>
    a658:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a65f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a663:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a66a:	48 89 d6             	mov    %rdx,%rsi
    a66d:	48 89 c7             	mov    %rax,%rdi
    a670:	e8 c9 11 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a675:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a67c:	48 89 c7             	mov    %rax,%rdi
    a67f:	e8 f0 12 00 00       	callq  b974 <_ZN4Heap3popEv>
    a684:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a68b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a68f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a696:	48 89 d6             	mov    %rdx,%rsi
    a699:	48 89 c7             	mov    %rax,%rdi
    a69c:	e8 9d 11 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a6a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a6a8:	48 89 c7             	mov    %rax,%rdi
    a6ab:	e8 c4 12 00 00       	callq  b974 <_ZN4Heap3popEv>
    a6b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a6b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a6bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a6c2:	48 89 d6             	mov    %rdx,%rsi
    a6c5:	48 89 c7             	mov    %rax,%rdi
    a6c8:	e8 71 11 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a6cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a6d4:	48 89 c7             	mov    %rax,%rdi
    a6d7:	e8 98 12 00 00       	callq  b974 <_ZN4Heap3popEv>
    a6dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a6e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a6e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a6ee:	48 89 d6             	mov    %rdx,%rsi
    a6f1:	48 89 c7             	mov    %rax,%rdi
    a6f4:	e8 45 11 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a6f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a700:	48 89 c7             	mov    %rax,%rdi
    a703:	e8 6c 12 00 00       	callq  b974 <_ZN4Heap3popEv>
    a708:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a70f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a713:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a71a:	48 89 d6             	mov    %rdx,%rsi
    a71d:	48 89 c7             	mov    %rax,%rdi
    a720:	e8 19 11 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a725:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a72c:	48 89 c7             	mov    %rax,%rdi
    a72f:	e8 40 12 00 00       	callq  b974 <_ZN4Heap3popEv>
    a734:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a73b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a73f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a746:	48 89 d6             	mov    %rdx,%rsi
    a749:	48 89 c7             	mov    %rax,%rdi
    a74c:	e8 ed 10 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a751:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a758:	48 89 c7             	mov    %rax,%rdi
    a75b:	e8 14 12 00 00       	callq  b974 <_ZN4Heap3popEv>
    a760:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a767:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a76b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a772:	48 89 d6             	mov    %rdx,%rsi
    a775:	48 89 c7             	mov    %rax,%rdi
    a778:	e8 c1 10 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a77d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a784:	48 89 c7             	mov    %rax,%rdi
    a787:	e8 e8 11 00 00       	callq  b974 <_ZN4Heap3popEv>
    a78c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a793:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a797:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a79e:	48 89 d6             	mov    %rdx,%rsi
    a7a1:	48 89 c7             	mov    %rax,%rdi
    a7a4:	e8 95 10 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a7a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a7b0:	48 89 c7             	mov    %rax,%rdi
    a7b3:	e8 bc 11 00 00       	callq  b974 <_ZN4Heap3popEv>
    a7b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a7bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a7c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a7ca:	48 89 d6             	mov    %rdx,%rsi
    a7cd:	48 89 c7             	mov    %rax,%rdi
    a7d0:	e8 69 10 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a7d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a7dc:	48 89 c7             	mov    %rax,%rdi
    a7df:	e8 90 11 00 00       	callq  b974 <_ZN4Heap3popEv>
    a7e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a7eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a7ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a7f6:	48 89 d6             	mov    %rdx,%rsi
    a7f9:	48 89 c7             	mov    %rax,%rdi
    a7fc:	e8 3d 10 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a801:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a808:	48 89 c7             	mov    %rax,%rdi
    a80b:	e8 64 11 00 00       	callq  b974 <_ZN4Heap3popEv>
    a810:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a817:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a81b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a822:	48 89 d6             	mov    %rdx,%rsi
    a825:	48 89 c7             	mov    %rax,%rdi
    a828:	e8 11 10 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a82d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a834:	48 89 c7             	mov    %rax,%rdi
    a837:	e8 38 11 00 00       	callq  b974 <_ZN4Heap3popEv>
    a83c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a843:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a847:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a84e:	48 89 d6             	mov    %rdx,%rsi
    a851:	48 89 c7             	mov    %rax,%rdi
    a854:	e8 e5 0f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a859:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a860:	48 89 c7             	mov    %rax,%rdi
    a863:	e8 0c 11 00 00       	callq  b974 <_ZN4Heap3popEv>
    a868:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a86f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a873:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a87a:	48 89 d6             	mov    %rdx,%rsi
    a87d:	48 89 c7             	mov    %rax,%rdi
    a880:	e8 b9 0f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a885:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a88c:	48 89 c7             	mov    %rax,%rdi
    a88f:	e8 e0 10 00 00       	callq  b974 <_ZN4Heap3popEv>
    a894:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a89b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a89f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a8a6:	48 89 d6             	mov    %rdx,%rsi
    a8a9:	48 89 c7             	mov    %rax,%rdi
    a8ac:	e8 8d 0f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a8b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a8b8:	48 89 c7             	mov    %rax,%rdi
    a8bb:	e8 b4 10 00 00       	callq  b974 <_ZN4Heap3popEv>
    a8c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a8c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a8cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a8d2:	48 89 d6             	mov    %rdx,%rsi
    a8d5:	48 89 c7             	mov    %rax,%rdi
    a8d8:	e8 61 0f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a8dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a8e4:	48 89 c7             	mov    %rax,%rdi
    a8e7:	e8 88 10 00 00       	callq  b974 <_ZN4Heap3popEv>
    a8ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a8f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a8f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a8fe:	48 89 d6             	mov    %rdx,%rsi
    a901:	48 89 c7             	mov    %rax,%rdi
    a904:	e8 35 0f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a909:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a910:	48 89 c7             	mov    %rax,%rdi
    a913:	e8 5c 10 00 00       	callq  b974 <_ZN4Heap3popEv>
    a918:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a91f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a923:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a92a:	48 89 d6             	mov    %rdx,%rsi
    a92d:	48 89 c7             	mov    %rax,%rdi
    a930:	e8 09 0f 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a935:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a93c:	48 89 c7             	mov    %rax,%rdi
    a93f:	e8 30 10 00 00       	callq  b974 <_ZN4Heap3popEv>
    a944:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a94b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a94f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a956:	48 89 d6             	mov    %rdx,%rsi
    a959:	48 89 c7             	mov    %rax,%rdi
    a95c:	e8 dd 0e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a961:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a968:	48 89 c7             	mov    %rax,%rdi
    a96b:	e8 04 10 00 00       	callq  b974 <_ZN4Heap3popEv>
    a970:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a977:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a97b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a982:	48 89 d6             	mov    %rdx,%rsi
    a985:	48 89 c7             	mov    %rax,%rdi
    a988:	e8 b1 0e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a98d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a994:	48 89 c7             	mov    %rax,%rdi
    a997:	e8 d8 0f 00 00       	callq  b974 <_ZN4Heap3popEv>
    a99c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a9a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a9a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a9ae:	48 89 d6             	mov    %rdx,%rsi
    a9b1:	48 89 c7             	mov    %rax,%rdi
    a9b4:	e8 85 0e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a9b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a9c0:	48 89 c7             	mov    %rax,%rdi
    a9c3:	e8 ac 0f 00 00       	callq  b974 <_ZN4Heap3popEv>
    a9c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a9cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a9d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a9da:	48 89 d6             	mov    %rdx,%rsi
    a9dd:	48 89 c7             	mov    %rax,%rdi
    a9e0:	e8 59 0e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    a9e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a9ec:	48 89 c7             	mov    %rax,%rdi
    a9ef:	e8 80 0f 00 00       	callq  b974 <_ZN4Heap3popEv>
    a9f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a9fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a9ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa06:	48 89 d6             	mov    %rdx,%rsi
    aa09:	48 89 c7             	mov    %rax,%rdi
    aa0c:	e8 2d 0e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    aa11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa18:	48 89 c7             	mov    %rax,%rdi
    aa1b:	e8 54 0f 00 00       	callq  b974 <_ZN4Heap3popEv>
    aa20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aa27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aa2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa32:	48 89 d6             	mov    %rdx,%rsi
    aa35:	48 89 c7             	mov    %rax,%rdi
    aa38:	e8 01 0e 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    aa3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa44:	48 89 c7             	mov    %rax,%rdi
    aa47:	e8 28 0f 00 00       	callq  b974 <_ZN4Heap3popEv>
    aa4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aa53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aa57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa5e:	48 89 d6             	mov    %rdx,%rsi
    aa61:	48 89 c7             	mov    %rax,%rdi
    aa64:	e8 d5 0d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    aa69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa70:	48 89 c7             	mov    %rax,%rdi
    aa73:	e8 fc 0e 00 00       	callq  b974 <_ZN4Heap3popEv>
    aa78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aa7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aa83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa8a:	48 89 d6             	mov    %rdx,%rsi
    aa8d:	48 89 c7             	mov    %rax,%rdi
    aa90:	e8 a9 0d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    aa95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa9c:	48 89 c7             	mov    %rax,%rdi
    aa9f:	e8 d0 0e 00 00       	callq  b974 <_ZN4Heap3popEv>
    aaa4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aaab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aaaf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aab6:	48 89 d6             	mov    %rdx,%rsi
    aab9:	48 89 c7             	mov    %rax,%rdi
    aabc:	e8 7d 0d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    aac1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aac8:	48 89 c7             	mov    %rax,%rdi
    aacb:	e8 a4 0e 00 00       	callq  b974 <_ZN4Heap3popEv>
    aad0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aad7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aadb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aae2:	48 89 d6             	mov    %rdx,%rsi
    aae5:	48 89 c7             	mov    %rax,%rdi
    aae8:	e8 51 0d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    aaed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aaf4:	48 89 c7             	mov    %rax,%rdi
    aaf7:	e8 78 0e 00 00       	callq  b974 <_ZN4Heap3popEv>
    aafc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ab03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ab07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab0e:	48 89 d6             	mov    %rdx,%rsi
    ab11:	48 89 c7             	mov    %rax,%rdi
    ab14:	e8 25 0d 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ab19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab20:	48 89 c7             	mov    %rax,%rdi
    ab23:	e8 4c 0e 00 00       	callq  b974 <_ZN4Heap3popEv>
    ab28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ab2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ab33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab3a:	48 89 d6             	mov    %rdx,%rsi
    ab3d:	48 89 c7             	mov    %rax,%rdi
    ab40:	e8 f9 0c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ab45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab4c:	48 89 c7             	mov    %rax,%rdi
    ab4f:	e8 20 0e 00 00       	callq  b974 <_ZN4Heap3popEv>
    ab54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ab5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ab5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab66:	48 89 d6             	mov    %rdx,%rsi
    ab69:	48 89 c7             	mov    %rax,%rdi
    ab6c:	e8 cd 0c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ab71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab78:	48 89 c7             	mov    %rax,%rdi
    ab7b:	e8 f4 0d 00 00       	callq  b974 <_ZN4Heap3popEv>
    ab80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ab87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ab8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab92:	48 89 d6             	mov    %rdx,%rsi
    ab95:	48 89 c7             	mov    %rax,%rdi
    ab98:	e8 a1 0c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ab9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aba4:	48 89 c7             	mov    %rax,%rdi
    aba7:	e8 c8 0d 00 00       	callq  b974 <_ZN4Heap3popEv>
    abac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    abb3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    abb7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    abbe:	48 89 d6             	mov    %rdx,%rsi
    abc1:	48 89 c7             	mov    %rax,%rdi
    abc4:	e8 75 0c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    abc9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    abd0:	48 89 c7             	mov    %rax,%rdi
    abd3:	e8 9c 0d 00 00       	callq  b974 <_ZN4Heap3popEv>
    abd8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    abdf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    abe3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    abea:	48 89 d6             	mov    %rdx,%rsi
    abed:	48 89 c7             	mov    %rax,%rdi
    abf0:	e8 49 0c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    abf5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    abfc:	48 89 c7             	mov    %rax,%rdi
    abff:	e8 70 0d 00 00       	callq  b974 <_ZN4Heap3popEv>
    ac04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ac0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ac0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac16:	48 89 d6             	mov    %rdx,%rsi
    ac19:	48 89 c7             	mov    %rax,%rdi
    ac1c:	e8 1d 0c 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ac21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac28:	48 89 c7             	mov    %rax,%rdi
    ac2b:	e8 44 0d 00 00       	callq  b974 <_ZN4Heap3popEv>
    ac30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ac37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ac3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac42:	48 89 d6             	mov    %rdx,%rsi
    ac45:	48 89 c7             	mov    %rax,%rdi
    ac48:	e8 f1 0b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ac4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac54:	48 89 c7             	mov    %rax,%rdi
    ac57:	e8 18 0d 00 00       	callq  b974 <_ZN4Heap3popEv>
    ac5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ac63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ac67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac6e:	48 89 d6             	mov    %rdx,%rsi
    ac71:	48 89 c7             	mov    %rax,%rdi
    ac74:	e8 c5 0b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ac79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac80:	48 89 c7             	mov    %rax,%rdi
    ac83:	e8 ec 0c 00 00       	callq  b974 <_ZN4Heap3popEv>
    ac88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ac8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ac93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac9a:	48 89 d6             	mov    %rdx,%rsi
    ac9d:	48 89 c7             	mov    %rax,%rdi
    aca0:	e8 99 0b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    aca5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    acac:	48 89 c7             	mov    %rax,%rdi
    acaf:	e8 c0 0c 00 00       	callq  b974 <_ZN4Heap3popEv>
    acb4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    acbb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    acbf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    acc6:	48 89 d6             	mov    %rdx,%rsi
    acc9:	48 89 c7             	mov    %rax,%rdi
    accc:	e8 6d 0b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    acd1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    acd8:	48 89 c7             	mov    %rax,%rdi
    acdb:	e8 94 0c 00 00       	callq  b974 <_ZN4Heap3popEv>
    ace0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ace7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aceb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    acf2:	48 89 d6             	mov    %rdx,%rsi
    acf5:	48 89 c7             	mov    %rax,%rdi
    acf8:	e8 41 0b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    acfd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad04:	48 89 c7             	mov    %rax,%rdi
    ad07:	e8 68 0c 00 00       	callq  b974 <_ZN4Heap3popEv>
    ad0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ad13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ad17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad1e:	48 89 d6             	mov    %rdx,%rsi
    ad21:	48 89 c7             	mov    %rax,%rdi
    ad24:	e8 15 0b 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ad29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad30:	48 89 c7             	mov    %rax,%rdi
    ad33:	e8 3c 0c 00 00       	callq  b974 <_ZN4Heap3popEv>
    ad38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ad3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ad43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad4a:	48 89 d6             	mov    %rdx,%rsi
    ad4d:	48 89 c7             	mov    %rax,%rdi
    ad50:	e8 e9 0a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ad55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad5c:	48 89 c7             	mov    %rax,%rdi
    ad5f:	e8 10 0c 00 00       	callq  b974 <_ZN4Heap3popEv>
    ad64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ad6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ad6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad76:	48 89 d6             	mov    %rdx,%rsi
    ad79:	48 89 c7             	mov    %rax,%rdi
    ad7c:	e8 bd 0a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ad81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad88:	48 89 c7             	mov    %rax,%rdi
    ad8b:	e8 e4 0b 00 00       	callq  b974 <_ZN4Heap3popEv>
    ad90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ad97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ad9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ada2:	48 89 d6             	mov    %rdx,%rsi
    ada5:	48 89 c7             	mov    %rax,%rdi
    ada8:	e8 91 0a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    adad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    adb4:	48 89 c7             	mov    %rax,%rdi
    adb7:	e8 b8 0b 00 00       	callq  b974 <_ZN4Heap3popEv>
    adbc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    adc3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    adc7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    adce:	48 89 d6             	mov    %rdx,%rsi
    add1:	48 89 c7             	mov    %rax,%rdi
    add4:	e8 65 0a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    add9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ade0:	48 89 c7             	mov    %rax,%rdi
    ade3:	e8 8c 0b 00 00       	callq  b974 <_ZN4Heap3popEv>
    ade8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    adef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    adf3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    adfa:	48 89 d6             	mov    %rdx,%rsi
    adfd:	48 89 c7             	mov    %rax,%rdi
    ae00:	e8 39 0a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ae05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae0c:	48 89 c7             	mov    %rax,%rdi
    ae0f:	e8 60 0b 00 00       	callq  b974 <_ZN4Heap3popEv>
    ae14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ae1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ae1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae26:	48 89 d6             	mov    %rdx,%rsi
    ae29:	48 89 c7             	mov    %rax,%rdi
    ae2c:	e8 0d 0a 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ae31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae38:	48 89 c7             	mov    %rax,%rdi
    ae3b:	e8 34 0b 00 00       	callq  b974 <_ZN4Heap3popEv>
    ae40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ae47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ae4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae52:	48 89 d6             	mov    %rdx,%rsi
    ae55:	48 89 c7             	mov    %rax,%rdi
    ae58:	e8 e1 09 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ae5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae64:	48 89 c7             	mov    %rax,%rdi
    ae67:	e8 08 0b 00 00       	callq  b974 <_ZN4Heap3popEv>
    ae6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ae73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ae77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae7e:	48 89 d6             	mov    %rdx,%rsi
    ae81:	48 89 c7             	mov    %rax,%rdi
    ae84:	e8 b5 09 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    ae89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae90:	48 89 c7             	mov    %rax,%rdi
    ae93:	e8 dc 0a 00 00       	callq  b974 <_ZN4Heap3popEv>
    ae98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ae9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aea3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aeaa:	48 89 d6             	mov    %rdx,%rsi
    aead:	48 89 c7             	mov    %rax,%rdi
    aeb0:	e8 89 09 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    aeb5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aebc:	48 89 c7             	mov    %rax,%rdi
    aebf:	e8 b0 0a 00 00       	callq  b974 <_ZN4Heap3popEv>
    aec4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aecb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aecf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aed6:	48 89 d6             	mov    %rdx,%rsi
    aed9:	48 89 c7             	mov    %rax,%rdi
    aedc:	e8 5d 09 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    aee1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aee8:	48 89 c7             	mov    %rax,%rdi
    aeeb:	e8 84 0a 00 00       	callq  b974 <_ZN4Heap3popEv>
    aef0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aef7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aefb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af02:	48 89 d6             	mov    %rdx,%rsi
    af05:	48 89 c7             	mov    %rax,%rdi
    af08:	e8 31 09 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    af0d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af14:	48 89 c7             	mov    %rax,%rdi
    af17:	e8 58 0a 00 00       	callq  b974 <_ZN4Heap3popEv>
    af1c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    af23:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    af27:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af2e:	48 89 d6             	mov    %rdx,%rsi
    af31:	48 89 c7             	mov    %rax,%rdi
    af34:	e8 05 09 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    af39:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af40:	48 89 c7             	mov    %rax,%rdi
    af43:	e8 2c 0a 00 00       	callq  b974 <_ZN4Heap3popEv>
    af48:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    af4f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    af53:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af5a:	48 89 d6             	mov    %rdx,%rsi
    af5d:	48 89 c7             	mov    %rax,%rdi
    af60:	e8 d9 08 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    af65:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af6c:	48 89 c7             	mov    %rax,%rdi
    af6f:	e8 00 0a 00 00       	callq  b974 <_ZN4Heap3popEv>
    af74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    af7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    af7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af86:	48 89 d6             	mov    %rdx,%rsi
    af89:	48 89 c7             	mov    %rax,%rdi
    af8c:	e8 ad 08 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    af91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af98:	48 89 c7             	mov    %rax,%rdi
    af9b:	e8 d4 09 00 00       	callq  b974 <_ZN4Heap3popEv>
    afa0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    afa7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    afab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    afb2:	48 89 d6             	mov    %rdx,%rsi
    afb5:	48 89 c7             	mov    %rax,%rdi
    afb8:	e8 81 08 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    afbd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    afc4:	48 89 c7             	mov    %rax,%rdi
    afc7:	e8 a8 09 00 00       	callq  b974 <_ZN4Heap3popEv>
    afcc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    afd3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    afd7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    afde:	48 89 d6             	mov    %rdx,%rsi
    afe1:	48 89 c7             	mov    %rax,%rdi
    afe4:	e8 55 08 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    afe9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aff0:	48 89 c7             	mov    %rax,%rdi
    aff3:	e8 7c 09 00 00       	callq  b974 <_ZN4Heap3popEv>
    aff8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    afff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b003:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b00a:	48 89 d6             	mov    %rdx,%rsi
    b00d:	48 89 c7             	mov    %rax,%rdi
    b010:	e8 29 08 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b015:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b01c:	48 89 c7             	mov    %rax,%rdi
    b01f:	e8 50 09 00 00       	callq  b974 <_ZN4Heap3popEv>
    b024:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b02b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b02f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b036:	48 89 d6             	mov    %rdx,%rsi
    b039:	48 89 c7             	mov    %rax,%rdi
    b03c:	e8 fd 07 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b041:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b048:	48 89 c7             	mov    %rax,%rdi
    b04b:	e8 24 09 00 00       	callq  b974 <_ZN4Heap3popEv>
    b050:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b057:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b05b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b062:	48 89 d6             	mov    %rdx,%rsi
    b065:	48 89 c7             	mov    %rax,%rdi
    b068:	e8 d1 07 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b06d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b074:	48 89 c7             	mov    %rax,%rdi
    b077:	e8 f8 08 00 00       	callq  b974 <_ZN4Heap3popEv>
    b07c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b083:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b087:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b08e:	48 89 d6             	mov    %rdx,%rsi
    b091:	48 89 c7             	mov    %rax,%rdi
    b094:	e8 a5 07 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b099:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b0a0:	48 89 c7             	mov    %rax,%rdi
    b0a3:	e8 cc 08 00 00       	callq  b974 <_ZN4Heap3popEv>
    b0a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b0af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b0b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b0ba:	48 89 d6             	mov    %rdx,%rsi
    b0bd:	48 89 c7             	mov    %rax,%rdi
    b0c0:	e8 79 07 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b0c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b0cc:	48 89 c7             	mov    %rax,%rdi
    b0cf:	e8 a0 08 00 00       	callq  b974 <_ZN4Heap3popEv>
    b0d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b0db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b0df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b0e6:	48 89 d6             	mov    %rdx,%rsi
    b0e9:	48 89 c7             	mov    %rax,%rdi
    b0ec:	e8 4d 07 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b0f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b0f8:	48 89 c7             	mov    %rax,%rdi
    b0fb:	e8 74 08 00 00       	callq  b974 <_ZN4Heap3popEv>
    b100:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b107:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b10b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b112:	48 89 d6             	mov    %rdx,%rsi
    b115:	48 89 c7             	mov    %rax,%rdi
    b118:	e8 21 07 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b11d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b124:	48 89 c7             	mov    %rax,%rdi
    b127:	e8 48 08 00 00       	callq  b974 <_ZN4Heap3popEv>
    b12c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b133:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b137:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b13e:	48 89 d6             	mov    %rdx,%rsi
    b141:	48 89 c7             	mov    %rax,%rdi
    b144:	e8 f5 06 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b149:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b150:	48 89 c7             	mov    %rax,%rdi
    b153:	e8 1c 08 00 00       	callq  b974 <_ZN4Heap3popEv>
    b158:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b15f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b163:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b16a:	48 89 d6             	mov    %rdx,%rsi
    b16d:	48 89 c7             	mov    %rax,%rdi
    b170:	e8 c9 06 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b175:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b17c:	48 89 c7             	mov    %rax,%rdi
    b17f:	e8 f0 07 00 00       	callq  b974 <_ZN4Heap3popEv>
    b184:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b18b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b18f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b196:	48 89 d6             	mov    %rdx,%rsi
    b199:	48 89 c7             	mov    %rax,%rdi
    b19c:	e8 9d 06 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b1a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b1a8:	48 89 c7             	mov    %rax,%rdi
    b1ab:	e8 c4 07 00 00       	callq  b974 <_ZN4Heap3popEv>
    b1b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b1b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b1bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b1c2:	48 89 d6             	mov    %rdx,%rsi
    b1c5:	48 89 c7             	mov    %rax,%rdi
    b1c8:	e8 71 06 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b1cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b1d4:	48 89 c7             	mov    %rax,%rdi
    b1d7:	e8 98 07 00 00       	callq  b974 <_ZN4Heap3popEv>
    b1dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b1e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b1e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b1ee:	48 89 d6             	mov    %rdx,%rsi
    b1f1:	48 89 c7             	mov    %rax,%rdi
    b1f4:	e8 45 06 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b1f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b200:	48 89 c7             	mov    %rax,%rdi
    b203:	e8 6c 07 00 00       	callq  b974 <_ZN4Heap3popEv>
    b208:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b20f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b213:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b21a:	48 89 d6             	mov    %rdx,%rsi
    b21d:	48 89 c7             	mov    %rax,%rdi
    b220:	e8 19 06 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b225:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b22c:	48 89 c7             	mov    %rax,%rdi
    b22f:	e8 40 07 00 00       	callq  b974 <_ZN4Heap3popEv>
    b234:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b23b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b23f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b246:	48 89 d6             	mov    %rdx,%rsi
    b249:	48 89 c7             	mov    %rax,%rdi
    b24c:	e8 ed 05 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b251:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b258:	48 89 c7             	mov    %rax,%rdi
    b25b:	e8 14 07 00 00       	callq  b974 <_ZN4Heap3popEv>
    b260:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b267:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b26b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b272:	48 89 d6             	mov    %rdx,%rsi
    b275:	48 89 c7             	mov    %rax,%rdi
    b278:	e8 c1 05 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b27d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b284:	48 89 c7             	mov    %rax,%rdi
    b287:	e8 e8 06 00 00       	callq  b974 <_ZN4Heap3popEv>
    b28c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b293:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b297:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b29e:	48 89 d6             	mov    %rdx,%rsi
    b2a1:	48 89 c7             	mov    %rax,%rdi
    b2a4:	e8 95 05 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b2a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b2b0:	48 89 c7             	mov    %rax,%rdi
    b2b3:	e8 bc 06 00 00       	callq  b974 <_ZN4Heap3popEv>
    b2b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b2bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b2c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b2ca:	48 89 d6             	mov    %rdx,%rsi
    b2cd:	48 89 c7             	mov    %rax,%rdi
    b2d0:	e8 69 05 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b2d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b2dc:	48 89 c7             	mov    %rax,%rdi
    b2df:	e8 90 06 00 00       	callq  b974 <_ZN4Heap3popEv>
    b2e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b2eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b2ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b2f6:	48 89 d6             	mov    %rdx,%rsi
    b2f9:	48 89 c7             	mov    %rax,%rdi
    b2fc:	e8 3d 05 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b301:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b308:	48 89 c7             	mov    %rax,%rdi
    b30b:	e8 64 06 00 00       	callq  b974 <_ZN4Heap3popEv>
    b310:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b317:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b31b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b322:	48 89 d6             	mov    %rdx,%rsi
    b325:	48 89 c7             	mov    %rax,%rdi
    b328:	e8 11 05 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b32d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b334:	48 89 c7             	mov    %rax,%rdi
    b337:	e8 38 06 00 00       	callq  b974 <_ZN4Heap3popEv>
    b33c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b343:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b347:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b34e:	48 89 d6             	mov    %rdx,%rsi
    b351:	48 89 c7             	mov    %rax,%rdi
    b354:	e8 e5 04 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b359:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b360:	48 89 c7             	mov    %rax,%rdi
    b363:	e8 0c 06 00 00       	callq  b974 <_ZN4Heap3popEv>
    b368:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b36f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b373:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b37a:	48 89 d6             	mov    %rdx,%rsi
    b37d:	48 89 c7             	mov    %rax,%rdi
    b380:	e8 b9 04 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b385:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b38c:	48 89 c7             	mov    %rax,%rdi
    b38f:	e8 e0 05 00 00       	callq  b974 <_ZN4Heap3popEv>
    b394:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b39b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b39f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b3a6:	48 89 d6             	mov    %rdx,%rsi
    b3a9:	48 89 c7             	mov    %rax,%rdi
    b3ac:	e8 8d 04 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b3b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b3b8:	48 89 c7             	mov    %rax,%rdi
    b3bb:	e8 b4 05 00 00       	callq  b974 <_ZN4Heap3popEv>
    b3c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b3c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b3cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b3d2:	48 89 d6             	mov    %rdx,%rsi
    b3d5:	48 89 c7             	mov    %rax,%rdi
    b3d8:	e8 61 04 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b3dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b3e4:	48 89 c7             	mov    %rax,%rdi
    b3e7:	e8 88 05 00 00       	callq  b974 <_ZN4Heap3popEv>
    b3ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b3f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b3f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b3fe:	48 89 d6             	mov    %rdx,%rsi
    b401:	48 89 c7             	mov    %rax,%rdi
    b404:	e8 35 04 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b409:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b410:	48 89 c7             	mov    %rax,%rdi
    b413:	e8 5c 05 00 00       	callq  b974 <_ZN4Heap3popEv>
    b418:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b41f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b423:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b42a:	48 89 d6             	mov    %rdx,%rsi
    b42d:	48 89 c7             	mov    %rax,%rdi
    b430:	e8 09 04 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b435:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b43c:	48 89 c7             	mov    %rax,%rdi
    b43f:	e8 30 05 00 00       	callq  b974 <_ZN4Heap3popEv>
    b444:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b44b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b44f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b456:	48 89 d6             	mov    %rdx,%rsi
    b459:	48 89 c7             	mov    %rax,%rdi
    b45c:	e8 dd 03 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b461:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b468:	48 89 c7             	mov    %rax,%rdi
    b46b:	e8 04 05 00 00       	callq  b974 <_ZN4Heap3popEv>
    b470:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b477:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b47b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b482:	48 89 d6             	mov    %rdx,%rsi
    b485:	48 89 c7             	mov    %rax,%rdi
    b488:	e8 b1 03 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b48d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b494:	48 89 c7             	mov    %rax,%rdi
    b497:	e8 d8 04 00 00       	callq  b974 <_ZN4Heap3popEv>
    b49c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b4a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b4a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b4ae:	48 89 d6             	mov    %rdx,%rsi
    b4b1:	48 89 c7             	mov    %rax,%rdi
    b4b4:	e8 85 03 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b4b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b4c0:	48 89 c7             	mov    %rax,%rdi
    b4c3:	e8 ac 04 00 00       	callq  b974 <_ZN4Heap3popEv>
    b4c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b4cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b4d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b4da:	48 89 d6             	mov    %rdx,%rsi
    b4dd:	48 89 c7             	mov    %rax,%rdi
    b4e0:	e8 59 03 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b4e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b4ec:	48 89 c7             	mov    %rax,%rdi
    b4ef:	e8 80 04 00 00       	callq  b974 <_ZN4Heap3popEv>
    b4f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b4fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b4ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b506:	48 89 d6             	mov    %rdx,%rsi
    b509:	48 89 c7             	mov    %rax,%rdi
    b50c:	e8 2d 03 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b511:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b518:	48 89 c7             	mov    %rax,%rdi
    b51b:	e8 54 04 00 00       	callq  b974 <_ZN4Heap3popEv>
    b520:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b527:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b52b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b532:	48 89 d6             	mov    %rdx,%rsi
    b535:	48 89 c7             	mov    %rax,%rdi
    b538:	e8 01 03 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b53d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b544:	48 89 c7             	mov    %rax,%rdi
    b547:	e8 28 04 00 00       	callq  b974 <_ZN4Heap3popEv>
    b54c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b553:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b557:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b55e:	48 89 d6             	mov    %rdx,%rsi
    b561:	48 89 c7             	mov    %rax,%rdi
    b564:	e8 d5 02 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b569:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b570:	48 89 c7             	mov    %rax,%rdi
    b573:	e8 fc 03 00 00       	callq  b974 <_ZN4Heap3popEv>
    b578:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b57f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b583:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b58a:	48 89 d6             	mov    %rdx,%rsi
    b58d:	48 89 c7             	mov    %rax,%rdi
    b590:	e8 a9 02 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b595:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b59c:	48 89 c7             	mov    %rax,%rdi
    b59f:	e8 d0 03 00 00       	callq  b974 <_ZN4Heap3popEv>
    b5a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b5ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b5af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b5b6:	48 89 d6             	mov    %rdx,%rsi
    b5b9:	48 89 c7             	mov    %rax,%rdi
    b5bc:	e8 7d 02 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b5c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b5c8:	48 89 c7             	mov    %rax,%rdi
    b5cb:	e8 a4 03 00 00       	callq  b974 <_ZN4Heap3popEv>
    b5d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b5d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b5db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b5e2:	48 89 d6             	mov    %rdx,%rsi
    b5e5:	48 89 c7             	mov    %rax,%rdi
    b5e8:	e8 51 02 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b5ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b5f4:	48 89 c7             	mov    %rax,%rdi
    b5f7:	e8 78 03 00 00       	callq  b974 <_ZN4Heap3popEv>
    b5fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b603:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b607:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b60e:	48 89 d6             	mov    %rdx,%rsi
    b611:	48 89 c7             	mov    %rax,%rdi
    b614:	e8 25 02 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b619:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b620:	48 89 c7             	mov    %rax,%rdi
    b623:	e8 4c 03 00 00       	callq  b974 <_ZN4Heap3popEv>
    b628:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b62f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b633:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b63a:	48 89 d6             	mov    %rdx,%rsi
    b63d:	48 89 c7             	mov    %rax,%rdi
    b640:	e8 f9 01 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b645:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b64c:	48 89 c7             	mov    %rax,%rdi
    b64f:	e8 20 03 00 00       	callq  b974 <_ZN4Heap3popEv>
    b654:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b65b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b65f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b666:	48 89 d6             	mov    %rdx,%rsi
    b669:	48 89 c7             	mov    %rax,%rdi
    b66c:	e8 cd 01 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b671:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b678:	48 89 c7             	mov    %rax,%rdi
    b67b:	e8 f4 02 00 00       	callq  b974 <_ZN4Heap3popEv>
    b680:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b687:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b68b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b692:	48 89 d6             	mov    %rdx,%rsi
    b695:	48 89 c7             	mov    %rax,%rdi
    b698:	e8 a1 01 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b69d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b6a4:	48 89 c7             	mov    %rax,%rdi
    b6a7:	e8 c8 02 00 00       	callq  b974 <_ZN4Heap3popEv>
    b6ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b6b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b6b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b6be:	48 89 d6             	mov    %rdx,%rsi
    b6c1:	48 89 c7             	mov    %rax,%rdi
    b6c4:	e8 75 01 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b6c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b6d0:	48 89 c7             	mov    %rax,%rdi
    b6d3:	e8 9c 02 00 00       	callq  b974 <_ZN4Heap3popEv>
    b6d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b6df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b6e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b6ea:	48 89 d6             	mov    %rdx,%rsi
    b6ed:	48 89 c7             	mov    %rax,%rdi
    b6f0:	e8 49 01 00 00       	callq  b83e <_ZN4Heap4pushEP4Grid>
    b6f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b6fc:	48 89 c7             	mov    %rax,%rdi
    b6ff:	e8 70 02 00 00       	callq  b974 <_ZN4Heap3popEv>
    b704:	e8 13 04 00 00       	callq  bb1c <_Z5rdtscv>
    b709:	48 89 85 28 ed df ff 	mov    %rax,-0x2012d8(%rbp)
    b710:	48 8d 35 d1 04 00 00 	lea    0x4d1(%rip),%rsi        # bbe8 <_ZL11MAXHEAPSIZE+0x4>
    b717:	48 8d 3d 02 19 20 00 	lea    0x201902(%rip),%rdi        # 20d020 <_ZSt4cout@@GLIBCXX_3.4>
    b71e:	e8 5d 51 ff ff       	callq  880 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    b723:	48 89 c2             	mov    %rax,%rdx
    b726:	48 8b 85 28 ed df ff 	mov    -0x2012d8(%rbp),%rax
    b72d:	48 2b 85 20 ed df ff 	sub    -0x2012e0(%rbp),%rax
    b734:	48 89 c6             	mov    %rax,%rsi
    b737:	48 89 d7             	mov    %rdx,%rdi
    b73a:	e8 31 51 ff ff       	callq  870 <_ZNSolsEy@plt>
    b73f:	48 89 c2             	mov    %rax,%rdx
    b742:	48 8b 05 87 18 20 00 	mov    0x201887(%rip),%rax        # 20cfd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    b749:	48 89 c6             	mov    %rax,%rsi
    b74c:	48 89 d7             	mov    %rdx,%rdi
    b74f:	e8 4c 51 ff ff       	callq  8a0 <_ZNSolsEPFRSoS_E@plt>
    b754:	b8 00 00 00 00       	mov    $0x0,%eax
    b759:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    b75d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    b764:	00 00 
    b766:	74 05                	je     b76d <main+0xacdf>
    b768:	e8 43 51 ff ff       	callq  8b0 <__stack_chk_fail@plt>
    b76d:	c9                   	leaveq 
    b76e:	c3                   	retq   

000000000000b76f <_Z41__static_initialization_and_destruction_0ii>:
    b76f:	55                   	push   %rbp
    b770:	48 89 e5             	mov    %rsp,%rbp
    b773:	48 83 ec 10          	sub    $0x10,%rsp
    b777:	89 7d fc             	mov    %edi,-0x4(%rbp)
    b77a:	89 75 f8             	mov    %esi,-0x8(%rbp)
    b77d:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    b781:	75 32                	jne    b7b5 <_Z41__static_initialization_and_destruction_0ii+0x46>
    b783:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    b78a:	75 29                	jne    b7b5 <_Z41__static_initialization_and_destruction_0ii+0x46>
    b78c:	48 8d 3d a2 19 20 00 	lea    0x2019a2(%rip),%rdi        # 20d135 <_ZStL8__ioinit>
    b793:	e8 28 51 ff ff       	callq  8c0 <_ZNSt8ios_base4InitC1Ev@plt>
    b798:	48 8d 15 69 18 20 00 	lea    0x201869(%rip),%rdx        # 20d008 <__dso_handle>
    b79f:	48 8d 35 8f 19 20 00 	lea    0x20198f(%rip),%rsi        # 20d135 <_ZStL8__ioinit>
    b7a6:	48 8b 05 4b 18 20 00 	mov    0x20184b(%rip),%rax        # 20cff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    b7ad:	48 89 c7             	mov    %rax,%rdi
    b7b0:	e8 ab 50 ff ff       	callq  860 <__cxa_atexit@plt>
    b7b5:	90                   	nop
    b7b6:	c9                   	leaveq 
    b7b7:	c3                   	retq   

000000000000b7b8 <_GLOBAL__sub_I__Z10init_gridsP4Grid>:
    b7b8:	55                   	push   %rbp
    b7b9:	48 89 e5             	mov    %rsp,%rbp
    b7bc:	be ff ff 00 00       	mov    $0xffff,%esi
    b7c1:	bf 01 00 00 00       	mov    $0x1,%edi
    b7c6:	e8 a4 ff ff ff       	callq  b76f <_Z41__static_initialization_and_destruction_0ii>
    b7cb:	5d                   	pop    %rbp
    b7cc:	c3                   	retq   
    b7cd:	90                   	nop

000000000000b7ce <_Z4swapPP4GridS1_>:
    b7ce:	55                   	push   %rbp
    b7cf:	48 89 e5             	mov    %rsp,%rbp
    b7d2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)  s
    b7d6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)  s
    b7da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax  l
    b7de:	48 8b 00             	mov    (%rax),%rax       l
    b7e1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)   s
    b7e5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax  l
    b7e9:	48 8b 10             	mov    (%rax),%rdx       l
    b7ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax  l
    b7f0:	48 89 10             	mov    %rdx,(%rax)       s
    b7f3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax  l
    b7f7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx   l
    b7fb:	48 89 10             	mov    %rdx,(%rax)       s
    b7fe:	90                   	nop
    b7ff:	5d                   	pop    %rbp
    b800:	c3                   	retq   
    b801:	90                   	nop

000000000000b802 <_ZN4HeapC1Ev>:
    b802:	55                   	push   %rbp
    b803:	48 89 e5             	mov    %rsp,%rbp
    b806:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b80a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b80e:	c7 80 04 00 20 00 04 	movl   $0x4,0x200004(%rax)
    b815:	00 00 00 
    b818:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b81c:	c7 80 00 00 20 00 00 	movl   $0x0,0x200000(%rax)
    b823:	00 00 00 
    b826:	90                   	nop
    b827:	5d                   	pop    %rbp
    b828:	c3                   	retq   
    b829:	90                   	nop

000000000000b82a <_ZN4Heap4sizeEv>:
    b82a:	55                   	push   %rbp
    b82b:	48 89 e5             	mov    %rsp,%rbp
    b82e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b832:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b836:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax
    b83c:	5d                   	pop    %rbp
    b83d:	c3                   	retq   

000000000000b83e <_ZN4Heap4pushEP4Grid>:
    b83e:	55                   	push   %rbp
    b83f:	48 89 e5             	mov    %rsp,%rbp            
    b842:	48 83 ec 10          	sub    $0x10,%rsp
    b846:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)               s
    b84a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)              s
    b84e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax         l
    b852:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax     l
    b858:	8d 50 01             	lea    0x1(%rax),%edx
    b85b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax         l
    b85f:	89 90 00 00 20 00    	mov    %edx,0x200000(%rax)           s
    b865:	48 8b 45 f8          	mov    -0x8(%rbp),%rax         l
    b869:	8b 90 00 00 20 00    	mov    0x200000(%rax),%edx     l
    b86f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax         l
    b873:	48 63 d2             	movslq %edx,%rdx
    b876:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx        l
    b87a:	48 89 0c d0          	mov    %rcx,(%rax,%rdx,8)            s
    b87e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax         l
    b882:	48 89 c7             	mov    %rax,%rdi
    b885:	e8 04 00 00 00       	callq  b88e <_ZN4Heap10heapify_upEv>
    b88a:	90                   	nop
    b88b:	c9                   	leaveq 
    b88c:	c3                   	retq   
    b88d:	90                   	nop

000000000000b88e <_ZN4Heap10heapify_upEv>:
    b88e:	55                   	push   %rbp
    b88f:	48 89 e5             	mov    %rsp,%rbp
    b892:	48 83 ec 18          	sub    $0x18,%rsp
    b896:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b89a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b89e:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax
    b8a4:	89 45 fc             	mov    %eax,-0x4(%rbp)
    b8a7:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    b8ab:	0f 84 c0 00 00 00    	je     b971 <_ZN4Heap10heapify_upEv+0xe3>
    b8b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax           l
    b8b5:	8b 55 fc             	mov    -0x4(%rbp),%edx            l 
    b8b8:	48 63 d2             	movslq %edx,%rdx
    b8bb:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax         l  
    b8bf:	8b 48 04             	mov    0x4(%rax),%ecx             l 
    b8c2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax           l
    b8c6:	8b 90 04 00 20 00    	mov    0x200004(%rax),%edx
    b8cc:	8b 45 fc             	mov    -0x4(%rbp),%eax
    b8cf:	01 d0                	add    %edx,%eax
    b8d1:	8d 70 fe             	lea    -0x2(%rax),%esi
    b8d4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b8d8:	8b b8 04 00 20 00    	mov    0x200004(%rax),%edi
    b8de:	89 f0                	mov    %esi,%eax
    b8e0:	99                   	cltd   
    b8e1:	f7 ff                	idiv   %edi
    b8e3:	89 c2                	mov    %eax,%edx
    b8e5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b8e9:	48 63 d2             	movslq %edx,%rdx
    b8ec:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    b8f0:	8b 40 04             	mov    0x4(%rax),%eax
    b8f3:	39 c1                	cmp    %eax,%ecx
    b8f5:	7f 7a                	jg     b971 <_ZN4Heap10heapify_upEv+0xe3>
    b8f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b8fb:	8b 90 04 00 20 00    	mov    0x200004(%rax),%edx
    b901:	8b 45 fc             	mov    -0x4(%rbp),%eax
    b904:	01 d0                	add    %edx,%eax
    b906:	8d 48 fe             	lea    -0x2(%rax),%ecx
    b909:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b90d:	8b b0 04 00 20 00    	mov    0x200004(%rax),%esi
    b913:	89 c8                	mov    %ecx,%eax
    b915:	99                   	cltd   
    b916:	f7 fe                	idiv   %esi
    b918:	48 98                	cltq   
    b91a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    b921:	00 
    b922:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b926:	48 01 c2             	add    %rax,%rdx
    b929:	8b 45 fc             	mov    -0x4(%rbp),%eax
    b92c:	48 98                	cltq   
    b92e:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    b935:	00 
    b936:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b93a:	48 01 c8             	add    %rcx,%rax
    b93d:	48 89 d6             	mov    %rdx,%rsi
    b940:	48 89 c7             	mov    %rax,%rdi
    b943:	e8 86 fe ff ff       	callq  b7ce <_Z4swapPP4GridS1_>
    b948:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b94c:	8b 90 04 00 20 00    	mov    0x200004(%rax),%edx
    b952:	8b 45 fc             	mov    -0x4(%rbp),%eax
    b955:	01 d0                	add    %edx,%eax
    b957:	8d 48 fe             	lea    -0x2(%rax),%ecx
    b95a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b95e:	8b b8 04 00 20 00    	mov    0x200004(%rax),%edi
    b964:	89 c8                	mov    %ecx,%eax
    b966:	99                   	cltd   
    b967:	f7 ff                	idiv   %edi
    b969:	89 45 fc             	mov    %eax,-0x4(%rbp)
    b96c:	e9 36 ff ff ff       	jmpq   b8a7 <_ZN4Heap10heapify_upEv+0x19>
    b971:	90                   	nop
    b972:	c9                   	leaveq 
    b973:	c3                   	retq   

000000000000b974 <_ZN4Heap3popEv>:
    b974:	55                   	push   %rbp
    b975:	48 89 e5             	mov    %rsp,%rbp
    b978:	48 83 ec 10          	sub    $0x10,%rsp
    b97c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)           s
    b980:	48 8b 45 f8          	mov    -0x8(%rbp),%rax       l
    b984:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax   l 
    b98a:	8d 48 ff             	lea    -0x1(%rax),%ecx
    b98d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx       l 
    b991:	89 8a 00 00 20 00    	mov    %ecx,0x200000(%rdx)       s 
    b997:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx       l 
    b99b:	48 98                	cltq   
    b99d:	48 8b 14 c2          	mov    (%rdx,%rax,8),%rdx    l 
    b9a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax       l 
    b9a5:	48 89 50 08          	mov    %rdx,0x8(%rax)            s 
    b9a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax       l 
    b9ad:	48 89 c7             	mov    %rax,%rdi
    b9b0:	e8 03 00 00 00       	callq  b9b8 <_ZN4Heap12heapify_downEv>
    b9b5:	90                   	nop
    b9b6:	c9                   	leaveq 
    b9b7:	c3                   	retq   

000000000000b9b8 <_ZN4Heap12heapify_downEv>:
    b9b8:	55                   	push   %rbp
    b9b9:	48 89 e5             	mov    %rsp,%rbp
    b9bc:	48 83 ec 28          	sub    $0x28,%rsp
    b9c0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    b9c4:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%rbp)
    b9cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b9cf:	8b 80 04 00 20 00    	mov    0x200004(%rax),%eax
    b9d5:	0f af 45 ec          	imul   -0x14(%rbp),%eax
    b9d9:	89 c2                	mov    %eax,%edx
    b9db:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b9df:	8b 80 04 00 20 00    	mov    0x200004(%rax),%eax
    b9e5:	83 e8 02             	sub    $0x2,%eax
    b9e8:	29 c2                	sub    %eax,%edx
    b9ea:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    b9ee:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax
    b9f4:	39 c2                	cmp    %eax,%edx
    b9f6:	0f 8f 0a 01 00 00    	jg     bb06 <_ZN4Heap12heapify_downEv+0x14e>
    b9fc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ba00:	8b 80 04 00 20 00    	mov    0x200004(%rax),%eax
    ba06:	0f af 45 ec          	imul   -0x14(%rbp),%eax
    ba0a:	89 c2                	mov    %eax,%edx
    ba0c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ba10:	8b 80 04 00 20 00    	mov    0x200004(%rax),%eax
    ba16:	83 e8 02             	sub    $0x2,%eax
    ba19:	29 c2                	sub    %eax,%edx
    ba1b:	89 d0                	mov    %edx,%eax
    ba1d:	89 45 fc             	mov    %eax,-0x4(%rbp)
    ba20:	c7 45 f0 a0 86 01 00 	movl   $0x186a0,-0x10(%rbp)
    ba27:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%rbp)
    ba2e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    ba35:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ba39:	8b 80 04 00 20 00    	mov    0x200004(%rax),%eax
    ba3f:	39 45 f8             	cmp    %eax,-0x8(%rbp)
    ba42:	7d 56                	jge    ba9a <_ZN4Heap12heapify_downEv+0xe2>
    ba44:	8b 55 fc             	mov    -0x4(%rbp),%edx
    ba47:	8b 45 f8             	mov    -0x8(%rbp),%eax
    ba4a:	01 c2                	add    %eax,%edx
    ba4c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ba50:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax
    ba56:	39 c2                	cmp    %eax,%edx
    ba58:	7f 3a                	jg     ba94 <_ZN4Heap12heapify_downEv+0xdc>
    ba5a:	8b 55 fc             	mov    -0x4(%rbp),%edx
    ba5d:	8b 45 f8             	mov    -0x8(%rbp),%eax
    ba60:	01 c2                	add    %eax,%edx
    ba62:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ba66:	48 63 d2             	movslq %edx,%rdx
    ba69:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    ba6d:	8b 40 04             	mov    0x4(%rax),%eax
    ba70:	39 45 f0             	cmp    %eax,-0x10(%rbp)
    ba73:	7e 1f                	jle    ba94 <_ZN4Heap12heapify_downEv+0xdc>
    ba75:	8b 55 fc             	mov    -0x4(%rbp),%edx
    ba78:	8b 45 f8             	mov    -0x8(%rbp),%eax
    ba7b:	01 c2                	add    %eax,%edx
    ba7d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    ba81:	48 63 d2             	movslq %edx,%rdx
    ba84:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    ba88:	8b 40 04             	mov    0x4(%rax),%eax
    ba8b:	89 45 f0             	mov    %eax,-0x10(%rbp)
    ba8e:	8b 45 f8             	mov    -0x8(%rbp),%eax
    ba91:	89 45 f4             	mov    %eax,-0xc(%rbp)
    ba94:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    ba98:	eb 9b                	jmp    ba35 <_ZN4Heap12heapify_downEv+0x7d>
    ba9a:	8b 45 f4             	mov    -0xc(%rbp),%eax
    ba9d:	01 45 fc             	add    %eax,-0x4(%rbp)
    baa0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    baa4:	8b 55 ec             	mov    -0x14(%rbp),%edx
    baa7:	48 63 d2             	movslq %edx,%rdx
    baaa:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    baae:	8b 48 04             	mov    0x4(%rax),%ecx
    bab1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    bab5:	8b 55 fc             	mov    -0x4(%rbp),%edx
    bab8:	48 63 d2             	movslq %edx,%rdx
    babb:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    babf:	8b 40 04             	mov    0x4(%rax),%eax
    bac2:	39 c1                	cmp    %eax,%ecx
    bac4:	7e 3e                	jle    bb04 <_ZN4Heap12heapify_downEv+0x14c>
    bac6:	8b 45 fc             	mov    -0x4(%rbp),%eax
    bac9:	48 98                	cltq   
    bacb:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    bad2:	00 
    bad3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    bad7:	48 01 c2             	add    %rax,%rdx
    bada:	8b 45 ec             	mov    -0x14(%rbp),%eax
    badd:	48 98                	cltq   
    badf:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    bae6:	00 
    bae7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    baeb:	48 01 c8             	add    %rcx,%rax
    baee:	48 89 d6             	mov    %rdx,%rsi
    baf1:	48 89 c7             	mov    %rax,%rdi
    baf4:	e8 d5 fc ff ff       	callq  b7ce <_Z4swapPP4GridS1_>
    baf9:	8b 45 fc             	mov    -0x4(%rbp),%eax
    bafc:	89 45 ec             	mov    %eax,-0x14(%rbp)
    baff:	e9 c7 fe ff ff       	jmpq   b9cb <_ZN4Heap12heapify_downEv+0x13>
    bb04:	90                   	nop
    bb05:	90                   	nop
    bb06:	90                   	nop
    bb07:	c9                   	leaveq 
    bb08:	c3                   	retq   
    bb09:	90                   	nop

000000000000bb0a <_ZN4Heap3topEv>:
    bb0a:	55                   	push   %rbp
    bb0b:	48 89 e5             	mov    %rsp,%rbp
    bb0e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    bb12:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    bb16:	48 8b 40 08          	mov    0x8(%rax),%rax
    bb1a:	5d                   	pop    %rbp
    bb1b:	c3                   	retq   

000000000000bb1c <_Z5rdtscv>:
    bb1c:	55                   	push   %rbp
    bb1d:	48 89 e5             	mov    %rsp,%rbp
    bb20:	0f 31                	rdtsc  
    bb22:	89 45 f8             	mov    %eax,-0x8(%rbp)
    bb25:	89 55 fc             	mov    %edx,-0x4(%rbp)
    bb28:	8b 45 f8             	mov    -0x8(%rbp),%eax
    bb2b:	8b 55 fc             	mov    -0x4(%rbp),%edx
    bb2e:	48 c1 e2 20          	shl    $0x20,%rdx
    bb32:	48 09 d0             	or     %rdx,%rax
    bb35:	5d                   	pop    %rbp
    bb36:	c3                   	retq   
    bb37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    bb3e:	00 00 

000000000000bb40 <__libc_csu_init>:
    bb40:	41 57                	push   %r15
    bb42:	41 56                	push   %r14
    bb44:	49 89 d7             	mov    %rdx,%r15
    bb47:	41 55                	push   %r13
    bb49:	41 54                	push   %r12
    bb4b:	4c 8d 25 0e 12 20 00 	lea    0x20120e(%rip),%r12        # 20cd60 <__frame_dummy_init_array_entry>
    bb52:	55                   	push   %rbp
    bb53:	48 8d 2d 16 12 20 00 	lea    0x201216(%rip),%rbp        # 20cd70 <__init_array_end>
    bb5a:	53                   	push   %rbx
    bb5b:	41 89 fd             	mov    %edi,%r13d
    bb5e:	49 89 f6             	mov    %rsi,%r14
    bb61:	4c 29 e5             	sub    %r12,%rbp
    bb64:	48 83 ec 08          	sub    $0x8,%rsp
    bb68:	48 c1 fd 03          	sar    $0x3,%rbp
    bb6c:	e8 c7 4c ff ff       	callq  838 <_init>
    bb71:	48 85 ed             	test   %rbp,%rbp
    bb74:	74 20                	je     bb96 <__libc_csu_init+0x56>
    bb76:	31 db                	xor    %ebx,%ebx
    bb78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    bb7f:	00 
    bb80:	4c 89 fa             	mov    %r15,%rdx
    bb83:	4c 89 f6             	mov    %r14,%rsi
    bb86:	44 89 ef             	mov    %r13d,%edi
    bb89:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    bb8d:	48 83 c3 01          	add    $0x1,%rbx
    bb91:	48 39 dd             	cmp    %rbx,%rbp
    bb94:	75 ea                	jne    bb80 <__libc_csu_init+0x40>
    bb96:	48 83 c4 08          	add    $0x8,%rsp
    bb9a:	5b                   	pop    %rbx
    bb9b:	5d                   	pop    %rbp
    bb9c:	41 5c                	pop    %r12
    bb9e:	41 5d                	pop    %r13
    bba0:	41 5e                	pop    %r14
    bba2:	41 5f                	pop    %r15
    bba4:	c3                   	retq   
    bba5:	90                   	nop
    bba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    bbad:	00 00 00 

000000000000bbb0 <__libc_csu_fini>:
    bbb0:	f3 c3                	repz retq 
    bbb2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    bbb9:	00 00 00 
    bbbc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000bbc0 <atexit>:
    bbc0:	48 8b 15 41 14 20 00 	mov    0x201441(%rip),%rdx        # 20d008 <__dso_handle>
    bbc7:	31 f6                	xor    %esi,%esi
    bbc9:	e9 92 4c ff ff       	jmpq   860 <__cxa_atexit@plt>

Disassembly of section .fini:

000000000000bbd0 <_fini>:
    bbd0:	48 83 ec 08          	sub    $0x8,%rsp
    bbd4:	48 83 c4 08          	add    $0x8,%rsp
    bbd8:	c3                   	retq   
