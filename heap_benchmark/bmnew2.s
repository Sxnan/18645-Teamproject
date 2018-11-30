
bm:     file format elf64-x86-64


Disassembly of section .init:

0000000000000870 <_init>:
 870:	48 83 ec 08          	sub    $0x8,%rsp
 874:	48 8d 05 e5 00 00 00 	lea    0xe5(%rip),%rax        # 960 <__gmon_start__>
 87b:	48 85 c0             	test   %rax,%rax
 87e:	74 02                	je     882 <_init+0x12>
 880:	ff d0                	callq  *%rax
 882:	48 83 c4 08          	add    $0x8,%rsp
 886:	c3                   	retq   

Disassembly of section .plt:

0000000000000890 <.plt>:
 890:	ff 35 e2 c6 20 00    	pushq  0x20c6e2(%rip)        # 20cf78 <_GLOBAL_OFFSET_TABLE_+0x8>
 896:	ff 25 e4 c6 20 00    	jmpq   *0x20c6e4(%rip)        # 20cf80 <_GLOBAL_OFFSET_TABLE_+0x10>
 89c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000008a0 <__cxa_atexit@plt>:
 8a0:	ff 25 e2 c6 20 00    	jmpq   *0x20c6e2(%rip)        # 20cf88 <__cxa_atexit@GLIBC_2.2.5>
 8a6:	68 00 00 00 00       	pushq  $0x0
 8ab:	e9 e0 ff ff ff       	jmpq   890 <.plt>

00000000000008b0 <_ZNSolsEy@plt>:
 8b0:	ff 25 da c6 20 00    	jmpq   *0x20c6da(%rip)        # 20cf90 <_ZNSolsEy@GLIBCXX_3.4>
 8b6:	68 01 00 00 00       	pushq  $0x1
 8bb:	e9 d0 ff ff ff       	jmpq   890 <.plt>

00000000000008c0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
 8c0:	ff 25 d2 c6 20 00    	jmpq   *0x20c6d2(%rip)        # 20cf98 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
 8c6:	68 02 00 00 00       	pushq  $0x2
 8cb:	e9 c0 ff ff ff       	jmpq   890 <.plt>

00000000000008d0 <__monstartup@plt>:
 8d0:	ff 25 ca c6 20 00    	jmpq   *0x20c6ca(%rip)        # 20cfa0 <__monstartup@GLIBC_2.2.5>
 8d6:	68 03 00 00 00       	pushq  $0x3
 8db:	e9 b0 ff ff ff       	jmpq   890 <.plt>

00000000000008e0 <_ZNSolsEPFRSoS_E@plt>:
 8e0:	ff 25 c2 c6 20 00    	jmpq   *0x20c6c2(%rip)        # 20cfa8 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
 8e6:	68 04 00 00 00       	pushq  $0x4
 8eb:	e9 a0 ff ff ff       	jmpq   890 <.plt>

00000000000008f0 <__stack_chk_fail@plt>:
 8f0:	ff 25 ba c6 20 00    	jmpq   *0x20c6ba(%rip)        # 20cfb0 <__stack_chk_fail@GLIBC_2.4>
 8f6:	68 05 00 00 00       	pushq  $0x5
 8fb:	e9 90 ff ff ff       	jmpq   890 <.plt>

0000000000000900 <_ZNSt8ios_base4InitC1Ev@plt>:
 900:	ff 25 b2 c6 20 00    	jmpq   *0x20c6b2(%rip)        # 20cfb8 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
 906:	68 06 00 00 00       	pushq  $0x6
 90b:	e9 80 ff ff ff       	jmpq   890 <.plt>

0000000000000910 <_ZNSolsEi@plt>:
 910:	ff 25 aa c6 20 00    	jmpq   *0x20c6aa(%rip)        # 20cfc0 <_ZNSolsEi@GLIBCXX_3.4>
 916:	68 07 00 00 00       	pushq  $0x7
 91b:	e9 70 ff ff ff       	jmpq   890 <.plt>

Disassembly of section .plt.got:

0000000000000920 <__cxa_finalize@plt>:
 920:	ff 25 a2 c6 20 00    	jmpq   *0x20c6a2(%rip)        # 20cfc8 <__cxa_finalize@GLIBC_2.2.5>
 926:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000930 <_start>:
     930:	31 ed                	xor    %ebp,%ebp
     932:	49 89 d1             	mov    %rdx,%r9
     935:	5e                   	pop    %rsi
     936:	48 89 e2             	mov    %rsp,%rdx
     939:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
     93d:	50                   	push   %rax
     93e:	54                   	push   %rsp
     93f:	4c 8d 05 ba b3 00 00 	lea    0xb3ba(%rip),%r8        # bd00 <__libc_csu_fini>
     946:	48 8d 0d 43 b3 00 00 	lea    0xb343(%rip),%rcx        # bc90 <__libc_csu_init>
     94d:	48 8d 3d 8a 01 00 00 	lea    0x18a(%rip),%rdi        # ade <main>
     954:	ff 15 8e c6 20 00    	callq  *0x20c68e(%rip)        # 20cfe8 <__libc_start_main@GLIBC_2.2.5>
     95a:	f4                   	hlt    
     95b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000960 <__gmon_start__>:
     960:	8b 05 ca c7 20 00    	mov    0x20c7ca(%rip),%eax        # 20d130 <called.4604>
     966:	85 c0                	test   %eax,%eax
     968:	74 06                	je     970 <__gmon_start__+0x10>
     96a:	f3 c3                	repz retq 
     96c:	0f 1f 40 00          	nopl   0x0(%rax)
     970:	48 83 ec 08          	sub    $0x8,%rsp
     974:	48 8d 3d b5 ff ff ff 	lea    -0x4b(%rip),%rdi        # 930 <_start>
     97b:	48 8d 35 a7 b3 00 00 	lea    0xb3a7(%rip),%rsi        # bd29 <etext>
     982:	c7 05 a4 c7 20 00 01 	movl   $0x1,0x20c7a4(%rip)        # 20d130 <called.4604>
     989:	00 00 00 
     98c:	e8 3f ff ff ff       	callq  8d0 <__monstartup@plt>
     991:	48 8b 3d 40 c6 20 00 	mov    0x20c640(%rip),%rdi        # 20cfd8 <_mcleanup@GLIBC_2.2.5>
     998:	48 83 c4 08          	add    $0x8,%rsp
     99c:	e9 6f b3 00 00       	jmpq   bd10 <atexit>
     9a1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     9a8:	00 00 00 
     9ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000009b0 <_dl_relocate_static_pie>:
     9b0:	f3 c3                	repz retq 
     9b2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     9b9:	00 00 00 
     9bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000009c0 <deregister_tm_clones>:
     9c0:	48 8d 3d 49 c6 20 00 	lea    0x20c649(%rip),%rdi        # 20d010 <__TMC_END__>
     9c7:	55                   	push   %rbp
     9c8:	48 8d 05 41 c6 20 00 	lea    0x20c641(%rip),%rax        # 20d010 <__TMC_END__>
     9cf:	48 39 f8             	cmp    %rdi,%rax
     9d2:	48 89 e5             	mov    %rsp,%rbp
     9d5:	74 19                	je     9f0 <deregister_tm_clones+0x30>
     9d7:	48 8b 05 02 c6 20 00 	mov    0x20c602(%rip),%rax        # 20cfe0 <_ITM_deregisterTMCloneTable>
     9de:	48 85 c0             	test   %rax,%rax
     9e1:	74 0d                	je     9f0 <deregister_tm_clones+0x30>
     9e3:	5d                   	pop    %rbp
     9e4:	ff e0                	jmpq   *%rax
     9e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     9ed:	00 00 00 
     9f0:	5d                   	pop    %rbp
     9f1:	c3                   	retq   
     9f2:	0f 1f 40 00          	nopl   0x0(%rax)
     9f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     9fd:	00 00 00 

0000000000000a00 <register_tm_clones>:
     a00:	48 8d 3d 09 c6 20 00 	lea    0x20c609(%rip),%rdi        # 20d010 <__TMC_END__>
     a07:	48 8d 35 02 c6 20 00 	lea    0x20c602(%rip),%rsi        # 20d010 <__TMC_END__>
     a0e:	55                   	push   %rbp
     a0f:	48 29 fe             	sub    %rdi,%rsi
     a12:	48 89 e5             	mov    %rsp,%rbp
     a15:	48 c1 fe 03          	sar    $0x3,%rsi
     a19:	48 89 f0             	mov    %rsi,%rax
     a1c:	48 c1 e8 3f          	shr    $0x3f,%rax
     a20:	48 01 c6             	add    %rax,%rsi
     a23:	48 d1 fe             	sar    %rsi
     a26:	74 18                	je     a40 <register_tm_clones+0x40>
     a28:	48 8b 05 c1 c5 20 00 	mov    0x20c5c1(%rip),%rax        # 20cff0 <_ITM_registerTMCloneTable>
     a2f:	48 85 c0             	test   %rax,%rax
     a32:	74 0c                	je     a40 <register_tm_clones+0x40>
     a34:	5d                   	pop    %rbp
     a35:	ff e0                	jmpq   *%rax
     a37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     a3e:	00 00 
     a40:	5d                   	pop    %rbp
     a41:	c3                   	retq   
     a42:	0f 1f 40 00          	nopl   0x0(%rax)
     a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
     a4d:	00 00 00 

0000000000000a50 <__do_global_dtors_aux>:
     a50:	80 3d dd c6 20 00 00 	cmpb   $0x0,0x20c6dd(%rip)        # 20d134 <completed.7696>
     a57:	75 2f                	jne    a88 <__do_global_dtors_aux+0x38>
     a59:	48 83 3d 67 c5 20 00 	cmpq   $0x0,0x20c567(%rip)        # 20cfc8 <__cxa_finalize@GLIBC_2.2.5>
     a60:	00 
     a61:	55                   	push   %rbp
     a62:	48 89 e5             	mov    %rsp,%rbp
     a65:	74 0c                	je     a73 <__do_global_dtors_aux+0x23>
     a67:	48 8b 3d 9a c5 20 00 	mov    0x20c59a(%rip),%rdi        # 20d008 <__dso_handle>
     a6e:	e8 ad fe ff ff       	callq  920 <__cxa_finalize@plt>
     a73:	e8 48 ff ff ff       	callq  9c0 <deregister_tm_clones>
     a78:	c6 05 b5 c6 20 00 01 	movb   $0x1,0x20c6b5(%rip)        # 20d134 <completed.7696>
     a7f:	5d                   	pop    %rbp
     a80:	c3                   	retq   
     a81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     a88:	f3 c3                	repz retq 
     a8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000a90 <frame_dummy>:
     a90:	55                   	push   %rbp
     a91:	48 89 e5             	mov    %rsp,%rbp
     a94:	5d                   	pop    %rbp
     a95:	e9 66 ff ff ff       	jmpq   a00 <register_tm_clones>

0000000000000a9a <_Z10init_gridsP4Grid>:
     a9a:	55                   	push   %rbp
     a9b:	48 89 e5             	mov    %rsp,%rbp
     a9e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
     aa2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
     aa9:	81 7d fc 8f 01 00 00 	cmpl   $0x18f,-0x4(%rbp)
     ab0:	7f 29                	jg     adb <_Z10init_gridsP4Grid+0x41>
     ab2:	8b 45 fc             	mov    -0x4(%rbp),%eax
     ab5:	48 63 d0             	movslq %eax,%rdx
     ab8:	48 89 d0             	mov    %rdx,%rax
     abb:	48 01 c0             	add    %rax,%rax
     abe:	48 01 d0             	add    %rdx,%rax
     ac1:	48 c1 e0 02          	shl    $0x2,%rax
     ac5:	48 89 c2             	mov    %rax,%rdx
     ac8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
     acc:	48 01 c2             	add    %rax,%rdx
     acf:	8b 45 fc             	mov    -0x4(%rbp),%eax
     ad2:	89 42 04             	mov    %eax,0x4(%rdx)
     ad5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
     ad9:	eb ce                	jmp    aa9 <_Z10init_gridsP4Grid+0xf>
     adb:	90                   	nop
     adc:	5d                   	pop    %rbp
     add:	c3                   	retq   

0000000000000ade <main>:
     ade:	55                   	push   %rbp
     adf:	48 89 e5             	mov    %rsp,%rbp
     ae2:	48 81 ec f0 12 20 00 	sub    $0x2012f0,%rsp
     ae9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     af0:	00 00 
     af2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     af6:	31 c0                	xor    %eax,%eax
     af8:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     aff:	48 89 c7             	mov    %rax,%rdi
     b02:	e8 e7 ad 00 00       	callq  b8ee <_ZN4HeapC1Ev>
     b07:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     b0e:	48 89 c7             	mov    %rax,%rdi
     b11:	e8 84 ff ff ff       	callq  a9a <_Z10init_gridsP4Grid>
     b16:	c7 85 1c ed df ff 02 	movl   $0x2,-0x2012e4(%rbp)
     b1d:	00 00 00 
     b20:	81 bd 1c ed df ff 90 	cmpl   $0x190,-0x2012e4(%rbp)
     b27:	01 00 00 
     b2a:	7f 3c                	jg     b68 <main+0x8a>
     b2c:	48 8d 8d 30 ed df ff 	lea    -0x2012d0(%rbp),%rcx
     b33:	8b 85 1c ed df ff    	mov    -0x2012e4(%rbp),%eax
     b39:	48 63 d0             	movslq %eax,%rdx
     b3c:	48 89 d0             	mov    %rdx,%rax
     b3f:	48 01 c0             	add    %rax,%rax
     b42:	48 01 d0             	add    %rdx,%rax
     b45:	48 c1 e0 02          	shl    $0x2,%rax
     b49:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
     b4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     b54:	48 89 d6             	mov    %rdx,%rsi
     b57:	48 89 c7             	mov    %rax,%rdi
     b5a:	e8 cb ad 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     b5f:	83 85 1c ed df ff 01 	addl   $0x1,-0x2012e4(%rbp)
     b66:	eb b8                	jmp    b20 <main+0x42>
     b68:	e8 fd b0 00 00       	callq  bc6a <_Z5rdtscv>
     b6d:	48 89 85 20 ed df ff 	mov    %rax,-0x2012e0(%rbp)
     b74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     b7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     b7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     b86:	48 89 d6             	mov    %rdx,%rsi
     b89:	48 89 c7             	mov    %rax,%rdi
     b8c:	e8 99 ad 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     b91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     b98:	48 89 c7             	mov    %rax,%rdi
     b9b:	e8 e2 ae 00 00       	callq  ba82 <_ZN4Heap3popEv>
     ba0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     ba7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     bab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     bb2:	48 89 d6             	mov    %rdx,%rsi
     bb5:	48 89 c7             	mov    %rax,%rdi
     bb8:	e8 6d ad 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     bbd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     bc4:	48 89 c7             	mov    %rax,%rdi
     bc7:	e8 b6 ae 00 00       	callq  ba82 <_ZN4Heap3popEv>
     bcc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     bd3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     bd7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     bde:	48 89 d6             	mov    %rdx,%rsi
     be1:	48 89 c7             	mov    %rax,%rdi
     be4:	e8 41 ad 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     be9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     bf0:	48 89 c7             	mov    %rax,%rdi
     bf3:	e8 8a ae 00 00       	callq  ba82 <_ZN4Heap3popEv>
     bf8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     bff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     c03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c0a:	48 89 d6             	mov    %rdx,%rsi
     c0d:	48 89 c7             	mov    %rax,%rdi
     c10:	e8 15 ad 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     c15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c1c:	48 89 c7             	mov    %rax,%rdi
     c1f:	e8 5e ae 00 00       	callq  ba82 <_ZN4Heap3popEv>
     c24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     c2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     c2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c36:	48 89 d6             	mov    %rdx,%rsi
     c39:	48 89 c7             	mov    %rax,%rdi
     c3c:	e8 e9 ac 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     c41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c48:	48 89 c7             	mov    %rax,%rdi
     c4b:	e8 32 ae 00 00       	callq  ba82 <_ZN4Heap3popEv>
     c50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     c57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     c5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c62:	48 89 d6             	mov    %rdx,%rsi
     c65:	48 89 c7             	mov    %rax,%rdi
     c68:	e8 bd ac 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     c6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c74:	48 89 c7             	mov    %rax,%rdi
     c77:	e8 06 ae 00 00       	callq  ba82 <_ZN4Heap3popEv>
     c7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     c83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     c87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     c8e:	48 89 d6             	mov    %rdx,%rsi
     c91:	48 89 c7             	mov    %rax,%rdi
     c94:	e8 91 ac 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     c99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ca0:	48 89 c7             	mov    %rax,%rdi
     ca3:	e8 da ad 00 00       	callq  ba82 <_ZN4Heap3popEv>
     ca8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     caf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     cb3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     cba:	48 89 d6             	mov    %rdx,%rsi
     cbd:	48 89 c7             	mov    %rax,%rdi
     cc0:	e8 65 ac 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     cc5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ccc:	48 89 c7             	mov    %rax,%rdi
     ccf:	e8 ae ad 00 00       	callq  ba82 <_ZN4Heap3popEv>
     cd4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     cdb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     cdf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ce6:	48 89 d6             	mov    %rdx,%rsi
     ce9:	48 89 c7             	mov    %rax,%rdi
     cec:	e8 39 ac 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     cf1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     cf8:	48 89 c7             	mov    %rax,%rdi
     cfb:	e8 82 ad 00 00       	callq  ba82 <_ZN4Heap3popEv>
     d00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     d07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     d0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d12:	48 89 d6             	mov    %rdx,%rsi
     d15:	48 89 c7             	mov    %rax,%rdi
     d18:	e8 0d ac 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     d1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d24:	48 89 c7             	mov    %rax,%rdi
     d27:	e8 56 ad 00 00       	callq  ba82 <_ZN4Heap3popEv>
     d2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     d33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     d37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d3e:	48 89 d6             	mov    %rdx,%rsi
     d41:	48 89 c7             	mov    %rax,%rdi
     d44:	e8 e1 ab 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     d49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d50:	48 89 c7             	mov    %rax,%rdi
     d53:	e8 2a ad 00 00       	callq  ba82 <_ZN4Heap3popEv>
     d58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     d5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     d63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d6a:	48 89 d6             	mov    %rdx,%rsi
     d6d:	48 89 c7             	mov    %rax,%rdi
     d70:	e8 b5 ab 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     d75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d7c:	48 89 c7             	mov    %rax,%rdi
     d7f:	e8 fe ac 00 00       	callq  ba82 <_ZN4Heap3popEv>
     d84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     d8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     d8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     d96:	48 89 d6             	mov    %rdx,%rsi
     d99:	48 89 c7             	mov    %rax,%rdi
     d9c:	e8 89 ab 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     da1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     da8:	48 89 c7             	mov    %rax,%rdi
     dab:	e8 d2 ac 00 00       	callq  ba82 <_ZN4Heap3popEv>
     db0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     db7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     dbb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     dc2:	48 89 d6             	mov    %rdx,%rsi
     dc5:	48 89 c7             	mov    %rax,%rdi
     dc8:	e8 5d ab 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     dcd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     dd4:	48 89 c7             	mov    %rax,%rdi
     dd7:	e8 a6 ac 00 00       	callq  ba82 <_ZN4Heap3popEv>
     ddc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     de3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     de7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     dee:	48 89 d6             	mov    %rdx,%rsi
     df1:	48 89 c7             	mov    %rax,%rdi
     df4:	e8 31 ab 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     df9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e00:	48 89 c7             	mov    %rax,%rdi
     e03:	e8 7a ac 00 00       	callq  ba82 <_ZN4Heap3popEv>
     e08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     e0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     e13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e1a:	48 89 d6             	mov    %rdx,%rsi
     e1d:	48 89 c7             	mov    %rax,%rdi
     e20:	e8 05 ab 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     e25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e2c:	48 89 c7             	mov    %rax,%rdi
     e2f:	e8 4e ac 00 00       	callq  ba82 <_ZN4Heap3popEv>
     e34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     e3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     e3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e46:	48 89 d6             	mov    %rdx,%rsi
     e49:	48 89 c7             	mov    %rax,%rdi
     e4c:	e8 d9 aa 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     e51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e58:	48 89 c7             	mov    %rax,%rdi
     e5b:	e8 22 ac 00 00       	callq  ba82 <_ZN4Heap3popEv>
     e60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     e67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     e6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e72:	48 89 d6             	mov    %rdx,%rsi
     e75:	48 89 c7             	mov    %rax,%rdi
     e78:	e8 ad aa 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     e7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e84:	48 89 c7             	mov    %rax,%rdi
     e87:	e8 f6 ab 00 00       	callq  ba82 <_ZN4Heap3popEv>
     e8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     e93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     e97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     e9e:	48 89 d6             	mov    %rdx,%rsi
     ea1:	48 89 c7             	mov    %rax,%rdi
     ea4:	e8 81 aa 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     ea9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     eb0:	48 89 c7             	mov    %rax,%rdi
     eb3:	e8 ca ab 00 00       	callq  ba82 <_ZN4Heap3popEv>
     eb8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     ebf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     ec3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     eca:	48 89 d6             	mov    %rdx,%rsi
     ecd:	48 89 c7             	mov    %rax,%rdi
     ed0:	e8 55 aa 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     ed5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     edc:	48 89 c7             	mov    %rax,%rdi
     edf:	e8 9e ab 00 00       	callq  ba82 <_ZN4Heap3popEv>
     ee4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     eeb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     eef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ef6:	48 89 d6             	mov    %rdx,%rsi
     ef9:	48 89 c7             	mov    %rax,%rdi
     efc:	e8 29 aa 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     f01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f08:	48 89 c7             	mov    %rax,%rdi
     f0b:	e8 72 ab 00 00       	callq  ba82 <_ZN4Heap3popEv>
     f10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     f17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     f1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f22:	48 89 d6             	mov    %rdx,%rsi
     f25:	48 89 c7             	mov    %rax,%rdi
     f28:	e8 fd a9 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     f2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f34:	48 89 c7             	mov    %rax,%rdi
     f37:	e8 46 ab 00 00       	callq  ba82 <_ZN4Heap3popEv>
     f3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     f43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     f47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f4e:	48 89 d6             	mov    %rdx,%rsi
     f51:	48 89 c7             	mov    %rax,%rdi
     f54:	e8 d1 a9 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     f59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f60:	48 89 c7             	mov    %rax,%rdi
     f63:	e8 1a ab 00 00       	callq  ba82 <_ZN4Heap3popEv>
     f68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     f6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     f73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f7a:	48 89 d6             	mov    %rdx,%rsi
     f7d:	48 89 c7             	mov    %rax,%rdi
     f80:	e8 a5 a9 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     f85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     f8c:	48 89 c7             	mov    %rax,%rdi
     f8f:	e8 ee aa 00 00       	callq  ba82 <_ZN4Heap3popEv>
     f94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     f9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     f9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     fa6:	48 89 d6             	mov    %rdx,%rsi
     fa9:	48 89 c7             	mov    %rax,%rdi
     fac:	e8 79 a9 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     fb1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     fb8:	48 89 c7             	mov    %rax,%rdi
     fbb:	e8 c2 aa 00 00       	callq  ba82 <_ZN4Heap3popEv>
     fc0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     fc7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     fcb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     fd2:	48 89 d6             	mov    %rdx,%rsi
     fd5:	48 89 c7             	mov    %rax,%rdi
     fd8:	e8 4d a9 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
     fdd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     fe4:	48 89 c7             	mov    %rax,%rdi
     fe7:	e8 96 aa 00 00       	callq  ba82 <_ZN4Heap3popEv>
     fec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
     ff3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
     ff7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
     ffe:	48 89 d6             	mov    %rdx,%rsi
    1001:	48 89 c7             	mov    %rax,%rdi
    1004:	e8 21 a9 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1009:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1010:	48 89 c7             	mov    %rax,%rdi
    1013:	e8 6a aa 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1018:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    101f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1023:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    102a:	48 89 d6             	mov    %rdx,%rsi
    102d:	48 89 c7             	mov    %rax,%rdi
    1030:	e8 f5 a8 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1035:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    103c:	48 89 c7             	mov    %rax,%rdi
    103f:	e8 3e aa 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1044:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    104b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    104f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1056:	48 89 d6             	mov    %rdx,%rsi
    1059:	48 89 c7             	mov    %rax,%rdi
    105c:	e8 c9 a8 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1061:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1068:	48 89 c7             	mov    %rax,%rdi
    106b:	e8 12 aa 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1070:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1077:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    107b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1082:	48 89 d6             	mov    %rdx,%rsi
    1085:	48 89 c7             	mov    %rax,%rdi
    1088:	e8 9d a8 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    108d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1094:	48 89 c7             	mov    %rax,%rdi
    1097:	e8 e6 a9 00 00       	callq  ba82 <_ZN4Heap3popEv>
    109c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    10a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    10a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    10ae:	48 89 d6             	mov    %rdx,%rsi
    10b1:	48 89 c7             	mov    %rax,%rdi
    10b4:	e8 71 a8 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    10b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    10c0:	48 89 c7             	mov    %rax,%rdi
    10c3:	e8 ba a9 00 00       	callq  ba82 <_ZN4Heap3popEv>
    10c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    10cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    10d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    10da:	48 89 d6             	mov    %rdx,%rsi
    10dd:	48 89 c7             	mov    %rax,%rdi
    10e0:	e8 45 a8 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    10e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    10ec:	48 89 c7             	mov    %rax,%rdi
    10ef:	e8 8e a9 00 00       	callq  ba82 <_ZN4Heap3popEv>
    10f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    10fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    10ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1106:	48 89 d6             	mov    %rdx,%rsi
    1109:	48 89 c7             	mov    %rax,%rdi
    110c:	e8 19 a8 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1111:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1118:	48 89 c7             	mov    %rax,%rdi
    111b:	e8 62 a9 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1120:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1127:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    112b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1132:	48 89 d6             	mov    %rdx,%rsi
    1135:	48 89 c7             	mov    %rax,%rdi
    1138:	e8 ed a7 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    113d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1144:	48 89 c7             	mov    %rax,%rdi
    1147:	e8 36 a9 00 00       	callq  ba82 <_ZN4Heap3popEv>
    114c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1153:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1157:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    115e:	48 89 d6             	mov    %rdx,%rsi
    1161:	48 89 c7             	mov    %rax,%rdi
    1164:	e8 c1 a7 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1169:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1170:	48 89 c7             	mov    %rax,%rdi
    1173:	e8 0a a9 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1178:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    117f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1183:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    118a:	48 89 d6             	mov    %rdx,%rsi
    118d:	48 89 c7             	mov    %rax,%rdi
    1190:	e8 95 a7 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1195:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    119c:	48 89 c7             	mov    %rax,%rdi
    119f:	e8 de a8 00 00       	callq  ba82 <_ZN4Heap3popEv>
    11a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    11ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    11af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    11b6:	48 89 d6             	mov    %rdx,%rsi
    11b9:	48 89 c7             	mov    %rax,%rdi
    11bc:	e8 69 a7 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    11c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    11c8:	48 89 c7             	mov    %rax,%rdi
    11cb:	e8 b2 a8 00 00       	callq  ba82 <_ZN4Heap3popEv>
    11d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    11d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    11db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    11e2:	48 89 d6             	mov    %rdx,%rsi
    11e5:	48 89 c7             	mov    %rax,%rdi
    11e8:	e8 3d a7 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    11ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    11f4:	48 89 c7             	mov    %rax,%rdi
    11f7:	e8 86 a8 00 00       	callq  ba82 <_ZN4Heap3popEv>
    11fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1203:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1207:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    120e:	48 89 d6             	mov    %rdx,%rsi
    1211:	48 89 c7             	mov    %rax,%rdi
    1214:	e8 11 a7 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1219:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1220:	48 89 c7             	mov    %rax,%rdi
    1223:	e8 5a a8 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1228:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    122f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1233:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    123a:	48 89 d6             	mov    %rdx,%rsi
    123d:	48 89 c7             	mov    %rax,%rdi
    1240:	e8 e5 a6 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1245:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    124c:	48 89 c7             	mov    %rax,%rdi
    124f:	e8 2e a8 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1254:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    125b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    125f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1266:	48 89 d6             	mov    %rdx,%rsi
    1269:	48 89 c7             	mov    %rax,%rdi
    126c:	e8 b9 a6 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1271:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1278:	48 89 c7             	mov    %rax,%rdi
    127b:	e8 02 a8 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1280:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1287:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    128b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1292:	48 89 d6             	mov    %rdx,%rsi
    1295:	48 89 c7             	mov    %rax,%rdi
    1298:	e8 8d a6 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    129d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    12a4:	48 89 c7             	mov    %rax,%rdi
    12a7:	e8 d6 a7 00 00       	callq  ba82 <_ZN4Heap3popEv>
    12ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    12b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    12b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    12be:	48 89 d6             	mov    %rdx,%rsi
    12c1:	48 89 c7             	mov    %rax,%rdi
    12c4:	e8 61 a6 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    12c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    12d0:	48 89 c7             	mov    %rax,%rdi
    12d3:	e8 aa a7 00 00       	callq  ba82 <_ZN4Heap3popEv>
    12d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    12df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    12e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    12ea:	48 89 d6             	mov    %rdx,%rsi
    12ed:	48 89 c7             	mov    %rax,%rdi
    12f0:	e8 35 a6 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    12f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    12fc:	48 89 c7             	mov    %rax,%rdi
    12ff:	e8 7e a7 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1304:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    130b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    130f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1316:	48 89 d6             	mov    %rdx,%rsi
    1319:	48 89 c7             	mov    %rax,%rdi
    131c:	e8 09 a6 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1321:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1328:	48 89 c7             	mov    %rax,%rdi
    132b:	e8 52 a7 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1330:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1337:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    133b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1342:	48 89 d6             	mov    %rdx,%rsi
    1345:	48 89 c7             	mov    %rax,%rdi
    1348:	e8 dd a5 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    134d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1354:	48 89 c7             	mov    %rax,%rdi
    1357:	e8 26 a7 00 00       	callq  ba82 <_ZN4Heap3popEv>
    135c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1363:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1367:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    136e:	48 89 d6             	mov    %rdx,%rsi
    1371:	48 89 c7             	mov    %rax,%rdi
    1374:	e8 b1 a5 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1379:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1380:	48 89 c7             	mov    %rax,%rdi
    1383:	e8 fa a6 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1388:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    138f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1393:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    139a:	48 89 d6             	mov    %rdx,%rsi
    139d:	48 89 c7             	mov    %rax,%rdi
    13a0:	e8 85 a5 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    13a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    13ac:	48 89 c7             	mov    %rax,%rdi
    13af:	e8 ce a6 00 00       	callq  ba82 <_ZN4Heap3popEv>
    13b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    13bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    13bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    13c6:	48 89 d6             	mov    %rdx,%rsi
    13c9:	48 89 c7             	mov    %rax,%rdi
    13cc:	e8 59 a5 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    13d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    13d8:	48 89 c7             	mov    %rax,%rdi
    13db:	e8 a2 a6 00 00       	callq  ba82 <_ZN4Heap3popEv>
    13e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    13e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    13eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    13f2:	48 89 d6             	mov    %rdx,%rsi
    13f5:	48 89 c7             	mov    %rax,%rdi
    13f8:	e8 2d a5 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    13fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1404:	48 89 c7             	mov    %rax,%rdi
    1407:	e8 76 a6 00 00       	callq  ba82 <_ZN4Heap3popEv>
    140c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1413:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1417:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    141e:	48 89 d6             	mov    %rdx,%rsi
    1421:	48 89 c7             	mov    %rax,%rdi
    1424:	e8 01 a5 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1429:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1430:	48 89 c7             	mov    %rax,%rdi
    1433:	e8 4a a6 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1438:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    143f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1443:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    144a:	48 89 d6             	mov    %rdx,%rsi
    144d:	48 89 c7             	mov    %rax,%rdi
    1450:	e8 d5 a4 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1455:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    145c:	48 89 c7             	mov    %rax,%rdi
    145f:	e8 1e a6 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1464:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    146b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    146f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1476:	48 89 d6             	mov    %rdx,%rsi
    1479:	48 89 c7             	mov    %rax,%rdi
    147c:	e8 a9 a4 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1481:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1488:	48 89 c7             	mov    %rax,%rdi
    148b:	e8 f2 a5 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1490:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1497:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    149b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    14a2:	48 89 d6             	mov    %rdx,%rsi
    14a5:	48 89 c7             	mov    %rax,%rdi
    14a8:	e8 7d a4 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    14ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    14b4:	48 89 c7             	mov    %rax,%rdi
    14b7:	e8 c6 a5 00 00       	callq  ba82 <_ZN4Heap3popEv>
    14bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    14c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    14c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    14ce:	48 89 d6             	mov    %rdx,%rsi
    14d1:	48 89 c7             	mov    %rax,%rdi
    14d4:	e8 51 a4 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    14d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    14e0:	48 89 c7             	mov    %rax,%rdi
    14e3:	e8 9a a5 00 00       	callq  ba82 <_ZN4Heap3popEv>
    14e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    14ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    14f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    14fa:	48 89 d6             	mov    %rdx,%rsi
    14fd:	48 89 c7             	mov    %rax,%rdi
    1500:	e8 25 a4 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1505:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    150c:	48 89 c7             	mov    %rax,%rdi
    150f:	e8 6e a5 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1514:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    151b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    151f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1526:	48 89 d6             	mov    %rdx,%rsi
    1529:	48 89 c7             	mov    %rax,%rdi
    152c:	e8 f9 a3 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1531:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1538:	48 89 c7             	mov    %rax,%rdi
    153b:	e8 42 a5 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1540:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1547:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    154b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1552:	48 89 d6             	mov    %rdx,%rsi
    1555:	48 89 c7             	mov    %rax,%rdi
    1558:	e8 cd a3 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    155d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1564:	48 89 c7             	mov    %rax,%rdi
    1567:	e8 16 a5 00 00       	callq  ba82 <_ZN4Heap3popEv>
    156c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1573:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1577:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    157e:	48 89 d6             	mov    %rdx,%rsi
    1581:	48 89 c7             	mov    %rax,%rdi
    1584:	e8 a1 a3 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1589:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1590:	48 89 c7             	mov    %rax,%rdi
    1593:	e8 ea a4 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1598:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    159f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    15a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    15aa:	48 89 d6             	mov    %rdx,%rsi
    15ad:	48 89 c7             	mov    %rax,%rdi
    15b0:	e8 75 a3 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    15b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    15bc:	48 89 c7             	mov    %rax,%rdi
    15bf:	e8 be a4 00 00       	callq  ba82 <_ZN4Heap3popEv>
    15c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    15cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    15cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    15d6:	48 89 d6             	mov    %rdx,%rsi
    15d9:	48 89 c7             	mov    %rax,%rdi
    15dc:	e8 49 a3 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    15e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    15e8:	48 89 c7             	mov    %rax,%rdi
    15eb:	e8 92 a4 00 00       	callq  ba82 <_ZN4Heap3popEv>
    15f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    15f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    15fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1602:	48 89 d6             	mov    %rdx,%rsi
    1605:	48 89 c7             	mov    %rax,%rdi
    1608:	e8 1d a3 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    160d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1614:	48 89 c7             	mov    %rax,%rdi
    1617:	e8 66 a4 00 00       	callq  ba82 <_ZN4Heap3popEv>
    161c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1623:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1627:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    162e:	48 89 d6             	mov    %rdx,%rsi
    1631:	48 89 c7             	mov    %rax,%rdi
    1634:	e8 f1 a2 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1639:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1640:	48 89 c7             	mov    %rax,%rdi
    1643:	e8 3a a4 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1648:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    164f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1653:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    165a:	48 89 d6             	mov    %rdx,%rsi
    165d:	48 89 c7             	mov    %rax,%rdi
    1660:	e8 c5 a2 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1665:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    166c:	48 89 c7             	mov    %rax,%rdi
    166f:	e8 0e a4 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1674:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    167b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    167f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1686:	48 89 d6             	mov    %rdx,%rsi
    1689:	48 89 c7             	mov    %rax,%rdi
    168c:	e8 99 a2 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1691:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1698:	48 89 c7             	mov    %rax,%rdi
    169b:	e8 e2 a3 00 00       	callq  ba82 <_ZN4Heap3popEv>
    16a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    16a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    16ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    16b2:	48 89 d6             	mov    %rdx,%rsi
    16b5:	48 89 c7             	mov    %rax,%rdi
    16b8:	e8 6d a2 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    16bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    16c4:	48 89 c7             	mov    %rax,%rdi
    16c7:	e8 b6 a3 00 00       	callq  ba82 <_ZN4Heap3popEv>
    16cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    16d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    16d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    16de:	48 89 d6             	mov    %rdx,%rsi
    16e1:	48 89 c7             	mov    %rax,%rdi
    16e4:	e8 41 a2 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    16e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    16f0:	48 89 c7             	mov    %rax,%rdi
    16f3:	e8 8a a3 00 00       	callq  ba82 <_ZN4Heap3popEv>
    16f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    16ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1703:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    170a:	48 89 d6             	mov    %rdx,%rsi
    170d:	48 89 c7             	mov    %rax,%rdi
    1710:	e8 15 a2 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1715:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    171c:	48 89 c7             	mov    %rax,%rdi
    171f:	e8 5e a3 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1724:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    172b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    172f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1736:	48 89 d6             	mov    %rdx,%rsi
    1739:	48 89 c7             	mov    %rax,%rdi
    173c:	e8 e9 a1 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1741:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1748:	48 89 c7             	mov    %rax,%rdi
    174b:	e8 32 a3 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1750:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1757:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    175b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1762:	48 89 d6             	mov    %rdx,%rsi
    1765:	48 89 c7             	mov    %rax,%rdi
    1768:	e8 bd a1 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    176d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1774:	48 89 c7             	mov    %rax,%rdi
    1777:	e8 06 a3 00 00       	callq  ba82 <_ZN4Heap3popEv>
    177c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1783:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1787:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    178e:	48 89 d6             	mov    %rdx,%rsi
    1791:	48 89 c7             	mov    %rax,%rdi
    1794:	e8 91 a1 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1799:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    17a0:	48 89 c7             	mov    %rax,%rdi
    17a3:	e8 da a2 00 00       	callq  ba82 <_ZN4Heap3popEv>
    17a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    17af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    17b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    17ba:	48 89 d6             	mov    %rdx,%rsi
    17bd:	48 89 c7             	mov    %rax,%rdi
    17c0:	e8 65 a1 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    17c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    17cc:	48 89 c7             	mov    %rax,%rdi
    17cf:	e8 ae a2 00 00       	callq  ba82 <_ZN4Heap3popEv>
    17d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    17db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    17df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    17e6:	48 89 d6             	mov    %rdx,%rsi
    17e9:	48 89 c7             	mov    %rax,%rdi
    17ec:	e8 39 a1 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    17f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    17f8:	48 89 c7             	mov    %rax,%rdi
    17fb:	e8 82 a2 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1800:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1807:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    180b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1812:	48 89 d6             	mov    %rdx,%rsi
    1815:	48 89 c7             	mov    %rax,%rdi
    1818:	e8 0d a1 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    181d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1824:	48 89 c7             	mov    %rax,%rdi
    1827:	e8 56 a2 00 00       	callq  ba82 <_ZN4Heap3popEv>
    182c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1833:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1837:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    183e:	48 89 d6             	mov    %rdx,%rsi
    1841:	48 89 c7             	mov    %rax,%rdi
    1844:	e8 e1 a0 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1849:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1850:	48 89 c7             	mov    %rax,%rdi
    1853:	e8 2a a2 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1858:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    185f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1863:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    186a:	48 89 d6             	mov    %rdx,%rsi
    186d:	48 89 c7             	mov    %rax,%rdi
    1870:	e8 b5 a0 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1875:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    187c:	48 89 c7             	mov    %rax,%rdi
    187f:	e8 fe a1 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1884:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    188b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    188f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1896:	48 89 d6             	mov    %rdx,%rsi
    1899:	48 89 c7             	mov    %rax,%rdi
    189c:	e8 89 a0 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    18a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    18a8:	48 89 c7             	mov    %rax,%rdi
    18ab:	e8 d2 a1 00 00       	callq  ba82 <_ZN4Heap3popEv>
    18b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    18b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    18bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    18c2:	48 89 d6             	mov    %rdx,%rsi
    18c5:	48 89 c7             	mov    %rax,%rdi
    18c8:	e8 5d a0 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    18cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    18d4:	48 89 c7             	mov    %rax,%rdi
    18d7:	e8 a6 a1 00 00       	callq  ba82 <_ZN4Heap3popEv>
    18dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    18e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    18e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    18ee:	48 89 d6             	mov    %rdx,%rsi
    18f1:	48 89 c7             	mov    %rax,%rdi
    18f4:	e8 31 a0 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    18f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1900:	48 89 c7             	mov    %rax,%rdi
    1903:	e8 7a a1 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1908:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    190f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1913:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    191a:	48 89 d6             	mov    %rdx,%rsi
    191d:	48 89 c7             	mov    %rax,%rdi
    1920:	e8 05 a0 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1925:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    192c:	48 89 c7             	mov    %rax,%rdi
    192f:	e8 4e a1 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1934:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    193b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    193f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1946:	48 89 d6             	mov    %rdx,%rsi
    1949:	48 89 c7             	mov    %rax,%rdi
    194c:	e8 d9 9f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1951:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1958:	48 89 c7             	mov    %rax,%rdi
    195b:	e8 22 a1 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1960:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1967:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    196b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1972:	48 89 d6             	mov    %rdx,%rsi
    1975:	48 89 c7             	mov    %rax,%rdi
    1978:	e8 ad 9f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    197d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1984:	48 89 c7             	mov    %rax,%rdi
    1987:	e8 f6 a0 00 00       	callq  ba82 <_ZN4Heap3popEv>
    198c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1993:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1997:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    199e:	48 89 d6             	mov    %rdx,%rsi
    19a1:	48 89 c7             	mov    %rax,%rdi
    19a4:	e8 81 9f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    19a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    19b0:	48 89 c7             	mov    %rax,%rdi
    19b3:	e8 ca a0 00 00       	callq  ba82 <_ZN4Heap3popEv>
    19b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    19bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    19c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    19ca:	48 89 d6             	mov    %rdx,%rsi
    19cd:	48 89 c7             	mov    %rax,%rdi
    19d0:	e8 55 9f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    19d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    19dc:	48 89 c7             	mov    %rax,%rdi
    19df:	e8 9e a0 00 00       	callq  ba82 <_ZN4Heap3popEv>
    19e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    19eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    19ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    19f6:	48 89 d6             	mov    %rdx,%rsi
    19f9:	48 89 c7             	mov    %rax,%rdi
    19fc:	e8 29 9f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1a01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a08:	48 89 c7             	mov    %rax,%rdi
    1a0b:	e8 72 a0 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1a10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1a17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1a1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a22:	48 89 d6             	mov    %rdx,%rsi
    1a25:	48 89 c7             	mov    %rax,%rdi
    1a28:	e8 fd 9e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1a2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a34:	48 89 c7             	mov    %rax,%rdi
    1a37:	e8 46 a0 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1a3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1a43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1a47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a4e:	48 89 d6             	mov    %rdx,%rsi
    1a51:	48 89 c7             	mov    %rax,%rdi
    1a54:	e8 d1 9e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1a59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a60:	48 89 c7             	mov    %rax,%rdi
    1a63:	e8 1a a0 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1a68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1a6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1a73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a7a:	48 89 d6             	mov    %rdx,%rsi
    1a7d:	48 89 c7             	mov    %rax,%rdi
    1a80:	e8 a5 9e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1a85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1a8c:	48 89 c7             	mov    %rax,%rdi
    1a8f:	e8 ee 9f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1a94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1a9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1a9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1aa6:	48 89 d6             	mov    %rdx,%rsi
    1aa9:	48 89 c7             	mov    %rax,%rdi
    1aac:	e8 79 9e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1ab1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ab8:	48 89 c7             	mov    %rax,%rdi
    1abb:	e8 c2 9f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1ac0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1ac7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1acb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ad2:	48 89 d6             	mov    %rdx,%rsi
    1ad5:	48 89 c7             	mov    %rax,%rdi
    1ad8:	e8 4d 9e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1add:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ae4:	48 89 c7             	mov    %rax,%rdi
    1ae7:	e8 96 9f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1aec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1af3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1af7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1afe:	48 89 d6             	mov    %rdx,%rsi
    1b01:	48 89 c7             	mov    %rax,%rdi
    1b04:	e8 21 9e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1b09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b10:	48 89 c7             	mov    %rax,%rdi
    1b13:	e8 6a 9f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1b18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1b1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1b23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b2a:	48 89 d6             	mov    %rdx,%rsi
    1b2d:	48 89 c7             	mov    %rax,%rdi
    1b30:	e8 f5 9d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1b35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b3c:	48 89 c7             	mov    %rax,%rdi
    1b3f:	e8 3e 9f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1b44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1b4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1b4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b56:	48 89 d6             	mov    %rdx,%rsi
    1b59:	48 89 c7             	mov    %rax,%rdi
    1b5c:	e8 c9 9d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1b61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b68:	48 89 c7             	mov    %rax,%rdi
    1b6b:	e8 12 9f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1b70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1b77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1b7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b82:	48 89 d6             	mov    %rdx,%rsi
    1b85:	48 89 c7             	mov    %rax,%rdi
    1b88:	e8 9d 9d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1b8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1b94:	48 89 c7             	mov    %rax,%rdi
    1b97:	e8 e6 9e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1b9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1ba3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1ba7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1bae:	48 89 d6             	mov    %rdx,%rsi
    1bb1:	48 89 c7             	mov    %rax,%rdi
    1bb4:	e8 71 9d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1bb9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1bc0:	48 89 c7             	mov    %rax,%rdi
    1bc3:	e8 ba 9e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1bc8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1bcf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1bd3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1bda:	48 89 d6             	mov    %rdx,%rsi
    1bdd:	48 89 c7             	mov    %rax,%rdi
    1be0:	e8 45 9d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1be5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1bec:	48 89 c7             	mov    %rax,%rdi
    1bef:	e8 8e 9e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1bf4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1bfb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1bff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c06:	48 89 d6             	mov    %rdx,%rsi
    1c09:	48 89 c7             	mov    %rax,%rdi
    1c0c:	e8 19 9d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1c11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c18:	48 89 c7             	mov    %rax,%rdi
    1c1b:	e8 62 9e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1c20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1c27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1c2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c32:	48 89 d6             	mov    %rdx,%rsi
    1c35:	48 89 c7             	mov    %rax,%rdi
    1c38:	e8 ed 9c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1c3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c44:	48 89 c7             	mov    %rax,%rdi
    1c47:	e8 36 9e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1c4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1c53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1c57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c5e:	48 89 d6             	mov    %rdx,%rsi
    1c61:	48 89 c7             	mov    %rax,%rdi
    1c64:	e8 c1 9c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1c69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c70:	48 89 c7             	mov    %rax,%rdi
    1c73:	e8 0a 9e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1c78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1c7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1c83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c8a:	48 89 d6             	mov    %rdx,%rsi
    1c8d:	48 89 c7             	mov    %rax,%rdi
    1c90:	e8 95 9c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1c95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1c9c:	48 89 c7             	mov    %rax,%rdi
    1c9f:	e8 de 9d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1ca4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1cab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1caf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1cb6:	48 89 d6             	mov    %rdx,%rsi
    1cb9:	48 89 c7             	mov    %rax,%rdi
    1cbc:	e8 69 9c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1cc1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1cc8:	48 89 c7             	mov    %rax,%rdi
    1ccb:	e8 b2 9d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1cd0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1cd7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1cdb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ce2:	48 89 d6             	mov    %rdx,%rsi
    1ce5:	48 89 c7             	mov    %rax,%rdi
    1ce8:	e8 3d 9c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1ced:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1cf4:	48 89 c7             	mov    %rax,%rdi
    1cf7:	e8 86 9d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1cfc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1d03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1d07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d0e:	48 89 d6             	mov    %rdx,%rsi
    1d11:	48 89 c7             	mov    %rax,%rdi
    1d14:	e8 11 9c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1d19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d20:	48 89 c7             	mov    %rax,%rdi
    1d23:	e8 5a 9d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1d28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1d2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1d33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d3a:	48 89 d6             	mov    %rdx,%rsi
    1d3d:	48 89 c7             	mov    %rax,%rdi
    1d40:	e8 e5 9b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1d45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d4c:	48 89 c7             	mov    %rax,%rdi
    1d4f:	e8 2e 9d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1d54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1d5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1d5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d66:	48 89 d6             	mov    %rdx,%rsi
    1d69:	48 89 c7             	mov    %rax,%rdi
    1d6c:	e8 b9 9b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1d71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d78:	48 89 c7             	mov    %rax,%rdi
    1d7b:	e8 02 9d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1d80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1d87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1d8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1d92:	48 89 d6             	mov    %rdx,%rsi
    1d95:	48 89 c7             	mov    %rax,%rdi
    1d98:	e8 8d 9b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1d9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1da4:	48 89 c7             	mov    %rax,%rdi
    1da7:	e8 d6 9c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1dac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1db3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1db7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1dbe:	48 89 d6             	mov    %rdx,%rsi
    1dc1:	48 89 c7             	mov    %rax,%rdi
    1dc4:	e8 61 9b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1dc9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1dd0:	48 89 c7             	mov    %rax,%rdi
    1dd3:	e8 aa 9c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1dd8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1ddf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1de3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1dea:	48 89 d6             	mov    %rdx,%rsi
    1ded:	48 89 c7             	mov    %rax,%rdi
    1df0:	e8 35 9b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1df5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1dfc:	48 89 c7             	mov    %rax,%rdi
    1dff:	e8 7e 9c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1e04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1e0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1e0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e16:	48 89 d6             	mov    %rdx,%rsi
    1e19:	48 89 c7             	mov    %rax,%rdi
    1e1c:	e8 09 9b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1e21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e28:	48 89 c7             	mov    %rax,%rdi
    1e2b:	e8 52 9c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1e30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1e37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1e3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e42:	48 89 d6             	mov    %rdx,%rsi
    1e45:	48 89 c7             	mov    %rax,%rdi
    1e48:	e8 dd 9a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1e4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e54:	48 89 c7             	mov    %rax,%rdi
    1e57:	e8 26 9c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1e5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1e63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1e67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e6e:	48 89 d6             	mov    %rdx,%rsi
    1e71:	48 89 c7             	mov    %rax,%rdi
    1e74:	e8 b1 9a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1e79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e80:	48 89 c7             	mov    %rax,%rdi
    1e83:	e8 fa 9b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1e88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1e8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1e93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1e9a:	48 89 d6             	mov    %rdx,%rsi
    1e9d:	48 89 c7             	mov    %rax,%rdi
    1ea0:	e8 85 9a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1ea5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1eac:	48 89 c7             	mov    %rax,%rdi
    1eaf:	e8 ce 9b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1eb4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1ebb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1ebf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ec6:	48 89 d6             	mov    %rdx,%rsi
    1ec9:	48 89 c7             	mov    %rax,%rdi
    1ecc:	e8 59 9a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1ed1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ed8:	48 89 c7             	mov    %rax,%rdi
    1edb:	e8 a2 9b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1ee0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1ee7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1eeb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ef2:	48 89 d6             	mov    %rdx,%rsi
    1ef5:	48 89 c7             	mov    %rax,%rdi
    1ef8:	e8 2d 9a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1efd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f04:	48 89 c7             	mov    %rax,%rdi
    1f07:	e8 76 9b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1f0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1f13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1f17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f1e:	48 89 d6             	mov    %rdx,%rsi
    1f21:	48 89 c7             	mov    %rax,%rdi
    1f24:	e8 01 9a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1f29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f30:	48 89 c7             	mov    %rax,%rdi
    1f33:	e8 4a 9b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1f38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1f3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1f43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f4a:	48 89 d6             	mov    %rdx,%rsi
    1f4d:	48 89 c7             	mov    %rax,%rdi
    1f50:	e8 d5 99 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1f55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f5c:	48 89 c7             	mov    %rax,%rdi
    1f5f:	e8 1e 9b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1f64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1f6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1f6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f76:	48 89 d6             	mov    %rdx,%rsi
    1f79:	48 89 c7             	mov    %rax,%rdi
    1f7c:	e8 a9 99 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1f81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1f88:	48 89 c7             	mov    %rax,%rdi
    1f8b:	e8 f2 9a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1f90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1f97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1f9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1fa2:	48 89 d6             	mov    %rdx,%rsi
    1fa5:	48 89 c7             	mov    %rax,%rdi
    1fa8:	e8 7d 99 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1fad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1fb4:	48 89 c7             	mov    %rax,%rdi
    1fb7:	e8 c6 9a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1fbc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1fc3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1fc7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1fce:	48 89 d6             	mov    %rdx,%rsi
    1fd1:	48 89 c7             	mov    %rax,%rdi
    1fd4:	e8 51 99 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    1fd9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1fe0:	48 89 c7             	mov    %rax,%rdi
    1fe3:	e8 9a 9a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    1fe8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    1fef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    1ff3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    1ffa:	48 89 d6             	mov    %rdx,%rsi
    1ffd:	48 89 c7             	mov    %rax,%rdi
    2000:	e8 25 99 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2005:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    200c:	48 89 c7             	mov    %rax,%rdi
    200f:	e8 6e 9a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2014:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    201b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    201f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2026:	48 89 d6             	mov    %rdx,%rsi
    2029:	48 89 c7             	mov    %rax,%rdi
    202c:	e8 f9 98 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2031:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2038:	48 89 c7             	mov    %rax,%rdi
    203b:	e8 42 9a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2040:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2047:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    204b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2052:	48 89 d6             	mov    %rdx,%rsi
    2055:	48 89 c7             	mov    %rax,%rdi
    2058:	e8 cd 98 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    205d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2064:	48 89 c7             	mov    %rax,%rdi
    2067:	e8 16 9a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    206c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2073:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2077:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    207e:	48 89 d6             	mov    %rdx,%rsi
    2081:	48 89 c7             	mov    %rax,%rdi
    2084:	e8 a1 98 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2089:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2090:	48 89 c7             	mov    %rax,%rdi
    2093:	e8 ea 99 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2098:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    209f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    20a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    20aa:	48 89 d6             	mov    %rdx,%rsi
    20ad:	48 89 c7             	mov    %rax,%rdi
    20b0:	e8 75 98 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    20b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    20bc:	48 89 c7             	mov    %rax,%rdi
    20bf:	e8 be 99 00 00       	callq  ba82 <_ZN4Heap3popEv>
    20c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    20cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    20cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    20d6:	48 89 d6             	mov    %rdx,%rsi
    20d9:	48 89 c7             	mov    %rax,%rdi
    20dc:	e8 49 98 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    20e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    20e8:	48 89 c7             	mov    %rax,%rdi
    20eb:	e8 92 99 00 00       	callq  ba82 <_ZN4Heap3popEv>
    20f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    20f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    20fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2102:	48 89 d6             	mov    %rdx,%rsi
    2105:	48 89 c7             	mov    %rax,%rdi
    2108:	e8 1d 98 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    210d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2114:	48 89 c7             	mov    %rax,%rdi
    2117:	e8 66 99 00 00       	callq  ba82 <_ZN4Heap3popEv>
    211c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2123:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2127:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    212e:	48 89 d6             	mov    %rdx,%rsi
    2131:	48 89 c7             	mov    %rax,%rdi
    2134:	e8 f1 97 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2139:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2140:	48 89 c7             	mov    %rax,%rdi
    2143:	e8 3a 99 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2148:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    214f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2153:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    215a:	48 89 d6             	mov    %rdx,%rsi
    215d:	48 89 c7             	mov    %rax,%rdi
    2160:	e8 c5 97 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2165:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    216c:	48 89 c7             	mov    %rax,%rdi
    216f:	e8 0e 99 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2174:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    217b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    217f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2186:	48 89 d6             	mov    %rdx,%rsi
    2189:	48 89 c7             	mov    %rax,%rdi
    218c:	e8 99 97 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2191:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2198:	48 89 c7             	mov    %rax,%rdi
    219b:	e8 e2 98 00 00       	callq  ba82 <_ZN4Heap3popEv>
    21a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    21a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    21ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    21b2:	48 89 d6             	mov    %rdx,%rsi
    21b5:	48 89 c7             	mov    %rax,%rdi
    21b8:	e8 6d 97 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    21bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    21c4:	48 89 c7             	mov    %rax,%rdi
    21c7:	e8 b6 98 00 00       	callq  ba82 <_ZN4Heap3popEv>
    21cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    21d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    21d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    21de:	48 89 d6             	mov    %rdx,%rsi
    21e1:	48 89 c7             	mov    %rax,%rdi
    21e4:	e8 41 97 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    21e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    21f0:	48 89 c7             	mov    %rax,%rdi
    21f3:	e8 8a 98 00 00       	callq  ba82 <_ZN4Heap3popEv>
    21f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    21ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2203:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    220a:	48 89 d6             	mov    %rdx,%rsi
    220d:	48 89 c7             	mov    %rax,%rdi
    2210:	e8 15 97 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2215:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    221c:	48 89 c7             	mov    %rax,%rdi
    221f:	e8 5e 98 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2224:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    222b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    222f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2236:	48 89 d6             	mov    %rdx,%rsi
    2239:	48 89 c7             	mov    %rax,%rdi
    223c:	e8 e9 96 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2241:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2248:	48 89 c7             	mov    %rax,%rdi
    224b:	e8 32 98 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2250:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2257:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    225b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2262:	48 89 d6             	mov    %rdx,%rsi
    2265:	48 89 c7             	mov    %rax,%rdi
    2268:	e8 bd 96 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    226d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2274:	48 89 c7             	mov    %rax,%rdi
    2277:	e8 06 98 00 00       	callq  ba82 <_ZN4Heap3popEv>
    227c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2283:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2287:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    228e:	48 89 d6             	mov    %rdx,%rsi
    2291:	48 89 c7             	mov    %rax,%rdi
    2294:	e8 91 96 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2299:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    22a0:	48 89 c7             	mov    %rax,%rdi
    22a3:	e8 da 97 00 00       	callq  ba82 <_ZN4Heap3popEv>
    22a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    22af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    22b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    22ba:	48 89 d6             	mov    %rdx,%rsi
    22bd:	48 89 c7             	mov    %rax,%rdi
    22c0:	e8 65 96 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    22c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    22cc:	48 89 c7             	mov    %rax,%rdi
    22cf:	e8 ae 97 00 00       	callq  ba82 <_ZN4Heap3popEv>
    22d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    22db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    22df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    22e6:	48 89 d6             	mov    %rdx,%rsi
    22e9:	48 89 c7             	mov    %rax,%rdi
    22ec:	e8 39 96 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    22f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    22f8:	48 89 c7             	mov    %rax,%rdi
    22fb:	e8 82 97 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2300:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2307:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    230b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2312:	48 89 d6             	mov    %rdx,%rsi
    2315:	48 89 c7             	mov    %rax,%rdi
    2318:	e8 0d 96 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    231d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2324:	48 89 c7             	mov    %rax,%rdi
    2327:	e8 56 97 00 00       	callq  ba82 <_ZN4Heap3popEv>
    232c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2333:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2337:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    233e:	48 89 d6             	mov    %rdx,%rsi
    2341:	48 89 c7             	mov    %rax,%rdi
    2344:	e8 e1 95 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2349:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2350:	48 89 c7             	mov    %rax,%rdi
    2353:	e8 2a 97 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2358:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    235f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2363:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    236a:	48 89 d6             	mov    %rdx,%rsi
    236d:	48 89 c7             	mov    %rax,%rdi
    2370:	e8 b5 95 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2375:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    237c:	48 89 c7             	mov    %rax,%rdi
    237f:	e8 fe 96 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2384:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    238b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    238f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2396:	48 89 d6             	mov    %rdx,%rsi
    2399:	48 89 c7             	mov    %rax,%rdi
    239c:	e8 89 95 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    23a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    23a8:	48 89 c7             	mov    %rax,%rdi
    23ab:	e8 d2 96 00 00       	callq  ba82 <_ZN4Heap3popEv>
    23b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    23b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    23bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    23c2:	48 89 d6             	mov    %rdx,%rsi
    23c5:	48 89 c7             	mov    %rax,%rdi
    23c8:	e8 5d 95 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    23cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    23d4:	48 89 c7             	mov    %rax,%rdi
    23d7:	e8 a6 96 00 00       	callq  ba82 <_ZN4Heap3popEv>
    23dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    23e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    23e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    23ee:	48 89 d6             	mov    %rdx,%rsi
    23f1:	48 89 c7             	mov    %rax,%rdi
    23f4:	e8 31 95 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    23f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2400:	48 89 c7             	mov    %rax,%rdi
    2403:	e8 7a 96 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2408:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    240f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2413:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    241a:	48 89 d6             	mov    %rdx,%rsi
    241d:	48 89 c7             	mov    %rax,%rdi
    2420:	e8 05 95 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2425:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    242c:	48 89 c7             	mov    %rax,%rdi
    242f:	e8 4e 96 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2434:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    243b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    243f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2446:	48 89 d6             	mov    %rdx,%rsi
    2449:	48 89 c7             	mov    %rax,%rdi
    244c:	e8 d9 94 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2451:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2458:	48 89 c7             	mov    %rax,%rdi
    245b:	e8 22 96 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2460:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2467:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    246b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2472:	48 89 d6             	mov    %rdx,%rsi
    2475:	48 89 c7             	mov    %rax,%rdi
    2478:	e8 ad 94 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    247d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2484:	48 89 c7             	mov    %rax,%rdi
    2487:	e8 f6 95 00 00       	callq  ba82 <_ZN4Heap3popEv>
    248c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2493:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2497:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    249e:	48 89 d6             	mov    %rdx,%rsi
    24a1:	48 89 c7             	mov    %rax,%rdi
    24a4:	e8 81 94 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    24a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    24b0:	48 89 c7             	mov    %rax,%rdi
    24b3:	e8 ca 95 00 00       	callq  ba82 <_ZN4Heap3popEv>
    24b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    24bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    24c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    24ca:	48 89 d6             	mov    %rdx,%rsi
    24cd:	48 89 c7             	mov    %rax,%rdi
    24d0:	e8 55 94 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    24d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    24dc:	48 89 c7             	mov    %rax,%rdi
    24df:	e8 9e 95 00 00       	callq  ba82 <_ZN4Heap3popEv>
    24e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    24eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    24ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    24f6:	48 89 d6             	mov    %rdx,%rsi
    24f9:	48 89 c7             	mov    %rax,%rdi
    24fc:	e8 29 94 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2501:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2508:	48 89 c7             	mov    %rax,%rdi
    250b:	e8 72 95 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2510:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2517:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    251b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2522:	48 89 d6             	mov    %rdx,%rsi
    2525:	48 89 c7             	mov    %rax,%rdi
    2528:	e8 fd 93 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    252d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2534:	48 89 c7             	mov    %rax,%rdi
    2537:	e8 46 95 00 00       	callq  ba82 <_ZN4Heap3popEv>
    253c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2543:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2547:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    254e:	48 89 d6             	mov    %rdx,%rsi
    2551:	48 89 c7             	mov    %rax,%rdi
    2554:	e8 d1 93 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2559:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2560:	48 89 c7             	mov    %rax,%rdi
    2563:	e8 1a 95 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2568:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    256f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2573:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    257a:	48 89 d6             	mov    %rdx,%rsi
    257d:	48 89 c7             	mov    %rax,%rdi
    2580:	e8 a5 93 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2585:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    258c:	48 89 c7             	mov    %rax,%rdi
    258f:	e8 ee 94 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2594:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    259b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    259f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    25a6:	48 89 d6             	mov    %rdx,%rsi
    25a9:	48 89 c7             	mov    %rax,%rdi
    25ac:	e8 79 93 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    25b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    25b8:	48 89 c7             	mov    %rax,%rdi
    25bb:	e8 c2 94 00 00       	callq  ba82 <_ZN4Heap3popEv>
    25c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    25c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    25cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    25d2:	48 89 d6             	mov    %rdx,%rsi
    25d5:	48 89 c7             	mov    %rax,%rdi
    25d8:	e8 4d 93 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    25dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    25e4:	48 89 c7             	mov    %rax,%rdi
    25e7:	e8 96 94 00 00       	callq  ba82 <_ZN4Heap3popEv>
    25ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    25f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    25f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    25fe:	48 89 d6             	mov    %rdx,%rsi
    2601:	48 89 c7             	mov    %rax,%rdi
    2604:	e8 21 93 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2609:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2610:	48 89 c7             	mov    %rax,%rdi
    2613:	e8 6a 94 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2618:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    261f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2623:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    262a:	48 89 d6             	mov    %rdx,%rsi
    262d:	48 89 c7             	mov    %rax,%rdi
    2630:	e8 f5 92 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2635:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    263c:	48 89 c7             	mov    %rax,%rdi
    263f:	e8 3e 94 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2644:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    264b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    264f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2656:	48 89 d6             	mov    %rdx,%rsi
    2659:	48 89 c7             	mov    %rax,%rdi
    265c:	e8 c9 92 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2661:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2668:	48 89 c7             	mov    %rax,%rdi
    266b:	e8 12 94 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2670:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2677:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    267b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2682:	48 89 d6             	mov    %rdx,%rsi
    2685:	48 89 c7             	mov    %rax,%rdi
    2688:	e8 9d 92 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    268d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2694:	48 89 c7             	mov    %rax,%rdi
    2697:	e8 e6 93 00 00       	callq  ba82 <_ZN4Heap3popEv>
    269c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    26a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    26a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    26ae:	48 89 d6             	mov    %rdx,%rsi
    26b1:	48 89 c7             	mov    %rax,%rdi
    26b4:	e8 71 92 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    26b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    26c0:	48 89 c7             	mov    %rax,%rdi
    26c3:	e8 ba 93 00 00       	callq  ba82 <_ZN4Heap3popEv>
    26c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    26cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    26d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    26da:	48 89 d6             	mov    %rdx,%rsi
    26dd:	48 89 c7             	mov    %rax,%rdi
    26e0:	e8 45 92 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    26e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    26ec:	48 89 c7             	mov    %rax,%rdi
    26ef:	e8 8e 93 00 00       	callq  ba82 <_ZN4Heap3popEv>
    26f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    26fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    26ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2706:	48 89 d6             	mov    %rdx,%rsi
    2709:	48 89 c7             	mov    %rax,%rdi
    270c:	e8 19 92 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2711:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2718:	48 89 c7             	mov    %rax,%rdi
    271b:	e8 62 93 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2720:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2727:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    272b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2732:	48 89 d6             	mov    %rdx,%rsi
    2735:	48 89 c7             	mov    %rax,%rdi
    2738:	e8 ed 91 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    273d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2744:	48 89 c7             	mov    %rax,%rdi
    2747:	e8 36 93 00 00       	callq  ba82 <_ZN4Heap3popEv>
    274c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2753:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2757:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    275e:	48 89 d6             	mov    %rdx,%rsi
    2761:	48 89 c7             	mov    %rax,%rdi
    2764:	e8 c1 91 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2769:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2770:	48 89 c7             	mov    %rax,%rdi
    2773:	e8 0a 93 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2778:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    277f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2783:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    278a:	48 89 d6             	mov    %rdx,%rsi
    278d:	48 89 c7             	mov    %rax,%rdi
    2790:	e8 95 91 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2795:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    279c:	48 89 c7             	mov    %rax,%rdi
    279f:	e8 de 92 00 00       	callq  ba82 <_ZN4Heap3popEv>
    27a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    27ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    27af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    27b6:	48 89 d6             	mov    %rdx,%rsi
    27b9:	48 89 c7             	mov    %rax,%rdi
    27bc:	e8 69 91 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    27c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    27c8:	48 89 c7             	mov    %rax,%rdi
    27cb:	e8 b2 92 00 00       	callq  ba82 <_ZN4Heap3popEv>
    27d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    27d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    27db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    27e2:	48 89 d6             	mov    %rdx,%rsi
    27e5:	48 89 c7             	mov    %rax,%rdi
    27e8:	e8 3d 91 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    27ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    27f4:	48 89 c7             	mov    %rax,%rdi
    27f7:	e8 86 92 00 00       	callq  ba82 <_ZN4Heap3popEv>
    27fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2803:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2807:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    280e:	48 89 d6             	mov    %rdx,%rsi
    2811:	48 89 c7             	mov    %rax,%rdi
    2814:	e8 11 91 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2819:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2820:	48 89 c7             	mov    %rax,%rdi
    2823:	e8 5a 92 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2828:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    282f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2833:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    283a:	48 89 d6             	mov    %rdx,%rsi
    283d:	48 89 c7             	mov    %rax,%rdi
    2840:	e8 e5 90 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2845:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    284c:	48 89 c7             	mov    %rax,%rdi
    284f:	e8 2e 92 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2854:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    285b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    285f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2866:	48 89 d6             	mov    %rdx,%rsi
    2869:	48 89 c7             	mov    %rax,%rdi
    286c:	e8 b9 90 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2871:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2878:	48 89 c7             	mov    %rax,%rdi
    287b:	e8 02 92 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2880:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2887:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    288b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2892:	48 89 d6             	mov    %rdx,%rsi
    2895:	48 89 c7             	mov    %rax,%rdi
    2898:	e8 8d 90 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    289d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    28a4:	48 89 c7             	mov    %rax,%rdi
    28a7:	e8 d6 91 00 00       	callq  ba82 <_ZN4Heap3popEv>
    28ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    28b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    28b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    28be:	48 89 d6             	mov    %rdx,%rsi
    28c1:	48 89 c7             	mov    %rax,%rdi
    28c4:	e8 61 90 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    28c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    28d0:	48 89 c7             	mov    %rax,%rdi
    28d3:	e8 aa 91 00 00       	callq  ba82 <_ZN4Heap3popEv>
    28d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    28df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    28e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    28ea:	48 89 d6             	mov    %rdx,%rsi
    28ed:	48 89 c7             	mov    %rax,%rdi
    28f0:	e8 35 90 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    28f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    28fc:	48 89 c7             	mov    %rax,%rdi
    28ff:	e8 7e 91 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2904:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    290b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    290f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2916:	48 89 d6             	mov    %rdx,%rsi
    2919:	48 89 c7             	mov    %rax,%rdi
    291c:	e8 09 90 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2921:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2928:	48 89 c7             	mov    %rax,%rdi
    292b:	e8 52 91 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2930:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2937:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    293b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2942:	48 89 d6             	mov    %rdx,%rsi
    2945:	48 89 c7             	mov    %rax,%rdi
    2948:	e8 dd 8f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    294d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2954:	48 89 c7             	mov    %rax,%rdi
    2957:	e8 26 91 00 00       	callq  ba82 <_ZN4Heap3popEv>
    295c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2963:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2967:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    296e:	48 89 d6             	mov    %rdx,%rsi
    2971:	48 89 c7             	mov    %rax,%rdi
    2974:	e8 b1 8f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2979:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2980:	48 89 c7             	mov    %rax,%rdi
    2983:	e8 fa 90 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2988:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    298f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2993:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    299a:	48 89 d6             	mov    %rdx,%rsi
    299d:	48 89 c7             	mov    %rax,%rdi
    29a0:	e8 85 8f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    29a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    29ac:	48 89 c7             	mov    %rax,%rdi
    29af:	e8 ce 90 00 00       	callq  ba82 <_ZN4Heap3popEv>
    29b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    29bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    29bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    29c6:	48 89 d6             	mov    %rdx,%rsi
    29c9:	48 89 c7             	mov    %rax,%rdi
    29cc:	e8 59 8f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    29d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    29d8:	48 89 c7             	mov    %rax,%rdi
    29db:	e8 a2 90 00 00       	callq  ba82 <_ZN4Heap3popEv>
    29e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    29e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    29eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    29f2:	48 89 d6             	mov    %rdx,%rsi
    29f5:	48 89 c7             	mov    %rax,%rdi
    29f8:	e8 2d 8f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    29fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a04:	48 89 c7             	mov    %rax,%rdi
    2a07:	e8 76 90 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2a0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2a13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2a17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a1e:	48 89 d6             	mov    %rdx,%rsi
    2a21:	48 89 c7             	mov    %rax,%rdi
    2a24:	e8 01 8f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2a29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a30:	48 89 c7             	mov    %rax,%rdi
    2a33:	e8 4a 90 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2a38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2a3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2a43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a4a:	48 89 d6             	mov    %rdx,%rsi
    2a4d:	48 89 c7             	mov    %rax,%rdi
    2a50:	e8 d5 8e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2a55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a5c:	48 89 c7             	mov    %rax,%rdi
    2a5f:	e8 1e 90 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2a64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2a6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2a6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a76:	48 89 d6             	mov    %rdx,%rsi
    2a79:	48 89 c7             	mov    %rax,%rdi
    2a7c:	e8 a9 8e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2a81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2a88:	48 89 c7             	mov    %rax,%rdi
    2a8b:	e8 f2 8f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2a90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2a97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2a9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2aa2:	48 89 d6             	mov    %rdx,%rsi
    2aa5:	48 89 c7             	mov    %rax,%rdi
    2aa8:	e8 7d 8e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2aad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ab4:	48 89 c7             	mov    %rax,%rdi
    2ab7:	e8 c6 8f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2abc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2ac3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2ac7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ace:	48 89 d6             	mov    %rdx,%rsi
    2ad1:	48 89 c7             	mov    %rax,%rdi
    2ad4:	e8 51 8e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2ad9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ae0:	48 89 c7             	mov    %rax,%rdi
    2ae3:	e8 9a 8f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2ae8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2aef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2af3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2afa:	48 89 d6             	mov    %rdx,%rsi
    2afd:	48 89 c7             	mov    %rax,%rdi
    2b00:	e8 25 8e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2b05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b0c:	48 89 c7             	mov    %rax,%rdi
    2b0f:	e8 6e 8f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2b14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2b1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2b1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b26:	48 89 d6             	mov    %rdx,%rsi
    2b29:	48 89 c7             	mov    %rax,%rdi
    2b2c:	e8 f9 8d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2b31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b38:	48 89 c7             	mov    %rax,%rdi
    2b3b:	e8 42 8f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2b40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2b47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2b4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b52:	48 89 d6             	mov    %rdx,%rsi
    2b55:	48 89 c7             	mov    %rax,%rdi
    2b58:	e8 cd 8d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2b5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b64:	48 89 c7             	mov    %rax,%rdi
    2b67:	e8 16 8f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2b6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2b73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2b77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b7e:	48 89 d6             	mov    %rdx,%rsi
    2b81:	48 89 c7             	mov    %rax,%rdi
    2b84:	e8 a1 8d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2b89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2b90:	48 89 c7             	mov    %rax,%rdi
    2b93:	e8 ea 8e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2b98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2b9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2ba3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2baa:	48 89 d6             	mov    %rdx,%rsi
    2bad:	48 89 c7             	mov    %rax,%rdi
    2bb0:	e8 75 8d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2bb5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2bbc:	48 89 c7             	mov    %rax,%rdi
    2bbf:	e8 be 8e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2bc4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2bcb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2bcf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2bd6:	48 89 d6             	mov    %rdx,%rsi
    2bd9:	48 89 c7             	mov    %rax,%rdi
    2bdc:	e8 49 8d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2be1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2be8:	48 89 c7             	mov    %rax,%rdi
    2beb:	e8 92 8e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2bf0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2bf7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2bfb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c02:	48 89 d6             	mov    %rdx,%rsi
    2c05:	48 89 c7             	mov    %rax,%rdi
    2c08:	e8 1d 8d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2c0d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c14:	48 89 c7             	mov    %rax,%rdi
    2c17:	e8 66 8e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2c1c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2c23:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2c27:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c2e:	48 89 d6             	mov    %rdx,%rsi
    2c31:	48 89 c7             	mov    %rax,%rdi
    2c34:	e8 f1 8c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2c39:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c40:	48 89 c7             	mov    %rax,%rdi
    2c43:	e8 3a 8e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2c48:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2c4f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2c53:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c5a:	48 89 d6             	mov    %rdx,%rsi
    2c5d:	48 89 c7             	mov    %rax,%rdi
    2c60:	e8 c5 8c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2c65:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c6c:	48 89 c7             	mov    %rax,%rdi
    2c6f:	e8 0e 8e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2c74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2c7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2c7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c86:	48 89 d6             	mov    %rdx,%rsi
    2c89:	48 89 c7             	mov    %rax,%rdi
    2c8c:	e8 99 8c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2c91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2c98:	48 89 c7             	mov    %rax,%rdi
    2c9b:	e8 e2 8d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2ca0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2ca7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2cab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2cb2:	48 89 d6             	mov    %rdx,%rsi
    2cb5:	48 89 c7             	mov    %rax,%rdi
    2cb8:	e8 6d 8c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2cbd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2cc4:	48 89 c7             	mov    %rax,%rdi
    2cc7:	e8 b6 8d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2ccc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2cd3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2cd7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2cde:	48 89 d6             	mov    %rdx,%rsi
    2ce1:	48 89 c7             	mov    %rax,%rdi
    2ce4:	e8 41 8c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2ce9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2cf0:	48 89 c7             	mov    %rax,%rdi
    2cf3:	e8 8a 8d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2cf8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2cff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2d03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d0a:	48 89 d6             	mov    %rdx,%rsi
    2d0d:	48 89 c7             	mov    %rax,%rdi
    2d10:	e8 15 8c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2d15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d1c:	48 89 c7             	mov    %rax,%rdi
    2d1f:	e8 5e 8d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2d24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2d2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2d2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d36:	48 89 d6             	mov    %rdx,%rsi
    2d39:	48 89 c7             	mov    %rax,%rdi
    2d3c:	e8 e9 8b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2d41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d48:	48 89 c7             	mov    %rax,%rdi
    2d4b:	e8 32 8d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2d50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2d57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2d5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d62:	48 89 d6             	mov    %rdx,%rsi
    2d65:	48 89 c7             	mov    %rax,%rdi
    2d68:	e8 bd 8b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2d6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d74:	48 89 c7             	mov    %rax,%rdi
    2d77:	e8 06 8d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2d7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2d83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2d87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2d8e:	48 89 d6             	mov    %rdx,%rsi
    2d91:	48 89 c7             	mov    %rax,%rdi
    2d94:	e8 91 8b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2d99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2da0:	48 89 c7             	mov    %rax,%rdi
    2da3:	e8 da 8c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2da8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2daf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2db3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2dba:	48 89 d6             	mov    %rdx,%rsi
    2dbd:	48 89 c7             	mov    %rax,%rdi
    2dc0:	e8 65 8b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2dc5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2dcc:	48 89 c7             	mov    %rax,%rdi
    2dcf:	e8 ae 8c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2dd4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2ddb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2ddf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2de6:	48 89 d6             	mov    %rdx,%rsi
    2de9:	48 89 c7             	mov    %rax,%rdi
    2dec:	e8 39 8b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2df1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2df8:	48 89 c7             	mov    %rax,%rdi
    2dfb:	e8 82 8c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2e00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2e07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2e0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e12:	48 89 d6             	mov    %rdx,%rsi
    2e15:	48 89 c7             	mov    %rax,%rdi
    2e18:	e8 0d 8b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2e1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e24:	48 89 c7             	mov    %rax,%rdi
    2e27:	e8 56 8c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2e2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2e33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2e37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e3e:	48 89 d6             	mov    %rdx,%rsi
    2e41:	48 89 c7             	mov    %rax,%rdi
    2e44:	e8 e1 8a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2e49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e50:	48 89 c7             	mov    %rax,%rdi
    2e53:	e8 2a 8c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2e58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2e5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2e63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e6a:	48 89 d6             	mov    %rdx,%rsi
    2e6d:	48 89 c7             	mov    %rax,%rdi
    2e70:	e8 b5 8a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2e75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e7c:	48 89 c7             	mov    %rax,%rdi
    2e7f:	e8 fe 8b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2e84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2e8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2e8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2e96:	48 89 d6             	mov    %rdx,%rsi
    2e99:	48 89 c7             	mov    %rax,%rdi
    2e9c:	e8 89 8a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2ea1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ea8:	48 89 c7             	mov    %rax,%rdi
    2eab:	e8 d2 8b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2eb0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2eb7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2ebb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ec2:	48 89 d6             	mov    %rdx,%rsi
    2ec5:	48 89 c7             	mov    %rax,%rdi
    2ec8:	e8 5d 8a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2ecd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ed4:	48 89 c7             	mov    %rax,%rdi
    2ed7:	e8 a6 8b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2edc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2ee3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2ee7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2eee:	48 89 d6             	mov    %rdx,%rsi
    2ef1:	48 89 c7             	mov    %rax,%rdi
    2ef4:	e8 31 8a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2ef9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f00:	48 89 c7             	mov    %rax,%rdi
    2f03:	e8 7a 8b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2f08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2f0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2f13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f1a:	48 89 d6             	mov    %rdx,%rsi
    2f1d:	48 89 c7             	mov    %rax,%rdi
    2f20:	e8 05 8a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2f25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f2c:	48 89 c7             	mov    %rax,%rdi
    2f2f:	e8 4e 8b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2f34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2f3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2f3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f46:	48 89 d6             	mov    %rdx,%rsi
    2f49:	48 89 c7             	mov    %rax,%rdi
    2f4c:	e8 d9 89 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2f51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f58:	48 89 c7             	mov    %rax,%rdi
    2f5b:	e8 22 8b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2f60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2f67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2f6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f72:	48 89 d6             	mov    %rdx,%rsi
    2f75:	48 89 c7             	mov    %rax,%rdi
    2f78:	e8 ad 89 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2f7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f84:	48 89 c7             	mov    %rax,%rdi
    2f87:	e8 f6 8a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2f8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2f93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2f97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2f9e:	48 89 d6             	mov    %rdx,%rsi
    2fa1:	48 89 c7             	mov    %rax,%rdi
    2fa4:	e8 81 89 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2fa9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2fb0:	48 89 c7             	mov    %rax,%rdi
    2fb3:	e8 ca 8a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2fb8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2fbf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2fc3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2fca:	48 89 d6             	mov    %rdx,%rsi
    2fcd:	48 89 c7             	mov    %rax,%rdi
    2fd0:	e8 55 89 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    2fd5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2fdc:	48 89 c7             	mov    %rax,%rdi
    2fdf:	e8 9e 8a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    2fe4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    2feb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    2fef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    2ff6:	48 89 d6             	mov    %rdx,%rsi
    2ff9:	48 89 c7             	mov    %rax,%rdi
    2ffc:	e8 29 89 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3001:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3008:	48 89 c7             	mov    %rax,%rdi
    300b:	e8 72 8a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3010:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3017:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    301b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3022:	48 89 d6             	mov    %rdx,%rsi
    3025:	48 89 c7             	mov    %rax,%rdi
    3028:	e8 fd 88 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    302d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3034:	48 89 c7             	mov    %rax,%rdi
    3037:	e8 46 8a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    303c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3043:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3047:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    304e:	48 89 d6             	mov    %rdx,%rsi
    3051:	48 89 c7             	mov    %rax,%rdi
    3054:	e8 d1 88 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3059:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3060:	48 89 c7             	mov    %rax,%rdi
    3063:	e8 1a 8a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3068:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    306f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3073:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    307a:	48 89 d6             	mov    %rdx,%rsi
    307d:	48 89 c7             	mov    %rax,%rdi
    3080:	e8 a5 88 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3085:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    308c:	48 89 c7             	mov    %rax,%rdi
    308f:	e8 ee 89 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3094:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    309b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    309f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    30a6:	48 89 d6             	mov    %rdx,%rsi
    30a9:	48 89 c7             	mov    %rax,%rdi
    30ac:	e8 79 88 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    30b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    30b8:	48 89 c7             	mov    %rax,%rdi
    30bb:	e8 c2 89 00 00       	callq  ba82 <_ZN4Heap3popEv>
    30c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    30c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    30cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    30d2:	48 89 d6             	mov    %rdx,%rsi
    30d5:	48 89 c7             	mov    %rax,%rdi
    30d8:	e8 4d 88 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    30dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    30e4:	48 89 c7             	mov    %rax,%rdi
    30e7:	e8 96 89 00 00       	callq  ba82 <_ZN4Heap3popEv>
    30ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    30f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    30f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    30fe:	48 89 d6             	mov    %rdx,%rsi
    3101:	48 89 c7             	mov    %rax,%rdi
    3104:	e8 21 88 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3109:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3110:	48 89 c7             	mov    %rax,%rdi
    3113:	e8 6a 89 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3118:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    311f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3123:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    312a:	48 89 d6             	mov    %rdx,%rsi
    312d:	48 89 c7             	mov    %rax,%rdi
    3130:	e8 f5 87 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3135:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    313c:	48 89 c7             	mov    %rax,%rdi
    313f:	e8 3e 89 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3144:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    314b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    314f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3156:	48 89 d6             	mov    %rdx,%rsi
    3159:	48 89 c7             	mov    %rax,%rdi
    315c:	e8 c9 87 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3161:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3168:	48 89 c7             	mov    %rax,%rdi
    316b:	e8 12 89 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3170:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3177:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    317b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3182:	48 89 d6             	mov    %rdx,%rsi
    3185:	48 89 c7             	mov    %rax,%rdi
    3188:	e8 9d 87 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    318d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3194:	48 89 c7             	mov    %rax,%rdi
    3197:	e8 e6 88 00 00       	callq  ba82 <_ZN4Heap3popEv>
    319c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    31a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    31a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    31ae:	48 89 d6             	mov    %rdx,%rsi
    31b1:	48 89 c7             	mov    %rax,%rdi
    31b4:	e8 71 87 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    31b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    31c0:	48 89 c7             	mov    %rax,%rdi
    31c3:	e8 ba 88 00 00       	callq  ba82 <_ZN4Heap3popEv>
    31c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    31cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    31d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    31da:	48 89 d6             	mov    %rdx,%rsi
    31dd:	48 89 c7             	mov    %rax,%rdi
    31e0:	e8 45 87 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    31e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    31ec:	48 89 c7             	mov    %rax,%rdi
    31ef:	e8 8e 88 00 00       	callq  ba82 <_ZN4Heap3popEv>
    31f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    31fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    31ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3206:	48 89 d6             	mov    %rdx,%rsi
    3209:	48 89 c7             	mov    %rax,%rdi
    320c:	e8 19 87 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3211:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3218:	48 89 c7             	mov    %rax,%rdi
    321b:	e8 62 88 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3220:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3227:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    322b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3232:	48 89 d6             	mov    %rdx,%rsi
    3235:	48 89 c7             	mov    %rax,%rdi
    3238:	e8 ed 86 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    323d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3244:	48 89 c7             	mov    %rax,%rdi
    3247:	e8 36 88 00 00       	callq  ba82 <_ZN4Heap3popEv>
    324c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3253:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3257:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    325e:	48 89 d6             	mov    %rdx,%rsi
    3261:	48 89 c7             	mov    %rax,%rdi
    3264:	e8 c1 86 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3269:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3270:	48 89 c7             	mov    %rax,%rdi
    3273:	e8 0a 88 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3278:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    327f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3283:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    328a:	48 89 d6             	mov    %rdx,%rsi
    328d:	48 89 c7             	mov    %rax,%rdi
    3290:	e8 95 86 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3295:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    329c:	48 89 c7             	mov    %rax,%rdi
    329f:	e8 de 87 00 00       	callq  ba82 <_ZN4Heap3popEv>
    32a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    32ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    32af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    32b6:	48 89 d6             	mov    %rdx,%rsi
    32b9:	48 89 c7             	mov    %rax,%rdi
    32bc:	e8 69 86 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    32c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    32c8:	48 89 c7             	mov    %rax,%rdi
    32cb:	e8 b2 87 00 00       	callq  ba82 <_ZN4Heap3popEv>
    32d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    32d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    32db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    32e2:	48 89 d6             	mov    %rdx,%rsi
    32e5:	48 89 c7             	mov    %rax,%rdi
    32e8:	e8 3d 86 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    32ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    32f4:	48 89 c7             	mov    %rax,%rdi
    32f7:	e8 86 87 00 00       	callq  ba82 <_ZN4Heap3popEv>
    32fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3303:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3307:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    330e:	48 89 d6             	mov    %rdx,%rsi
    3311:	48 89 c7             	mov    %rax,%rdi
    3314:	e8 11 86 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3319:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3320:	48 89 c7             	mov    %rax,%rdi
    3323:	e8 5a 87 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3328:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    332f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3333:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    333a:	48 89 d6             	mov    %rdx,%rsi
    333d:	48 89 c7             	mov    %rax,%rdi
    3340:	e8 e5 85 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3345:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    334c:	48 89 c7             	mov    %rax,%rdi
    334f:	e8 2e 87 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3354:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    335b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    335f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3366:	48 89 d6             	mov    %rdx,%rsi
    3369:	48 89 c7             	mov    %rax,%rdi
    336c:	e8 b9 85 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3371:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3378:	48 89 c7             	mov    %rax,%rdi
    337b:	e8 02 87 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3380:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3387:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    338b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3392:	48 89 d6             	mov    %rdx,%rsi
    3395:	48 89 c7             	mov    %rax,%rdi
    3398:	e8 8d 85 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    339d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    33a4:	48 89 c7             	mov    %rax,%rdi
    33a7:	e8 d6 86 00 00       	callq  ba82 <_ZN4Heap3popEv>
    33ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    33b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    33b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    33be:	48 89 d6             	mov    %rdx,%rsi
    33c1:	48 89 c7             	mov    %rax,%rdi
    33c4:	e8 61 85 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    33c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    33d0:	48 89 c7             	mov    %rax,%rdi
    33d3:	e8 aa 86 00 00       	callq  ba82 <_ZN4Heap3popEv>
    33d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    33df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    33e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    33ea:	48 89 d6             	mov    %rdx,%rsi
    33ed:	48 89 c7             	mov    %rax,%rdi
    33f0:	e8 35 85 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    33f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    33fc:	48 89 c7             	mov    %rax,%rdi
    33ff:	e8 7e 86 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3404:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    340b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    340f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3416:	48 89 d6             	mov    %rdx,%rsi
    3419:	48 89 c7             	mov    %rax,%rdi
    341c:	e8 09 85 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3421:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3428:	48 89 c7             	mov    %rax,%rdi
    342b:	e8 52 86 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3430:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3437:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    343b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3442:	48 89 d6             	mov    %rdx,%rsi
    3445:	48 89 c7             	mov    %rax,%rdi
    3448:	e8 dd 84 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    344d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3454:	48 89 c7             	mov    %rax,%rdi
    3457:	e8 26 86 00 00       	callq  ba82 <_ZN4Heap3popEv>
    345c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3463:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3467:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    346e:	48 89 d6             	mov    %rdx,%rsi
    3471:	48 89 c7             	mov    %rax,%rdi
    3474:	e8 b1 84 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3479:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3480:	48 89 c7             	mov    %rax,%rdi
    3483:	e8 fa 85 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3488:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    348f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3493:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    349a:	48 89 d6             	mov    %rdx,%rsi
    349d:	48 89 c7             	mov    %rax,%rdi
    34a0:	e8 85 84 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    34a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    34ac:	48 89 c7             	mov    %rax,%rdi
    34af:	e8 ce 85 00 00       	callq  ba82 <_ZN4Heap3popEv>
    34b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    34bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    34bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    34c6:	48 89 d6             	mov    %rdx,%rsi
    34c9:	48 89 c7             	mov    %rax,%rdi
    34cc:	e8 59 84 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    34d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    34d8:	48 89 c7             	mov    %rax,%rdi
    34db:	e8 a2 85 00 00       	callq  ba82 <_ZN4Heap3popEv>
    34e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    34e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    34eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    34f2:	48 89 d6             	mov    %rdx,%rsi
    34f5:	48 89 c7             	mov    %rax,%rdi
    34f8:	e8 2d 84 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    34fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3504:	48 89 c7             	mov    %rax,%rdi
    3507:	e8 76 85 00 00       	callq  ba82 <_ZN4Heap3popEv>
    350c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3513:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3517:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    351e:	48 89 d6             	mov    %rdx,%rsi
    3521:	48 89 c7             	mov    %rax,%rdi
    3524:	e8 01 84 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3529:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3530:	48 89 c7             	mov    %rax,%rdi
    3533:	e8 4a 85 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3538:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    353f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3543:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    354a:	48 89 d6             	mov    %rdx,%rsi
    354d:	48 89 c7             	mov    %rax,%rdi
    3550:	e8 d5 83 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3555:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    355c:	48 89 c7             	mov    %rax,%rdi
    355f:	e8 1e 85 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3564:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    356b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    356f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3576:	48 89 d6             	mov    %rdx,%rsi
    3579:	48 89 c7             	mov    %rax,%rdi
    357c:	e8 a9 83 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3581:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3588:	48 89 c7             	mov    %rax,%rdi
    358b:	e8 f2 84 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3590:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3597:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    359b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    35a2:	48 89 d6             	mov    %rdx,%rsi
    35a5:	48 89 c7             	mov    %rax,%rdi
    35a8:	e8 7d 83 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    35ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    35b4:	48 89 c7             	mov    %rax,%rdi
    35b7:	e8 c6 84 00 00       	callq  ba82 <_ZN4Heap3popEv>
    35bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    35c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    35c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    35ce:	48 89 d6             	mov    %rdx,%rsi
    35d1:	48 89 c7             	mov    %rax,%rdi
    35d4:	e8 51 83 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    35d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    35e0:	48 89 c7             	mov    %rax,%rdi
    35e3:	e8 9a 84 00 00       	callq  ba82 <_ZN4Heap3popEv>
    35e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    35ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    35f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    35fa:	48 89 d6             	mov    %rdx,%rsi
    35fd:	48 89 c7             	mov    %rax,%rdi
    3600:	e8 25 83 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3605:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    360c:	48 89 c7             	mov    %rax,%rdi
    360f:	e8 6e 84 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3614:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    361b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    361f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3626:	48 89 d6             	mov    %rdx,%rsi
    3629:	48 89 c7             	mov    %rax,%rdi
    362c:	e8 f9 82 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3631:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3638:	48 89 c7             	mov    %rax,%rdi
    363b:	e8 42 84 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3640:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3647:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    364b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3652:	48 89 d6             	mov    %rdx,%rsi
    3655:	48 89 c7             	mov    %rax,%rdi
    3658:	e8 cd 82 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    365d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3664:	48 89 c7             	mov    %rax,%rdi
    3667:	e8 16 84 00 00       	callq  ba82 <_ZN4Heap3popEv>
    366c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3673:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3677:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    367e:	48 89 d6             	mov    %rdx,%rsi
    3681:	48 89 c7             	mov    %rax,%rdi
    3684:	e8 a1 82 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3689:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3690:	48 89 c7             	mov    %rax,%rdi
    3693:	e8 ea 83 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3698:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    369f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    36a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    36aa:	48 89 d6             	mov    %rdx,%rsi
    36ad:	48 89 c7             	mov    %rax,%rdi
    36b0:	e8 75 82 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    36b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    36bc:	48 89 c7             	mov    %rax,%rdi
    36bf:	e8 be 83 00 00       	callq  ba82 <_ZN4Heap3popEv>
    36c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    36cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    36cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    36d6:	48 89 d6             	mov    %rdx,%rsi
    36d9:	48 89 c7             	mov    %rax,%rdi
    36dc:	e8 49 82 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    36e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    36e8:	48 89 c7             	mov    %rax,%rdi
    36eb:	e8 92 83 00 00       	callq  ba82 <_ZN4Heap3popEv>
    36f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    36f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    36fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3702:	48 89 d6             	mov    %rdx,%rsi
    3705:	48 89 c7             	mov    %rax,%rdi
    3708:	e8 1d 82 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    370d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3714:	48 89 c7             	mov    %rax,%rdi
    3717:	e8 66 83 00 00       	callq  ba82 <_ZN4Heap3popEv>
    371c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3723:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3727:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    372e:	48 89 d6             	mov    %rdx,%rsi
    3731:	48 89 c7             	mov    %rax,%rdi
    3734:	e8 f1 81 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3739:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3740:	48 89 c7             	mov    %rax,%rdi
    3743:	e8 3a 83 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3748:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    374f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3753:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    375a:	48 89 d6             	mov    %rdx,%rsi
    375d:	48 89 c7             	mov    %rax,%rdi
    3760:	e8 c5 81 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3765:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    376c:	48 89 c7             	mov    %rax,%rdi
    376f:	e8 0e 83 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3774:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    377b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    377f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3786:	48 89 d6             	mov    %rdx,%rsi
    3789:	48 89 c7             	mov    %rax,%rdi
    378c:	e8 99 81 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3791:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3798:	48 89 c7             	mov    %rax,%rdi
    379b:	e8 e2 82 00 00       	callq  ba82 <_ZN4Heap3popEv>
    37a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    37a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    37ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    37b2:	48 89 d6             	mov    %rdx,%rsi
    37b5:	48 89 c7             	mov    %rax,%rdi
    37b8:	e8 6d 81 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    37bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    37c4:	48 89 c7             	mov    %rax,%rdi
    37c7:	e8 b6 82 00 00       	callq  ba82 <_ZN4Heap3popEv>
    37cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    37d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    37d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    37de:	48 89 d6             	mov    %rdx,%rsi
    37e1:	48 89 c7             	mov    %rax,%rdi
    37e4:	e8 41 81 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    37e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    37f0:	48 89 c7             	mov    %rax,%rdi
    37f3:	e8 8a 82 00 00       	callq  ba82 <_ZN4Heap3popEv>
    37f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    37ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3803:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    380a:	48 89 d6             	mov    %rdx,%rsi
    380d:	48 89 c7             	mov    %rax,%rdi
    3810:	e8 15 81 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3815:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    381c:	48 89 c7             	mov    %rax,%rdi
    381f:	e8 5e 82 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3824:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    382b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    382f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3836:	48 89 d6             	mov    %rdx,%rsi
    3839:	48 89 c7             	mov    %rax,%rdi
    383c:	e8 e9 80 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3841:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3848:	48 89 c7             	mov    %rax,%rdi
    384b:	e8 32 82 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3850:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3857:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    385b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3862:	48 89 d6             	mov    %rdx,%rsi
    3865:	48 89 c7             	mov    %rax,%rdi
    3868:	e8 bd 80 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    386d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3874:	48 89 c7             	mov    %rax,%rdi
    3877:	e8 06 82 00 00       	callq  ba82 <_ZN4Heap3popEv>
    387c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3883:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3887:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    388e:	48 89 d6             	mov    %rdx,%rsi
    3891:	48 89 c7             	mov    %rax,%rdi
    3894:	e8 91 80 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3899:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    38a0:	48 89 c7             	mov    %rax,%rdi
    38a3:	e8 da 81 00 00       	callq  ba82 <_ZN4Heap3popEv>
    38a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    38af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    38b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    38ba:	48 89 d6             	mov    %rdx,%rsi
    38bd:	48 89 c7             	mov    %rax,%rdi
    38c0:	e8 65 80 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    38c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    38cc:	48 89 c7             	mov    %rax,%rdi
    38cf:	e8 ae 81 00 00       	callq  ba82 <_ZN4Heap3popEv>
    38d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    38db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    38df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    38e6:	48 89 d6             	mov    %rdx,%rsi
    38e9:	48 89 c7             	mov    %rax,%rdi
    38ec:	e8 39 80 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    38f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    38f8:	48 89 c7             	mov    %rax,%rdi
    38fb:	e8 82 81 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3900:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3907:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    390b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3912:	48 89 d6             	mov    %rdx,%rsi
    3915:	48 89 c7             	mov    %rax,%rdi
    3918:	e8 0d 80 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    391d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3924:	48 89 c7             	mov    %rax,%rdi
    3927:	e8 56 81 00 00       	callq  ba82 <_ZN4Heap3popEv>
    392c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3933:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3937:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    393e:	48 89 d6             	mov    %rdx,%rsi
    3941:	48 89 c7             	mov    %rax,%rdi
    3944:	e8 e1 7f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3949:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3950:	48 89 c7             	mov    %rax,%rdi
    3953:	e8 2a 81 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3958:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    395f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3963:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    396a:	48 89 d6             	mov    %rdx,%rsi
    396d:	48 89 c7             	mov    %rax,%rdi
    3970:	e8 b5 7f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3975:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    397c:	48 89 c7             	mov    %rax,%rdi
    397f:	e8 fe 80 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3984:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    398b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    398f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3996:	48 89 d6             	mov    %rdx,%rsi
    3999:	48 89 c7             	mov    %rax,%rdi
    399c:	e8 89 7f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    39a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    39a8:	48 89 c7             	mov    %rax,%rdi
    39ab:	e8 d2 80 00 00       	callq  ba82 <_ZN4Heap3popEv>
    39b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    39b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    39bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    39c2:	48 89 d6             	mov    %rdx,%rsi
    39c5:	48 89 c7             	mov    %rax,%rdi
    39c8:	e8 5d 7f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    39cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    39d4:	48 89 c7             	mov    %rax,%rdi
    39d7:	e8 a6 80 00 00       	callq  ba82 <_ZN4Heap3popEv>
    39dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    39e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    39e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    39ee:	48 89 d6             	mov    %rdx,%rsi
    39f1:	48 89 c7             	mov    %rax,%rdi
    39f4:	e8 31 7f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    39f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a00:	48 89 c7             	mov    %rax,%rdi
    3a03:	e8 7a 80 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3a08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3a0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3a13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a1a:	48 89 d6             	mov    %rdx,%rsi
    3a1d:	48 89 c7             	mov    %rax,%rdi
    3a20:	e8 05 7f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3a25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a2c:	48 89 c7             	mov    %rax,%rdi
    3a2f:	e8 4e 80 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3a34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3a3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3a3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a46:	48 89 d6             	mov    %rdx,%rsi
    3a49:	48 89 c7             	mov    %rax,%rdi
    3a4c:	e8 d9 7e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3a51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a58:	48 89 c7             	mov    %rax,%rdi
    3a5b:	e8 22 80 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3a60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3a67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3a6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a72:	48 89 d6             	mov    %rdx,%rsi
    3a75:	48 89 c7             	mov    %rax,%rdi
    3a78:	e8 ad 7e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3a7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a84:	48 89 c7             	mov    %rax,%rdi
    3a87:	e8 f6 7f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3a8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3a93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3a97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3a9e:	48 89 d6             	mov    %rdx,%rsi
    3aa1:	48 89 c7             	mov    %rax,%rdi
    3aa4:	e8 81 7e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3aa9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ab0:	48 89 c7             	mov    %rax,%rdi
    3ab3:	e8 ca 7f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3ab8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3abf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3ac3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3aca:	48 89 d6             	mov    %rdx,%rsi
    3acd:	48 89 c7             	mov    %rax,%rdi
    3ad0:	e8 55 7e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3ad5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3adc:	48 89 c7             	mov    %rax,%rdi
    3adf:	e8 9e 7f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3ae4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3aeb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3aef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3af6:	48 89 d6             	mov    %rdx,%rsi
    3af9:	48 89 c7             	mov    %rax,%rdi
    3afc:	e8 29 7e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3b01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b08:	48 89 c7             	mov    %rax,%rdi
    3b0b:	e8 72 7f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3b10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3b17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3b1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b22:	48 89 d6             	mov    %rdx,%rsi
    3b25:	48 89 c7             	mov    %rax,%rdi
    3b28:	e8 fd 7d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3b2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b34:	48 89 c7             	mov    %rax,%rdi
    3b37:	e8 46 7f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3b3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3b43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3b47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b4e:	48 89 d6             	mov    %rdx,%rsi
    3b51:	48 89 c7             	mov    %rax,%rdi
    3b54:	e8 d1 7d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3b59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b60:	48 89 c7             	mov    %rax,%rdi
    3b63:	e8 1a 7f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3b68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3b6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3b73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b7a:	48 89 d6             	mov    %rdx,%rsi
    3b7d:	48 89 c7             	mov    %rax,%rdi
    3b80:	e8 a5 7d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3b85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3b8c:	48 89 c7             	mov    %rax,%rdi
    3b8f:	e8 ee 7e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3b94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3b9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3b9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ba6:	48 89 d6             	mov    %rdx,%rsi
    3ba9:	48 89 c7             	mov    %rax,%rdi
    3bac:	e8 79 7d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3bb1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3bb8:	48 89 c7             	mov    %rax,%rdi
    3bbb:	e8 c2 7e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3bc0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3bc7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3bcb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3bd2:	48 89 d6             	mov    %rdx,%rsi
    3bd5:	48 89 c7             	mov    %rax,%rdi
    3bd8:	e8 4d 7d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3bdd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3be4:	48 89 c7             	mov    %rax,%rdi
    3be7:	e8 96 7e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3bec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3bf3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3bf7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3bfe:	48 89 d6             	mov    %rdx,%rsi
    3c01:	48 89 c7             	mov    %rax,%rdi
    3c04:	e8 21 7d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3c09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c10:	48 89 c7             	mov    %rax,%rdi
    3c13:	e8 6a 7e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3c18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3c1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3c23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c2a:	48 89 d6             	mov    %rdx,%rsi
    3c2d:	48 89 c7             	mov    %rax,%rdi
    3c30:	e8 f5 7c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3c35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c3c:	48 89 c7             	mov    %rax,%rdi
    3c3f:	e8 3e 7e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3c44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3c4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3c4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c56:	48 89 d6             	mov    %rdx,%rsi
    3c59:	48 89 c7             	mov    %rax,%rdi
    3c5c:	e8 c9 7c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3c61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c68:	48 89 c7             	mov    %rax,%rdi
    3c6b:	e8 12 7e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3c70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3c77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3c7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c82:	48 89 d6             	mov    %rdx,%rsi
    3c85:	48 89 c7             	mov    %rax,%rdi
    3c88:	e8 9d 7c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3c8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3c94:	48 89 c7             	mov    %rax,%rdi
    3c97:	e8 e6 7d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3c9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3ca3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3ca7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3cae:	48 89 d6             	mov    %rdx,%rsi
    3cb1:	48 89 c7             	mov    %rax,%rdi
    3cb4:	e8 71 7c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3cb9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3cc0:	48 89 c7             	mov    %rax,%rdi
    3cc3:	e8 ba 7d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3cc8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3ccf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3cd3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3cda:	48 89 d6             	mov    %rdx,%rsi
    3cdd:	48 89 c7             	mov    %rax,%rdi
    3ce0:	e8 45 7c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3ce5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3cec:	48 89 c7             	mov    %rax,%rdi
    3cef:	e8 8e 7d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3cf4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3cfb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3cff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d06:	48 89 d6             	mov    %rdx,%rsi
    3d09:	48 89 c7             	mov    %rax,%rdi
    3d0c:	e8 19 7c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3d11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d18:	48 89 c7             	mov    %rax,%rdi
    3d1b:	e8 62 7d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3d20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3d27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3d2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d32:	48 89 d6             	mov    %rdx,%rsi
    3d35:	48 89 c7             	mov    %rax,%rdi
    3d38:	e8 ed 7b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3d3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d44:	48 89 c7             	mov    %rax,%rdi
    3d47:	e8 36 7d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3d4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3d53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3d57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d5e:	48 89 d6             	mov    %rdx,%rsi
    3d61:	48 89 c7             	mov    %rax,%rdi
    3d64:	e8 c1 7b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3d69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d70:	48 89 c7             	mov    %rax,%rdi
    3d73:	e8 0a 7d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3d78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3d7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3d83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d8a:	48 89 d6             	mov    %rdx,%rsi
    3d8d:	48 89 c7             	mov    %rax,%rdi
    3d90:	e8 95 7b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3d95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3d9c:	48 89 c7             	mov    %rax,%rdi
    3d9f:	e8 de 7c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3da4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3dab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3daf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3db6:	48 89 d6             	mov    %rdx,%rsi
    3db9:	48 89 c7             	mov    %rax,%rdi
    3dbc:	e8 69 7b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3dc1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3dc8:	48 89 c7             	mov    %rax,%rdi
    3dcb:	e8 b2 7c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3dd0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3dd7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3ddb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3de2:	48 89 d6             	mov    %rdx,%rsi
    3de5:	48 89 c7             	mov    %rax,%rdi
    3de8:	e8 3d 7b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3ded:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3df4:	48 89 c7             	mov    %rax,%rdi
    3df7:	e8 86 7c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3dfc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3e03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3e07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e0e:	48 89 d6             	mov    %rdx,%rsi
    3e11:	48 89 c7             	mov    %rax,%rdi
    3e14:	e8 11 7b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3e19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e20:	48 89 c7             	mov    %rax,%rdi
    3e23:	e8 5a 7c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3e28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3e2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3e33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e3a:	48 89 d6             	mov    %rdx,%rsi
    3e3d:	48 89 c7             	mov    %rax,%rdi
    3e40:	e8 e5 7a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3e45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e4c:	48 89 c7             	mov    %rax,%rdi
    3e4f:	e8 2e 7c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3e54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3e5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3e5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e66:	48 89 d6             	mov    %rdx,%rsi
    3e69:	48 89 c7             	mov    %rax,%rdi
    3e6c:	e8 b9 7a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3e71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e78:	48 89 c7             	mov    %rax,%rdi
    3e7b:	e8 02 7c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3e80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3e87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3e8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3e92:	48 89 d6             	mov    %rdx,%rsi
    3e95:	48 89 c7             	mov    %rax,%rdi
    3e98:	e8 8d 7a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3e9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ea4:	48 89 c7             	mov    %rax,%rdi
    3ea7:	e8 d6 7b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3eac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3eb3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3eb7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ebe:	48 89 d6             	mov    %rdx,%rsi
    3ec1:	48 89 c7             	mov    %rax,%rdi
    3ec4:	e8 61 7a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3ec9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ed0:	48 89 c7             	mov    %rax,%rdi
    3ed3:	e8 aa 7b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3ed8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3edf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3ee3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3eea:	48 89 d6             	mov    %rdx,%rsi
    3eed:	48 89 c7             	mov    %rax,%rdi
    3ef0:	e8 35 7a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3ef5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3efc:	48 89 c7             	mov    %rax,%rdi
    3eff:	e8 7e 7b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3f04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3f0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3f0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f16:	48 89 d6             	mov    %rdx,%rsi
    3f19:	48 89 c7             	mov    %rax,%rdi
    3f1c:	e8 09 7a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3f21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f28:	48 89 c7             	mov    %rax,%rdi
    3f2b:	e8 52 7b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3f30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3f37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3f3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f42:	48 89 d6             	mov    %rdx,%rsi
    3f45:	48 89 c7             	mov    %rax,%rdi
    3f48:	e8 dd 79 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3f4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f54:	48 89 c7             	mov    %rax,%rdi
    3f57:	e8 26 7b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3f5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3f63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3f67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f6e:	48 89 d6             	mov    %rdx,%rsi
    3f71:	48 89 c7             	mov    %rax,%rdi
    3f74:	e8 b1 79 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3f79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f80:	48 89 c7             	mov    %rax,%rdi
    3f83:	e8 fa 7a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3f88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3f8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3f93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3f9a:	48 89 d6             	mov    %rdx,%rsi
    3f9d:	48 89 c7             	mov    %rax,%rdi
    3fa0:	e8 85 79 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3fa5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3fac:	48 89 c7             	mov    %rax,%rdi
    3faf:	e8 ce 7a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3fb4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3fbb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3fbf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3fc6:	48 89 d6             	mov    %rdx,%rsi
    3fc9:	48 89 c7             	mov    %rax,%rdi
    3fcc:	e8 59 79 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3fd1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3fd8:	48 89 c7             	mov    %rax,%rdi
    3fdb:	e8 a2 7a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    3fe0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    3fe7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    3feb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    3ff2:	48 89 d6             	mov    %rdx,%rsi
    3ff5:	48 89 c7             	mov    %rax,%rdi
    3ff8:	e8 2d 79 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    3ffd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4004:	48 89 c7             	mov    %rax,%rdi
    4007:	e8 76 7a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    400c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4013:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4017:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    401e:	48 89 d6             	mov    %rdx,%rsi
    4021:	48 89 c7             	mov    %rax,%rdi
    4024:	e8 01 79 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4029:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4030:	48 89 c7             	mov    %rax,%rdi
    4033:	e8 4a 7a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4038:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    403f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4043:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    404a:	48 89 d6             	mov    %rdx,%rsi
    404d:	48 89 c7             	mov    %rax,%rdi
    4050:	e8 d5 78 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4055:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    405c:	48 89 c7             	mov    %rax,%rdi
    405f:	e8 1e 7a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4064:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    406b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    406f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4076:	48 89 d6             	mov    %rdx,%rsi
    4079:	48 89 c7             	mov    %rax,%rdi
    407c:	e8 a9 78 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4081:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4088:	48 89 c7             	mov    %rax,%rdi
    408b:	e8 f2 79 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4090:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4097:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    409b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    40a2:	48 89 d6             	mov    %rdx,%rsi
    40a5:	48 89 c7             	mov    %rax,%rdi
    40a8:	e8 7d 78 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    40ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    40b4:	48 89 c7             	mov    %rax,%rdi
    40b7:	e8 c6 79 00 00       	callq  ba82 <_ZN4Heap3popEv>
    40bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    40c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    40c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    40ce:	48 89 d6             	mov    %rdx,%rsi
    40d1:	48 89 c7             	mov    %rax,%rdi
    40d4:	e8 51 78 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    40d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    40e0:	48 89 c7             	mov    %rax,%rdi
    40e3:	e8 9a 79 00 00       	callq  ba82 <_ZN4Heap3popEv>
    40e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    40ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    40f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    40fa:	48 89 d6             	mov    %rdx,%rsi
    40fd:	48 89 c7             	mov    %rax,%rdi
    4100:	e8 25 78 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4105:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    410c:	48 89 c7             	mov    %rax,%rdi
    410f:	e8 6e 79 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4114:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    411b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    411f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4126:	48 89 d6             	mov    %rdx,%rsi
    4129:	48 89 c7             	mov    %rax,%rdi
    412c:	e8 f9 77 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4131:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4138:	48 89 c7             	mov    %rax,%rdi
    413b:	e8 42 79 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4140:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4147:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    414b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4152:	48 89 d6             	mov    %rdx,%rsi
    4155:	48 89 c7             	mov    %rax,%rdi
    4158:	e8 cd 77 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    415d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4164:	48 89 c7             	mov    %rax,%rdi
    4167:	e8 16 79 00 00       	callq  ba82 <_ZN4Heap3popEv>
    416c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4173:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4177:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    417e:	48 89 d6             	mov    %rdx,%rsi
    4181:	48 89 c7             	mov    %rax,%rdi
    4184:	e8 a1 77 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4189:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4190:	48 89 c7             	mov    %rax,%rdi
    4193:	e8 ea 78 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4198:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    419f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    41a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    41aa:	48 89 d6             	mov    %rdx,%rsi
    41ad:	48 89 c7             	mov    %rax,%rdi
    41b0:	e8 75 77 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    41b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    41bc:	48 89 c7             	mov    %rax,%rdi
    41bf:	e8 be 78 00 00       	callq  ba82 <_ZN4Heap3popEv>
    41c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    41cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    41cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    41d6:	48 89 d6             	mov    %rdx,%rsi
    41d9:	48 89 c7             	mov    %rax,%rdi
    41dc:	e8 49 77 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    41e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    41e8:	48 89 c7             	mov    %rax,%rdi
    41eb:	e8 92 78 00 00       	callq  ba82 <_ZN4Heap3popEv>
    41f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    41f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    41fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4202:	48 89 d6             	mov    %rdx,%rsi
    4205:	48 89 c7             	mov    %rax,%rdi
    4208:	e8 1d 77 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    420d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4214:	48 89 c7             	mov    %rax,%rdi
    4217:	e8 66 78 00 00       	callq  ba82 <_ZN4Heap3popEv>
    421c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4223:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4227:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    422e:	48 89 d6             	mov    %rdx,%rsi
    4231:	48 89 c7             	mov    %rax,%rdi
    4234:	e8 f1 76 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4239:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4240:	48 89 c7             	mov    %rax,%rdi
    4243:	e8 3a 78 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4248:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    424f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4253:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    425a:	48 89 d6             	mov    %rdx,%rsi
    425d:	48 89 c7             	mov    %rax,%rdi
    4260:	e8 c5 76 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4265:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    426c:	48 89 c7             	mov    %rax,%rdi
    426f:	e8 0e 78 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4274:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    427b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    427f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4286:	48 89 d6             	mov    %rdx,%rsi
    4289:	48 89 c7             	mov    %rax,%rdi
    428c:	e8 99 76 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4291:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4298:	48 89 c7             	mov    %rax,%rdi
    429b:	e8 e2 77 00 00       	callq  ba82 <_ZN4Heap3popEv>
    42a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    42a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    42ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    42b2:	48 89 d6             	mov    %rdx,%rsi
    42b5:	48 89 c7             	mov    %rax,%rdi
    42b8:	e8 6d 76 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    42bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    42c4:	48 89 c7             	mov    %rax,%rdi
    42c7:	e8 b6 77 00 00       	callq  ba82 <_ZN4Heap3popEv>
    42cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    42d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    42d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    42de:	48 89 d6             	mov    %rdx,%rsi
    42e1:	48 89 c7             	mov    %rax,%rdi
    42e4:	e8 41 76 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    42e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    42f0:	48 89 c7             	mov    %rax,%rdi
    42f3:	e8 8a 77 00 00       	callq  ba82 <_ZN4Heap3popEv>
    42f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    42ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4303:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    430a:	48 89 d6             	mov    %rdx,%rsi
    430d:	48 89 c7             	mov    %rax,%rdi
    4310:	e8 15 76 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4315:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    431c:	48 89 c7             	mov    %rax,%rdi
    431f:	e8 5e 77 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4324:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    432b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    432f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4336:	48 89 d6             	mov    %rdx,%rsi
    4339:	48 89 c7             	mov    %rax,%rdi
    433c:	e8 e9 75 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4341:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4348:	48 89 c7             	mov    %rax,%rdi
    434b:	e8 32 77 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4350:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4357:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    435b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4362:	48 89 d6             	mov    %rdx,%rsi
    4365:	48 89 c7             	mov    %rax,%rdi
    4368:	e8 bd 75 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    436d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4374:	48 89 c7             	mov    %rax,%rdi
    4377:	e8 06 77 00 00       	callq  ba82 <_ZN4Heap3popEv>
    437c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4383:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4387:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    438e:	48 89 d6             	mov    %rdx,%rsi
    4391:	48 89 c7             	mov    %rax,%rdi
    4394:	e8 91 75 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4399:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    43a0:	48 89 c7             	mov    %rax,%rdi
    43a3:	e8 da 76 00 00       	callq  ba82 <_ZN4Heap3popEv>
    43a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    43af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    43b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    43ba:	48 89 d6             	mov    %rdx,%rsi
    43bd:	48 89 c7             	mov    %rax,%rdi
    43c0:	e8 65 75 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    43c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    43cc:	48 89 c7             	mov    %rax,%rdi
    43cf:	e8 ae 76 00 00       	callq  ba82 <_ZN4Heap3popEv>
    43d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    43db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    43df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    43e6:	48 89 d6             	mov    %rdx,%rsi
    43e9:	48 89 c7             	mov    %rax,%rdi
    43ec:	e8 39 75 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    43f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    43f8:	48 89 c7             	mov    %rax,%rdi
    43fb:	e8 82 76 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4400:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4407:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    440b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4412:	48 89 d6             	mov    %rdx,%rsi
    4415:	48 89 c7             	mov    %rax,%rdi
    4418:	e8 0d 75 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    441d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4424:	48 89 c7             	mov    %rax,%rdi
    4427:	e8 56 76 00 00       	callq  ba82 <_ZN4Heap3popEv>
    442c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4433:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4437:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    443e:	48 89 d6             	mov    %rdx,%rsi
    4441:	48 89 c7             	mov    %rax,%rdi
    4444:	e8 e1 74 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4449:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4450:	48 89 c7             	mov    %rax,%rdi
    4453:	e8 2a 76 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4458:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    445f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4463:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    446a:	48 89 d6             	mov    %rdx,%rsi
    446d:	48 89 c7             	mov    %rax,%rdi
    4470:	e8 b5 74 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4475:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    447c:	48 89 c7             	mov    %rax,%rdi
    447f:	e8 fe 75 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4484:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    448b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    448f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4496:	48 89 d6             	mov    %rdx,%rsi
    4499:	48 89 c7             	mov    %rax,%rdi
    449c:	e8 89 74 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    44a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    44a8:	48 89 c7             	mov    %rax,%rdi
    44ab:	e8 d2 75 00 00       	callq  ba82 <_ZN4Heap3popEv>
    44b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    44b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    44bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    44c2:	48 89 d6             	mov    %rdx,%rsi
    44c5:	48 89 c7             	mov    %rax,%rdi
    44c8:	e8 5d 74 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    44cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    44d4:	48 89 c7             	mov    %rax,%rdi
    44d7:	e8 a6 75 00 00       	callq  ba82 <_ZN4Heap3popEv>
    44dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    44e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    44e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    44ee:	48 89 d6             	mov    %rdx,%rsi
    44f1:	48 89 c7             	mov    %rax,%rdi
    44f4:	e8 31 74 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    44f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4500:	48 89 c7             	mov    %rax,%rdi
    4503:	e8 7a 75 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4508:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    450f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4513:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    451a:	48 89 d6             	mov    %rdx,%rsi
    451d:	48 89 c7             	mov    %rax,%rdi
    4520:	e8 05 74 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4525:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    452c:	48 89 c7             	mov    %rax,%rdi
    452f:	e8 4e 75 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4534:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    453b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    453f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4546:	48 89 d6             	mov    %rdx,%rsi
    4549:	48 89 c7             	mov    %rax,%rdi
    454c:	e8 d9 73 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4551:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4558:	48 89 c7             	mov    %rax,%rdi
    455b:	e8 22 75 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4560:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4567:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    456b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4572:	48 89 d6             	mov    %rdx,%rsi
    4575:	48 89 c7             	mov    %rax,%rdi
    4578:	e8 ad 73 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    457d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4584:	48 89 c7             	mov    %rax,%rdi
    4587:	e8 f6 74 00 00       	callq  ba82 <_ZN4Heap3popEv>
    458c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4593:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4597:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    459e:	48 89 d6             	mov    %rdx,%rsi
    45a1:	48 89 c7             	mov    %rax,%rdi
    45a4:	e8 81 73 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    45a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    45b0:	48 89 c7             	mov    %rax,%rdi
    45b3:	e8 ca 74 00 00       	callq  ba82 <_ZN4Heap3popEv>
    45b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    45bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    45c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    45ca:	48 89 d6             	mov    %rdx,%rsi
    45cd:	48 89 c7             	mov    %rax,%rdi
    45d0:	e8 55 73 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    45d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    45dc:	48 89 c7             	mov    %rax,%rdi
    45df:	e8 9e 74 00 00       	callq  ba82 <_ZN4Heap3popEv>
    45e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    45eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    45ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    45f6:	48 89 d6             	mov    %rdx,%rsi
    45f9:	48 89 c7             	mov    %rax,%rdi
    45fc:	e8 29 73 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4601:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4608:	48 89 c7             	mov    %rax,%rdi
    460b:	e8 72 74 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4610:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4617:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    461b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4622:	48 89 d6             	mov    %rdx,%rsi
    4625:	48 89 c7             	mov    %rax,%rdi
    4628:	e8 fd 72 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    462d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4634:	48 89 c7             	mov    %rax,%rdi
    4637:	e8 46 74 00 00       	callq  ba82 <_ZN4Heap3popEv>
    463c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4643:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4647:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    464e:	48 89 d6             	mov    %rdx,%rsi
    4651:	48 89 c7             	mov    %rax,%rdi
    4654:	e8 d1 72 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4659:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4660:	48 89 c7             	mov    %rax,%rdi
    4663:	e8 1a 74 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4668:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    466f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4673:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    467a:	48 89 d6             	mov    %rdx,%rsi
    467d:	48 89 c7             	mov    %rax,%rdi
    4680:	e8 a5 72 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4685:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    468c:	48 89 c7             	mov    %rax,%rdi
    468f:	e8 ee 73 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4694:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    469b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    469f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    46a6:	48 89 d6             	mov    %rdx,%rsi
    46a9:	48 89 c7             	mov    %rax,%rdi
    46ac:	e8 79 72 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    46b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    46b8:	48 89 c7             	mov    %rax,%rdi
    46bb:	e8 c2 73 00 00       	callq  ba82 <_ZN4Heap3popEv>
    46c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    46c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    46cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    46d2:	48 89 d6             	mov    %rdx,%rsi
    46d5:	48 89 c7             	mov    %rax,%rdi
    46d8:	e8 4d 72 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    46dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    46e4:	48 89 c7             	mov    %rax,%rdi
    46e7:	e8 96 73 00 00       	callq  ba82 <_ZN4Heap3popEv>
    46ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    46f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    46f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    46fe:	48 89 d6             	mov    %rdx,%rsi
    4701:	48 89 c7             	mov    %rax,%rdi
    4704:	e8 21 72 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4709:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4710:	48 89 c7             	mov    %rax,%rdi
    4713:	e8 6a 73 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4718:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    471f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4723:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    472a:	48 89 d6             	mov    %rdx,%rsi
    472d:	48 89 c7             	mov    %rax,%rdi
    4730:	e8 f5 71 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4735:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    473c:	48 89 c7             	mov    %rax,%rdi
    473f:	e8 3e 73 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4744:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    474b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    474f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4756:	48 89 d6             	mov    %rdx,%rsi
    4759:	48 89 c7             	mov    %rax,%rdi
    475c:	e8 c9 71 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4761:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4768:	48 89 c7             	mov    %rax,%rdi
    476b:	e8 12 73 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4770:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4777:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    477b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4782:	48 89 d6             	mov    %rdx,%rsi
    4785:	48 89 c7             	mov    %rax,%rdi
    4788:	e8 9d 71 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    478d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4794:	48 89 c7             	mov    %rax,%rdi
    4797:	e8 e6 72 00 00       	callq  ba82 <_ZN4Heap3popEv>
    479c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    47a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    47a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    47ae:	48 89 d6             	mov    %rdx,%rsi
    47b1:	48 89 c7             	mov    %rax,%rdi
    47b4:	e8 71 71 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    47b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    47c0:	48 89 c7             	mov    %rax,%rdi
    47c3:	e8 ba 72 00 00       	callq  ba82 <_ZN4Heap3popEv>
    47c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    47cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    47d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    47da:	48 89 d6             	mov    %rdx,%rsi
    47dd:	48 89 c7             	mov    %rax,%rdi
    47e0:	e8 45 71 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    47e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    47ec:	48 89 c7             	mov    %rax,%rdi
    47ef:	e8 8e 72 00 00       	callq  ba82 <_ZN4Heap3popEv>
    47f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    47fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    47ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4806:	48 89 d6             	mov    %rdx,%rsi
    4809:	48 89 c7             	mov    %rax,%rdi
    480c:	e8 19 71 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4811:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4818:	48 89 c7             	mov    %rax,%rdi
    481b:	e8 62 72 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4820:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4827:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    482b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4832:	48 89 d6             	mov    %rdx,%rsi
    4835:	48 89 c7             	mov    %rax,%rdi
    4838:	e8 ed 70 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    483d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4844:	48 89 c7             	mov    %rax,%rdi
    4847:	e8 36 72 00 00       	callq  ba82 <_ZN4Heap3popEv>
    484c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4853:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4857:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    485e:	48 89 d6             	mov    %rdx,%rsi
    4861:	48 89 c7             	mov    %rax,%rdi
    4864:	e8 c1 70 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4869:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4870:	48 89 c7             	mov    %rax,%rdi
    4873:	e8 0a 72 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4878:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    487f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4883:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    488a:	48 89 d6             	mov    %rdx,%rsi
    488d:	48 89 c7             	mov    %rax,%rdi
    4890:	e8 95 70 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4895:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    489c:	48 89 c7             	mov    %rax,%rdi
    489f:	e8 de 71 00 00       	callq  ba82 <_ZN4Heap3popEv>
    48a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    48ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    48af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    48b6:	48 89 d6             	mov    %rdx,%rsi
    48b9:	48 89 c7             	mov    %rax,%rdi
    48bc:	e8 69 70 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    48c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    48c8:	48 89 c7             	mov    %rax,%rdi
    48cb:	e8 b2 71 00 00       	callq  ba82 <_ZN4Heap3popEv>
    48d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    48d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    48db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    48e2:	48 89 d6             	mov    %rdx,%rsi
    48e5:	48 89 c7             	mov    %rax,%rdi
    48e8:	e8 3d 70 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    48ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    48f4:	48 89 c7             	mov    %rax,%rdi
    48f7:	e8 86 71 00 00       	callq  ba82 <_ZN4Heap3popEv>
    48fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4903:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4907:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    490e:	48 89 d6             	mov    %rdx,%rsi
    4911:	48 89 c7             	mov    %rax,%rdi
    4914:	e8 11 70 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4919:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4920:	48 89 c7             	mov    %rax,%rdi
    4923:	e8 5a 71 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4928:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    492f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4933:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    493a:	48 89 d6             	mov    %rdx,%rsi
    493d:	48 89 c7             	mov    %rax,%rdi
    4940:	e8 e5 6f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4945:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    494c:	48 89 c7             	mov    %rax,%rdi
    494f:	e8 2e 71 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4954:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    495b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    495f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4966:	48 89 d6             	mov    %rdx,%rsi
    4969:	48 89 c7             	mov    %rax,%rdi
    496c:	e8 b9 6f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4971:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4978:	48 89 c7             	mov    %rax,%rdi
    497b:	e8 02 71 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4980:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4987:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    498b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4992:	48 89 d6             	mov    %rdx,%rsi
    4995:	48 89 c7             	mov    %rax,%rdi
    4998:	e8 8d 6f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    499d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    49a4:	48 89 c7             	mov    %rax,%rdi
    49a7:	e8 d6 70 00 00       	callq  ba82 <_ZN4Heap3popEv>
    49ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    49b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    49b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    49be:	48 89 d6             	mov    %rdx,%rsi
    49c1:	48 89 c7             	mov    %rax,%rdi
    49c4:	e8 61 6f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    49c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    49d0:	48 89 c7             	mov    %rax,%rdi
    49d3:	e8 aa 70 00 00       	callq  ba82 <_ZN4Heap3popEv>
    49d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    49df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    49e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    49ea:	48 89 d6             	mov    %rdx,%rsi
    49ed:	48 89 c7             	mov    %rax,%rdi
    49f0:	e8 35 6f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    49f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    49fc:	48 89 c7             	mov    %rax,%rdi
    49ff:	e8 7e 70 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4a04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4a0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4a0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a16:	48 89 d6             	mov    %rdx,%rsi
    4a19:	48 89 c7             	mov    %rax,%rdi
    4a1c:	e8 09 6f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4a21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a28:	48 89 c7             	mov    %rax,%rdi
    4a2b:	e8 52 70 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4a30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4a37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4a3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a42:	48 89 d6             	mov    %rdx,%rsi
    4a45:	48 89 c7             	mov    %rax,%rdi
    4a48:	e8 dd 6e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4a4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a54:	48 89 c7             	mov    %rax,%rdi
    4a57:	e8 26 70 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4a5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4a63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4a67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a6e:	48 89 d6             	mov    %rdx,%rsi
    4a71:	48 89 c7             	mov    %rax,%rdi
    4a74:	e8 b1 6e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4a79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a80:	48 89 c7             	mov    %rax,%rdi
    4a83:	e8 fa 6f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4a88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4a8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4a93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4a9a:	48 89 d6             	mov    %rdx,%rsi
    4a9d:	48 89 c7             	mov    %rax,%rdi
    4aa0:	e8 85 6e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4aa5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4aac:	48 89 c7             	mov    %rax,%rdi
    4aaf:	e8 ce 6f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4ab4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4abb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4abf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ac6:	48 89 d6             	mov    %rdx,%rsi
    4ac9:	48 89 c7             	mov    %rax,%rdi
    4acc:	e8 59 6e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4ad1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ad8:	48 89 c7             	mov    %rax,%rdi
    4adb:	e8 a2 6f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4ae0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4ae7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4aeb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4af2:	48 89 d6             	mov    %rdx,%rsi
    4af5:	48 89 c7             	mov    %rax,%rdi
    4af8:	e8 2d 6e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4afd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b04:	48 89 c7             	mov    %rax,%rdi
    4b07:	e8 76 6f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4b0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4b13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4b17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b1e:	48 89 d6             	mov    %rdx,%rsi
    4b21:	48 89 c7             	mov    %rax,%rdi
    4b24:	e8 01 6e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4b29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b30:	48 89 c7             	mov    %rax,%rdi
    4b33:	e8 4a 6f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4b38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4b3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4b43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b4a:	48 89 d6             	mov    %rdx,%rsi
    4b4d:	48 89 c7             	mov    %rax,%rdi
    4b50:	e8 d5 6d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4b55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b5c:	48 89 c7             	mov    %rax,%rdi
    4b5f:	e8 1e 6f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4b64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4b6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4b6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b76:	48 89 d6             	mov    %rdx,%rsi
    4b79:	48 89 c7             	mov    %rax,%rdi
    4b7c:	e8 a9 6d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4b81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4b88:	48 89 c7             	mov    %rax,%rdi
    4b8b:	e8 f2 6e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4b90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4b97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4b9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ba2:	48 89 d6             	mov    %rdx,%rsi
    4ba5:	48 89 c7             	mov    %rax,%rdi
    4ba8:	e8 7d 6d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4bad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4bb4:	48 89 c7             	mov    %rax,%rdi
    4bb7:	e8 c6 6e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4bbc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4bc3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4bc7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4bce:	48 89 d6             	mov    %rdx,%rsi
    4bd1:	48 89 c7             	mov    %rax,%rdi
    4bd4:	e8 51 6d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4bd9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4be0:	48 89 c7             	mov    %rax,%rdi
    4be3:	e8 9a 6e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4be8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4bef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4bf3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4bfa:	48 89 d6             	mov    %rdx,%rsi
    4bfd:	48 89 c7             	mov    %rax,%rdi
    4c00:	e8 25 6d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4c05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c0c:	48 89 c7             	mov    %rax,%rdi
    4c0f:	e8 6e 6e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4c14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4c1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4c1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c26:	48 89 d6             	mov    %rdx,%rsi
    4c29:	48 89 c7             	mov    %rax,%rdi
    4c2c:	e8 f9 6c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4c31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c38:	48 89 c7             	mov    %rax,%rdi
    4c3b:	e8 42 6e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4c40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4c47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4c4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c52:	48 89 d6             	mov    %rdx,%rsi
    4c55:	48 89 c7             	mov    %rax,%rdi
    4c58:	e8 cd 6c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4c5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c64:	48 89 c7             	mov    %rax,%rdi
    4c67:	e8 16 6e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4c6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4c73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4c77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c7e:	48 89 d6             	mov    %rdx,%rsi
    4c81:	48 89 c7             	mov    %rax,%rdi
    4c84:	e8 a1 6c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4c89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4c90:	48 89 c7             	mov    %rax,%rdi
    4c93:	e8 ea 6d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4c98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4c9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4ca3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4caa:	48 89 d6             	mov    %rdx,%rsi
    4cad:	48 89 c7             	mov    %rax,%rdi
    4cb0:	e8 75 6c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4cb5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4cbc:	48 89 c7             	mov    %rax,%rdi
    4cbf:	e8 be 6d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4cc4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4ccb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4ccf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4cd6:	48 89 d6             	mov    %rdx,%rsi
    4cd9:	48 89 c7             	mov    %rax,%rdi
    4cdc:	e8 49 6c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4ce1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ce8:	48 89 c7             	mov    %rax,%rdi
    4ceb:	e8 92 6d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4cf0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4cf7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4cfb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d02:	48 89 d6             	mov    %rdx,%rsi
    4d05:	48 89 c7             	mov    %rax,%rdi
    4d08:	e8 1d 6c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4d0d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d14:	48 89 c7             	mov    %rax,%rdi
    4d17:	e8 66 6d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4d1c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4d23:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4d27:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d2e:	48 89 d6             	mov    %rdx,%rsi
    4d31:	48 89 c7             	mov    %rax,%rdi
    4d34:	e8 f1 6b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4d39:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d40:	48 89 c7             	mov    %rax,%rdi
    4d43:	e8 3a 6d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4d48:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4d4f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4d53:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d5a:	48 89 d6             	mov    %rdx,%rsi
    4d5d:	48 89 c7             	mov    %rax,%rdi
    4d60:	e8 c5 6b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4d65:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d6c:	48 89 c7             	mov    %rax,%rdi
    4d6f:	e8 0e 6d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4d74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4d7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4d7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d86:	48 89 d6             	mov    %rdx,%rsi
    4d89:	48 89 c7             	mov    %rax,%rdi
    4d8c:	e8 99 6b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4d91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4d98:	48 89 c7             	mov    %rax,%rdi
    4d9b:	e8 e2 6c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4da0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4da7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4dab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4db2:	48 89 d6             	mov    %rdx,%rsi
    4db5:	48 89 c7             	mov    %rax,%rdi
    4db8:	e8 6d 6b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4dbd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4dc4:	48 89 c7             	mov    %rax,%rdi
    4dc7:	e8 b6 6c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4dcc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4dd3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4dd7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4dde:	48 89 d6             	mov    %rdx,%rsi
    4de1:	48 89 c7             	mov    %rax,%rdi
    4de4:	e8 41 6b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4de9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4df0:	48 89 c7             	mov    %rax,%rdi
    4df3:	e8 8a 6c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4df8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4dff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4e03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e0a:	48 89 d6             	mov    %rdx,%rsi
    4e0d:	48 89 c7             	mov    %rax,%rdi
    4e10:	e8 15 6b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4e15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e1c:	48 89 c7             	mov    %rax,%rdi
    4e1f:	e8 5e 6c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4e24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4e2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4e2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e36:	48 89 d6             	mov    %rdx,%rsi
    4e39:	48 89 c7             	mov    %rax,%rdi
    4e3c:	e8 e9 6a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4e41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e48:	48 89 c7             	mov    %rax,%rdi
    4e4b:	e8 32 6c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4e50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4e57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4e5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e62:	48 89 d6             	mov    %rdx,%rsi
    4e65:	48 89 c7             	mov    %rax,%rdi
    4e68:	e8 bd 6a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4e6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e74:	48 89 c7             	mov    %rax,%rdi
    4e77:	e8 06 6c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4e7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4e83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4e87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4e8e:	48 89 d6             	mov    %rdx,%rsi
    4e91:	48 89 c7             	mov    %rax,%rdi
    4e94:	e8 91 6a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4e99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ea0:	48 89 c7             	mov    %rax,%rdi
    4ea3:	e8 da 6b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4ea8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4eaf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4eb3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4eba:	48 89 d6             	mov    %rdx,%rsi
    4ebd:	48 89 c7             	mov    %rax,%rdi
    4ec0:	e8 65 6a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4ec5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ecc:	48 89 c7             	mov    %rax,%rdi
    4ecf:	e8 ae 6b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4ed4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4edb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4edf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ee6:	48 89 d6             	mov    %rdx,%rsi
    4ee9:	48 89 c7             	mov    %rax,%rdi
    4eec:	e8 39 6a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4ef1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4ef8:	48 89 c7             	mov    %rax,%rdi
    4efb:	e8 82 6b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4f00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4f07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4f0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f12:	48 89 d6             	mov    %rdx,%rsi
    4f15:	48 89 c7             	mov    %rax,%rdi
    4f18:	e8 0d 6a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4f1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f24:	48 89 c7             	mov    %rax,%rdi
    4f27:	e8 56 6b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4f2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4f33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4f37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f3e:	48 89 d6             	mov    %rdx,%rsi
    4f41:	48 89 c7             	mov    %rax,%rdi
    4f44:	e8 e1 69 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4f49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f50:	48 89 c7             	mov    %rax,%rdi
    4f53:	e8 2a 6b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4f58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4f5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4f63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f6a:	48 89 d6             	mov    %rdx,%rsi
    4f6d:	48 89 c7             	mov    %rax,%rdi
    4f70:	e8 b5 69 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4f75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f7c:	48 89 c7             	mov    %rax,%rdi
    4f7f:	e8 fe 6a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4f84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4f8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4f8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4f96:	48 89 d6             	mov    %rdx,%rsi
    4f99:	48 89 c7             	mov    %rax,%rdi
    4f9c:	e8 89 69 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4fa1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4fa8:	48 89 c7             	mov    %rax,%rdi
    4fab:	e8 d2 6a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4fb0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4fb7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4fbb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4fc2:	48 89 d6             	mov    %rdx,%rsi
    4fc5:	48 89 c7             	mov    %rax,%rdi
    4fc8:	e8 5d 69 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4fcd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4fd4:	48 89 c7             	mov    %rax,%rdi
    4fd7:	e8 a6 6a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    4fdc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    4fe3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    4fe7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    4fee:	48 89 d6             	mov    %rdx,%rsi
    4ff1:	48 89 c7             	mov    %rax,%rdi
    4ff4:	e8 31 69 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    4ff9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5000:	48 89 c7             	mov    %rax,%rdi
    5003:	e8 7a 6a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5008:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    500f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5013:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    501a:	48 89 d6             	mov    %rdx,%rsi
    501d:	48 89 c7             	mov    %rax,%rdi
    5020:	e8 05 69 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5025:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    502c:	48 89 c7             	mov    %rax,%rdi
    502f:	e8 4e 6a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5034:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    503b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    503f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5046:	48 89 d6             	mov    %rdx,%rsi
    5049:	48 89 c7             	mov    %rax,%rdi
    504c:	e8 d9 68 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5051:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5058:	48 89 c7             	mov    %rax,%rdi
    505b:	e8 22 6a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5060:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5067:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    506b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5072:	48 89 d6             	mov    %rdx,%rsi
    5075:	48 89 c7             	mov    %rax,%rdi
    5078:	e8 ad 68 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    507d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5084:	48 89 c7             	mov    %rax,%rdi
    5087:	e8 f6 69 00 00       	callq  ba82 <_ZN4Heap3popEv>
    508c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5093:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5097:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    509e:	48 89 d6             	mov    %rdx,%rsi
    50a1:	48 89 c7             	mov    %rax,%rdi
    50a4:	e8 81 68 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    50a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    50b0:	48 89 c7             	mov    %rax,%rdi
    50b3:	e8 ca 69 00 00       	callq  ba82 <_ZN4Heap3popEv>
    50b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    50bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    50c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    50ca:	48 89 d6             	mov    %rdx,%rsi
    50cd:	48 89 c7             	mov    %rax,%rdi
    50d0:	e8 55 68 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    50d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    50dc:	48 89 c7             	mov    %rax,%rdi
    50df:	e8 9e 69 00 00       	callq  ba82 <_ZN4Heap3popEv>
    50e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    50eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    50ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    50f6:	48 89 d6             	mov    %rdx,%rsi
    50f9:	48 89 c7             	mov    %rax,%rdi
    50fc:	e8 29 68 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5101:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5108:	48 89 c7             	mov    %rax,%rdi
    510b:	e8 72 69 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5110:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5117:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    511b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5122:	48 89 d6             	mov    %rdx,%rsi
    5125:	48 89 c7             	mov    %rax,%rdi
    5128:	e8 fd 67 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    512d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5134:	48 89 c7             	mov    %rax,%rdi
    5137:	e8 46 69 00 00       	callq  ba82 <_ZN4Heap3popEv>
    513c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5143:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5147:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    514e:	48 89 d6             	mov    %rdx,%rsi
    5151:	48 89 c7             	mov    %rax,%rdi
    5154:	e8 d1 67 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5159:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5160:	48 89 c7             	mov    %rax,%rdi
    5163:	e8 1a 69 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5168:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    516f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5173:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    517a:	48 89 d6             	mov    %rdx,%rsi
    517d:	48 89 c7             	mov    %rax,%rdi
    5180:	e8 a5 67 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5185:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    518c:	48 89 c7             	mov    %rax,%rdi
    518f:	e8 ee 68 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5194:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    519b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    519f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    51a6:	48 89 d6             	mov    %rdx,%rsi
    51a9:	48 89 c7             	mov    %rax,%rdi
    51ac:	e8 79 67 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    51b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    51b8:	48 89 c7             	mov    %rax,%rdi
    51bb:	e8 c2 68 00 00       	callq  ba82 <_ZN4Heap3popEv>
    51c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    51c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    51cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    51d2:	48 89 d6             	mov    %rdx,%rsi
    51d5:	48 89 c7             	mov    %rax,%rdi
    51d8:	e8 4d 67 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    51dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    51e4:	48 89 c7             	mov    %rax,%rdi
    51e7:	e8 96 68 00 00       	callq  ba82 <_ZN4Heap3popEv>
    51ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    51f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    51f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    51fe:	48 89 d6             	mov    %rdx,%rsi
    5201:	48 89 c7             	mov    %rax,%rdi
    5204:	e8 21 67 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5209:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5210:	48 89 c7             	mov    %rax,%rdi
    5213:	e8 6a 68 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5218:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    521f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5223:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    522a:	48 89 d6             	mov    %rdx,%rsi
    522d:	48 89 c7             	mov    %rax,%rdi
    5230:	e8 f5 66 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5235:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    523c:	48 89 c7             	mov    %rax,%rdi
    523f:	e8 3e 68 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5244:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    524b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    524f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5256:	48 89 d6             	mov    %rdx,%rsi
    5259:	48 89 c7             	mov    %rax,%rdi
    525c:	e8 c9 66 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5261:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5268:	48 89 c7             	mov    %rax,%rdi
    526b:	e8 12 68 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5270:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5277:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    527b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5282:	48 89 d6             	mov    %rdx,%rsi
    5285:	48 89 c7             	mov    %rax,%rdi
    5288:	e8 9d 66 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    528d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5294:	48 89 c7             	mov    %rax,%rdi
    5297:	e8 e6 67 00 00       	callq  ba82 <_ZN4Heap3popEv>
    529c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    52a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    52a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    52ae:	48 89 d6             	mov    %rdx,%rsi
    52b1:	48 89 c7             	mov    %rax,%rdi
    52b4:	e8 71 66 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    52b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    52c0:	48 89 c7             	mov    %rax,%rdi
    52c3:	e8 ba 67 00 00       	callq  ba82 <_ZN4Heap3popEv>
    52c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    52cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    52d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    52da:	48 89 d6             	mov    %rdx,%rsi
    52dd:	48 89 c7             	mov    %rax,%rdi
    52e0:	e8 45 66 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    52e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    52ec:	48 89 c7             	mov    %rax,%rdi
    52ef:	e8 8e 67 00 00       	callq  ba82 <_ZN4Heap3popEv>
    52f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    52fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    52ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5306:	48 89 d6             	mov    %rdx,%rsi
    5309:	48 89 c7             	mov    %rax,%rdi
    530c:	e8 19 66 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5311:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5318:	48 89 c7             	mov    %rax,%rdi
    531b:	e8 62 67 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5320:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5327:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    532b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5332:	48 89 d6             	mov    %rdx,%rsi
    5335:	48 89 c7             	mov    %rax,%rdi
    5338:	e8 ed 65 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    533d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5344:	48 89 c7             	mov    %rax,%rdi
    5347:	e8 36 67 00 00       	callq  ba82 <_ZN4Heap3popEv>
    534c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5353:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5357:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    535e:	48 89 d6             	mov    %rdx,%rsi
    5361:	48 89 c7             	mov    %rax,%rdi
    5364:	e8 c1 65 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5369:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5370:	48 89 c7             	mov    %rax,%rdi
    5373:	e8 0a 67 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5378:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    537f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5383:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    538a:	48 89 d6             	mov    %rdx,%rsi
    538d:	48 89 c7             	mov    %rax,%rdi
    5390:	e8 95 65 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5395:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    539c:	48 89 c7             	mov    %rax,%rdi
    539f:	e8 de 66 00 00       	callq  ba82 <_ZN4Heap3popEv>
    53a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    53ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    53af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    53b6:	48 89 d6             	mov    %rdx,%rsi
    53b9:	48 89 c7             	mov    %rax,%rdi
    53bc:	e8 69 65 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    53c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    53c8:	48 89 c7             	mov    %rax,%rdi
    53cb:	e8 b2 66 00 00       	callq  ba82 <_ZN4Heap3popEv>
    53d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    53d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    53db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    53e2:	48 89 d6             	mov    %rdx,%rsi
    53e5:	48 89 c7             	mov    %rax,%rdi
    53e8:	e8 3d 65 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    53ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    53f4:	48 89 c7             	mov    %rax,%rdi
    53f7:	e8 86 66 00 00       	callq  ba82 <_ZN4Heap3popEv>
    53fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5403:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5407:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    540e:	48 89 d6             	mov    %rdx,%rsi
    5411:	48 89 c7             	mov    %rax,%rdi
    5414:	e8 11 65 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5419:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5420:	48 89 c7             	mov    %rax,%rdi
    5423:	e8 5a 66 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5428:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    542f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5433:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    543a:	48 89 d6             	mov    %rdx,%rsi
    543d:	48 89 c7             	mov    %rax,%rdi
    5440:	e8 e5 64 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5445:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    544c:	48 89 c7             	mov    %rax,%rdi
    544f:	e8 2e 66 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5454:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    545b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    545f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5466:	48 89 d6             	mov    %rdx,%rsi
    5469:	48 89 c7             	mov    %rax,%rdi
    546c:	e8 b9 64 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5471:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5478:	48 89 c7             	mov    %rax,%rdi
    547b:	e8 02 66 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5480:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5487:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    548b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5492:	48 89 d6             	mov    %rdx,%rsi
    5495:	48 89 c7             	mov    %rax,%rdi
    5498:	e8 8d 64 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    549d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    54a4:	48 89 c7             	mov    %rax,%rdi
    54a7:	e8 d6 65 00 00       	callq  ba82 <_ZN4Heap3popEv>
    54ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    54b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    54b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    54be:	48 89 d6             	mov    %rdx,%rsi
    54c1:	48 89 c7             	mov    %rax,%rdi
    54c4:	e8 61 64 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    54c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    54d0:	48 89 c7             	mov    %rax,%rdi
    54d3:	e8 aa 65 00 00       	callq  ba82 <_ZN4Heap3popEv>
    54d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    54df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    54e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    54ea:	48 89 d6             	mov    %rdx,%rsi
    54ed:	48 89 c7             	mov    %rax,%rdi
    54f0:	e8 35 64 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    54f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    54fc:	48 89 c7             	mov    %rax,%rdi
    54ff:	e8 7e 65 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5504:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    550b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    550f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5516:	48 89 d6             	mov    %rdx,%rsi
    5519:	48 89 c7             	mov    %rax,%rdi
    551c:	e8 09 64 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5521:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5528:	48 89 c7             	mov    %rax,%rdi
    552b:	e8 52 65 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5530:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5537:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    553b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5542:	48 89 d6             	mov    %rdx,%rsi
    5545:	48 89 c7             	mov    %rax,%rdi
    5548:	e8 dd 63 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    554d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5554:	48 89 c7             	mov    %rax,%rdi
    5557:	e8 26 65 00 00       	callq  ba82 <_ZN4Heap3popEv>
    555c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5563:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5567:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    556e:	48 89 d6             	mov    %rdx,%rsi
    5571:	48 89 c7             	mov    %rax,%rdi
    5574:	e8 b1 63 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5579:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5580:	48 89 c7             	mov    %rax,%rdi
    5583:	e8 fa 64 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5588:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    558f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5593:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    559a:	48 89 d6             	mov    %rdx,%rsi
    559d:	48 89 c7             	mov    %rax,%rdi
    55a0:	e8 85 63 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    55a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    55ac:	48 89 c7             	mov    %rax,%rdi
    55af:	e8 ce 64 00 00       	callq  ba82 <_ZN4Heap3popEv>
    55b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    55bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    55bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    55c6:	48 89 d6             	mov    %rdx,%rsi
    55c9:	48 89 c7             	mov    %rax,%rdi
    55cc:	e8 59 63 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    55d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    55d8:	48 89 c7             	mov    %rax,%rdi
    55db:	e8 a2 64 00 00       	callq  ba82 <_ZN4Heap3popEv>
    55e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    55e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    55eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    55f2:	48 89 d6             	mov    %rdx,%rsi
    55f5:	48 89 c7             	mov    %rax,%rdi
    55f8:	e8 2d 63 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    55fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5604:	48 89 c7             	mov    %rax,%rdi
    5607:	e8 76 64 00 00       	callq  ba82 <_ZN4Heap3popEv>
    560c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5613:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5617:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    561e:	48 89 d6             	mov    %rdx,%rsi
    5621:	48 89 c7             	mov    %rax,%rdi
    5624:	e8 01 63 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5629:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5630:	48 89 c7             	mov    %rax,%rdi
    5633:	e8 4a 64 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5638:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    563f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5643:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    564a:	48 89 d6             	mov    %rdx,%rsi
    564d:	48 89 c7             	mov    %rax,%rdi
    5650:	e8 d5 62 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5655:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    565c:	48 89 c7             	mov    %rax,%rdi
    565f:	e8 1e 64 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5664:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    566b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    566f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5676:	48 89 d6             	mov    %rdx,%rsi
    5679:	48 89 c7             	mov    %rax,%rdi
    567c:	e8 a9 62 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5681:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5688:	48 89 c7             	mov    %rax,%rdi
    568b:	e8 f2 63 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5690:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5697:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    569b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    56a2:	48 89 d6             	mov    %rdx,%rsi
    56a5:	48 89 c7             	mov    %rax,%rdi
    56a8:	e8 7d 62 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    56ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    56b4:	48 89 c7             	mov    %rax,%rdi
    56b7:	e8 c6 63 00 00       	callq  ba82 <_ZN4Heap3popEv>
    56bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    56c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    56c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    56ce:	48 89 d6             	mov    %rdx,%rsi
    56d1:	48 89 c7             	mov    %rax,%rdi
    56d4:	e8 51 62 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    56d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    56e0:	48 89 c7             	mov    %rax,%rdi
    56e3:	e8 9a 63 00 00       	callq  ba82 <_ZN4Heap3popEv>
    56e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    56ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    56f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    56fa:	48 89 d6             	mov    %rdx,%rsi
    56fd:	48 89 c7             	mov    %rax,%rdi
    5700:	e8 25 62 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5705:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    570c:	48 89 c7             	mov    %rax,%rdi
    570f:	e8 6e 63 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5714:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    571b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    571f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5726:	48 89 d6             	mov    %rdx,%rsi
    5729:	48 89 c7             	mov    %rax,%rdi
    572c:	e8 f9 61 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5731:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5738:	48 89 c7             	mov    %rax,%rdi
    573b:	e8 42 63 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5740:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5747:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    574b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5752:	48 89 d6             	mov    %rdx,%rsi
    5755:	48 89 c7             	mov    %rax,%rdi
    5758:	e8 cd 61 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    575d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5764:	48 89 c7             	mov    %rax,%rdi
    5767:	e8 16 63 00 00       	callq  ba82 <_ZN4Heap3popEv>
    576c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5773:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5777:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    577e:	48 89 d6             	mov    %rdx,%rsi
    5781:	48 89 c7             	mov    %rax,%rdi
    5784:	e8 a1 61 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5789:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5790:	48 89 c7             	mov    %rax,%rdi
    5793:	e8 ea 62 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5798:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    579f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    57a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    57aa:	48 89 d6             	mov    %rdx,%rsi
    57ad:	48 89 c7             	mov    %rax,%rdi
    57b0:	e8 75 61 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    57b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    57bc:	48 89 c7             	mov    %rax,%rdi
    57bf:	e8 be 62 00 00       	callq  ba82 <_ZN4Heap3popEv>
    57c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    57cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    57cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    57d6:	48 89 d6             	mov    %rdx,%rsi
    57d9:	48 89 c7             	mov    %rax,%rdi
    57dc:	e8 49 61 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    57e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    57e8:	48 89 c7             	mov    %rax,%rdi
    57eb:	e8 92 62 00 00       	callq  ba82 <_ZN4Heap3popEv>
    57f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    57f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    57fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5802:	48 89 d6             	mov    %rdx,%rsi
    5805:	48 89 c7             	mov    %rax,%rdi
    5808:	e8 1d 61 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    580d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5814:	48 89 c7             	mov    %rax,%rdi
    5817:	e8 66 62 00 00       	callq  ba82 <_ZN4Heap3popEv>
    581c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5823:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5827:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    582e:	48 89 d6             	mov    %rdx,%rsi
    5831:	48 89 c7             	mov    %rax,%rdi
    5834:	e8 f1 60 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5839:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5840:	48 89 c7             	mov    %rax,%rdi
    5843:	e8 3a 62 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5848:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    584f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5853:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    585a:	48 89 d6             	mov    %rdx,%rsi
    585d:	48 89 c7             	mov    %rax,%rdi
    5860:	e8 c5 60 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5865:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    586c:	48 89 c7             	mov    %rax,%rdi
    586f:	e8 0e 62 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5874:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    587b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    587f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5886:	48 89 d6             	mov    %rdx,%rsi
    5889:	48 89 c7             	mov    %rax,%rdi
    588c:	e8 99 60 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5891:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5898:	48 89 c7             	mov    %rax,%rdi
    589b:	e8 e2 61 00 00       	callq  ba82 <_ZN4Heap3popEv>
    58a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    58a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    58ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    58b2:	48 89 d6             	mov    %rdx,%rsi
    58b5:	48 89 c7             	mov    %rax,%rdi
    58b8:	e8 6d 60 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    58bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    58c4:	48 89 c7             	mov    %rax,%rdi
    58c7:	e8 b6 61 00 00       	callq  ba82 <_ZN4Heap3popEv>
    58cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    58d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    58d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    58de:	48 89 d6             	mov    %rdx,%rsi
    58e1:	48 89 c7             	mov    %rax,%rdi
    58e4:	e8 41 60 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    58e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    58f0:	48 89 c7             	mov    %rax,%rdi
    58f3:	e8 8a 61 00 00       	callq  ba82 <_ZN4Heap3popEv>
    58f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    58ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5903:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    590a:	48 89 d6             	mov    %rdx,%rsi
    590d:	48 89 c7             	mov    %rax,%rdi
    5910:	e8 15 60 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5915:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    591c:	48 89 c7             	mov    %rax,%rdi
    591f:	e8 5e 61 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5924:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    592b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    592f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5936:	48 89 d6             	mov    %rdx,%rsi
    5939:	48 89 c7             	mov    %rax,%rdi
    593c:	e8 e9 5f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5941:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5948:	48 89 c7             	mov    %rax,%rdi
    594b:	e8 32 61 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5950:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5957:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    595b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5962:	48 89 d6             	mov    %rdx,%rsi
    5965:	48 89 c7             	mov    %rax,%rdi
    5968:	e8 bd 5f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    596d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5974:	48 89 c7             	mov    %rax,%rdi
    5977:	e8 06 61 00 00       	callq  ba82 <_ZN4Heap3popEv>
    597c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5983:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5987:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    598e:	48 89 d6             	mov    %rdx,%rsi
    5991:	48 89 c7             	mov    %rax,%rdi
    5994:	e8 91 5f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5999:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    59a0:	48 89 c7             	mov    %rax,%rdi
    59a3:	e8 da 60 00 00       	callq  ba82 <_ZN4Heap3popEv>
    59a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    59af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    59b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    59ba:	48 89 d6             	mov    %rdx,%rsi
    59bd:	48 89 c7             	mov    %rax,%rdi
    59c0:	e8 65 5f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    59c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    59cc:	48 89 c7             	mov    %rax,%rdi
    59cf:	e8 ae 60 00 00       	callq  ba82 <_ZN4Heap3popEv>
    59d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    59db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    59df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    59e6:	48 89 d6             	mov    %rdx,%rsi
    59e9:	48 89 c7             	mov    %rax,%rdi
    59ec:	e8 39 5f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    59f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    59f8:	48 89 c7             	mov    %rax,%rdi
    59fb:	e8 82 60 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5a00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5a07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5a0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a12:	48 89 d6             	mov    %rdx,%rsi
    5a15:	48 89 c7             	mov    %rax,%rdi
    5a18:	e8 0d 5f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5a1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a24:	48 89 c7             	mov    %rax,%rdi
    5a27:	e8 56 60 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5a2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5a33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5a37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a3e:	48 89 d6             	mov    %rdx,%rsi
    5a41:	48 89 c7             	mov    %rax,%rdi
    5a44:	e8 e1 5e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5a49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a50:	48 89 c7             	mov    %rax,%rdi
    5a53:	e8 2a 60 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5a58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5a5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5a63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a6a:	48 89 d6             	mov    %rdx,%rsi
    5a6d:	48 89 c7             	mov    %rax,%rdi
    5a70:	e8 b5 5e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5a75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a7c:	48 89 c7             	mov    %rax,%rdi
    5a7f:	e8 fe 5f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5a84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5a8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5a8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5a96:	48 89 d6             	mov    %rdx,%rsi
    5a99:	48 89 c7             	mov    %rax,%rdi
    5a9c:	e8 89 5e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5aa1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5aa8:	48 89 c7             	mov    %rax,%rdi
    5aab:	e8 d2 5f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5ab0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5ab7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5abb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ac2:	48 89 d6             	mov    %rdx,%rsi
    5ac5:	48 89 c7             	mov    %rax,%rdi
    5ac8:	e8 5d 5e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5acd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ad4:	48 89 c7             	mov    %rax,%rdi
    5ad7:	e8 a6 5f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5adc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5ae3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5ae7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5aee:	48 89 d6             	mov    %rdx,%rsi
    5af1:	48 89 c7             	mov    %rax,%rdi
    5af4:	e8 31 5e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5af9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b00:	48 89 c7             	mov    %rax,%rdi
    5b03:	e8 7a 5f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5b08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5b0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5b13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b1a:	48 89 d6             	mov    %rdx,%rsi
    5b1d:	48 89 c7             	mov    %rax,%rdi
    5b20:	e8 05 5e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5b25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b2c:	48 89 c7             	mov    %rax,%rdi
    5b2f:	e8 4e 5f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5b34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5b3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5b3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b46:	48 89 d6             	mov    %rdx,%rsi
    5b49:	48 89 c7             	mov    %rax,%rdi
    5b4c:	e8 d9 5d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5b51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b58:	48 89 c7             	mov    %rax,%rdi
    5b5b:	e8 22 5f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5b60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5b67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5b6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b72:	48 89 d6             	mov    %rdx,%rsi
    5b75:	48 89 c7             	mov    %rax,%rdi
    5b78:	e8 ad 5d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5b7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b84:	48 89 c7             	mov    %rax,%rdi
    5b87:	e8 f6 5e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5b8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5b93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5b97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5b9e:	48 89 d6             	mov    %rdx,%rsi
    5ba1:	48 89 c7             	mov    %rax,%rdi
    5ba4:	e8 81 5d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5ba9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5bb0:	48 89 c7             	mov    %rax,%rdi
    5bb3:	e8 ca 5e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5bb8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5bbf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5bc3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5bca:	48 89 d6             	mov    %rdx,%rsi
    5bcd:	48 89 c7             	mov    %rax,%rdi
    5bd0:	e8 55 5d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5bd5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5bdc:	48 89 c7             	mov    %rax,%rdi
    5bdf:	e8 9e 5e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5be4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5beb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5bef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5bf6:	48 89 d6             	mov    %rdx,%rsi
    5bf9:	48 89 c7             	mov    %rax,%rdi
    5bfc:	e8 29 5d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5c01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c08:	48 89 c7             	mov    %rax,%rdi
    5c0b:	e8 72 5e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5c10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5c17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5c1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c22:	48 89 d6             	mov    %rdx,%rsi
    5c25:	48 89 c7             	mov    %rax,%rdi
    5c28:	e8 fd 5c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5c2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c34:	48 89 c7             	mov    %rax,%rdi
    5c37:	e8 46 5e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5c3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5c43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5c47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c4e:	48 89 d6             	mov    %rdx,%rsi
    5c51:	48 89 c7             	mov    %rax,%rdi
    5c54:	e8 d1 5c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5c59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c60:	48 89 c7             	mov    %rax,%rdi
    5c63:	e8 1a 5e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5c68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5c6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5c73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c7a:	48 89 d6             	mov    %rdx,%rsi
    5c7d:	48 89 c7             	mov    %rax,%rdi
    5c80:	e8 a5 5c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5c85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5c8c:	48 89 c7             	mov    %rax,%rdi
    5c8f:	e8 ee 5d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5c94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5c9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5c9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ca6:	48 89 d6             	mov    %rdx,%rsi
    5ca9:	48 89 c7             	mov    %rax,%rdi
    5cac:	e8 79 5c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5cb1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5cb8:	48 89 c7             	mov    %rax,%rdi
    5cbb:	e8 c2 5d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5cc0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5cc7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5ccb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5cd2:	48 89 d6             	mov    %rdx,%rsi
    5cd5:	48 89 c7             	mov    %rax,%rdi
    5cd8:	e8 4d 5c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5cdd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ce4:	48 89 c7             	mov    %rax,%rdi
    5ce7:	e8 96 5d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5cec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5cf3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5cf7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5cfe:	48 89 d6             	mov    %rdx,%rsi
    5d01:	48 89 c7             	mov    %rax,%rdi
    5d04:	e8 21 5c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5d09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d10:	48 89 c7             	mov    %rax,%rdi
    5d13:	e8 6a 5d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5d18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5d1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5d23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d2a:	48 89 d6             	mov    %rdx,%rsi
    5d2d:	48 89 c7             	mov    %rax,%rdi
    5d30:	e8 f5 5b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5d35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d3c:	48 89 c7             	mov    %rax,%rdi
    5d3f:	e8 3e 5d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5d44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5d4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5d4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d56:	48 89 d6             	mov    %rdx,%rsi
    5d59:	48 89 c7             	mov    %rax,%rdi
    5d5c:	e8 c9 5b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5d61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d68:	48 89 c7             	mov    %rax,%rdi
    5d6b:	e8 12 5d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5d70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5d77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5d7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d82:	48 89 d6             	mov    %rdx,%rsi
    5d85:	48 89 c7             	mov    %rax,%rdi
    5d88:	e8 9d 5b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5d8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5d94:	48 89 c7             	mov    %rax,%rdi
    5d97:	e8 e6 5c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5d9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5da3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5da7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5dae:	48 89 d6             	mov    %rdx,%rsi
    5db1:	48 89 c7             	mov    %rax,%rdi
    5db4:	e8 71 5b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5db9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5dc0:	48 89 c7             	mov    %rax,%rdi
    5dc3:	e8 ba 5c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5dc8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5dcf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5dd3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5dda:	48 89 d6             	mov    %rdx,%rsi
    5ddd:	48 89 c7             	mov    %rax,%rdi
    5de0:	e8 45 5b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5de5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5dec:	48 89 c7             	mov    %rax,%rdi
    5def:	e8 8e 5c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5df4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5dfb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5dff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e06:	48 89 d6             	mov    %rdx,%rsi
    5e09:	48 89 c7             	mov    %rax,%rdi
    5e0c:	e8 19 5b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5e11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e18:	48 89 c7             	mov    %rax,%rdi
    5e1b:	e8 62 5c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5e20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5e27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5e2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e32:	48 89 d6             	mov    %rdx,%rsi
    5e35:	48 89 c7             	mov    %rax,%rdi
    5e38:	e8 ed 5a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5e3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e44:	48 89 c7             	mov    %rax,%rdi
    5e47:	e8 36 5c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5e4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5e53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5e57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e5e:	48 89 d6             	mov    %rdx,%rsi
    5e61:	48 89 c7             	mov    %rax,%rdi
    5e64:	e8 c1 5a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5e69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e70:	48 89 c7             	mov    %rax,%rdi
    5e73:	e8 0a 5c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5e78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5e7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5e83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e8a:	48 89 d6             	mov    %rdx,%rsi
    5e8d:	48 89 c7             	mov    %rax,%rdi
    5e90:	e8 95 5a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5e95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5e9c:	48 89 c7             	mov    %rax,%rdi
    5e9f:	e8 de 5b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5ea4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5eab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5eaf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5eb6:	48 89 d6             	mov    %rdx,%rsi
    5eb9:	48 89 c7             	mov    %rax,%rdi
    5ebc:	e8 69 5a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5ec1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ec8:	48 89 c7             	mov    %rax,%rdi
    5ecb:	e8 b2 5b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5ed0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5ed7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5edb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ee2:	48 89 d6             	mov    %rdx,%rsi
    5ee5:	48 89 c7             	mov    %rax,%rdi
    5ee8:	e8 3d 5a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5eed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ef4:	48 89 c7             	mov    %rax,%rdi
    5ef7:	e8 86 5b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5efc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5f03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5f07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f0e:	48 89 d6             	mov    %rdx,%rsi
    5f11:	48 89 c7             	mov    %rax,%rdi
    5f14:	e8 11 5a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5f19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f20:	48 89 c7             	mov    %rax,%rdi
    5f23:	e8 5a 5b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5f28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5f2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5f33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f3a:	48 89 d6             	mov    %rdx,%rsi
    5f3d:	48 89 c7             	mov    %rax,%rdi
    5f40:	e8 e5 59 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5f45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f4c:	48 89 c7             	mov    %rax,%rdi
    5f4f:	e8 2e 5b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5f54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5f5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5f5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f66:	48 89 d6             	mov    %rdx,%rsi
    5f69:	48 89 c7             	mov    %rax,%rdi
    5f6c:	e8 b9 59 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5f71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f78:	48 89 c7             	mov    %rax,%rdi
    5f7b:	e8 02 5b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5f80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5f87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5f8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5f92:	48 89 d6             	mov    %rdx,%rsi
    5f95:	48 89 c7             	mov    %rax,%rdi
    5f98:	e8 8d 59 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5f9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5fa4:	48 89 c7             	mov    %rax,%rdi
    5fa7:	e8 d6 5a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5fac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5fb3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5fb7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5fbe:	48 89 d6             	mov    %rdx,%rsi
    5fc1:	48 89 c7             	mov    %rax,%rdi
    5fc4:	e8 61 59 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5fc9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5fd0:	48 89 c7             	mov    %rax,%rdi
    5fd3:	e8 aa 5a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    5fd8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    5fdf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    5fe3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5fea:	48 89 d6             	mov    %rdx,%rsi
    5fed:	48 89 c7             	mov    %rax,%rdi
    5ff0:	e8 35 59 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    5ff5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    5ffc:	48 89 c7             	mov    %rax,%rdi
    5fff:	e8 7e 5a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6004:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    600b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    600f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6016:	48 89 d6             	mov    %rdx,%rsi
    6019:	48 89 c7             	mov    %rax,%rdi
    601c:	e8 09 59 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6021:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6028:	48 89 c7             	mov    %rax,%rdi
    602b:	e8 52 5a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6030:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6037:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    603b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6042:	48 89 d6             	mov    %rdx,%rsi
    6045:	48 89 c7             	mov    %rax,%rdi
    6048:	e8 dd 58 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    604d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6054:	48 89 c7             	mov    %rax,%rdi
    6057:	e8 26 5a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    605c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6063:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6067:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    606e:	48 89 d6             	mov    %rdx,%rsi
    6071:	48 89 c7             	mov    %rax,%rdi
    6074:	e8 b1 58 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6079:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6080:	48 89 c7             	mov    %rax,%rdi
    6083:	e8 fa 59 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6088:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    608f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6093:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    609a:	48 89 d6             	mov    %rdx,%rsi
    609d:	48 89 c7             	mov    %rax,%rdi
    60a0:	e8 85 58 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    60a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    60ac:	48 89 c7             	mov    %rax,%rdi
    60af:	e8 ce 59 00 00       	callq  ba82 <_ZN4Heap3popEv>
    60b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    60bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    60bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    60c6:	48 89 d6             	mov    %rdx,%rsi
    60c9:	48 89 c7             	mov    %rax,%rdi
    60cc:	e8 59 58 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    60d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    60d8:	48 89 c7             	mov    %rax,%rdi
    60db:	e8 a2 59 00 00       	callq  ba82 <_ZN4Heap3popEv>
    60e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    60e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    60eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    60f2:	48 89 d6             	mov    %rdx,%rsi
    60f5:	48 89 c7             	mov    %rax,%rdi
    60f8:	e8 2d 58 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    60fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6104:	48 89 c7             	mov    %rax,%rdi
    6107:	e8 76 59 00 00       	callq  ba82 <_ZN4Heap3popEv>
    610c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6113:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6117:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    611e:	48 89 d6             	mov    %rdx,%rsi
    6121:	48 89 c7             	mov    %rax,%rdi
    6124:	e8 01 58 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6129:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6130:	48 89 c7             	mov    %rax,%rdi
    6133:	e8 4a 59 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6138:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    613f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6143:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    614a:	48 89 d6             	mov    %rdx,%rsi
    614d:	48 89 c7             	mov    %rax,%rdi
    6150:	e8 d5 57 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6155:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    615c:	48 89 c7             	mov    %rax,%rdi
    615f:	e8 1e 59 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6164:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    616b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    616f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6176:	48 89 d6             	mov    %rdx,%rsi
    6179:	48 89 c7             	mov    %rax,%rdi
    617c:	e8 a9 57 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6181:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6188:	48 89 c7             	mov    %rax,%rdi
    618b:	e8 f2 58 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6190:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6197:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    619b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    61a2:	48 89 d6             	mov    %rdx,%rsi
    61a5:	48 89 c7             	mov    %rax,%rdi
    61a8:	e8 7d 57 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    61ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    61b4:	48 89 c7             	mov    %rax,%rdi
    61b7:	e8 c6 58 00 00       	callq  ba82 <_ZN4Heap3popEv>
    61bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    61c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    61c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    61ce:	48 89 d6             	mov    %rdx,%rsi
    61d1:	48 89 c7             	mov    %rax,%rdi
    61d4:	e8 51 57 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    61d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    61e0:	48 89 c7             	mov    %rax,%rdi
    61e3:	e8 9a 58 00 00       	callq  ba82 <_ZN4Heap3popEv>
    61e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    61ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    61f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    61fa:	48 89 d6             	mov    %rdx,%rsi
    61fd:	48 89 c7             	mov    %rax,%rdi
    6200:	e8 25 57 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6205:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    620c:	48 89 c7             	mov    %rax,%rdi
    620f:	e8 6e 58 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6214:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    621b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    621f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6226:	48 89 d6             	mov    %rdx,%rsi
    6229:	48 89 c7             	mov    %rax,%rdi
    622c:	e8 f9 56 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6231:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6238:	48 89 c7             	mov    %rax,%rdi
    623b:	e8 42 58 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6240:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6247:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    624b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6252:	48 89 d6             	mov    %rdx,%rsi
    6255:	48 89 c7             	mov    %rax,%rdi
    6258:	e8 cd 56 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    625d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6264:	48 89 c7             	mov    %rax,%rdi
    6267:	e8 16 58 00 00       	callq  ba82 <_ZN4Heap3popEv>
    626c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6273:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6277:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    627e:	48 89 d6             	mov    %rdx,%rsi
    6281:	48 89 c7             	mov    %rax,%rdi
    6284:	e8 a1 56 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6289:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6290:	48 89 c7             	mov    %rax,%rdi
    6293:	e8 ea 57 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6298:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    629f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    62a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    62aa:	48 89 d6             	mov    %rdx,%rsi
    62ad:	48 89 c7             	mov    %rax,%rdi
    62b0:	e8 75 56 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    62b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    62bc:	48 89 c7             	mov    %rax,%rdi
    62bf:	e8 be 57 00 00       	callq  ba82 <_ZN4Heap3popEv>
    62c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    62cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    62cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    62d6:	48 89 d6             	mov    %rdx,%rsi
    62d9:	48 89 c7             	mov    %rax,%rdi
    62dc:	e8 49 56 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    62e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    62e8:	48 89 c7             	mov    %rax,%rdi
    62eb:	e8 92 57 00 00       	callq  ba82 <_ZN4Heap3popEv>
    62f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    62f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    62fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6302:	48 89 d6             	mov    %rdx,%rsi
    6305:	48 89 c7             	mov    %rax,%rdi
    6308:	e8 1d 56 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    630d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6314:	48 89 c7             	mov    %rax,%rdi
    6317:	e8 66 57 00 00       	callq  ba82 <_ZN4Heap3popEv>
    631c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6323:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6327:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    632e:	48 89 d6             	mov    %rdx,%rsi
    6331:	48 89 c7             	mov    %rax,%rdi
    6334:	e8 f1 55 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6339:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6340:	48 89 c7             	mov    %rax,%rdi
    6343:	e8 3a 57 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6348:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    634f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6353:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    635a:	48 89 d6             	mov    %rdx,%rsi
    635d:	48 89 c7             	mov    %rax,%rdi
    6360:	e8 c5 55 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6365:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    636c:	48 89 c7             	mov    %rax,%rdi
    636f:	e8 0e 57 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6374:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    637b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    637f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6386:	48 89 d6             	mov    %rdx,%rsi
    6389:	48 89 c7             	mov    %rax,%rdi
    638c:	e8 99 55 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6391:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6398:	48 89 c7             	mov    %rax,%rdi
    639b:	e8 e2 56 00 00       	callq  ba82 <_ZN4Heap3popEv>
    63a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    63a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    63ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    63b2:	48 89 d6             	mov    %rdx,%rsi
    63b5:	48 89 c7             	mov    %rax,%rdi
    63b8:	e8 6d 55 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    63bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    63c4:	48 89 c7             	mov    %rax,%rdi
    63c7:	e8 b6 56 00 00       	callq  ba82 <_ZN4Heap3popEv>
    63cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    63d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    63d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    63de:	48 89 d6             	mov    %rdx,%rsi
    63e1:	48 89 c7             	mov    %rax,%rdi
    63e4:	e8 41 55 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    63e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    63f0:	48 89 c7             	mov    %rax,%rdi
    63f3:	e8 8a 56 00 00       	callq  ba82 <_ZN4Heap3popEv>
    63f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    63ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6403:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    640a:	48 89 d6             	mov    %rdx,%rsi
    640d:	48 89 c7             	mov    %rax,%rdi
    6410:	e8 15 55 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6415:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    641c:	48 89 c7             	mov    %rax,%rdi
    641f:	e8 5e 56 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6424:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    642b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    642f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6436:	48 89 d6             	mov    %rdx,%rsi
    6439:	48 89 c7             	mov    %rax,%rdi
    643c:	e8 e9 54 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6441:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6448:	48 89 c7             	mov    %rax,%rdi
    644b:	e8 32 56 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6450:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6457:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    645b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6462:	48 89 d6             	mov    %rdx,%rsi
    6465:	48 89 c7             	mov    %rax,%rdi
    6468:	e8 bd 54 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    646d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6474:	48 89 c7             	mov    %rax,%rdi
    6477:	e8 06 56 00 00       	callq  ba82 <_ZN4Heap3popEv>
    647c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6483:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6487:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    648e:	48 89 d6             	mov    %rdx,%rsi
    6491:	48 89 c7             	mov    %rax,%rdi
    6494:	e8 91 54 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6499:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    64a0:	48 89 c7             	mov    %rax,%rdi
    64a3:	e8 da 55 00 00       	callq  ba82 <_ZN4Heap3popEv>
    64a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    64af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    64b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    64ba:	48 89 d6             	mov    %rdx,%rsi
    64bd:	48 89 c7             	mov    %rax,%rdi
    64c0:	e8 65 54 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    64c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    64cc:	48 89 c7             	mov    %rax,%rdi
    64cf:	e8 ae 55 00 00       	callq  ba82 <_ZN4Heap3popEv>
    64d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    64db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    64df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    64e6:	48 89 d6             	mov    %rdx,%rsi
    64e9:	48 89 c7             	mov    %rax,%rdi
    64ec:	e8 39 54 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    64f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    64f8:	48 89 c7             	mov    %rax,%rdi
    64fb:	e8 82 55 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6500:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6507:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    650b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6512:	48 89 d6             	mov    %rdx,%rsi
    6515:	48 89 c7             	mov    %rax,%rdi
    6518:	e8 0d 54 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    651d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6524:	48 89 c7             	mov    %rax,%rdi
    6527:	e8 56 55 00 00       	callq  ba82 <_ZN4Heap3popEv>
    652c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6533:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6537:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    653e:	48 89 d6             	mov    %rdx,%rsi
    6541:	48 89 c7             	mov    %rax,%rdi
    6544:	e8 e1 53 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6549:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6550:	48 89 c7             	mov    %rax,%rdi
    6553:	e8 2a 55 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6558:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    655f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6563:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    656a:	48 89 d6             	mov    %rdx,%rsi
    656d:	48 89 c7             	mov    %rax,%rdi
    6570:	e8 b5 53 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6575:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    657c:	48 89 c7             	mov    %rax,%rdi
    657f:	e8 fe 54 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6584:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    658b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    658f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6596:	48 89 d6             	mov    %rdx,%rsi
    6599:	48 89 c7             	mov    %rax,%rdi
    659c:	e8 89 53 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    65a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    65a8:	48 89 c7             	mov    %rax,%rdi
    65ab:	e8 d2 54 00 00       	callq  ba82 <_ZN4Heap3popEv>
    65b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    65b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    65bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    65c2:	48 89 d6             	mov    %rdx,%rsi
    65c5:	48 89 c7             	mov    %rax,%rdi
    65c8:	e8 5d 53 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    65cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    65d4:	48 89 c7             	mov    %rax,%rdi
    65d7:	e8 a6 54 00 00       	callq  ba82 <_ZN4Heap3popEv>
    65dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    65e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    65e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    65ee:	48 89 d6             	mov    %rdx,%rsi
    65f1:	48 89 c7             	mov    %rax,%rdi
    65f4:	e8 31 53 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    65f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6600:	48 89 c7             	mov    %rax,%rdi
    6603:	e8 7a 54 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6608:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    660f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6613:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    661a:	48 89 d6             	mov    %rdx,%rsi
    661d:	48 89 c7             	mov    %rax,%rdi
    6620:	e8 05 53 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6625:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    662c:	48 89 c7             	mov    %rax,%rdi
    662f:	e8 4e 54 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6634:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    663b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    663f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6646:	48 89 d6             	mov    %rdx,%rsi
    6649:	48 89 c7             	mov    %rax,%rdi
    664c:	e8 d9 52 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6651:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6658:	48 89 c7             	mov    %rax,%rdi
    665b:	e8 22 54 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6660:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6667:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    666b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6672:	48 89 d6             	mov    %rdx,%rsi
    6675:	48 89 c7             	mov    %rax,%rdi
    6678:	e8 ad 52 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    667d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6684:	48 89 c7             	mov    %rax,%rdi
    6687:	e8 f6 53 00 00       	callq  ba82 <_ZN4Heap3popEv>
    668c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6693:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6697:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    669e:	48 89 d6             	mov    %rdx,%rsi
    66a1:	48 89 c7             	mov    %rax,%rdi
    66a4:	e8 81 52 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    66a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    66b0:	48 89 c7             	mov    %rax,%rdi
    66b3:	e8 ca 53 00 00       	callq  ba82 <_ZN4Heap3popEv>
    66b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    66bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    66c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    66ca:	48 89 d6             	mov    %rdx,%rsi
    66cd:	48 89 c7             	mov    %rax,%rdi
    66d0:	e8 55 52 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    66d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    66dc:	48 89 c7             	mov    %rax,%rdi
    66df:	e8 9e 53 00 00       	callq  ba82 <_ZN4Heap3popEv>
    66e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    66eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    66ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    66f6:	48 89 d6             	mov    %rdx,%rsi
    66f9:	48 89 c7             	mov    %rax,%rdi
    66fc:	e8 29 52 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6701:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6708:	48 89 c7             	mov    %rax,%rdi
    670b:	e8 72 53 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6710:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6717:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    671b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6722:	48 89 d6             	mov    %rdx,%rsi
    6725:	48 89 c7             	mov    %rax,%rdi
    6728:	e8 fd 51 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    672d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6734:	48 89 c7             	mov    %rax,%rdi
    6737:	e8 46 53 00 00       	callq  ba82 <_ZN4Heap3popEv>
    673c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6743:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6747:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    674e:	48 89 d6             	mov    %rdx,%rsi
    6751:	48 89 c7             	mov    %rax,%rdi
    6754:	e8 d1 51 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6759:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6760:	48 89 c7             	mov    %rax,%rdi
    6763:	e8 1a 53 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6768:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    676f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6773:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    677a:	48 89 d6             	mov    %rdx,%rsi
    677d:	48 89 c7             	mov    %rax,%rdi
    6780:	e8 a5 51 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6785:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    678c:	48 89 c7             	mov    %rax,%rdi
    678f:	e8 ee 52 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6794:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    679b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    679f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    67a6:	48 89 d6             	mov    %rdx,%rsi
    67a9:	48 89 c7             	mov    %rax,%rdi
    67ac:	e8 79 51 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    67b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    67b8:	48 89 c7             	mov    %rax,%rdi
    67bb:	e8 c2 52 00 00       	callq  ba82 <_ZN4Heap3popEv>
    67c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    67c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    67cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    67d2:	48 89 d6             	mov    %rdx,%rsi
    67d5:	48 89 c7             	mov    %rax,%rdi
    67d8:	e8 4d 51 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    67dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    67e4:	48 89 c7             	mov    %rax,%rdi
    67e7:	e8 96 52 00 00       	callq  ba82 <_ZN4Heap3popEv>
    67ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    67f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    67f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    67fe:	48 89 d6             	mov    %rdx,%rsi
    6801:	48 89 c7             	mov    %rax,%rdi
    6804:	e8 21 51 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6809:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6810:	48 89 c7             	mov    %rax,%rdi
    6813:	e8 6a 52 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6818:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    681f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6823:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    682a:	48 89 d6             	mov    %rdx,%rsi
    682d:	48 89 c7             	mov    %rax,%rdi
    6830:	e8 f5 50 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6835:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    683c:	48 89 c7             	mov    %rax,%rdi
    683f:	e8 3e 52 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6844:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    684b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    684f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6856:	48 89 d6             	mov    %rdx,%rsi
    6859:	48 89 c7             	mov    %rax,%rdi
    685c:	e8 c9 50 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6861:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6868:	48 89 c7             	mov    %rax,%rdi
    686b:	e8 12 52 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6870:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6877:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    687b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6882:	48 89 d6             	mov    %rdx,%rsi
    6885:	48 89 c7             	mov    %rax,%rdi
    6888:	e8 9d 50 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    688d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6894:	48 89 c7             	mov    %rax,%rdi
    6897:	e8 e6 51 00 00       	callq  ba82 <_ZN4Heap3popEv>
    689c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    68a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    68a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    68ae:	48 89 d6             	mov    %rdx,%rsi
    68b1:	48 89 c7             	mov    %rax,%rdi
    68b4:	e8 71 50 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    68b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    68c0:	48 89 c7             	mov    %rax,%rdi
    68c3:	e8 ba 51 00 00       	callq  ba82 <_ZN4Heap3popEv>
    68c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    68cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    68d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    68da:	48 89 d6             	mov    %rdx,%rsi
    68dd:	48 89 c7             	mov    %rax,%rdi
    68e0:	e8 45 50 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    68e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    68ec:	48 89 c7             	mov    %rax,%rdi
    68ef:	e8 8e 51 00 00       	callq  ba82 <_ZN4Heap3popEv>
    68f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    68fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    68ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6906:	48 89 d6             	mov    %rdx,%rsi
    6909:	48 89 c7             	mov    %rax,%rdi
    690c:	e8 19 50 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6911:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6918:	48 89 c7             	mov    %rax,%rdi
    691b:	e8 62 51 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6920:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6927:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    692b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6932:	48 89 d6             	mov    %rdx,%rsi
    6935:	48 89 c7             	mov    %rax,%rdi
    6938:	e8 ed 4f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    693d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6944:	48 89 c7             	mov    %rax,%rdi
    6947:	e8 36 51 00 00       	callq  ba82 <_ZN4Heap3popEv>
    694c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6953:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6957:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    695e:	48 89 d6             	mov    %rdx,%rsi
    6961:	48 89 c7             	mov    %rax,%rdi
    6964:	e8 c1 4f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6969:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6970:	48 89 c7             	mov    %rax,%rdi
    6973:	e8 0a 51 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6978:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    697f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6983:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    698a:	48 89 d6             	mov    %rdx,%rsi
    698d:	48 89 c7             	mov    %rax,%rdi
    6990:	e8 95 4f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6995:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    699c:	48 89 c7             	mov    %rax,%rdi
    699f:	e8 de 50 00 00       	callq  ba82 <_ZN4Heap3popEv>
    69a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    69ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    69af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    69b6:	48 89 d6             	mov    %rdx,%rsi
    69b9:	48 89 c7             	mov    %rax,%rdi
    69bc:	e8 69 4f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    69c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    69c8:	48 89 c7             	mov    %rax,%rdi
    69cb:	e8 b2 50 00 00       	callq  ba82 <_ZN4Heap3popEv>
    69d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    69d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    69db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    69e2:	48 89 d6             	mov    %rdx,%rsi
    69e5:	48 89 c7             	mov    %rax,%rdi
    69e8:	e8 3d 4f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    69ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    69f4:	48 89 c7             	mov    %rax,%rdi
    69f7:	e8 86 50 00 00       	callq  ba82 <_ZN4Heap3popEv>
    69fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6a03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6a07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a0e:	48 89 d6             	mov    %rdx,%rsi
    6a11:	48 89 c7             	mov    %rax,%rdi
    6a14:	e8 11 4f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6a19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a20:	48 89 c7             	mov    %rax,%rdi
    6a23:	e8 5a 50 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6a28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6a2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6a33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a3a:	48 89 d6             	mov    %rdx,%rsi
    6a3d:	48 89 c7             	mov    %rax,%rdi
    6a40:	e8 e5 4e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6a45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a4c:	48 89 c7             	mov    %rax,%rdi
    6a4f:	e8 2e 50 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6a54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6a5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6a5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a66:	48 89 d6             	mov    %rdx,%rsi
    6a69:	48 89 c7             	mov    %rax,%rdi
    6a6c:	e8 b9 4e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6a71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a78:	48 89 c7             	mov    %rax,%rdi
    6a7b:	e8 02 50 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6a80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6a87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6a8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6a92:	48 89 d6             	mov    %rdx,%rsi
    6a95:	48 89 c7             	mov    %rax,%rdi
    6a98:	e8 8d 4e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6a9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6aa4:	48 89 c7             	mov    %rax,%rdi
    6aa7:	e8 d6 4f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6aac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6ab3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6ab7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6abe:	48 89 d6             	mov    %rdx,%rsi
    6ac1:	48 89 c7             	mov    %rax,%rdi
    6ac4:	e8 61 4e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6ac9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ad0:	48 89 c7             	mov    %rax,%rdi
    6ad3:	e8 aa 4f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6ad8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6adf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6ae3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6aea:	48 89 d6             	mov    %rdx,%rsi
    6aed:	48 89 c7             	mov    %rax,%rdi
    6af0:	e8 35 4e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6af5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6afc:	48 89 c7             	mov    %rax,%rdi
    6aff:	e8 7e 4f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6b04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6b0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6b0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b16:	48 89 d6             	mov    %rdx,%rsi
    6b19:	48 89 c7             	mov    %rax,%rdi
    6b1c:	e8 09 4e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6b21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b28:	48 89 c7             	mov    %rax,%rdi
    6b2b:	e8 52 4f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6b30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6b37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6b3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b42:	48 89 d6             	mov    %rdx,%rsi
    6b45:	48 89 c7             	mov    %rax,%rdi
    6b48:	e8 dd 4d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6b4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b54:	48 89 c7             	mov    %rax,%rdi
    6b57:	e8 26 4f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6b5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6b63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6b67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b6e:	48 89 d6             	mov    %rdx,%rsi
    6b71:	48 89 c7             	mov    %rax,%rdi
    6b74:	e8 b1 4d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6b79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b80:	48 89 c7             	mov    %rax,%rdi
    6b83:	e8 fa 4e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6b88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6b8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6b93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6b9a:	48 89 d6             	mov    %rdx,%rsi
    6b9d:	48 89 c7             	mov    %rax,%rdi
    6ba0:	e8 85 4d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6ba5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6bac:	48 89 c7             	mov    %rax,%rdi
    6baf:	e8 ce 4e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6bb4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6bbb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6bbf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6bc6:	48 89 d6             	mov    %rdx,%rsi
    6bc9:	48 89 c7             	mov    %rax,%rdi
    6bcc:	e8 59 4d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6bd1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6bd8:	48 89 c7             	mov    %rax,%rdi
    6bdb:	e8 a2 4e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6be0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6be7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6beb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6bf2:	48 89 d6             	mov    %rdx,%rsi
    6bf5:	48 89 c7             	mov    %rax,%rdi
    6bf8:	e8 2d 4d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6bfd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c04:	48 89 c7             	mov    %rax,%rdi
    6c07:	e8 76 4e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6c0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6c13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6c17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c1e:	48 89 d6             	mov    %rdx,%rsi
    6c21:	48 89 c7             	mov    %rax,%rdi
    6c24:	e8 01 4d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6c29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c30:	48 89 c7             	mov    %rax,%rdi
    6c33:	e8 4a 4e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6c38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6c3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6c43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c4a:	48 89 d6             	mov    %rdx,%rsi
    6c4d:	48 89 c7             	mov    %rax,%rdi
    6c50:	e8 d5 4c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6c55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c5c:	48 89 c7             	mov    %rax,%rdi
    6c5f:	e8 1e 4e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6c64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6c6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6c6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c76:	48 89 d6             	mov    %rdx,%rsi
    6c79:	48 89 c7             	mov    %rax,%rdi
    6c7c:	e8 a9 4c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6c81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6c88:	48 89 c7             	mov    %rax,%rdi
    6c8b:	e8 f2 4d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6c90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6c97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6c9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ca2:	48 89 d6             	mov    %rdx,%rsi
    6ca5:	48 89 c7             	mov    %rax,%rdi
    6ca8:	e8 7d 4c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6cad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6cb4:	48 89 c7             	mov    %rax,%rdi
    6cb7:	e8 c6 4d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6cbc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6cc3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6cc7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6cce:	48 89 d6             	mov    %rdx,%rsi
    6cd1:	48 89 c7             	mov    %rax,%rdi
    6cd4:	e8 51 4c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6cd9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ce0:	48 89 c7             	mov    %rax,%rdi
    6ce3:	e8 9a 4d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6ce8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6cef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6cf3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6cfa:	48 89 d6             	mov    %rdx,%rsi
    6cfd:	48 89 c7             	mov    %rax,%rdi
    6d00:	e8 25 4c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6d05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d0c:	48 89 c7             	mov    %rax,%rdi
    6d0f:	e8 6e 4d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6d14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6d1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6d1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d26:	48 89 d6             	mov    %rdx,%rsi
    6d29:	48 89 c7             	mov    %rax,%rdi
    6d2c:	e8 f9 4b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6d31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d38:	48 89 c7             	mov    %rax,%rdi
    6d3b:	e8 42 4d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6d40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6d47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6d4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d52:	48 89 d6             	mov    %rdx,%rsi
    6d55:	48 89 c7             	mov    %rax,%rdi
    6d58:	e8 cd 4b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6d5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d64:	48 89 c7             	mov    %rax,%rdi
    6d67:	e8 16 4d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6d6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6d73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6d77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d7e:	48 89 d6             	mov    %rdx,%rsi
    6d81:	48 89 c7             	mov    %rax,%rdi
    6d84:	e8 a1 4b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6d89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6d90:	48 89 c7             	mov    %rax,%rdi
    6d93:	e8 ea 4c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6d98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6d9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6da3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6daa:	48 89 d6             	mov    %rdx,%rsi
    6dad:	48 89 c7             	mov    %rax,%rdi
    6db0:	e8 75 4b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6db5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6dbc:	48 89 c7             	mov    %rax,%rdi
    6dbf:	e8 be 4c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6dc4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6dcb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6dcf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6dd6:	48 89 d6             	mov    %rdx,%rsi
    6dd9:	48 89 c7             	mov    %rax,%rdi
    6ddc:	e8 49 4b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6de1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6de8:	48 89 c7             	mov    %rax,%rdi
    6deb:	e8 92 4c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6df0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6df7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6dfb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e02:	48 89 d6             	mov    %rdx,%rsi
    6e05:	48 89 c7             	mov    %rax,%rdi
    6e08:	e8 1d 4b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6e0d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e14:	48 89 c7             	mov    %rax,%rdi
    6e17:	e8 66 4c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6e1c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6e23:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6e27:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e2e:	48 89 d6             	mov    %rdx,%rsi
    6e31:	48 89 c7             	mov    %rax,%rdi
    6e34:	e8 f1 4a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6e39:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e40:	48 89 c7             	mov    %rax,%rdi
    6e43:	e8 3a 4c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6e48:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6e4f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6e53:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e5a:	48 89 d6             	mov    %rdx,%rsi
    6e5d:	48 89 c7             	mov    %rax,%rdi
    6e60:	e8 c5 4a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6e65:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e6c:	48 89 c7             	mov    %rax,%rdi
    6e6f:	e8 0e 4c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6e74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6e7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6e7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e86:	48 89 d6             	mov    %rdx,%rsi
    6e89:	48 89 c7             	mov    %rax,%rdi
    6e8c:	e8 99 4a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6e91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6e98:	48 89 c7             	mov    %rax,%rdi
    6e9b:	e8 e2 4b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6ea0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6ea7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6eab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6eb2:	48 89 d6             	mov    %rdx,%rsi
    6eb5:	48 89 c7             	mov    %rax,%rdi
    6eb8:	e8 6d 4a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6ebd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ec4:	48 89 c7             	mov    %rax,%rdi
    6ec7:	e8 b6 4b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6ecc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6ed3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6ed7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ede:	48 89 d6             	mov    %rdx,%rsi
    6ee1:	48 89 c7             	mov    %rax,%rdi
    6ee4:	e8 41 4a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6ee9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ef0:	48 89 c7             	mov    %rax,%rdi
    6ef3:	e8 8a 4b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6ef8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6eff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6f03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f0a:	48 89 d6             	mov    %rdx,%rsi
    6f0d:	48 89 c7             	mov    %rax,%rdi
    6f10:	e8 15 4a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6f15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f1c:	48 89 c7             	mov    %rax,%rdi
    6f1f:	e8 5e 4b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6f24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6f2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6f2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f36:	48 89 d6             	mov    %rdx,%rsi
    6f39:	48 89 c7             	mov    %rax,%rdi
    6f3c:	e8 e9 49 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6f41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f48:	48 89 c7             	mov    %rax,%rdi
    6f4b:	e8 32 4b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6f50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6f57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6f5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f62:	48 89 d6             	mov    %rdx,%rsi
    6f65:	48 89 c7             	mov    %rax,%rdi
    6f68:	e8 bd 49 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6f6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f74:	48 89 c7             	mov    %rax,%rdi
    6f77:	e8 06 4b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6f7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6f83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6f87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6f8e:	48 89 d6             	mov    %rdx,%rsi
    6f91:	48 89 c7             	mov    %rax,%rdi
    6f94:	e8 91 49 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6f99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6fa0:	48 89 c7             	mov    %rax,%rdi
    6fa3:	e8 da 4a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6fa8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6faf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6fb3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6fba:	48 89 d6             	mov    %rdx,%rsi
    6fbd:	48 89 c7             	mov    %rax,%rdi
    6fc0:	e8 65 49 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6fc5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6fcc:	48 89 c7             	mov    %rax,%rdi
    6fcf:	e8 ae 4a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    6fd4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    6fdb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    6fdf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6fe6:	48 89 d6             	mov    %rdx,%rsi
    6fe9:	48 89 c7             	mov    %rax,%rdi
    6fec:	e8 39 49 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    6ff1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    6ff8:	48 89 c7             	mov    %rax,%rdi
    6ffb:	e8 82 4a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7000:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7007:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    700b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7012:	48 89 d6             	mov    %rdx,%rsi
    7015:	48 89 c7             	mov    %rax,%rdi
    7018:	e8 0d 49 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    701d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7024:	48 89 c7             	mov    %rax,%rdi
    7027:	e8 56 4a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    702c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7033:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7037:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    703e:	48 89 d6             	mov    %rdx,%rsi
    7041:	48 89 c7             	mov    %rax,%rdi
    7044:	e8 e1 48 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7049:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7050:	48 89 c7             	mov    %rax,%rdi
    7053:	e8 2a 4a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7058:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    705f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7063:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    706a:	48 89 d6             	mov    %rdx,%rsi
    706d:	48 89 c7             	mov    %rax,%rdi
    7070:	e8 b5 48 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7075:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    707c:	48 89 c7             	mov    %rax,%rdi
    707f:	e8 fe 49 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7084:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    708b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    708f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7096:	48 89 d6             	mov    %rdx,%rsi
    7099:	48 89 c7             	mov    %rax,%rdi
    709c:	e8 89 48 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    70a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    70a8:	48 89 c7             	mov    %rax,%rdi
    70ab:	e8 d2 49 00 00       	callq  ba82 <_ZN4Heap3popEv>
    70b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    70b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    70bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    70c2:	48 89 d6             	mov    %rdx,%rsi
    70c5:	48 89 c7             	mov    %rax,%rdi
    70c8:	e8 5d 48 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    70cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    70d4:	48 89 c7             	mov    %rax,%rdi
    70d7:	e8 a6 49 00 00       	callq  ba82 <_ZN4Heap3popEv>
    70dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    70e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    70e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    70ee:	48 89 d6             	mov    %rdx,%rsi
    70f1:	48 89 c7             	mov    %rax,%rdi
    70f4:	e8 31 48 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    70f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7100:	48 89 c7             	mov    %rax,%rdi
    7103:	e8 7a 49 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7108:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    710f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7113:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    711a:	48 89 d6             	mov    %rdx,%rsi
    711d:	48 89 c7             	mov    %rax,%rdi
    7120:	e8 05 48 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7125:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    712c:	48 89 c7             	mov    %rax,%rdi
    712f:	e8 4e 49 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7134:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    713b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    713f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7146:	48 89 d6             	mov    %rdx,%rsi
    7149:	48 89 c7             	mov    %rax,%rdi
    714c:	e8 d9 47 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7151:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7158:	48 89 c7             	mov    %rax,%rdi
    715b:	e8 22 49 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7160:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7167:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    716b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7172:	48 89 d6             	mov    %rdx,%rsi
    7175:	48 89 c7             	mov    %rax,%rdi
    7178:	e8 ad 47 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    717d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7184:	48 89 c7             	mov    %rax,%rdi
    7187:	e8 f6 48 00 00       	callq  ba82 <_ZN4Heap3popEv>
    718c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7193:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7197:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    719e:	48 89 d6             	mov    %rdx,%rsi
    71a1:	48 89 c7             	mov    %rax,%rdi
    71a4:	e8 81 47 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    71a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    71b0:	48 89 c7             	mov    %rax,%rdi
    71b3:	e8 ca 48 00 00       	callq  ba82 <_ZN4Heap3popEv>
    71b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    71bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    71c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    71ca:	48 89 d6             	mov    %rdx,%rsi
    71cd:	48 89 c7             	mov    %rax,%rdi
    71d0:	e8 55 47 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    71d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    71dc:	48 89 c7             	mov    %rax,%rdi
    71df:	e8 9e 48 00 00       	callq  ba82 <_ZN4Heap3popEv>
    71e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    71eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    71ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    71f6:	48 89 d6             	mov    %rdx,%rsi
    71f9:	48 89 c7             	mov    %rax,%rdi
    71fc:	e8 29 47 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7201:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7208:	48 89 c7             	mov    %rax,%rdi
    720b:	e8 72 48 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7210:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7217:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    721b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7222:	48 89 d6             	mov    %rdx,%rsi
    7225:	48 89 c7             	mov    %rax,%rdi
    7228:	e8 fd 46 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    722d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7234:	48 89 c7             	mov    %rax,%rdi
    7237:	e8 46 48 00 00       	callq  ba82 <_ZN4Heap3popEv>
    723c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7243:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7247:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    724e:	48 89 d6             	mov    %rdx,%rsi
    7251:	48 89 c7             	mov    %rax,%rdi
    7254:	e8 d1 46 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7259:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7260:	48 89 c7             	mov    %rax,%rdi
    7263:	e8 1a 48 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7268:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    726f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7273:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    727a:	48 89 d6             	mov    %rdx,%rsi
    727d:	48 89 c7             	mov    %rax,%rdi
    7280:	e8 a5 46 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7285:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    728c:	48 89 c7             	mov    %rax,%rdi
    728f:	e8 ee 47 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7294:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    729b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    729f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    72a6:	48 89 d6             	mov    %rdx,%rsi
    72a9:	48 89 c7             	mov    %rax,%rdi
    72ac:	e8 79 46 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    72b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    72b8:	48 89 c7             	mov    %rax,%rdi
    72bb:	e8 c2 47 00 00       	callq  ba82 <_ZN4Heap3popEv>
    72c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    72c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    72cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    72d2:	48 89 d6             	mov    %rdx,%rsi
    72d5:	48 89 c7             	mov    %rax,%rdi
    72d8:	e8 4d 46 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    72dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    72e4:	48 89 c7             	mov    %rax,%rdi
    72e7:	e8 96 47 00 00       	callq  ba82 <_ZN4Heap3popEv>
    72ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    72f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    72f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    72fe:	48 89 d6             	mov    %rdx,%rsi
    7301:	48 89 c7             	mov    %rax,%rdi
    7304:	e8 21 46 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7309:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7310:	48 89 c7             	mov    %rax,%rdi
    7313:	e8 6a 47 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7318:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    731f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7323:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    732a:	48 89 d6             	mov    %rdx,%rsi
    732d:	48 89 c7             	mov    %rax,%rdi
    7330:	e8 f5 45 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7335:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    733c:	48 89 c7             	mov    %rax,%rdi
    733f:	e8 3e 47 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7344:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    734b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    734f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7356:	48 89 d6             	mov    %rdx,%rsi
    7359:	48 89 c7             	mov    %rax,%rdi
    735c:	e8 c9 45 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7361:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7368:	48 89 c7             	mov    %rax,%rdi
    736b:	e8 12 47 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7370:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7377:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    737b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7382:	48 89 d6             	mov    %rdx,%rsi
    7385:	48 89 c7             	mov    %rax,%rdi
    7388:	e8 9d 45 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    738d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7394:	48 89 c7             	mov    %rax,%rdi
    7397:	e8 e6 46 00 00       	callq  ba82 <_ZN4Heap3popEv>
    739c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    73a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    73a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    73ae:	48 89 d6             	mov    %rdx,%rsi
    73b1:	48 89 c7             	mov    %rax,%rdi
    73b4:	e8 71 45 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    73b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    73c0:	48 89 c7             	mov    %rax,%rdi
    73c3:	e8 ba 46 00 00       	callq  ba82 <_ZN4Heap3popEv>
    73c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    73cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    73d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    73da:	48 89 d6             	mov    %rdx,%rsi
    73dd:	48 89 c7             	mov    %rax,%rdi
    73e0:	e8 45 45 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    73e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    73ec:	48 89 c7             	mov    %rax,%rdi
    73ef:	e8 8e 46 00 00       	callq  ba82 <_ZN4Heap3popEv>
    73f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    73fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    73ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7406:	48 89 d6             	mov    %rdx,%rsi
    7409:	48 89 c7             	mov    %rax,%rdi
    740c:	e8 19 45 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7411:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7418:	48 89 c7             	mov    %rax,%rdi
    741b:	e8 62 46 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7420:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7427:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    742b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7432:	48 89 d6             	mov    %rdx,%rsi
    7435:	48 89 c7             	mov    %rax,%rdi
    7438:	e8 ed 44 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    743d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7444:	48 89 c7             	mov    %rax,%rdi
    7447:	e8 36 46 00 00       	callq  ba82 <_ZN4Heap3popEv>
    744c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7453:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7457:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    745e:	48 89 d6             	mov    %rdx,%rsi
    7461:	48 89 c7             	mov    %rax,%rdi
    7464:	e8 c1 44 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7469:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7470:	48 89 c7             	mov    %rax,%rdi
    7473:	e8 0a 46 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7478:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    747f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7483:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    748a:	48 89 d6             	mov    %rdx,%rsi
    748d:	48 89 c7             	mov    %rax,%rdi
    7490:	e8 95 44 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7495:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    749c:	48 89 c7             	mov    %rax,%rdi
    749f:	e8 de 45 00 00       	callq  ba82 <_ZN4Heap3popEv>
    74a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    74ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    74af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    74b6:	48 89 d6             	mov    %rdx,%rsi
    74b9:	48 89 c7             	mov    %rax,%rdi
    74bc:	e8 69 44 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    74c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    74c8:	48 89 c7             	mov    %rax,%rdi
    74cb:	e8 b2 45 00 00       	callq  ba82 <_ZN4Heap3popEv>
    74d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    74d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    74db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    74e2:	48 89 d6             	mov    %rdx,%rsi
    74e5:	48 89 c7             	mov    %rax,%rdi
    74e8:	e8 3d 44 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    74ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    74f4:	48 89 c7             	mov    %rax,%rdi
    74f7:	e8 86 45 00 00       	callq  ba82 <_ZN4Heap3popEv>
    74fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7503:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7507:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    750e:	48 89 d6             	mov    %rdx,%rsi
    7511:	48 89 c7             	mov    %rax,%rdi
    7514:	e8 11 44 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7519:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7520:	48 89 c7             	mov    %rax,%rdi
    7523:	e8 5a 45 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7528:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    752f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7533:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    753a:	48 89 d6             	mov    %rdx,%rsi
    753d:	48 89 c7             	mov    %rax,%rdi
    7540:	e8 e5 43 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7545:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    754c:	48 89 c7             	mov    %rax,%rdi
    754f:	e8 2e 45 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7554:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    755b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    755f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7566:	48 89 d6             	mov    %rdx,%rsi
    7569:	48 89 c7             	mov    %rax,%rdi
    756c:	e8 b9 43 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7571:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7578:	48 89 c7             	mov    %rax,%rdi
    757b:	e8 02 45 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7580:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7587:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    758b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7592:	48 89 d6             	mov    %rdx,%rsi
    7595:	48 89 c7             	mov    %rax,%rdi
    7598:	e8 8d 43 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    759d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    75a4:	48 89 c7             	mov    %rax,%rdi
    75a7:	e8 d6 44 00 00       	callq  ba82 <_ZN4Heap3popEv>
    75ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    75b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    75b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    75be:	48 89 d6             	mov    %rdx,%rsi
    75c1:	48 89 c7             	mov    %rax,%rdi
    75c4:	e8 61 43 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    75c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    75d0:	48 89 c7             	mov    %rax,%rdi
    75d3:	e8 aa 44 00 00       	callq  ba82 <_ZN4Heap3popEv>
    75d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    75df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    75e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    75ea:	48 89 d6             	mov    %rdx,%rsi
    75ed:	48 89 c7             	mov    %rax,%rdi
    75f0:	e8 35 43 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    75f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    75fc:	48 89 c7             	mov    %rax,%rdi
    75ff:	e8 7e 44 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7604:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    760b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    760f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7616:	48 89 d6             	mov    %rdx,%rsi
    7619:	48 89 c7             	mov    %rax,%rdi
    761c:	e8 09 43 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7621:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7628:	48 89 c7             	mov    %rax,%rdi
    762b:	e8 52 44 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7630:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7637:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    763b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7642:	48 89 d6             	mov    %rdx,%rsi
    7645:	48 89 c7             	mov    %rax,%rdi
    7648:	e8 dd 42 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    764d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7654:	48 89 c7             	mov    %rax,%rdi
    7657:	e8 26 44 00 00       	callq  ba82 <_ZN4Heap3popEv>
    765c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7663:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7667:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    766e:	48 89 d6             	mov    %rdx,%rsi
    7671:	48 89 c7             	mov    %rax,%rdi
    7674:	e8 b1 42 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7679:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7680:	48 89 c7             	mov    %rax,%rdi
    7683:	e8 fa 43 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7688:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    768f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7693:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    769a:	48 89 d6             	mov    %rdx,%rsi
    769d:	48 89 c7             	mov    %rax,%rdi
    76a0:	e8 85 42 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    76a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    76ac:	48 89 c7             	mov    %rax,%rdi
    76af:	e8 ce 43 00 00       	callq  ba82 <_ZN4Heap3popEv>
    76b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    76bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    76bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    76c6:	48 89 d6             	mov    %rdx,%rsi
    76c9:	48 89 c7             	mov    %rax,%rdi
    76cc:	e8 59 42 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    76d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    76d8:	48 89 c7             	mov    %rax,%rdi
    76db:	e8 a2 43 00 00       	callq  ba82 <_ZN4Heap3popEv>
    76e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    76e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    76eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    76f2:	48 89 d6             	mov    %rdx,%rsi
    76f5:	48 89 c7             	mov    %rax,%rdi
    76f8:	e8 2d 42 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    76fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7704:	48 89 c7             	mov    %rax,%rdi
    7707:	e8 76 43 00 00       	callq  ba82 <_ZN4Heap3popEv>
    770c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7713:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7717:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    771e:	48 89 d6             	mov    %rdx,%rsi
    7721:	48 89 c7             	mov    %rax,%rdi
    7724:	e8 01 42 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7729:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7730:	48 89 c7             	mov    %rax,%rdi
    7733:	e8 4a 43 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7738:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    773f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7743:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    774a:	48 89 d6             	mov    %rdx,%rsi
    774d:	48 89 c7             	mov    %rax,%rdi
    7750:	e8 d5 41 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7755:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    775c:	48 89 c7             	mov    %rax,%rdi
    775f:	e8 1e 43 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7764:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    776b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    776f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7776:	48 89 d6             	mov    %rdx,%rsi
    7779:	48 89 c7             	mov    %rax,%rdi
    777c:	e8 a9 41 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7781:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7788:	48 89 c7             	mov    %rax,%rdi
    778b:	e8 f2 42 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7790:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7797:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    779b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    77a2:	48 89 d6             	mov    %rdx,%rsi
    77a5:	48 89 c7             	mov    %rax,%rdi
    77a8:	e8 7d 41 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    77ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    77b4:	48 89 c7             	mov    %rax,%rdi
    77b7:	e8 c6 42 00 00       	callq  ba82 <_ZN4Heap3popEv>
    77bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    77c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    77c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    77ce:	48 89 d6             	mov    %rdx,%rsi
    77d1:	48 89 c7             	mov    %rax,%rdi
    77d4:	e8 51 41 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    77d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    77e0:	48 89 c7             	mov    %rax,%rdi
    77e3:	e8 9a 42 00 00       	callq  ba82 <_ZN4Heap3popEv>
    77e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    77ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    77f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    77fa:	48 89 d6             	mov    %rdx,%rsi
    77fd:	48 89 c7             	mov    %rax,%rdi
    7800:	e8 25 41 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7805:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    780c:	48 89 c7             	mov    %rax,%rdi
    780f:	e8 6e 42 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7814:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    781b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    781f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7826:	48 89 d6             	mov    %rdx,%rsi
    7829:	48 89 c7             	mov    %rax,%rdi
    782c:	e8 f9 40 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7831:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7838:	48 89 c7             	mov    %rax,%rdi
    783b:	e8 42 42 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7840:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7847:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    784b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7852:	48 89 d6             	mov    %rdx,%rsi
    7855:	48 89 c7             	mov    %rax,%rdi
    7858:	e8 cd 40 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    785d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7864:	48 89 c7             	mov    %rax,%rdi
    7867:	e8 16 42 00 00       	callq  ba82 <_ZN4Heap3popEv>
    786c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7873:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7877:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    787e:	48 89 d6             	mov    %rdx,%rsi
    7881:	48 89 c7             	mov    %rax,%rdi
    7884:	e8 a1 40 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7889:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7890:	48 89 c7             	mov    %rax,%rdi
    7893:	e8 ea 41 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7898:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    789f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    78a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    78aa:	48 89 d6             	mov    %rdx,%rsi
    78ad:	48 89 c7             	mov    %rax,%rdi
    78b0:	e8 75 40 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    78b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    78bc:	48 89 c7             	mov    %rax,%rdi
    78bf:	e8 be 41 00 00       	callq  ba82 <_ZN4Heap3popEv>
    78c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    78cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    78cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    78d6:	48 89 d6             	mov    %rdx,%rsi
    78d9:	48 89 c7             	mov    %rax,%rdi
    78dc:	e8 49 40 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    78e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    78e8:	48 89 c7             	mov    %rax,%rdi
    78eb:	e8 92 41 00 00       	callq  ba82 <_ZN4Heap3popEv>
    78f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    78f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    78fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7902:	48 89 d6             	mov    %rdx,%rsi
    7905:	48 89 c7             	mov    %rax,%rdi
    7908:	e8 1d 40 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    790d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7914:	48 89 c7             	mov    %rax,%rdi
    7917:	e8 66 41 00 00       	callq  ba82 <_ZN4Heap3popEv>
    791c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7923:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7927:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    792e:	48 89 d6             	mov    %rdx,%rsi
    7931:	48 89 c7             	mov    %rax,%rdi
    7934:	e8 f1 3f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7939:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7940:	48 89 c7             	mov    %rax,%rdi
    7943:	e8 3a 41 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7948:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    794f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7953:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    795a:	48 89 d6             	mov    %rdx,%rsi
    795d:	48 89 c7             	mov    %rax,%rdi
    7960:	e8 c5 3f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7965:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    796c:	48 89 c7             	mov    %rax,%rdi
    796f:	e8 0e 41 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7974:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    797b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    797f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7986:	48 89 d6             	mov    %rdx,%rsi
    7989:	48 89 c7             	mov    %rax,%rdi
    798c:	e8 99 3f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7991:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7998:	48 89 c7             	mov    %rax,%rdi
    799b:	e8 e2 40 00 00       	callq  ba82 <_ZN4Heap3popEv>
    79a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    79a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    79ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    79b2:	48 89 d6             	mov    %rdx,%rsi
    79b5:	48 89 c7             	mov    %rax,%rdi
    79b8:	e8 6d 3f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    79bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    79c4:	48 89 c7             	mov    %rax,%rdi
    79c7:	e8 b6 40 00 00       	callq  ba82 <_ZN4Heap3popEv>
    79cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    79d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    79d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    79de:	48 89 d6             	mov    %rdx,%rsi
    79e1:	48 89 c7             	mov    %rax,%rdi
    79e4:	e8 41 3f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    79e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    79f0:	48 89 c7             	mov    %rax,%rdi
    79f3:	e8 8a 40 00 00       	callq  ba82 <_ZN4Heap3popEv>
    79f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    79ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7a03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a0a:	48 89 d6             	mov    %rdx,%rsi
    7a0d:	48 89 c7             	mov    %rax,%rdi
    7a10:	e8 15 3f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7a15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a1c:	48 89 c7             	mov    %rax,%rdi
    7a1f:	e8 5e 40 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7a24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7a2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7a2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a36:	48 89 d6             	mov    %rdx,%rsi
    7a39:	48 89 c7             	mov    %rax,%rdi
    7a3c:	e8 e9 3e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7a41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a48:	48 89 c7             	mov    %rax,%rdi
    7a4b:	e8 32 40 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7a50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7a57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7a5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a62:	48 89 d6             	mov    %rdx,%rsi
    7a65:	48 89 c7             	mov    %rax,%rdi
    7a68:	e8 bd 3e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7a6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a74:	48 89 c7             	mov    %rax,%rdi
    7a77:	e8 06 40 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7a7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7a83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7a87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7a8e:	48 89 d6             	mov    %rdx,%rsi
    7a91:	48 89 c7             	mov    %rax,%rdi
    7a94:	e8 91 3e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7a99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7aa0:	48 89 c7             	mov    %rax,%rdi
    7aa3:	e8 da 3f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7aa8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7aaf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7ab3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7aba:	48 89 d6             	mov    %rdx,%rsi
    7abd:	48 89 c7             	mov    %rax,%rdi
    7ac0:	e8 65 3e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7ac5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7acc:	48 89 c7             	mov    %rax,%rdi
    7acf:	e8 ae 3f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7ad4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7adb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7adf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ae6:	48 89 d6             	mov    %rdx,%rsi
    7ae9:	48 89 c7             	mov    %rax,%rdi
    7aec:	e8 39 3e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7af1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7af8:	48 89 c7             	mov    %rax,%rdi
    7afb:	e8 82 3f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7b00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7b07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7b0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b12:	48 89 d6             	mov    %rdx,%rsi
    7b15:	48 89 c7             	mov    %rax,%rdi
    7b18:	e8 0d 3e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7b1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b24:	48 89 c7             	mov    %rax,%rdi
    7b27:	e8 56 3f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7b2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7b33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7b37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b3e:	48 89 d6             	mov    %rdx,%rsi
    7b41:	48 89 c7             	mov    %rax,%rdi
    7b44:	e8 e1 3d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7b49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b50:	48 89 c7             	mov    %rax,%rdi
    7b53:	e8 2a 3f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7b58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7b5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7b63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b6a:	48 89 d6             	mov    %rdx,%rsi
    7b6d:	48 89 c7             	mov    %rax,%rdi
    7b70:	e8 b5 3d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7b75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b7c:	48 89 c7             	mov    %rax,%rdi
    7b7f:	e8 fe 3e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7b84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7b8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7b8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7b96:	48 89 d6             	mov    %rdx,%rsi
    7b99:	48 89 c7             	mov    %rax,%rdi
    7b9c:	e8 89 3d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7ba1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ba8:	48 89 c7             	mov    %rax,%rdi
    7bab:	e8 d2 3e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7bb0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7bb7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7bbb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7bc2:	48 89 d6             	mov    %rdx,%rsi
    7bc5:	48 89 c7             	mov    %rax,%rdi
    7bc8:	e8 5d 3d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7bcd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7bd4:	48 89 c7             	mov    %rax,%rdi
    7bd7:	e8 a6 3e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7bdc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7be3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7be7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7bee:	48 89 d6             	mov    %rdx,%rsi
    7bf1:	48 89 c7             	mov    %rax,%rdi
    7bf4:	e8 31 3d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7bf9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c00:	48 89 c7             	mov    %rax,%rdi
    7c03:	e8 7a 3e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7c08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7c0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7c13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c1a:	48 89 d6             	mov    %rdx,%rsi
    7c1d:	48 89 c7             	mov    %rax,%rdi
    7c20:	e8 05 3d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7c25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c2c:	48 89 c7             	mov    %rax,%rdi
    7c2f:	e8 4e 3e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7c34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7c3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7c3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c46:	48 89 d6             	mov    %rdx,%rsi
    7c49:	48 89 c7             	mov    %rax,%rdi
    7c4c:	e8 d9 3c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7c51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c58:	48 89 c7             	mov    %rax,%rdi
    7c5b:	e8 22 3e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7c60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7c67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7c6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c72:	48 89 d6             	mov    %rdx,%rsi
    7c75:	48 89 c7             	mov    %rax,%rdi
    7c78:	e8 ad 3c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7c7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c84:	48 89 c7             	mov    %rax,%rdi
    7c87:	e8 f6 3d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7c8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7c93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7c97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7c9e:	48 89 d6             	mov    %rdx,%rsi
    7ca1:	48 89 c7             	mov    %rax,%rdi
    7ca4:	e8 81 3c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7ca9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7cb0:	48 89 c7             	mov    %rax,%rdi
    7cb3:	e8 ca 3d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7cb8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7cbf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7cc3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7cca:	48 89 d6             	mov    %rdx,%rsi
    7ccd:	48 89 c7             	mov    %rax,%rdi
    7cd0:	e8 55 3c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7cd5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7cdc:	48 89 c7             	mov    %rax,%rdi
    7cdf:	e8 9e 3d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7ce4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7ceb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7cef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7cf6:	48 89 d6             	mov    %rdx,%rsi
    7cf9:	48 89 c7             	mov    %rax,%rdi
    7cfc:	e8 29 3c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7d01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d08:	48 89 c7             	mov    %rax,%rdi
    7d0b:	e8 72 3d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7d10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7d17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7d1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d22:	48 89 d6             	mov    %rdx,%rsi
    7d25:	48 89 c7             	mov    %rax,%rdi
    7d28:	e8 fd 3b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7d2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d34:	48 89 c7             	mov    %rax,%rdi
    7d37:	e8 46 3d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7d3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7d43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7d47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d4e:	48 89 d6             	mov    %rdx,%rsi
    7d51:	48 89 c7             	mov    %rax,%rdi
    7d54:	e8 d1 3b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7d59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d60:	48 89 c7             	mov    %rax,%rdi
    7d63:	e8 1a 3d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7d68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7d6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7d73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d7a:	48 89 d6             	mov    %rdx,%rsi
    7d7d:	48 89 c7             	mov    %rax,%rdi
    7d80:	e8 a5 3b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7d85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7d8c:	48 89 c7             	mov    %rax,%rdi
    7d8f:	e8 ee 3c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7d94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7d9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7d9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7da6:	48 89 d6             	mov    %rdx,%rsi
    7da9:	48 89 c7             	mov    %rax,%rdi
    7dac:	e8 79 3b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7db1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7db8:	48 89 c7             	mov    %rax,%rdi
    7dbb:	e8 c2 3c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7dc0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7dc7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7dcb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7dd2:	48 89 d6             	mov    %rdx,%rsi
    7dd5:	48 89 c7             	mov    %rax,%rdi
    7dd8:	e8 4d 3b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7ddd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7de4:	48 89 c7             	mov    %rax,%rdi
    7de7:	e8 96 3c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7dec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7df3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7df7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7dfe:	48 89 d6             	mov    %rdx,%rsi
    7e01:	48 89 c7             	mov    %rax,%rdi
    7e04:	e8 21 3b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7e09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e10:	48 89 c7             	mov    %rax,%rdi
    7e13:	e8 6a 3c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7e18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7e1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7e23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e2a:	48 89 d6             	mov    %rdx,%rsi
    7e2d:	48 89 c7             	mov    %rax,%rdi
    7e30:	e8 f5 3a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7e35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e3c:	48 89 c7             	mov    %rax,%rdi
    7e3f:	e8 3e 3c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7e44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7e4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7e4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e56:	48 89 d6             	mov    %rdx,%rsi
    7e59:	48 89 c7             	mov    %rax,%rdi
    7e5c:	e8 c9 3a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7e61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e68:	48 89 c7             	mov    %rax,%rdi
    7e6b:	e8 12 3c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7e70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7e77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7e7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e82:	48 89 d6             	mov    %rdx,%rsi
    7e85:	48 89 c7             	mov    %rax,%rdi
    7e88:	e8 9d 3a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7e8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7e94:	48 89 c7             	mov    %rax,%rdi
    7e97:	e8 e6 3b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7e9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7ea3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7ea7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7eae:	48 89 d6             	mov    %rdx,%rsi
    7eb1:	48 89 c7             	mov    %rax,%rdi
    7eb4:	e8 71 3a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7eb9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ec0:	48 89 c7             	mov    %rax,%rdi
    7ec3:	e8 ba 3b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7ec8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7ecf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7ed3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7eda:	48 89 d6             	mov    %rdx,%rsi
    7edd:	48 89 c7             	mov    %rax,%rdi
    7ee0:	e8 45 3a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7ee5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7eec:	48 89 c7             	mov    %rax,%rdi
    7eef:	e8 8e 3b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7ef4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7efb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7eff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f06:	48 89 d6             	mov    %rdx,%rsi
    7f09:	48 89 c7             	mov    %rax,%rdi
    7f0c:	e8 19 3a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7f11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f18:	48 89 c7             	mov    %rax,%rdi
    7f1b:	e8 62 3b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7f20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7f27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7f2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f32:	48 89 d6             	mov    %rdx,%rsi
    7f35:	48 89 c7             	mov    %rax,%rdi
    7f38:	e8 ed 39 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7f3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f44:	48 89 c7             	mov    %rax,%rdi
    7f47:	e8 36 3b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7f4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7f53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7f57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f5e:	48 89 d6             	mov    %rdx,%rsi
    7f61:	48 89 c7             	mov    %rax,%rdi
    7f64:	e8 c1 39 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7f69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f70:	48 89 c7             	mov    %rax,%rdi
    7f73:	e8 0a 3b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7f78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7f7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7f83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f8a:	48 89 d6             	mov    %rdx,%rsi
    7f8d:	48 89 c7             	mov    %rax,%rdi
    7f90:	e8 95 39 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7f95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7f9c:	48 89 c7             	mov    %rax,%rdi
    7f9f:	e8 de 3a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7fa4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7fab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7faf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7fb6:	48 89 d6             	mov    %rdx,%rsi
    7fb9:	48 89 c7             	mov    %rax,%rdi
    7fbc:	e8 69 39 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7fc1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7fc8:	48 89 c7             	mov    %rax,%rdi
    7fcb:	e8 b2 3a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7fd0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    7fd7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    7fdb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7fe2:	48 89 d6             	mov    %rdx,%rsi
    7fe5:	48 89 c7             	mov    %rax,%rdi
    7fe8:	e8 3d 39 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    7fed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    7ff4:	48 89 c7             	mov    %rax,%rdi
    7ff7:	e8 86 3a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    7ffc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8003:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8007:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    800e:	48 89 d6             	mov    %rdx,%rsi
    8011:	48 89 c7             	mov    %rax,%rdi
    8014:	e8 11 39 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8019:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8020:	48 89 c7             	mov    %rax,%rdi
    8023:	e8 5a 3a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8028:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    802f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8033:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    803a:	48 89 d6             	mov    %rdx,%rsi
    803d:	48 89 c7             	mov    %rax,%rdi
    8040:	e8 e5 38 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8045:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    804c:	48 89 c7             	mov    %rax,%rdi
    804f:	e8 2e 3a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8054:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    805b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    805f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8066:	48 89 d6             	mov    %rdx,%rsi
    8069:	48 89 c7             	mov    %rax,%rdi
    806c:	e8 b9 38 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8071:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8078:	48 89 c7             	mov    %rax,%rdi
    807b:	e8 02 3a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8080:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8087:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    808b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8092:	48 89 d6             	mov    %rdx,%rsi
    8095:	48 89 c7             	mov    %rax,%rdi
    8098:	e8 8d 38 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    809d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    80a4:	48 89 c7             	mov    %rax,%rdi
    80a7:	e8 d6 39 00 00       	callq  ba82 <_ZN4Heap3popEv>
    80ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    80b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    80b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    80be:	48 89 d6             	mov    %rdx,%rsi
    80c1:	48 89 c7             	mov    %rax,%rdi
    80c4:	e8 61 38 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    80c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    80d0:	48 89 c7             	mov    %rax,%rdi
    80d3:	e8 aa 39 00 00       	callq  ba82 <_ZN4Heap3popEv>
    80d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    80df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    80e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    80ea:	48 89 d6             	mov    %rdx,%rsi
    80ed:	48 89 c7             	mov    %rax,%rdi
    80f0:	e8 35 38 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    80f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    80fc:	48 89 c7             	mov    %rax,%rdi
    80ff:	e8 7e 39 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8104:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    810b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    810f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8116:	48 89 d6             	mov    %rdx,%rsi
    8119:	48 89 c7             	mov    %rax,%rdi
    811c:	e8 09 38 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8121:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8128:	48 89 c7             	mov    %rax,%rdi
    812b:	e8 52 39 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8130:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8137:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    813b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8142:	48 89 d6             	mov    %rdx,%rsi
    8145:	48 89 c7             	mov    %rax,%rdi
    8148:	e8 dd 37 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    814d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8154:	48 89 c7             	mov    %rax,%rdi
    8157:	e8 26 39 00 00       	callq  ba82 <_ZN4Heap3popEv>
    815c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8163:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8167:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    816e:	48 89 d6             	mov    %rdx,%rsi
    8171:	48 89 c7             	mov    %rax,%rdi
    8174:	e8 b1 37 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8179:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8180:	48 89 c7             	mov    %rax,%rdi
    8183:	e8 fa 38 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8188:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    818f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8193:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    819a:	48 89 d6             	mov    %rdx,%rsi
    819d:	48 89 c7             	mov    %rax,%rdi
    81a0:	e8 85 37 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    81a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    81ac:	48 89 c7             	mov    %rax,%rdi
    81af:	e8 ce 38 00 00       	callq  ba82 <_ZN4Heap3popEv>
    81b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    81bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    81bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    81c6:	48 89 d6             	mov    %rdx,%rsi
    81c9:	48 89 c7             	mov    %rax,%rdi
    81cc:	e8 59 37 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    81d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    81d8:	48 89 c7             	mov    %rax,%rdi
    81db:	e8 a2 38 00 00       	callq  ba82 <_ZN4Heap3popEv>
    81e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    81e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    81eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    81f2:	48 89 d6             	mov    %rdx,%rsi
    81f5:	48 89 c7             	mov    %rax,%rdi
    81f8:	e8 2d 37 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    81fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8204:	48 89 c7             	mov    %rax,%rdi
    8207:	e8 76 38 00 00       	callq  ba82 <_ZN4Heap3popEv>
    820c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8213:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8217:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    821e:	48 89 d6             	mov    %rdx,%rsi
    8221:	48 89 c7             	mov    %rax,%rdi
    8224:	e8 01 37 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8229:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8230:	48 89 c7             	mov    %rax,%rdi
    8233:	e8 4a 38 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8238:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    823f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8243:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    824a:	48 89 d6             	mov    %rdx,%rsi
    824d:	48 89 c7             	mov    %rax,%rdi
    8250:	e8 d5 36 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8255:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    825c:	48 89 c7             	mov    %rax,%rdi
    825f:	e8 1e 38 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8264:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    826b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    826f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8276:	48 89 d6             	mov    %rdx,%rsi
    8279:	48 89 c7             	mov    %rax,%rdi
    827c:	e8 a9 36 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8281:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8288:	48 89 c7             	mov    %rax,%rdi
    828b:	e8 f2 37 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8290:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8297:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    829b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    82a2:	48 89 d6             	mov    %rdx,%rsi
    82a5:	48 89 c7             	mov    %rax,%rdi
    82a8:	e8 7d 36 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    82ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    82b4:	48 89 c7             	mov    %rax,%rdi
    82b7:	e8 c6 37 00 00       	callq  ba82 <_ZN4Heap3popEv>
    82bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    82c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    82c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    82ce:	48 89 d6             	mov    %rdx,%rsi
    82d1:	48 89 c7             	mov    %rax,%rdi
    82d4:	e8 51 36 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    82d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    82e0:	48 89 c7             	mov    %rax,%rdi
    82e3:	e8 9a 37 00 00       	callq  ba82 <_ZN4Heap3popEv>
    82e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    82ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    82f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    82fa:	48 89 d6             	mov    %rdx,%rsi
    82fd:	48 89 c7             	mov    %rax,%rdi
    8300:	e8 25 36 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8305:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    830c:	48 89 c7             	mov    %rax,%rdi
    830f:	e8 6e 37 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8314:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    831b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    831f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8326:	48 89 d6             	mov    %rdx,%rsi
    8329:	48 89 c7             	mov    %rax,%rdi
    832c:	e8 f9 35 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8331:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8338:	48 89 c7             	mov    %rax,%rdi
    833b:	e8 42 37 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8340:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8347:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    834b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8352:	48 89 d6             	mov    %rdx,%rsi
    8355:	48 89 c7             	mov    %rax,%rdi
    8358:	e8 cd 35 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    835d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8364:	48 89 c7             	mov    %rax,%rdi
    8367:	e8 16 37 00 00       	callq  ba82 <_ZN4Heap3popEv>
    836c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8373:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8377:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    837e:	48 89 d6             	mov    %rdx,%rsi
    8381:	48 89 c7             	mov    %rax,%rdi
    8384:	e8 a1 35 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8389:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8390:	48 89 c7             	mov    %rax,%rdi
    8393:	e8 ea 36 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8398:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    839f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    83a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    83aa:	48 89 d6             	mov    %rdx,%rsi
    83ad:	48 89 c7             	mov    %rax,%rdi
    83b0:	e8 75 35 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    83b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    83bc:	48 89 c7             	mov    %rax,%rdi
    83bf:	e8 be 36 00 00       	callq  ba82 <_ZN4Heap3popEv>
    83c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    83cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    83cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    83d6:	48 89 d6             	mov    %rdx,%rsi
    83d9:	48 89 c7             	mov    %rax,%rdi
    83dc:	e8 49 35 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    83e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    83e8:	48 89 c7             	mov    %rax,%rdi
    83eb:	e8 92 36 00 00       	callq  ba82 <_ZN4Heap3popEv>
    83f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    83f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    83fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8402:	48 89 d6             	mov    %rdx,%rsi
    8405:	48 89 c7             	mov    %rax,%rdi
    8408:	e8 1d 35 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    840d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8414:	48 89 c7             	mov    %rax,%rdi
    8417:	e8 66 36 00 00       	callq  ba82 <_ZN4Heap3popEv>
    841c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8423:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8427:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    842e:	48 89 d6             	mov    %rdx,%rsi
    8431:	48 89 c7             	mov    %rax,%rdi
    8434:	e8 f1 34 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8439:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8440:	48 89 c7             	mov    %rax,%rdi
    8443:	e8 3a 36 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8448:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    844f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8453:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    845a:	48 89 d6             	mov    %rdx,%rsi
    845d:	48 89 c7             	mov    %rax,%rdi
    8460:	e8 c5 34 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8465:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    846c:	48 89 c7             	mov    %rax,%rdi
    846f:	e8 0e 36 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8474:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    847b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    847f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8486:	48 89 d6             	mov    %rdx,%rsi
    8489:	48 89 c7             	mov    %rax,%rdi
    848c:	e8 99 34 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8491:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8498:	48 89 c7             	mov    %rax,%rdi
    849b:	e8 e2 35 00 00       	callq  ba82 <_ZN4Heap3popEv>
    84a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    84a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    84ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    84b2:	48 89 d6             	mov    %rdx,%rsi
    84b5:	48 89 c7             	mov    %rax,%rdi
    84b8:	e8 6d 34 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    84bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    84c4:	48 89 c7             	mov    %rax,%rdi
    84c7:	e8 b6 35 00 00       	callq  ba82 <_ZN4Heap3popEv>
    84cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    84d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    84d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    84de:	48 89 d6             	mov    %rdx,%rsi
    84e1:	48 89 c7             	mov    %rax,%rdi
    84e4:	e8 41 34 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    84e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    84f0:	48 89 c7             	mov    %rax,%rdi
    84f3:	e8 8a 35 00 00       	callq  ba82 <_ZN4Heap3popEv>
    84f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    84ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8503:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    850a:	48 89 d6             	mov    %rdx,%rsi
    850d:	48 89 c7             	mov    %rax,%rdi
    8510:	e8 15 34 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8515:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    851c:	48 89 c7             	mov    %rax,%rdi
    851f:	e8 5e 35 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8524:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    852b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    852f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8536:	48 89 d6             	mov    %rdx,%rsi
    8539:	48 89 c7             	mov    %rax,%rdi
    853c:	e8 e9 33 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8541:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8548:	48 89 c7             	mov    %rax,%rdi
    854b:	e8 32 35 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8550:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8557:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    855b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8562:	48 89 d6             	mov    %rdx,%rsi
    8565:	48 89 c7             	mov    %rax,%rdi
    8568:	e8 bd 33 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    856d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8574:	48 89 c7             	mov    %rax,%rdi
    8577:	e8 06 35 00 00       	callq  ba82 <_ZN4Heap3popEv>
    857c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8583:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8587:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    858e:	48 89 d6             	mov    %rdx,%rsi
    8591:	48 89 c7             	mov    %rax,%rdi
    8594:	e8 91 33 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8599:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    85a0:	48 89 c7             	mov    %rax,%rdi
    85a3:	e8 da 34 00 00       	callq  ba82 <_ZN4Heap3popEv>
    85a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    85af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    85b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    85ba:	48 89 d6             	mov    %rdx,%rsi
    85bd:	48 89 c7             	mov    %rax,%rdi
    85c0:	e8 65 33 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    85c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    85cc:	48 89 c7             	mov    %rax,%rdi
    85cf:	e8 ae 34 00 00       	callq  ba82 <_ZN4Heap3popEv>
    85d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    85db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    85df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    85e6:	48 89 d6             	mov    %rdx,%rsi
    85e9:	48 89 c7             	mov    %rax,%rdi
    85ec:	e8 39 33 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    85f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    85f8:	48 89 c7             	mov    %rax,%rdi
    85fb:	e8 82 34 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8600:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8607:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    860b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8612:	48 89 d6             	mov    %rdx,%rsi
    8615:	48 89 c7             	mov    %rax,%rdi
    8618:	e8 0d 33 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    861d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8624:	48 89 c7             	mov    %rax,%rdi
    8627:	e8 56 34 00 00       	callq  ba82 <_ZN4Heap3popEv>
    862c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8633:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8637:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    863e:	48 89 d6             	mov    %rdx,%rsi
    8641:	48 89 c7             	mov    %rax,%rdi
    8644:	e8 e1 32 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8649:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8650:	48 89 c7             	mov    %rax,%rdi
    8653:	e8 2a 34 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8658:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    865f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8663:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    866a:	48 89 d6             	mov    %rdx,%rsi
    866d:	48 89 c7             	mov    %rax,%rdi
    8670:	e8 b5 32 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8675:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    867c:	48 89 c7             	mov    %rax,%rdi
    867f:	e8 fe 33 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8684:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    868b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    868f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8696:	48 89 d6             	mov    %rdx,%rsi
    8699:	48 89 c7             	mov    %rax,%rdi
    869c:	e8 89 32 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    86a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    86a8:	48 89 c7             	mov    %rax,%rdi
    86ab:	e8 d2 33 00 00       	callq  ba82 <_ZN4Heap3popEv>
    86b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    86b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    86bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    86c2:	48 89 d6             	mov    %rdx,%rsi
    86c5:	48 89 c7             	mov    %rax,%rdi
    86c8:	e8 5d 32 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    86cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    86d4:	48 89 c7             	mov    %rax,%rdi
    86d7:	e8 a6 33 00 00       	callq  ba82 <_ZN4Heap3popEv>
    86dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    86e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    86e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    86ee:	48 89 d6             	mov    %rdx,%rsi
    86f1:	48 89 c7             	mov    %rax,%rdi
    86f4:	e8 31 32 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    86f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8700:	48 89 c7             	mov    %rax,%rdi
    8703:	e8 7a 33 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8708:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    870f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8713:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    871a:	48 89 d6             	mov    %rdx,%rsi
    871d:	48 89 c7             	mov    %rax,%rdi
    8720:	e8 05 32 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8725:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    872c:	48 89 c7             	mov    %rax,%rdi
    872f:	e8 4e 33 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8734:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    873b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    873f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8746:	48 89 d6             	mov    %rdx,%rsi
    8749:	48 89 c7             	mov    %rax,%rdi
    874c:	e8 d9 31 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8751:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8758:	48 89 c7             	mov    %rax,%rdi
    875b:	e8 22 33 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8760:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8767:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    876b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8772:	48 89 d6             	mov    %rdx,%rsi
    8775:	48 89 c7             	mov    %rax,%rdi
    8778:	e8 ad 31 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    877d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8784:	48 89 c7             	mov    %rax,%rdi
    8787:	e8 f6 32 00 00       	callq  ba82 <_ZN4Heap3popEv>
    878c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8793:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8797:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    879e:	48 89 d6             	mov    %rdx,%rsi
    87a1:	48 89 c7             	mov    %rax,%rdi
    87a4:	e8 81 31 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    87a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    87b0:	48 89 c7             	mov    %rax,%rdi
    87b3:	e8 ca 32 00 00       	callq  ba82 <_ZN4Heap3popEv>
    87b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    87bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    87c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    87ca:	48 89 d6             	mov    %rdx,%rsi
    87cd:	48 89 c7             	mov    %rax,%rdi
    87d0:	e8 55 31 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    87d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    87dc:	48 89 c7             	mov    %rax,%rdi
    87df:	e8 9e 32 00 00       	callq  ba82 <_ZN4Heap3popEv>
    87e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    87eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    87ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    87f6:	48 89 d6             	mov    %rdx,%rsi
    87f9:	48 89 c7             	mov    %rax,%rdi
    87fc:	e8 29 31 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8801:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8808:	48 89 c7             	mov    %rax,%rdi
    880b:	e8 72 32 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8810:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8817:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    881b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8822:	48 89 d6             	mov    %rdx,%rsi
    8825:	48 89 c7             	mov    %rax,%rdi
    8828:	e8 fd 30 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    882d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8834:	48 89 c7             	mov    %rax,%rdi
    8837:	e8 46 32 00 00       	callq  ba82 <_ZN4Heap3popEv>
    883c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8843:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8847:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    884e:	48 89 d6             	mov    %rdx,%rsi
    8851:	48 89 c7             	mov    %rax,%rdi
    8854:	e8 d1 30 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8859:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8860:	48 89 c7             	mov    %rax,%rdi
    8863:	e8 1a 32 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8868:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    886f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8873:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    887a:	48 89 d6             	mov    %rdx,%rsi
    887d:	48 89 c7             	mov    %rax,%rdi
    8880:	e8 a5 30 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8885:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    888c:	48 89 c7             	mov    %rax,%rdi
    888f:	e8 ee 31 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8894:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    889b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    889f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    88a6:	48 89 d6             	mov    %rdx,%rsi
    88a9:	48 89 c7             	mov    %rax,%rdi
    88ac:	e8 79 30 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    88b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    88b8:	48 89 c7             	mov    %rax,%rdi
    88bb:	e8 c2 31 00 00       	callq  ba82 <_ZN4Heap3popEv>
    88c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    88c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    88cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    88d2:	48 89 d6             	mov    %rdx,%rsi
    88d5:	48 89 c7             	mov    %rax,%rdi
    88d8:	e8 4d 30 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    88dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    88e4:	48 89 c7             	mov    %rax,%rdi
    88e7:	e8 96 31 00 00       	callq  ba82 <_ZN4Heap3popEv>
    88ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    88f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    88f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    88fe:	48 89 d6             	mov    %rdx,%rsi
    8901:	48 89 c7             	mov    %rax,%rdi
    8904:	e8 21 30 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8909:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8910:	48 89 c7             	mov    %rax,%rdi
    8913:	e8 6a 31 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8918:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    891f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8923:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    892a:	48 89 d6             	mov    %rdx,%rsi
    892d:	48 89 c7             	mov    %rax,%rdi
    8930:	e8 f5 2f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8935:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    893c:	48 89 c7             	mov    %rax,%rdi
    893f:	e8 3e 31 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8944:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    894b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    894f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8956:	48 89 d6             	mov    %rdx,%rsi
    8959:	48 89 c7             	mov    %rax,%rdi
    895c:	e8 c9 2f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8961:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8968:	48 89 c7             	mov    %rax,%rdi
    896b:	e8 12 31 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8970:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8977:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    897b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8982:	48 89 d6             	mov    %rdx,%rsi
    8985:	48 89 c7             	mov    %rax,%rdi
    8988:	e8 9d 2f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    898d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8994:	48 89 c7             	mov    %rax,%rdi
    8997:	e8 e6 30 00 00       	callq  ba82 <_ZN4Heap3popEv>
    899c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    89a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    89a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    89ae:	48 89 d6             	mov    %rdx,%rsi
    89b1:	48 89 c7             	mov    %rax,%rdi
    89b4:	e8 71 2f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    89b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    89c0:	48 89 c7             	mov    %rax,%rdi
    89c3:	e8 ba 30 00 00       	callq  ba82 <_ZN4Heap3popEv>
    89c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    89cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    89d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    89da:	48 89 d6             	mov    %rdx,%rsi
    89dd:	48 89 c7             	mov    %rax,%rdi
    89e0:	e8 45 2f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    89e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    89ec:	48 89 c7             	mov    %rax,%rdi
    89ef:	e8 8e 30 00 00       	callq  ba82 <_ZN4Heap3popEv>
    89f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    89fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    89ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a06:	48 89 d6             	mov    %rdx,%rsi
    8a09:	48 89 c7             	mov    %rax,%rdi
    8a0c:	e8 19 2f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8a11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a18:	48 89 c7             	mov    %rax,%rdi
    8a1b:	e8 62 30 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8a20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8a27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8a2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a32:	48 89 d6             	mov    %rdx,%rsi
    8a35:	48 89 c7             	mov    %rax,%rdi
    8a38:	e8 ed 2e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8a3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a44:	48 89 c7             	mov    %rax,%rdi
    8a47:	e8 36 30 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8a4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8a53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8a57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a5e:	48 89 d6             	mov    %rdx,%rsi
    8a61:	48 89 c7             	mov    %rax,%rdi
    8a64:	e8 c1 2e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8a69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a70:	48 89 c7             	mov    %rax,%rdi
    8a73:	e8 0a 30 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8a78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8a7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8a83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a8a:	48 89 d6             	mov    %rdx,%rsi
    8a8d:	48 89 c7             	mov    %rax,%rdi
    8a90:	e8 95 2e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8a95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8a9c:	48 89 c7             	mov    %rax,%rdi
    8a9f:	e8 de 2f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8aa4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8aab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8aaf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ab6:	48 89 d6             	mov    %rdx,%rsi
    8ab9:	48 89 c7             	mov    %rax,%rdi
    8abc:	e8 69 2e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8ac1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ac8:	48 89 c7             	mov    %rax,%rdi
    8acb:	e8 b2 2f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8ad0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8ad7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8adb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ae2:	48 89 d6             	mov    %rdx,%rsi
    8ae5:	48 89 c7             	mov    %rax,%rdi
    8ae8:	e8 3d 2e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8aed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8af4:	48 89 c7             	mov    %rax,%rdi
    8af7:	e8 86 2f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8afc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8b03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8b07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b0e:	48 89 d6             	mov    %rdx,%rsi
    8b11:	48 89 c7             	mov    %rax,%rdi
    8b14:	e8 11 2e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8b19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b20:	48 89 c7             	mov    %rax,%rdi
    8b23:	e8 5a 2f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8b28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8b2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8b33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b3a:	48 89 d6             	mov    %rdx,%rsi
    8b3d:	48 89 c7             	mov    %rax,%rdi
    8b40:	e8 e5 2d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8b45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b4c:	48 89 c7             	mov    %rax,%rdi
    8b4f:	e8 2e 2f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8b54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8b5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8b5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b66:	48 89 d6             	mov    %rdx,%rsi
    8b69:	48 89 c7             	mov    %rax,%rdi
    8b6c:	e8 b9 2d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8b71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b78:	48 89 c7             	mov    %rax,%rdi
    8b7b:	e8 02 2f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8b80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8b87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8b8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8b92:	48 89 d6             	mov    %rdx,%rsi
    8b95:	48 89 c7             	mov    %rax,%rdi
    8b98:	e8 8d 2d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8b9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ba4:	48 89 c7             	mov    %rax,%rdi
    8ba7:	e8 d6 2e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8bac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8bb3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8bb7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8bbe:	48 89 d6             	mov    %rdx,%rsi
    8bc1:	48 89 c7             	mov    %rax,%rdi
    8bc4:	e8 61 2d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8bc9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8bd0:	48 89 c7             	mov    %rax,%rdi
    8bd3:	e8 aa 2e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8bd8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8bdf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8be3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8bea:	48 89 d6             	mov    %rdx,%rsi
    8bed:	48 89 c7             	mov    %rax,%rdi
    8bf0:	e8 35 2d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8bf5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8bfc:	48 89 c7             	mov    %rax,%rdi
    8bff:	e8 7e 2e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8c04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8c0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8c0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c16:	48 89 d6             	mov    %rdx,%rsi
    8c19:	48 89 c7             	mov    %rax,%rdi
    8c1c:	e8 09 2d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8c21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c28:	48 89 c7             	mov    %rax,%rdi
    8c2b:	e8 52 2e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8c30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8c37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8c3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c42:	48 89 d6             	mov    %rdx,%rsi
    8c45:	48 89 c7             	mov    %rax,%rdi
    8c48:	e8 dd 2c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8c4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c54:	48 89 c7             	mov    %rax,%rdi
    8c57:	e8 26 2e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8c5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8c63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8c67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c6e:	48 89 d6             	mov    %rdx,%rsi
    8c71:	48 89 c7             	mov    %rax,%rdi
    8c74:	e8 b1 2c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8c79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c80:	48 89 c7             	mov    %rax,%rdi
    8c83:	e8 fa 2d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8c88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8c8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8c93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8c9a:	48 89 d6             	mov    %rdx,%rsi
    8c9d:	48 89 c7             	mov    %rax,%rdi
    8ca0:	e8 85 2c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8ca5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8cac:	48 89 c7             	mov    %rax,%rdi
    8caf:	e8 ce 2d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8cb4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8cbb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8cbf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8cc6:	48 89 d6             	mov    %rdx,%rsi
    8cc9:	48 89 c7             	mov    %rax,%rdi
    8ccc:	e8 59 2c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8cd1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8cd8:	48 89 c7             	mov    %rax,%rdi
    8cdb:	e8 a2 2d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8ce0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8ce7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8ceb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8cf2:	48 89 d6             	mov    %rdx,%rsi
    8cf5:	48 89 c7             	mov    %rax,%rdi
    8cf8:	e8 2d 2c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8cfd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d04:	48 89 c7             	mov    %rax,%rdi
    8d07:	e8 76 2d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8d0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8d13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8d17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d1e:	48 89 d6             	mov    %rdx,%rsi
    8d21:	48 89 c7             	mov    %rax,%rdi
    8d24:	e8 01 2c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8d29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d30:	48 89 c7             	mov    %rax,%rdi
    8d33:	e8 4a 2d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8d38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8d3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8d43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d4a:	48 89 d6             	mov    %rdx,%rsi
    8d4d:	48 89 c7             	mov    %rax,%rdi
    8d50:	e8 d5 2b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8d55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d5c:	48 89 c7             	mov    %rax,%rdi
    8d5f:	e8 1e 2d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8d64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8d6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8d6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d76:	48 89 d6             	mov    %rdx,%rsi
    8d79:	48 89 c7             	mov    %rax,%rdi
    8d7c:	e8 a9 2b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8d81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8d88:	48 89 c7             	mov    %rax,%rdi
    8d8b:	e8 f2 2c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8d90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8d97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8d9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8da2:	48 89 d6             	mov    %rdx,%rsi
    8da5:	48 89 c7             	mov    %rax,%rdi
    8da8:	e8 7d 2b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8dad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8db4:	48 89 c7             	mov    %rax,%rdi
    8db7:	e8 c6 2c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8dbc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8dc3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8dc7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8dce:	48 89 d6             	mov    %rdx,%rsi
    8dd1:	48 89 c7             	mov    %rax,%rdi
    8dd4:	e8 51 2b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8dd9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8de0:	48 89 c7             	mov    %rax,%rdi
    8de3:	e8 9a 2c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8de8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8def:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8df3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8dfa:	48 89 d6             	mov    %rdx,%rsi
    8dfd:	48 89 c7             	mov    %rax,%rdi
    8e00:	e8 25 2b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8e05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e0c:	48 89 c7             	mov    %rax,%rdi
    8e0f:	e8 6e 2c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8e14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8e1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8e1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e26:	48 89 d6             	mov    %rdx,%rsi
    8e29:	48 89 c7             	mov    %rax,%rdi
    8e2c:	e8 f9 2a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8e31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e38:	48 89 c7             	mov    %rax,%rdi
    8e3b:	e8 42 2c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8e40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8e47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8e4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e52:	48 89 d6             	mov    %rdx,%rsi
    8e55:	48 89 c7             	mov    %rax,%rdi
    8e58:	e8 cd 2a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8e5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e64:	48 89 c7             	mov    %rax,%rdi
    8e67:	e8 16 2c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8e6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8e73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8e77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e7e:	48 89 d6             	mov    %rdx,%rsi
    8e81:	48 89 c7             	mov    %rax,%rdi
    8e84:	e8 a1 2a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8e89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8e90:	48 89 c7             	mov    %rax,%rdi
    8e93:	e8 ea 2b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8e98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8e9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8ea3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8eaa:	48 89 d6             	mov    %rdx,%rsi
    8ead:	48 89 c7             	mov    %rax,%rdi
    8eb0:	e8 75 2a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8eb5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ebc:	48 89 c7             	mov    %rax,%rdi
    8ebf:	e8 be 2b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8ec4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8ecb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8ecf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ed6:	48 89 d6             	mov    %rdx,%rsi
    8ed9:	48 89 c7             	mov    %rax,%rdi
    8edc:	e8 49 2a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8ee1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ee8:	48 89 c7             	mov    %rax,%rdi
    8eeb:	e8 92 2b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8ef0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8ef7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8efb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f02:	48 89 d6             	mov    %rdx,%rsi
    8f05:	48 89 c7             	mov    %rax,%rdi
    8f08:	e8 1d 2a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8f0d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f14:	48 89 c7             	mov    %rax,%rdi
    8f17:	e8 66 2b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8f1c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8f23:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8f27:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f2e:	48 89 d6             	mov    %rdx,%rsi
    8f31:	48 89 c7             	mov    %rax,%rdi
    8f34:	e8 f1 29 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8f39:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f40:	48 89 c7             	mov    %rax,%rdi
    8f43:	e8 3a 2b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8f48:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8f4f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8f53:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f5a:	48 89 d6             	mov    %rdx,%rsi
    8f5d:	48 89 c7             	mov    %rax,%rdi
    8f60:	e8 c5 29 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8f65:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f6c:	48 89 c7             	mov    %rax,%rdi
    8f6f:	e8 0e 2b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8f74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8f7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8f7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f86:	48 89 d6             	mov    %rdx,%rsi
    8f89:	48 89 c7             	mov    %rax,%rdi
    8f8c:	e8 99 29 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8f91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8f98:	48 89 c7             	mov    %rax,%rdi
    8f9b:	e8 e2 2a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8fa0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8fa7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8fab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8fb2:	48 89 d6             	mov    %rdx,%rsi
    8fb5:	48 89 c7             	mov    %rax,%rdi
    8fb8:	e8 6d 29 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8fbd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8fc4:	48 89 c7             	mov    %rax,%rdi
    8fc7:	e8 b6 2a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8fcc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8fd3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    8fd7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8fde:	48 89 d6             	mov    %rdx,%rsi
    8fe1:	48 89 c7             	mov    %rax,%rdi
    8fe4:	e8 41 29 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    8fe9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    8ff0:	48 89 c7             	mov    %rax,%rdi
    8ff3:	e8 8a 2a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    8ff8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    8fff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9003:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    900a:	48 89 d6             	mov    %rdx,%rsi
    900d:	48 89 c7             	mov    %rax,%rdi
    9010:	e8 15 29 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9015:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    901c:	48 89 c7             	mov    %rax,%rdi
    901f:	e8 5e 2a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9024:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    902b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    902f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9036:	48 89 d6             	mov    %rdx,%rsi
    9039:	48 89 c7             	mov    %rax,%rdi
    903c:	e8 e9 28 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9041:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9048:	48 89 c7             	mov    %rax,%rdi
    904b:	e8 32 2a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9050:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9057:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    905b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9062:	48 89 d6             	mov    %rdx,%rsi
    9065:	48 89 c7             	mov    %rax,%rdi
    9068:	e8 bd 28 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    906d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9074:	48 89 c7             	mov    %rax,%rdi
    9077:	e8 06 2a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    907c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9083:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9087:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    908e:	48 89 d6             	mov    %rdx,%rsi
    9091:	48 89 c7             	mov    %rax,%rdi
    9094:	e8 91 28 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9099:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    90a0:	48 89 c7             	mov    %rax,%rdi
    90a3:	e8 da 29 00 00       	callq  ba82 <_ZN4Heap3popEv>
    90a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    90af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    90b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    90ba:	48 89 d6             	mov    %rdx,%rsi
    90bd:	48 89 c7             	mov    %rax,%rdi
    90c0:	e8 65 28 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    90c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    90cc:	48 89 c7             	mov    %rax,%rdi
    90cf:	e8 ae 29 00 00       	callq  ba82 <_ZN4Heap3popEv>
    90d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    90db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    90df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    90e6:	48 89 d6             	mov    %rdx,%rsi
    90e9:	48 89 c7             	mov    %rax,%rdi
    90ec:	e8 39 28 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    90f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    90f8:	48 89 c7             	mov    %rax,%rdi
    90fb:	e8 82 29 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9100:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9107:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    910b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9112:	48 89 d6             	mov    %rdx,%rsi
    9115:	48 89 c7             	mov    %rax,%rdi
    9118:	e8 0d 28 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    911d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9124:	48 89 c7             	mov    %rax,%rdi
    9127:	e8 56 29 00 00       	callq  ba82 <_ZN4Heap3popEv>
    912c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9133:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9137:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    913e:	48 89 d6             	mov    %rdx,%rsi
    9141:	48 89 c7             	mov    %rax,%rdi
    9144:	e8 e1 27 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9149:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9150:	48 89 c7             	mov    %rax,%rdi
    9153:	e8 2a 29 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9158:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    915f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9163:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    916a:	48 89 d6             	mov    %rdx,%rsi
    916d:	48 89 c7             	mov    %rax,%rdi
    9170:	e8 b5 27 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9175:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    917c:	48 89 c7             	mov    %rax,%rdi
    917f:	e8 fe 28 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9184:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    918b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    918f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9196:	48 89 d6             	mov    %rdx,%rsi
    9199:	48 89 c7             	mov    %rax,%rdi
    919c:	e8 89 27 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    91a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    91a8:	48 89 c7             	mov    %rax,%rdi
    91ab:	e8 d2 28 00 00       	callq  ba82 <_ZN4Heap3popEv>
    91b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    91b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    91bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    91c2:	48 89 d6             	mov    %rdx,%rsi
    91c5:	48 89 c7             	mov    %rax,%rdi
    91c8:	e8 5d 27 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    91cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    91d4:	48 89 c7             	mov    %rax,%rdi
    91d7:	e8 a6 28 00 00       	callq  ba82 <_ZN4Heap3popEv>
    91dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    91e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    91e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    91ee:	48 89 d6             	mov    %rdx,%rsi
    91f1:	48 89 c7             	mov    %rax,%rdi
    91f4:	e8 31 27 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    91f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9200:	48 89 c7             	mov    %rax,%rdi
    9203:	e8 7a 28 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9208:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    920f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9213:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    921a:	48 89 d6             	mov    %rdx,%rsi
    921d:	48 89 c7             	mov    %rax,%rdi
    9220:	e8 05 27 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9225:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    922c:	48 89 c7             	mov    %rax,%rdi
    922f:	e8 4e 28 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9234:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    923b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    923f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9246:	48 89 d6             	mov    %rdx,%rsi
    9249:	48 89 c7             	mov    %rax,%rdi
    924c:	e8 d9 26 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9251:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9258:	48 89 c7             	mov    %rax,%rdi
    925b:	e8 22 28 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9260:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9267:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    926b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9272:	48 89 d6             	mov    %rdx,%rsi
    9275:	48 89 c7             	mov    %rax,%rdi
    9278:	e8 ad 26 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    927d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9284:	48 89 c7             	mov    %rax,%rdi
    9287:	e8 f6 27 00 00       	callq  ba82 <_ZN4Heap3popEv>
    928c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9293:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9297:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    929e:	48 89 d6             	mov    %rdx,%rsi
    92a1:	48 89 c7             	mov    %rax,%rdi
    92a4:	e8 81 26 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    92a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    92b0:	48 89 c7             	mov    %rax,%rdi
    92b3:	e8 ca 27 00 00       	callq  ba82 <_ZN4Heap3popEv>
    92b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    92bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    92c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    92ca:	48 89 d6             	mov    %rdx,%rsi
    92cd:	48 89 c7             	mov    %rax,%rdi
    92d0:	e8 55 26 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    92d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    92dc:	48 89 c7             	mov    %rax,%rdi
    92df:	e8 9e 27 00 00       	callq  ba82 <_ZN4Heap3popEv>
    92e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    92eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    92ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    92f6:	48 89 d6             	mov    %rdx,%rsi
    92f9:	48 89 c7             	mov    %rax,%rdi
    92fc:	e8 29 26 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9301:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9308:	48 89 c7             	mov    %rax,%rdi
    930b:	e8 72 27 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9310:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9317:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    931b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9322:	48 89 d6             	mov    %rdx,%rsi
    9325:	48 89 c7             	mov    %rax,%rdi
    9328:	e8 fd 25 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    932d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9334:	48 89 c7             	mov    %rax,%rdi
    9337:	e8 46 27 00 00       	callq  ba82 <_ZN4Heap3popEv>
    933c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9343:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9347:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    934e:	48 89 d6             	mov    %rdx,%rsi
    9351:	48 89 c7             	mov    %rax,%rdi
    9354:	e8 d1 25 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9359:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9360:	48 89 c7             	mov    %rax,%rdi
    9363:	e8 1a 27 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9368:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    936f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9373:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    937a:	48 89 d6             	mov    %rdx,%rsi
    937d:	48 89 c7             	mov    %rax,%rdi
    9380:	e8 a5 25 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9385:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    938c:	48 89 c7             	mov    %rax,%rdi
    938f:	e8 ee 26 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9394:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    939b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    939f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    93a6:	48 89 d6             	mov    %rdx,%rsi
    93a9:	48 89 c7             	mov    %rax,%rdi
    93ac:	e8 79 25 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    93b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    93b8:	48 89 c7             	mov    %rax,%rdi
    93bb:	e8 c2 26 00 00       	callq  ba82 <_ZN4Heap3popEv>
    93c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    93c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    93cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    93d2:	48 89 d6             	mov    %rdx,%rsi
    93d5:	48 89 c7             	mov    %rax,%rdi
    93d8:	e8 4d 25 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    93dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    93e4:	48 89 c7             	mov    %rax,%rdi
    93e7:	e8 96 26 00 00       	callq  ba82 <_ZN4Heap3popEv>
    93ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    93f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    93f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    93fe:	48 89 d6             	mov    %rdx,%rsi
    9401:	48 89 c7             	mov    %rax,%rdi
    9404:	e8 21 25 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9409:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9410:	48 89 c7             	mov    %rax,%rdi
    9413:	e8 6a 26 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9418:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    941f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9423:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    942a:	48 89 d6             	mov    %rdx,%rsi
    942d:	48 89 c7             	mov    %rax,%rdi
    9430:	e8 f5 24 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9435:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    943c:	48 89 c7             	mov    %rax,%rdi
    943f:	e8 3e 26 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9444:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    944b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    944f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9456:	48 89 d6             	mov    %rdx,%rsi
    9459:	48 89 c7             	mov    %rax,%rdi
    945c:	e8 c9 24 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9461:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9468:	48 89 c7             	mov    %rax,%rdi
    946b:	e8 12 26 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9470:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9477:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    947b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9482:	48 89 d6             	mov    %rdx,%rsi
    9485:	48 89 c7             	mov    %rax,%rdi
    9488:	e8 9d 24 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    948d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9494:	48 89 c7             	mov    %rax,%rdi
    9497:	e8 e6 25 00 00       	callq  ba82 <_ZN4Heap3popEv>
    949c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    94a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    94a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    94ae:	48 89 d6             	mov    %rdx,%rsi
    94b1:	48 89 c7             	mov    %rax,%rdi
    94b4:	e8 71 24 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    94b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    94c0:	48 89 c7             	mov    %rax,%rdi
    94c3:	e8 ba 25 00 00       	callq  ba82 <_ZN4Heap3popEv>
    94c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    94cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    94d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    94da:	48 89 d6             	mov    %rdx,%rsi
    94dd:	48 89 c7             	mov    %rax,%rdi
    94e0:	e8 45 24 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    94e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    94ec:	48 89 c7             	mov    %rax,%rdi
    94ef:	e8 8e 25 00 00       	callq  ba82 <_ZN4Heap3popEv>
    94f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    94fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    94ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9506:	48 89 d6             	mov    %rdx,%rsi
    9509:	48 89 c7             	mov    %rax,%rdi
    950c:	e8 19 24 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9511:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9518:	48 89 c7             	mov    %rax,%rdi
    951b:	e8 62 25 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9520:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9527:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    952b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9532:	48 89 d6             	mov    %rdx,%rsi
    9535:	48 89 c7             	mov    %rax,%rdi
    9538:	e8 ed 23 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    953d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9544:	48 89 c7             	mov    %rax,%rdi
    9547:	e8 36 25 00 00       	callq  ba82 <_ZN4Heap3popEv>
    954c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9553:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9557:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    955e:	48 89 d6             	mov    %rdx,%rsi
    9561:	48 89 c7             	mov    %rax,%rdi
    9564:	e8 c1 23 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9569:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9570:	48 89 c7             	mov    %rax,%rdi
    9573:	e8 0a 25 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9578:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    957f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9583:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    958a:	48 89 d6             	mov    %rdx,%rsi
    958d:	48 89 c7             	mov    %rax,%rdi
    9590:	e8 95 23 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9595:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    959c:	48 89 c7             	mov    %rax,%rdi
    959f:	e8 de 24 00 00       	callq  ba82 <_ZN4Heap3popEv>
    95a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    95ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    95af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    95b6:	48 89 d6             	mov    %rdx,%rsi
    95b9:	48 89 c7             	mov    %rax,%rdi
    95bc:	e8 69 23 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    95c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    95c8:	48 89 c7             	mov    %rax,%rdi
    95cb:	e8 b2 24 00 00       	callq  ba82 <_ZN4Heap3popEv>
    95d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    95d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    95db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    95e2:	48 89 d6             	mov    %rdx,%rsi
    95e5:	48 89 c7             	mov    %rax,%rdi
    95e8:	e8 3d 23 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    95ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    95f4:	48 89 c7             	mov    %rax,%rdi
    95f7:	e8 86 24 00 00       	callq  ba82 <_ZN4Heap3popEv>
    95fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9603:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9607:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    960e:	48 89 d6             	mov    %rdx,%rsi
    9611:	48 89 c7             	mov    %rax,%rdi
    9614:	e8 11 23 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9619:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9620:	48 89 c7             	mov    %rax,%rdi
    9623:	e8 5a 24 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9628:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    962f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9633:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    963a:	48 89 d6             	mov    %rdx,%rsi
    963d:	48 89 c7             	mov    %rax,%rdi
    9640:	e8 e5 22 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9645:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    964c:	48 89 c7             	mov    %rax,%rdi
    964f:	e8 2e 24 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9654:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    965b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    965f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9666:	48 89 d6             	mov    %rdx,%rsi
    9669:	48 89 c7             	mov    %rax,%rdi
    966c:	e8 b9 22 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9671:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9678:	48 89 c7             	mov    %rax,%rdi
    967b:	e8 02 24 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9680:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9687:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    968b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9692:	48 89 d6             	mov    %rdx,%rsi
    9695:	48 89 c7             	mov    %rax,%rdi
    9698:	e8 8d 22 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    969d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    96a4:	48 89 c7             	mov    %rax,%rdi
    96a7:	e8 d6 23 00 00       	callq  ba82 <_ZN4Heap3popEv>
    96ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    96b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    96b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    96be:	48 89 d6             	mov    %rdx,%rsi
    96c1:	48 89 c7             	mov    %rax,%rdi
    96c4:	e8 61 22 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    96c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    96d0:	48 89 c7             	mov    %rax,%rdi
    96d3:	e8 aa 23 00 00       	callq  ba82 <_ZN4Heap3popEv>
    96d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    96df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    96e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    96ea:	48 89 d6             	mov    %rdx,%rsi
    96ed:	48 89 c7             	mov    %rax,%rdi
    96f0:	e8 35 22 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    96f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    96fc:	48 89 c7             	mov    %rax,%rdi
    96ff:	e8 7e 23 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9704:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    970b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    970f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9716:	48 89 d6             	mov    %rdx,%rsi
    9719:	48 89 c7             	mov    %rax,%rdi
    971c:	e8 09 22 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9721:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9728:	48 89 c7             	mov    %rax,%rdi
    972b:	e8 52 23 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9730:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9737:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    973b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9742:	48 89 d6             	mov    %rdx,%rsi
    9745:	48 89 c7             	mov    %rax,%rdi
    9748:	e8 dd 21 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    974d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9754:	48 89 c7             	mov    %rax,%rdi
    9757:	e8 26 23 00 00       	callq  ba82 <_ZN4Heap3popEv>
    975c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9763:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9767:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    976e:	48 89 d6             	mov    %rdx,%rsi
    9771:	48 89 c7             	mov    %rax,%rdi
    9774:	e8 b1 21 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9779:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9780:	48 89 c7             	mov    %rax,%rdi
    9783:	e8 fa 22 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9788:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    978f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9793:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    979a:	48 89 d6             	mov    %rdx,%rsi
    979d:	48 89 c7             	mov    %rax,%rdi
    97a0:	e8 85 21 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    97a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    97ac:	48 89 c7             	mov    %rax,%rdi
    97af:	e8 ce 22 00 00       	callq  ba82 <_ZN4Heap3popEv>
    97b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    97bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    97bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    97c6:	48 89 d6             	mov    %rdx,%rsi
    97c9:	48 89 c7             	mov    %rax,%rdi
    97cc:	e8 59 21 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    97d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    97d8:	48 89 c7             	mov    %rax,%rdi
    97db:	e8 a2 22 00 00       	callq  ba82 <_ZN4Heap3popEv>
    97e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    97e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    97eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    97f2:	48 89 d6             	mov    %rdx,%rsi
    97f5:	48 89 c7             	mov    %rax,%rdi
    97f8:	e8 2d 21 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    97fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9804:	48 89 c7             	mov    %rax,%rdi
    9807:	e8 76 22 00 00       	callq  ba82 <_ZN4Heap3popEv>
    980c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9813:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9817:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    981e:	48 89 d6             	mov    %rdx,%rsi
    9821:	48 89 c7             	mov    %rax,%rdi
    9824:	e8 01 21 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9829:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9830:	48 89 c7             	mov    %rax,%rdi
    9833:	e8 4a 22 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9838:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    983f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9843:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    984a:	48 89 d6             	mov    %rdx,%rsi
    984d:	48 89 c7             	mov    %rax,%rdi
    9850:	e8 d5 20 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9855:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    985c:	48 89 c7             	mov    %rax,%rdi
    985f:	e8 1e 22 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9864:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    986b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    986f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9876:	48 89 d6             	mov    %rdx,%rsi
    9879:	48 89 c7             	mov    %rax,%rdi
    987c:	e8 a9 20 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9881:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9888:	48 89 c7             	mov    %rax,%rdi
    988b:	e8 f2 21 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9890:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9897:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    989b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    98a2:	48 89 d6             	mov    %rdx,%rsi
    98a5:	48 89 c7             	mov    %rax,%rdi
    98a8:	e8 7d 20 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    98ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    98b4:	48 89 c7             	mov    %rax,%rdi
    98b7:	e8 c6 21 00 00       	callq  ba82 <_ZN4Heap3popEv>
    98bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    98c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    98c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    98ce:	48 89 d6             	mov    %rdx,%rsi
    98d1:	48 89 c7             	mov    %rax,%rdi
    98d4:	e8 51 20 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    98d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    98e0:	48 89 c7             	mov    %rax,%rdi
    98e3:	e8 9a 21 00 00       	callq  ba82 <_ZN4Heap3popEv>
    98e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    98ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    98f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    98fa:	48 89 d6             	mov    %rdx,%rsi
    98fd:	48 89 c7             	mov    %rax,%rdi
    9900:	e8 25 20 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9905:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    990c:	48 89 c7             	mov    %rax,%rdi
    990f:	e8 6e 21 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9914:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    991b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    991f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9926:	48 89 d6             	mov    %rdx,%rsi
    9929:	48 89 c7             	mov    %rax,%rdi
    992c:	e8 f9 1f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9931:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9938:	48 89 c7             	mov    %rax,%rdi
    993b:	e8 42 21 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9940:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9947:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    994b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9952:	48 89 d6             	mov    %rdx,%rsi
    9955:	48 89 c7             	mov    %rax,%rdi
    9958:	e8 cd 1f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    995d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9964:	48 89 c7             	mov    %rax,%rdi
    9967:	e8 16 21 00 00       	callq  ba82 <_ZN4Heap3popEv>
    996c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9973:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9977:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    997e:	48 89 d6             	mov    %rdx,%rsi
    9981:	48 89 c7             	mov    %rax,%rdi
    9984:	e8 a1 1f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9989:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9990:	48 89 c7             	mov    %rax,%rdi
    9993:	e8 ea 20 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9998:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    999f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    99a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    99aa:	48 89 d6             	mov    %rdx,%rsi
    99ad:	48 89 c7             	mov    %rax,%rdi
    99b0:	e8 75 1f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    99b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    99bc:	48 89 c7             	mov    %rax,%rdi
    99bf:	e8 be 20 00 00       	callq  ba82 <_ZN4Heap3popEv>
    99c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    99cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    99cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    99d6:	48 89 d6             	mov    %rdx,%rsi
    99d9:	48 89 c7             	mov    %rax,%rdi
    99dc:	e8 49 1f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    99e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    99e8:	48 89 c7             	mov    %rax,%rdi
    99eb:	e8 92 20 00 00       	callq  ba82 <_ZN4Heap3popEv>
    99f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    99f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    99fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a02:	48 89 d6             	mov    %rdx,%rsi
    9a05:	48 89 c7             	mov    %rax,%rdi
    9a08:	e8 1d 1f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9a0d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a14:	48 89 c7             	mov    %rax,%rdi
    9a17:	e8 66 20 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9a1c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9a23:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9a27:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a2e:	48 89 d6             	mov    %rdx,%rsi
    9a31:	48 89 c7             	mov    %rax,%rdi
    9a34:	e8 f1 1e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9a39:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a40:	48 89 c7             	mov    %rax,%rdi
    9a43:	e8 3a 20 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9a48:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9a4f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9a53:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a5a:	48 89 d6             	mov    %rdx,%rsi
    9a5d:	48 89 c7             	mov    %rax,%rdi
    9a60:	e8 c5 1e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9a65:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a6c:	48 89 c7             	mov    %rax,%rdi
    9a6f:	e8 0e 20 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9a74:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9a7b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9a7f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a86:	48 89 d6             	mov    %rdx,%rsi
    9a89:	48 89 c7             	mov    %rax,%rdi
    9a8c:	e8 99 1e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9a91:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9a98:	48 89 c7             	mov    %rax,%rdi
    9a9b:	e8 e2 1f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9aa0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9aa7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9aab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ab2:	48 89 d6             	mov    %rdx,%rsi
    9ab5:	48 89 c7             	mov    %rax,%rdi
    9ab8:	e8 6d 1e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9abd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ac4:	48 89 c7             	mov    %rax,%rdi
    9ac7:	e8 b6 1f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9acc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9ad3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9ad7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ade:	48 89 d6             	mov    %rdx,%rsi
    9ae1:	48 89 c7             	mov    %rax,%rdi
    9ae4:	e8 41 1e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9ae9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9af0:	48 89 c7             	mov    %rax,%rdi
    9af3:	e8 8a 1f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9af8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9aff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9b03:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b0a:	48 89 d6             	mov    %rdx,%rsi
    9b0d:	48 89 c7             	mov    %rax,%rdi
    9b10:	e8 15 1e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9b15:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b1c:	48 89 c7             	mov    %rax,%rdi
    9b1f:	e8 5e 1f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9b24:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9b2b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9b2f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b36:	48 89 d6             	mov    %rdx,%rsi
    9b39:	48 89 c7             	mov    %rax,%rdi
    9b3c:	e8 e9 1d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9b41:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b48:	48 89 c7             	mov    %rax,%rdi
    9b4b:	e8 32 1f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9b50:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9b57:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9b5b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b62:	48 89 d6             	mov    %rdx,%rsi
    9b65:	48 89 c7             	mov    %rax,%rdi
    9b68:	e8 bd 1d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9b6d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b74:	48 89 c7             	mov    %rax,%rdi
    9b77:	e8 06 1f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9b7c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9b83:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9b87:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9b8e:	48 89 d6             	mov    %rdx,%rsi
    9b91:	48 89 c7             	mov    %rax,%rdi
    9b94:	e8 91 1d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9b99:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ba0:	48 89 c7             	mov    %rax,%rdi
    9ba3:	e8 da 1e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9ba8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9baf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9bb3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9bba:	48 89 d6             	mov    %rdx,%rsi
    9bbd:	48 89 c7             	mov    %rax,%rdi
    9bc0:	e8 65 1d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9bc5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9bcc:	48 89 c7             	mov    %rax,%rdi
    9bcf:	e8 ae 1e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9bd4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9bdb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9bdf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9be6:	48 89 d6             	mov    %rdx,%rsi
    9be9:	48 89 c7             	mov    %rax,%rdi
    9bec:	e8 39 1d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9bf1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9bf8:	48 89 c7             	mov    %rax,%rdi
    9bfb:	e8 82 1e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9c00:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9c07:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9c0b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c12:	48 89 d6             	mov    %rdx,%rsi
    9c15:	48 89 c7             	mov    %rax,%rdi
    9c18:	e8 0d 1d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9c1d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c24:	48 89 c7             	mov    %rax,%rdi
    9c27:	e8 56 1e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9c2c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9c33:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9c37:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c3e:	48 89 d6             	mov    %rdx,%rsi
    9c41:	48 89 c7             	mov    %rax,%rdi
    9c44:	e8 e1 1c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9c49:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c50:	48 89 c7             	mov    %rax,%rdi
    9c53:	e8 2a 1e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9c58:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9c5f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9c63:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c6a:	48 89 d6             	mov    %rdx,%rsi
    9c6d:	48 89 c7             	mov    %rax,%rdi
    9c70:	e8 b5 1c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9c75:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c7c:	48 89 c7             	mov    %rax,%rdi
    9c7f:	e8 fe 1d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9c84:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9c8b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9c8f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9c96:	48 89 d6             	mov    %rdx,%rsi
    9c99:	48 89 c7             	mov    %rax,%rdi
    9c9c:	e8 89 1c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9ca1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ca8:	48 89 c7             	mov    %rax,%rdi
    9cab:	e8 d2 1d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9cb0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9cb7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9cbb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9cc2:	48 89 d6             	mov    %rdx,%rsi
    9cc5:	48 89 c7             	mov    %rax,%rdi
    9cc8:	e8 5d 1c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9ccd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9cd4:	48 89 c7             	mov    %rax,%rdi
    9cd7:	e8 a6 1d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9cdc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9ce3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9ce7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9cee:	48 89 d6             	mov    %rdx,%rsi
    9cf1:	48 89 c7             	mov    %rax,%rdi
    9cf4:	e8 31 1c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9cf9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d00:	48 89 c7             	mov    %rax,%rdi
    9d03:	e8 7a 1d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9d08:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9d0f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9d13:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d1a:	48 89 d6             	mov    %rdx,%rsi
    9d1d:	48 89 c7             	mov    %rax,%rdi
    9d20:	e8 05 1c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9d25:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d2c:	48 89 c7             	mov    %rax,%rdi
    9d2f:	e8 4e 1d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9d34:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9d3b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9d3f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d46:	48 89 d6             	mov    %rdx,%rsi
    9d49:	48 89 c7             	mov    %rax,%rdi
    9d4c:	e8 d9 1b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9d51:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d58:	48 89 c7             	mov    %rax,%rdi
    9d5b:	e8 22 1d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9d60:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9d67:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9d6b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d72:	48 89 d6             	mov    %rdx,%rsi
    9d75:	48 89 c7             	mov    %rax,%rdi
    9d78:	e8 ad 1b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9d7d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d84:	48 89 c7             	mov    %rax,%rdi
    9d87:	e8 f6 1c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9d8c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9d93:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9d97:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9d9e:	48 89 d6             	mov    %rdx,%rsi
    9da1:	48 89 c7             	mov    %rax,%rdi
    9da4:	e8 81 1b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9da9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9db0:	48 89 c7             	mov    %rax,%rdi
    9db3:	e8 ca 1c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9db8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9dbf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9dc3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9dca:	48 89 d6             	mov    %rdx,%rsi
    9dcd:	48 89 c7             	mov    %rax,%rdi
    9dd0:	e8 55 1b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9dd5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ddc:	48 89 c7             	mov    %rax,%rdi
    9ddf:	e8 9e 1c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9de4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9deb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9def:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9df6:	48 89 d6             	mov    %rdx,%rsi
    9df9:	48 89 c7             	mov    %rax,%rdi
    9dfc:	e8 29 1b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9e01:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e08:	48 89 c7             	mov    %rax,%rdi
    9e0b:	e8 72 1c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9e10:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9e17:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9e1b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e22:	48 89 d6             	mov    %rdx,%rsi
    9e25:	48 89 c7             	mov    %rax,%rdi
    9e28:	e8 fd 1a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9e2d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e34:	48 89 c7             	mov    %rax,%rdi
    9e37:	e8 46 1c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9e3c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9e43:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9e47:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e4e:	48 89 d6             	mov    %rdx,%rsi
    9e51:	48 89 c7             	mov    %rax,%rdi
    9e54:	e8 d1 1a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9e59:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e60:	48 89 c7             	mov    %rax,%rdi
    9e63:	e8 1a 1c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9e68:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9e6f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9e73:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e7a:	48 89 d6             	mov    %rdx,%rsi
    9e7d:	48 89 c7             	mov    %rax,%rdi
    9e80:	e8 a5 1a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9e85:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9e8c:	48 89 c7             	mov    %rax,%rdi
    9e8f:	e8 ee 1b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9e94:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9e9b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9e9f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ea6:	48 89 d6             	mov    %rdx,%rsi
    9ea9:	48 89 c7             	mov    %rax,%rdi
    9eac:	e8 79 1a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9eb1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9eb8:	48 89 c7             	mov    %rax,%rdi
    9ebb:	e8 c2 1b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9ec0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9ec7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9ecb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ed2:	48 89 d6             	mov    %rdx,%rsi
    9ed5:	48 89 c7             	mov    %rax,%rdi
    9ed8:	e8 4d 1a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9edd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9ee4:	48 89 c7             	mov    %rax,%rdi
    9ee7:	e8 96 1b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9eec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9ef3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9ef7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9efe:	48 89 d6             	mov    %rdx,%rsi
    9f01:	48 89 c7             	mov    %rax,%rdi
    9f04:	e8 21 1a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9f09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f10:	48 89 c7             	mov    %rax,%rdi
    9f13:	e8 6a 1b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9f18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9f1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9f23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f2a:	48 89 d6             	mov    %rdx,%rsi
    9f2d:	48 89 c7             	mov    %rax,%rdi
    9f30:	e8 f5 19 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9f35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f3c:	48 89 c7             	mov    %rax,%rdi
    9f3f:	e8 3e 1b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9f44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9f4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9f4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f56:	48 89 d6             	mov    %rdx,%rsi
    9f59:	48 89 c7             	mov    %rax,%rdi
    9f5c:	e8 c9 19 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9f61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f68:	48 89 c7             	mov    %rax,%rdi
    9f6b:	e8 12 1b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9f70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9f77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9f7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f82:	48 89 d6             	mov    %rdx,%rsi
    9f85:	48 89 c7             	mov    %rax,%rdi
    9f88:	e8 9d 19 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9f8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9f94:	48 89 c7             	mov    %rax,%rdi
    9f97:	e8 e6 1a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9f9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9fa3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9fa7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9fae:	48 89 d6             	mov    %rdx,%rsi
    9fb1:	48 89 c7             	mov    %rax,%rdi
    9fb4:	e8 71 19 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9fb9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9fc0:	48 89 c7             	mov    %rax,%rdi
    9fc3:	e8 ba 1a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9fc8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9fcf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9fd3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9fda:	48 89 d6             	mov    %rdx,%rsi
    9fdd:	48 89 c7             	mov    %rax,%rdi
    9fe0:	e8 45 19 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    9fe5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    9fec:	48 89 c7             	mov    %rax,%rdi
    9fef:	e8 8e 1a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    9ff4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    9ffb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    9fff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a006:	48 89 d6             	mov    %rdx,%rsi
    a009:	48 89 c7             	mov    %rax,%rdi
    a00c:	e8 19 19 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a011:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a018:	48 89 c7             	mov    %rax,%rdi
    a01b:	e8 62 1a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a020:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a027:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a02b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a032:	48 89 d6             	mov    %rdx,%rsi
    a035:	48 89 c7             	mov    %rax,%rdi
    a038:	e8 ed 18 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a03d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a044:	48 89 c7             	mov    %rax,%rdi
    a047:	e8 36 1a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a04c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a053:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a057:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a05e:	48 89 d6             	mov    %rdx,%rsi
    a061:	48 89 c7             	mov    %rax,%rdi
    a064:	e8 c1 18 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a069:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a070:	48 89 c7             	mov    %rax,%rdi
    a073:	e8 0a 1a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a078:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a07f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a083:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a08a:	48 89 d6             	mov    %rdx,%rsi
    a08d:	48 89 c7             	mov    %rax,%rdi
    a090:	e8 95 18 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a095:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a09c:	48 89 c7             	mov    %rax,%rdi
    a09f:	e8 de 19 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a0a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a0ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a0af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a0b6:	48 89 d6             	mov    %rdx,%rsi
    a0b9:	48 89 c7             	mov    %rax,%rdi
    a0bc:	e8 69 18 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a0c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a0c8:	48 89 c7             	mov    %rax,%rdi
    a0cb:	e8 b2 19 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a0d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a0d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a0db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a0e2:	48 89 d6             	mov    %rdx,%rsi
    a0e5:	48 89 c7             	mov    %rax,%rdi
    a0e8:	e8 3d 18 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a0ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a0f4:	48 89 c7             	mov    %rax,%rdi
    a0f7:	e8 86 19 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a0fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a103:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a107:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a10e:	48 89 d6             	mov    %rdx,%rsi
    a111:	48 89 c7             	mov    %rax,%rdi
    a114:	e8 11 18 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a119:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a120:	48 89 c7             	mov    %rax,%rdi
    a123:	e8 5a 19 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a128:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a12f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a133:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a13a:	48 89 d6             	mov    %rdx,%rsi
    a13d:	48 89 c7             	mov    %rax,%rdi
    a140:	e8 e5 17 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a145:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a14c:	48 89 c7             	mov    %rax,%rdi
    a14f:	e8 2e 19 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a154:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a15b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a15f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a166:	48 89 d6             	mov    %rdx,%rsi
    a169:	48 89 c7             	mov    %rax,%rdi
    a16c:	e8 b9 17 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a171:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a178:	48 89 c7             	mov    %rax,%rdi
    a17b:	e8 02 19 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a180:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a187:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a18b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a192:	48 89 d6             	mov    %rdx,%rsi
    a195:	48 89 c7             	mov    %rax,%rdi
    a198:	e8 8d 17 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a19d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a1a4:	48 89 c7             	mov    %rax,%rdi
    a1a7:	e8 d6 18 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a1ac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a1b3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a1b7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a1be:	48 89 d6             	mov    %rdx,%rsi
    a1c1:	48 89 c7             	mov    %rax,%rdi
    a1c4:	e8 61 17 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a1c9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a1d0:	48 89 c7             	mov    %rax,%rdi
    a1d3:	e8 aa 18 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a1d8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a1df:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a1e3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a1ea:	48 89 d6             	mov    %rdx,%rsi
    a1ed:	48 89 c7             	mov    %rax,%rdi
    a1f0:	e8 35 17 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a1f5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a1fc:	48 89 c7             	mov    %rax,%rdi
    a1ff:	e8 7e 18 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a204:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a20b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a20f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a216:	48 89 d6             	mov    %rdx,%rsi
    a219:	48 89 c7             	mov    %rax,%rdi
    a21c:	e8 09 17 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a221:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a228:	48 89 c7             	mov    %rax,%rdi
    a22b:	e8 52 18 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a230:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a237:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a23b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a242:	48 89 d6             	mov    %rdx,%rsi
    a245:	48 89 c7             	mov    %rax,%rdi
    a248:	e8 dd 16 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a24d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a254:	48 89 c7             	mov    %rax,%rdi
    a257:	e8 26 18 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a25c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a263:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a267:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a26e:	48 89 d6             	mov    %rdx,%rsi
    a271:	48 89 c7             	mov    %rax,%rdi
    a274:	e8 b1 16 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a279:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a280:	48 89 c7             	mov    %rax,%rdi
    a283:	e8 fa 17 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a288:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a28f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a293:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a29a:	48 89 d6             	mov    %rdx,%rsi
    a29d:	48 89 c7             	mov    %rax,%rdi
    a2a0:	e8 85 16 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a2a5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a2ac:	48 89 c7             	mov    %rax,%rdi
    a2af:	e8 ce 17 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a2b4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a2bb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a2bf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a2c6:	48 89 d6             	mov    %rdx,%rsi
    a2c9:	48 89 c7             	mov    %rax,%rdi
    a2cc:	e8 59 16 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a2d1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a2d8:	48 89 c7             	mov    %rax,%rdi
    a2db:	e8 a2 17 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a2e0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a2e7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a2eb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a2f2:	48 89 d6             	mov    %rdx,%rsi
    a2f5:	48 89 c7             	mov    %rax,%rdi
    a2f8:	e8 2d 16 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a2fd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a304:	48 89 c7             	mov    %rax,%rdi
    a307:	e8 76 17 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a30c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a313:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a317:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a31e:	48 89 d6             	mov    %rdx,%rsi
    a321:	48 89 c7             	mov    %rax,%rdi
    a324:	e8 01 16 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a329:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a330:	48 89 c7             	mov    %rax,%rdi
    a333:	e8 4a 17 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a338:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a33f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a343:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a34a:	48 89 d6             	mov    %rdx,%rsi
    a34d:	48 89 c7             	mov    %rax,%rdi
    a350:	e8 d5 15 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a355:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a35c:	48 89 c7             	mov    %rax,%rdi
    a35f:	e8 1e 17 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a364:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a36b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a36f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a376:	48 89 d6             	mov    %rdx,%rsi
    a379:	48 89 c7             	mov    %rax,%rdi
    a37c:	e8 a9 15 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a381:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a388:	48 89 c7             	mov    %rax,%rdi
    a38b:	e8 f2 16 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a390:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a397:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a39b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a3a2:	48 89 d6             	mov    %rdx,%rsi
    a3a5:	48 89 c7             	mov    %rax,%rdi
    a3a8:	e8 7d 15 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a3ad:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a3b4:	48 89 c7             	mov    %rax,%rdi
    a3b7:	e8 c6 16 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a3bc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a3c3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a3c7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a3ce:	48 89 d6             	mov    %rdx,%rsi
    a3d1:	48 89 c7             	mov    %rax,%rdi
    a3d4:	e8 51 15 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a3d9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a3e0:	48 89 c7             	mov    %rax,%rdi
    a3e3:	e8 9a 16 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a3e8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a3ef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a3f3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a3fa:	48 89 d6             	mov    %rdx,%rsi
    a3fd:	48 89 c7             	mov    %rax,%rdi
    a400:	e8 25 15 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a405:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a40c:	48 89 c7             	mov    %rax,%rdi
    a40f:	e8 6e 16 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a414:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a41b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a41f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a426:	48 89 d6             	mov    %rdx,%rsi
    a429:	48 89 c7             	mov    %rax,%rdi
    a42c:	e8 f9 14 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a431:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a438:	48 89 c7             	mov    %rax,%rdi
    a43b:	e8 42 16 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a440:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a447:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a44b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a452:	48 89 d6             	mov    %rdx,%rsi
    a455:	48 89 c7             	mov    %rax,%rdi
    a458:	e8 cd 14 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a45d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a464:	48 89 c7             	mov    %rax,%rdi
    a467:	e8 16 16 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a46c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a473:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a477:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a47e:	48 89 d6             	mov    %rdx,%rsi
    a481:	48 89 c7             	mov    %rax,%rdi
    a484:	e8 a1 14 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a489:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a490:	48 89 c7             	mov    %rax,%rdi
    a493:	e8 ea 15 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a498:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a49f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a4a3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a4aa:	48 89 d6             	mov    %rdx,%rsi
    a4ad:	48 89 c7             	mov    %rax,%rdi
    a4b0:	e8 75 14 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a4b5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a4bc:	48 89 c7             	mov    %rax,%rdi
    a4bf:	e8 be 15 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a4c4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a4cb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a4cf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a4d6:	48 89 d6             	mov    %rdx,%rsi
    a4d9:	48 89 c7             	mov    %rax,%rdi
    a4dc:	e8 49 14 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a4e1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a4e8:	48 89 c7             	mov    %rax,%rdi
    a4eb:	e8 92 15 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a4f0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a4f7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a4fb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a502:	48 89 d6             	mov    %rdx,%rsi
    a505:	48 89 c7             	mov    %rax,%rdi
    a508:	e8 1d 14 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a50d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a514:	48 89 c7             	mov    %rax,%rdi
    a517:	e8 66 15 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a51c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a523:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a527:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a52e:	48 89 d6             	mov    %rdx,%rsi
    a531:	48 89 c7             	mov    %rax,%rdi
    a534:	e8 f1 13 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a539:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a540:	48 89 c7             	mov    %rax,%rdi
    a543:	e8 3a 15 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a548:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a54f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a553:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a55a:	48 89 d6             	mov    %rdx,%rsi
    a55d:	48 89 c7             	mov    %rax,%rdi
    a560:	e8 c5 13 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a565:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a56c:	48 89 c7             	mov    %rax,%rdi
    a56f:	e8 0e 15 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a574:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a57b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a57f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a586:	48 89 d6             	mov    %rdx,%rsi
    a589:	48 89 c7             	mov    %rax,%rdi
    a58c:	e8 99 13 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a591:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a598:	48 89 c7             	mov    %rax,%rdi
    a59b:	e8 e2 14 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a5a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a5a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a5ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a5b2:	48 89 d6             	mov    %rdx,%rsi
    a5b5:	48 89 c7             	mov    %rax,%rdi
    a5b8:	e8 6d 13 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a5bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a5c4:	48 89 c7             	mov    %rax,%rdi
    a5c7:	e8 b6 14 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a5cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a5d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a5d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a5de:	48 89 d6             	mov    %rdx,%rsi
    a5e1:	48 89 c7             	mov    %rax,%rdi
    a5e4:	e8 41 13 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a5e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a5f0:	48 89 c7             	mov    %rax,%rdi
    a5f3:	e8 8a 14 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a5f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a5ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a603:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a60a:	48 89 d6             	mov    %rdx,%rsi
    a60d:	48 89 c7             	mov    %rax,%rdi
    a610:	e8 15 13 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a615:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a61c:	48 89 c7             	mov    %rax,%rdi
    a61f:	e8 5e 14 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a624:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a62b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a62f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a636:	48 89 d6             	mov    %rdx,%rsi
    a639:	48 89 c7             	mov    %rax,%rdi
    a63c:	e8 e9 12 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a641:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a648:	48 89 c7             	mov    %rax,%rdi
    a64b:	e8 32 14 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a650:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a657:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a65b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a662:	48 89 d6             	mov    %rdx,%rsi
    a665:	48 89 c7             	mov    %rax,%rdi
    a668:	e8 bd 12 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a66d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a674:	48 89 c7             	mov    %rax,%rdi
    a677:	e8 06 14 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a67c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a683:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a687:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a68e:	48 89 d6             	mov    %rdx,%rsi
    a691:	48 89 c7             	mov    %rax,%rdi
    a694:	e8 91 12 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a699:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a6a0:	48 89 c7             	mov    %rax,%rdi
    a6a3:	e8 da 13 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a6a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a6af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a6b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a6ba:	48 89 d6             	mov    %rdx,%rsi
    a6bd:	48 89 c7             	mov    %rax,%rdi
    a6c0:	e8 65 12 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a6c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a6cc:	48 89 c7             	mov    %rax,%rdi
    a6cf:	e8 ae 13 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a6d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a6db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a6df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a6e6:	48 89 d6             	mov    %rdx,%rsi
    a6e9:	48 89 c7             	mov    %rax,%rdi
    a6ec:	e8 39 12 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a6f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a6f8:	48 89 c7             	mov    %rax,%rdi
    a6fb:	e8 82 13 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a700:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a707:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a70b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a712:	48 89 d6             	mov    %rdx,%rsi
    a715:	48 89 c7             	mov    %rax,%rdi
    a718:	e8 0d 12 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a71d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a724:	48 89 c7             	mov    %rax,%rdi
    a727:	e8 56 13 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a72c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a733:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a737:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a73e:	48 89 d6             	mov    %rdx,%rsi
    a741:	48 89 c7             	mov    %rax,%rdi
    a744:	e8 e1 11 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a749:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a750:	48 89 c7             	mov    %rax,%rdi
    a753:	e8 2a 13 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a758:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a75f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a763:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a76a:	48 89 d6             	mov    %rdx,%rsi
    a76d:	48 89 c7             	mov    %rax,%rdi
    a770:	e8 b5 11 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a775:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a77c:	48 89 c7             	mov    %rax,%rdi
    a77f:	e8 fe 12 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a784:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a78b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a78f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a796:	48 89 d6             	mov    %rdx,%rsi
    a799:	48 89 c7             	mov    %rax,%rdi
    a79c:	e8 89 11 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a7a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a7a8:	48 89 c7             	mov    %rax,%rdi
    a7ab:	e8 d2 12 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a7b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a7b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a7bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a7c2:	48 89 d6             	mov    %rdx,%rsi
    a7c5:	48 89 c7             	mov    %rax,%rdi
    a7c8:	e8 5d 11 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a7cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a7d4:	48 89 c7             	mov    %rax,%rdi
    a7d7:	e8 a6 12 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a7dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a7e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a7e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a7ee:	48 89 d6             	mov    %rdx,%rsi
    a7f1:	48 89 c7             	mov    %rax,%rdi
    a7f4:	e8 31 11 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a7f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a800:	48 89 c7             	mov    %rax,%rdi
    a803:	e8 7a 12 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a808:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a80f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a813:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a81a:	48 89 d6             	mov    %rdx,%rsi
    a81d:	48 89 c7             	mov    %rax,%rdi
    a820:	e8 05 11 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a825:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a82c:	48 89 c7             	mov    %rax,%rdi
    a82f:	e8 4e 12 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a834:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a83b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a83f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a846:	48 89 d6             	mov    %rdx,%rsi
    a849:	48 89 c7             	mov    %rax,%rdi
    a84c:	e8 d9 10 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a851:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a858:	48 89 c7             	mov    %rax,%rdi
    a85b:	e8 22 12 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a860:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a867:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a86b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a872:	48 89 d6             	mov    %rdx,%rsi
    a875:	48 89 c7             	mov    %rax,%rdi
    a878:	e8 ad 10 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a87d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a884:	48 89 c7             	mov    %rax,%rdi
    a887:	e8 f6 11 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a88c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a893:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a897:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a89e:	48 89 d6             	mov    %rdx,%rsi
    a8a1:	48 89 c7             	mov    %rax,%rdi
    a8a4:	e8 81 10 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a8a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a8b0:	48 89 c7             	mov    %rax,%rdi
    a8b3:	e8 ca 11 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a8b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a8bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a8c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a8ca:	48 89 d6             	mov    %rdx,%rsi
    a8cd:	48 89 c7             	mov    %rax,%rdi
    a8d0:	e8 55 10 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a8d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a8dc:	48 89 c7             	mov    %rax,%rdi
    a8df:	e8 9e 11 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a8e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a8eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a8ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a8f6:	48 89 d6             	mov    %rdx,%rsi
    a8f9:	48 89 c7             	mov    %rax,%rdi
    a8fc:	e8 29 10 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a901:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a908:	48 89 c7             	mov    %rax,%rdi
    a90b:	e8 72 11 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a910:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a917:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a91b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a922:	48 89 d6             	mov    %rdx,%rsi
    a925:	48 89 c7             	mov    %rax,%rdi
    a928:	e8 fd 0f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a92d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a934:	48 89 c7             	mov    %rax,%rdi
    a937:	e8 46 11 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a93c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a943:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a947:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a94e:	48 89 d6             	mov    %rdx,%rsi
    a951:	48 89 c7             	mov    %rax,%rdi
    a954:	e8 d1 0f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a959:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a960:	48 89 c7             	mov    %rax,%rdi
    a963:	e8 1a 11 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a968:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a96f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a973:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a97a:	48 89 d6             	mov    %rdx,%rsi
    a97d:	48 89 c7             	mov    %rax,%rdi
    a980:	e8 a5 0f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a985:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a98c:	48 89 c7             	mov    %rax,%rdi
    a98f:	e8 ee 10 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a994:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a99b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a99f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a9a6:	48 89 d6             	mov    %rdx,%rsi
    a9a9:	48 89 c7             	mov    %rax,%rdi
    a9ac:	e8 79 0f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a9b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a9b8:	48 89 c7             	mov    %rax,%rdi
    a9bb:	e8 c2 10 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a9c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a9c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a9cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a9d2:	48 89 d6             	mov    %rdx,%rsi
    a9d5:	48 89 c7             	mov    %rax,%rdi
    a9d8:	e8 4d 0f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    a9dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a9e4:	48 89 c7             	mov    %rax,%rdi
    a9e7:	e8 96 10 00 00       	callq  ba82 <_ZN4Heap3popEv>
    a9ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    a9f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    a9f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    a9fe:	48 89 d6             	mov    %rdx,%rsi
    aa01:	48 89 c7             	mov    %rax,%rdi
    aa04:	e8 21 0f 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    aa09:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa10:	48 89 c7             	mov    %rax,%rdi
    aa13:	e8 6a 10 00 00       	callq  ba82 <_ZN4Heap3popEv>
    aa18:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aa1f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aa23:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa2a:	48 89 d6             	mov    %rdx,%rsi
    aa2d:	48 89 c7             	mov    %rax,%rdi
    aa30:	e8 f5 0e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    aa35:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa3c:	48 89 c7             	mov    %rax,%rdi
    aa3f:	e8 3e 10 00 00       	callq  ba82 <_ZN4Heap3popEv>
    aa44:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aa4b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aa4f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa56:	48 89 d6             	mov    %rdx,%rsi
    aa59:	48 89 c7             	mov    %rax,%rdi
    aa5c:	e8 c9 0e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    aa61:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa68:	48 89 c7             	mov    %rax,%rdi
    aa6b:	e8 12 10 00 00       	callq  ba82 <_ZN4Heap3popEv>
    aa70:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aa77:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aa7b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa82:	48 89 d6             	mov    %rdx,%rsi
    aa85:	48 89 c7             	mov    %rax,%rdi
    aa88:	e8 9d 0e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    aa8d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aa94:	48 89 c7             	mov    %rax,%rdi
    aa97:	e8 e6 0f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    aa9c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aaa3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aaa7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aaae:	48 89 d6             	mov    %rdx,%rsi
    aab1:	48 89 c7             	mov    %rax,%rdi
    aab4:	e8 71 0e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    aab9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aac0:	48 89 c7             	mov    %rax,%rdi
    aac3:	e8 ba 0f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    aac8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aacf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aad3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aada:	48 89 d6             	mov    %rdx,%rsi
    aadd:	48 89 c7             	mov    %rax,%rdi
    aae0:	e8 45 0e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    aae5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aaec:	48 89 c7             	mov    %rax,%rdi
    aaef:	e8 8e 0f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    aaf4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aafb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aaff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab06:	48 89 d6             	mov    %rdx,%rsi
    ab09:	48 89 c7             	mov    %rax,%rdi
    ab0c:	e8 19 0e 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ab11:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab18:	48 89 c7             	mov    %rax,%rdi
    ab1b:	e8 62 0f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ab20:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ab27:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ab2b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab32:	48 89 d6             	mov    %rdx,%rsi
    ab35:	48 89 c7             	mov    %rax,%rdi
    ab38:	e8 ed 0d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ab3d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab44:	48 89 c7             	mov    %rax,%rdi
    ab47:	e8 36 0f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ab4c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ab53:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ab57:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab5e:	48 89 d6             	mov    %rdx,%rsi
    ab61:	48 89 c7             	mov    %rax,%rdi
    ab64:	e8 c1 0d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ab69:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab70:	48 89 c7             	mov    %rax,%rdi
    ab73:	e8 0a 0f 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ab78:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ab7f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ab83:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab8a:	48 89 d6             	mov    %rdx,%rsi
    ab8d:	48 89 c7             	mov    %rax,%rdi
    ab90:	e8 95 0d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ab95:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ab9c:	48 89 c7             	mov    %rax,%rdi
    ab9f:	e8 de 0e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    aba4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    abab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    abaf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    abb6:	48 89 d6             	mov    %rdx,%rsi
    abb9:	48 89 c7             	mov    %rax,%rdi
    abbc:	e8 69 0d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    abc1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    abc8:	48 89 c7             	mov    %rax,%rdi
    abcb:	e8 b2 0e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    abd0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    abd7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    abdb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    abe2:	48 89 d6             	mov    %rdx,%rsi
    abe5:	48 89 c7             	mov    %rax,%rdi
    abe8:	e8 3d 0d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    abed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    abf4:	48 89 c7             	mov    %rax,%rdi
    abf7:	e8 86 0e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    abfc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ac03:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ac07:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac0e:	48 89 d6             	mov    %rdx,%rsi
    ac11:	48 89 c7             	mov    %rax,%rdi
    ac14:	e8 11 0d 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ac19:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac20:	48 89 c7             	mov    %rax,%rdi
    ac23:	e8 5a 0e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ac28:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ac2f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ac33:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac3a:	48 89 d6             	mov    %rdx,%rsi
    ac3d:	48 89 c7             	mov    %rax,%rdi
    ac40:	e8 e5 0c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ac45:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac4c:	48 89 c7             	mov    %rax,%rdi
    ac4f:	e8 2e 0e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ac54:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ac5b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ac5f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac66:	48 89 d6             	mov    %rdx,%rsi
    ac69:	48 89 c7             	mov    %rax,%rdi
    ac6c:	e8 b9 0c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ac71:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac78:	48 89 c7             	mov    %rax,%rdi
    ac7b:	e8 02 0e 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ac80:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ac87:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ac8b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ac92:	48 89 d6             	mov    %rdx,%rsi
    ac95:	48 89 c7             	mov    %rax,%rdi
    ac98:	e8 8d 0c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ac9d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aca4:	48 89 c7             	mov    %rax,%rdi
    aca7:	e8 d6 0d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    acac:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    acb3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    acb7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    acbe:	48 89 d6             	mov    %rdx,%rsi
    acc1:	48 89 c7             	mov    %rax,%rdi
    acc4:	e8 61 0c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    acc9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    acd0:	48 89 c7             	mov    %rax,%rdi
    acd3:	e8 aa 0d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    acd8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    acdf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ace3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    acea:	48 89 d6             	mov    %rdx,%rsi
    aced:	48 89 c7             	mov    %rax,%rdi
    acf0:	e8 35 0c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    acf5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    acfc:	48 89 c7             	mov    %rax,%rdi
    acff:	e8 7e 0d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ad04:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ad0b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ad0f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad16:	48 89 d6             	mov    %rdx,%rsi
    ad19:	48 89 c7             	mov    %rax,%rdi
    ad1c:	e8 09 0c 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ad21:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad28:	48 89 c7             	mov    %rax,%rdi
    ad2b:	e8 52 0d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ad30:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ad37:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ad3b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad42:	48 89 d6             	mov    %rdx,%rsi
    ad45:	48 89 c7             	mov    %rax,%rdi
    ad48:	e8 dd 0b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ad4d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad54:	48 89 c7             	mov    %rax,%rdi
    ad57:	e8 26 0d 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ad5c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ad63:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ad67:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad6e:	48 89 d6             	mov    %rdx,%rsi
    ad71:	48 89 c7             	mov    %rax,%rdi
    ad74:	e8 b1 0b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ad79:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad80:	48 89 c7             	mov    %rax,%rdi
    ad83:	e8 fa 0c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ad88:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ad8f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ad93:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ad9a:	48 89 d6             	mov    %rdx,%rsi
    ad9d:	48 89 c7             	mov    %rax,%rdi
    ada0:	e8 85 0b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ada5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    adac:	48 89 c7             	mov    %rax,%rdi
    adaf:	e8 ce 0c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    adb4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    adbb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    adbf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    adc6:	48 89 d6             	mov    %rdx,%rsi
    adc9:	48 89 c7             	mov    %rax,%rdi
    adcc:	e8 59 0b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    add1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    add8:	48 89 c7             	mov    %rax,%rdi
    addb:	e8 a2 0c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ade0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ade7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    adeb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    adf2:	48 89 d6             	mov    %rdx,%rsi
    adf5:	48 89 c7             	mov    %rax,%rdi
    adf8:	e8 2d 0b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    adfd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae04:	48 89 c7             	mov    %rax,%rdi
    ae07:	e8 76 0c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ae0c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ae13:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ae17:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae1e:	48 89 d6             	mov    %rdx,%rsi
    ae21:	48 89 c7             	mov    %rax,%rdi
    ae24:	e8 01 0b 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ae29:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae30:	48 89 c7             	mov    %rax,%rdi
    ae33:	e8 4a 0c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ae38:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ae3f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ae43:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae4a:	48 89 d6             	mov    %rdx,%rsi
    ae4d:	48 89 c7             	mov    %rax,%rdi
    ae50:	e8 d5 0a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ae55:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae5c:	48 89 c7             	mov    %rax,%rdi
    ae5f:	e8 1e 0c 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ae64:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ae6b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ae6f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae76:	48 89 d6             	mov    %rdx,%rsi
    ae79:	48 89 c7             	mov    %rax,%rdi
    ae7c:	e8 a9 0a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    ae81:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    ae88:	48 89 c7             	mov    %rax,%rdi
    ae8b:	e8 f2 0b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    ae90:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    ae97:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    ae9b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aea2:	48 89 d6             	mov    %rdx,%rsi
    aea5:	48 89 c7             	mov    %rax,%rdi
    aea8:	e8 7d 0a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    aead:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aeb4:	48 89 c7             	mov    %rax,%rdi
    aeb7:	e8 c6 0b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    aebc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aec3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aec7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aece:	48 89 d6             	mov    %rdx,%rsi
    aed1:	48 89 c7             	mov    %rax,%rdi
    aed4:	e8 51 0a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    aed9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aee0:	48 89 c7             	mov    %rax,%rdi
    aee3:	e8 9a 0b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    aee8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aeef:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    aef3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    aefa:	48 89 d6             	mov    %rdx,%rsi
    aefd:	48 89 c7             	mov    %rax,%rdi
    af00:	e8 25 0a 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    af05:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af0c:	48 89 c7             	mov    %rax,%rdi
    af0f:	e8 6e 0b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    af14:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    af1b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    af1f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af26:	48 89 d6             	mov    %rdx,%rsi
    af29:	48 89 c7             	mov    %rax,%rdi
    af2c:	e8 f9 09 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    af31:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af38:	48 89 c7             	mov    %rax,%rdi
    af3b:	e8 42 0b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    af40:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    af47:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    af4b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af52:	48 89 d6             	mov    %rdx,%rsi
    af55:	48 89 c7             	mov    %rax,%rdi
    af58:	e8 cd 09 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    af5d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af64:	48 89 c7             	mov    %rax,%rdi
    af67:	e8 16 0b 00 00       	callq  ba82 <_ZN4Heap3popEv>
    af6c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    af73:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    af77:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af7e:	48 89 d6             	mov    %rdx,%rsi
    af81:	48 89 c7             	mov    %rax,%rdi
    af84:	e8 a1 09 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    af89:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    af90:	48 89 c7             	mov    %rax,%rdi
    af93:	e8 ea 0a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    af98:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    af9f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    afa3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    afaa:	48 89 d6             	mov    %rdx,%rsi
    afad:	48 89 c7             	mov    %rax,%rdi
    afb0:	e8 75 09 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    afb5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    afbc:	48 89 c7             	mov    %rax,%rdi
    afbf:	e8 be 0a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    afc4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    afcb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    afcf:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    afd6:	48 89 d6             	mov    %rdx,%rsi
    afd9:	48 89 c7             	mov    %rax,%rdi
    afdc:	e8 49 09 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    afe1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    afe8:	48 89 c7             	mov    %rax,%rdi
    afeb:	e8 92 0a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    aff0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    aff7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    affb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b002:	48 89 d6             	mov    %rdx,%rsi
    b005:	48 89 c7             	mov    %rax,%rdi
    b008:	e8 1d 09 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b00d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b014:	48 89 c7             	mov    %rax,%rdi
    b017:	e8 66 0a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b01c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b023:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b027:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b02e:	48 89 d6             	mov    %rdx,%rsi
    b031:	48 89 c7             	mov    %rax,%rdi
    b034:	e8 f1 08 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b039:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b040:	48 89 c7             	mov    %rax,%rdi
    b043:	e8 3a 0a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b048:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b04f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b053:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b05a:	48 89 d6             	mov    %rdx,%rsi
    b05d:	48 89 c7             	mov    %rax,%rdi
    b060:	e8 c5 08 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b065:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b06c:	48 89 c7             	mov    %rax,%rdi
    b06f:	e8 0e 0a 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b074:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b07b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b07f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b086:	48 89 d6             	mov    %rdx,%rsi
    b089:	48 89 c7             	mov    %rax,%rdi
    b08c:	e8 99 08 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b091:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b098:	48 89 c7             	mov    %rax,%rdi
    b09b:	e8 e2 09 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b0a0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b0a7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b0ab:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b0b2:	48 89 d6             	mov    %rdx,%rsi
    b0b5:	48 89 c7             	mov    %rax,%rdi
    b0b8:	e8 6d 08 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b0bd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b0c4:	48 89 c7             	mov    %rax,%rdi
    b0c7:	e8 b6 09 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b0cc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b0d3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b0d7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b0de:	48 89 d6             	mov    %rdx,%rsi
    b0e1:	48 89 c7             	mov    %rax,%rdi
    b0e4:	e8 41 08 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b0e9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b0f0:	48 89 c7             	mov    %rax,%rdi
    b0f3:	e8 8a 09 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b0f8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b0ff:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b103:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b10a:	48 89 d6             	mov    %rdx,%rsi
    b10d:	48 89 c7             	mov    %rax,%rdi
    b110:	e8 15 08 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b115:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b11c:	48 89 c7             	mov    %rax,%rdi
    b11f:	e8 5e 09 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b124:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b12b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b12f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b136:	48 89 d6             	mov    %rdx,%rsi
    b139:	48 89 c7             	mov    %rax,%rdi
    b13c:	e8 e9 07 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b141:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b148:	48 89 c7             	mov    %rax,%rdi
    b14b:	e8 32 09 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b150:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b157:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b15b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b162:	48 89 d6             	mov    %rdx,%rsi
    b165:	48 89 c7             	mov    %rax,%rdi
    b168:	e8 bd 07 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b16d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b174:	48 89 c7             	mov    %rax,%rdi
    b177:	e8 06 09 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b17c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b183:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b187:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b18e:	48 89 d6             	mov    %rdx,%rsi
    b191:	48 89 c7             	mov    %rax,%rdi
    b194:	e8 91 07 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b199:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b1a0:	48 89 c7             	mov    %rax,%rdi
    b1a3:	e8 da 08 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b1a8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b1af:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b1b3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b1ba:	48 89 d6             	mov    %rdx,%rsi
    b1bd:	48 89 c7             	mov    %rax,%rdi
    b1c0:	e8 65 07 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b1c5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b1cc:	48 89 c7             	mov    %rax,%rdi
    b1cf:	e8 ae 08 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b1d4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b1db:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b1df:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b1e6:	48 89 d6             	mov    %rdx,%rsi
    b1e9:	48 89 c7             	mov    %rax,%rdi
    b1ec:	e8 39 07 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b1f1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b1f8:	48 89 c7             	mov    %rax,%rdi
    b1fb:	e8 82 08 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b200:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b207:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b20b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b212:	48 89 d6             	mov    %rdx,%rsi
    b215:	48 89 c7             	mov    %rax,%rdi
    b218:	e8 0d 07 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b21d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b224:	48 89 c7             	mov    %rax,%rdi
    b227:	e8 56 08 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b22c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b233:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b237:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b23e:	48 89 d6             	mov    %rdx,%rsi
    b241:	48 89 c7             	mov    %rax,%rdi
    b244:	e8 e1 06 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b249:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b250:	48 89 c7             	mov    %rax,%rdi
    b253:	e8 2a 08 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b258:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b25f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b263:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b26a:	48 89 d6             	mov    %rdx,%rsi
    b26d:	48 89 c7             	mov    %rax,%rdi
    b270:	e8 b5 06 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b275:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b27c:	48 89 c7             	mov    %rax,%rdi
    b27f:	e8 fe 07 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b284:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b28b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b28f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b296:	48 89 d6             	mov    %rdx,%rsi
    b299:	48 89 c7             	mov    %rax,%rdi
    b29c:	e8 89 06 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b2a1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b2a8:	48 89 c7             	mov    %rax,%rdi
    b2ab:	e8 d2 07 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b2b0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b2b7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b2bb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b2c2:	48 89 d6             	mov    %rdx,%rsi
    b2c5:	48 89 c7             	mov    %rax,%rdi
    b2c8:	e8 5d 06 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b2cd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b2d4:	48 89 c7             	mov    %rax,%rdi
    b2d7:	e8 a6 07 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b2dc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b2e3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b2e7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b2ee:	48 89 d6             	mov    %rdx,%rsi
    b2f1:	48 89 c7             	mov    %rax,%rdi
    b2f4:	e8 31 06 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b2f9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b300:	48 89 c7             	mov    %rax,%rdi
    b303:	e8 7a 07 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b308:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b30f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b313:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b31a:	48 89 d6             	mov    %rdx,%rsi
    b31d:	48 89 c7             	mov    %rax,%rdi
    b320:	e8 05 06 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b325:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b32c:	48 89 c7             	mov    %rax,%rdi
    b32f:	e8 4e 07 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b334:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b33b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b33f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b346:	48 89 d6             	mov    %rdx,%rsi
    b349:	48 89 c7             	mov    %rax,%rdi
    b34c:	e8 d9 05 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b351:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b358:	48 89 c7             	mov    %rax,%rdi
    b35b:	e8 22 07 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b360:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b367:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b36b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b372:	48 89 d6             	mov    %rdx,%rsi
    b375:	48 89 c7             	mov    %rax,%rdi
    b378:	e8 ad 05 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b37d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b384:	48 89 c7             	mov    %rax,%rdi
    b387:	e8 f6 06 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b38c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b393:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b397:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b39e:	48 89 d6             	mov    %rdx,%rsi
    b3a1:	48 89 c7             	mov    %rax,%rdi
    b3a4:	e8 81 05 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b3a9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b3b0:	48 89 c7             	mov    %rax,%rdi
    b3b3:	e8 ca 06 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b3b8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b3bf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b3c3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b3ca:	48 89 d6             	mov    %rdx,%rsi
    b3cd:	48 89 c7             	mov    %rax,%rdi
    b3d0:	e8 55 05 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b3d5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b3dc:	48 89 c7             	mov    %rax,%rdi
    b3df:	e8 9e 06 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b3e4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b3eb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b3ef:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b3f6:	48 89 d6             	mov    %rdx,%rsi
    b3f9:	48 89 c7             	mov    %rax,%rdi
    b3fc:	e8 29 05 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b401:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b408:	48 89 c7             	mov    %rax,%rdi
    b40b:	e8 72 06 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b410:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b417:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b41b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b422:	48 89 d6             	mov    %rdx,%rsi
    b425:	48 89 c7             	mov    %rax,%rdi
    b428:	e8 fd 04 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b42d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b434:	48 89 c7             	mov    %rax,%rdi
    b437:	e8 46 06 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b43c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b443:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b447:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b44e:	48 89 d6             	mov    %rdx,%rsi
    b451:	48 89 c7             	mov    %rax,%rdi
    b454:	e8 d1 04 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b459:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b460:	48 89 c7             	mov    %rax,%rdi
    b463:	e8 1a 06 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b468:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b46f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b473:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b47a:	48 89 d6             	mov    %rdx,%rsi
    b47d:	48 89 c7             	mov    %rax,%rdi
    b480:	e8 a5 04 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b485:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b48c:	48 89 c7             	mov    %rax,%rdi
    b48f:	e8 ee 05 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b494:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b49b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b49f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b4a6:	48 89 d6             	mov    %rdx,%rsi
    b4a9:	48 89 c7             	mov    %rax,%rdi
    b4ac:	e8 79 04 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b4b1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b4b8:	48 89 c7             	mov    %rax,%rdi
    b4bb:	e8 c2 05 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b4c0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b4c7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b4cb:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b4d2:	48 89 d6             	mov    %rdx,%rsi
    b4d5:	48 89 c7             	mov    %rax,%rdi
    b4d8:	e8 4d 04 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b4dd:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b4e4:	48 89 c7             	mov    %rax,%rdi
    b4e7:	e8 96 05 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b4ec:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b4f3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b4f7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b4fe:	48 89 d6             	mov    %rdx,%rsi
    b501:	48 89 c7             	mov    %rax,%rdi
    b504:	e8 21 04 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b509:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b510:	48 89 c7             	mov    %rax,%rdi
    b513:	e8 6a 05 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b518:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b51f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b523:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b52a:	48 89 d6             	mov    %rdx,%rsi
    b52d:	48 89 c7             	mov    %rax,%rdi
    b530:	e8 f5 03 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b535:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b53c:	48 89 c7             	mov    %rax,%rdi
    b53f:	e8 3e 05 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b544:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b54b:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b54f:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b556:	48 89 d6             	mov    %rdx,%rsi
    b559:	48 89 c7             	mov    %rax,%rdi
    b55c:	e8 c9 03 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b561:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b568:	48 89 c7             	mov    %rax,%rdi
    b56b:	e8 12 05 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b570:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b577:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b57b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b582:	48 89 d6             	mov    %rdx,%rsi
    b585:	48 89 c7             	mov    %rax,%rdi
    b588:	e8 9d 03 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b58d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b594:	48 89 c7             	mov    %rax,%rdi
    b597:	e8 e6 04 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b59c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b5a3:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b5a7:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b5ae:	48 89 d6             	mov    %rdx,%rsi
    b5b1:	48 89 c7             	mov    %rax,%rdi
    b5b4:	e8 71 03 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b5b9:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b5c0:	48 89 c7             	mov    %rax,%rdi
    b5c3:	e8 ba 04 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b5c8:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b5cf:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b5d3:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b5da:	48 89 d6             	mov    %rdx,%rsi
    b5dd:	48 89 c7             	mov    %rax,%rdi
    b5e0:	e8 45 03 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b5e5:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b5ec:	48 89 c7             	mov    %rax,%rdi
    b5ef:	e8 8e 04 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b5f4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b5fb:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b5ff:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b606:	48 89 d6             	mov    %rdx,%rsi
    b609:	48 89 c7             	mov    %rax,%rdi
    b60c:	e8 19 03 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b611:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b618:	48 89 c7             	mov    %rax,%rdi
    b61b:	e8 62 04 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b620:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b627:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b62b:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b632:	48 89 d6             	mov    %rdx,%rsi
    b635:	48 89 c7             	mov    %rax,%rdi
    b638:	e8 ed 02 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b63d:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b644:	48 89 c7             	mov    %rax,%rdi
    b647:	e8 36 04 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b64c:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b653:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b657:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b65e:	48 89 d6             	mov    %rdx,%rsi
    b661:	48 89 c7             	mov    %rax,%rdi
    b664:	e8 c1 02 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b669:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b670:	48 89 c7             	mov    %rax,%rdi
    b673:	e8 0a 04 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b678:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b67f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b683:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b68a:	48 89 d6             	mov    %rdx,%rsi
    b68d:	48 89 c7             	mov    %rax,%rdi
    b690:	e8 95 02 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b695:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b69c:	48 89 c7             	mov    %rax,%rdi
    b69f:	e8 de 03 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b6a4:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b6ab:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b6af:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b6b6:	48 89 d6             	mov    %rdx,%rsi
    b6b9:	48 89 c7             	mov    %rax,%rdi
    b6bc:	e8 69 02 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b6c1:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b6c8:	48 89 c7             	mov    %rax,%rdi
    b6cb:	e8 b2 03 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b6d0:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b6d7:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b6db:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b6e2:	48 89 d6             	mov    %rdx,%rsi
    b6e5:	48 89 c7             	mov    %rax,%rdi
    b6e8:	e8 3d 02 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b6ed:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b6f4:	48 89 c7             	mov    %rax,%rdi
    b6f7:	e8 86 03 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b6fc:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b703:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b707:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b70e:	48 89 d6             	mov    %rdx,%rsi
    b711:	48 89 c7             	mov    %rax,%rdi
    b714:	e8 11 02 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b719:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b720:	48 89 c7             	mov    %rax,%rdi
    b723:	e8 5a 03 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b728:	48 8d 85 30 ed df ff 	lea    -0x2012d0(%rbp),%rax
    b72f:	48 8d 50 0c          	lea    0xc(%rax),%rdx
    b733:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b73a:	48 89 d6             	mov    %rdx,%rsi
    b73d:	48 89 c7             	mov    %rax,%rdi
    b740:	e8 e5 01 00 00       	callq  b92a <_ZN4Heap4pushEP4Grid>
    b745:	48 8d 85 f0 ff df ff 	lea    -0x200010(%rbp),%rax
    b74c:	48 89 c7             	mov    %rax,%rdi
    b74f:	e8 2e 03 00 00       	callq  ba82 <_ZN4Heap3popEv>
    b754:	e8 11 05 00 00       	callq  bc6a <_Z5rdtscv>
    b759:	48 89 85 28 ed df ff 	mov    %rax,-0x2012d8(%rbp)
    b760:	48 8d 35 d1 05 00 00 	lea    0x5d1(%rip),%rsi        # bd38 <_ZL11MAXHEAPSIZE+0x4>
    b767:	48 8d 3d b2 18 20 00 	lea    0x2018b2(%rip),%rdi        # 20d020 <_ZSt4cout@@GLIBCXX_3.4>
    b76e:	e8 4d 51 ff ff       	callq  8c0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    b773:	48 89 c2             	mov    %rax,%rdx
    b776:	48 8b 85 28 ed df ff 	mov    -0x2012d8(%rbp),%rax
    b77d:	48 2b 85 20 ed df ff 	sub    -0x2012e0(%rbp),%rax
    b784:	48 89 c6             	mov    %rax,%rsi
    b787:	48 89 d7             	mov    %rdx,%rdi
    b78a:	e8 21 51 ff ff       	callq  8b0 <_ZNSolsEy@plt>
    b78f:	48 89 c2             	mov    %rax,%rdx
    b792:	48 8b 05 37 18 20 00 	mov    0x201837(%rip),%rax        # 20cfd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    b799:	48 89 c6             	mov    %rax,%rsi
    b79c:	48 89 d7             	mov    %rdx,%rdi
    b79f:	e8 3c 51 ff ff       	callq  8e0 <_ZNSolsEPFRSoS_E@plt>
    b7a4:	48 8d 35 95 05 00 00 	lea    0x595(%rip),%rsi        # bd40 <_ZL11MAXHEAPSIZE+0xc>
    b7ab:	48 8d 3d 6e 18 20 00 	lea    0x20186e(%rip),%rdi        # 20d020 <_ZSt4cout@@GLIBCXX_3.4>
    b7b2:	e8 09 51 ff ff       	callq  8c0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    b7b7:	48 89 c1             	mov    %rax,%rcx
    b7ba:	8b 15 78 19 20 00    	mov    0x201978(%rip),%edx        # 20d138 <upcounter>
    b7c0:	89 d0                	mov    %edx,%eax
    b7c2:	c1 e0 02             	shl    $0x2,%eax
    b7c5:	01 d0                	add    %edx,%eax
    b7c7:	01 c0                	add    %eax,%eax
    b7c9:	89 c2                	mov    %eax,%edx
    b7cb:	8b 05 6f 19 20 00    	mov    0x20196f(%rip),%eax        # 20d140 <upswap>
    b7d1:	c1 e0 05             	shl    $0x5,%eax
    b7d4:	01 d0                	add    %edx,%eax
    b7d6:	89 c6                	mov    %eax,%esi
    b7d8:	48 89 cf             	mov    %rcx,%rdi
    b7db:	e8 30 51 ff ff       	callq  910 <_ZNSolsEi@plt>
    b7e0:	48 89 c2             	mov    %rax,%rdx
    b7e3:	48 8b 05 e6 17 20 00 	mov    0x2017e6(%rip),%rax        # 20cfd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    b7ea:	48 89 c6             	mov    %rax,%rsi
    b7ed:	48 89 d7             	mov    %rdx,%rdi
    b7f0:	e8 eb 50 ff ff       	callq  8e0 <_ZNSolsEPFRSoS_E@plt>
    b7f5:	48 8d 35 50 05 00 00 	lea    0x550(%rip),%rsi        # bd4c <_ZL11MAXHEAPSIZE+0x18>
    b7fc:	48 8d 3d 1d 18 20 00 	lea    0x20181d(%rip),%rdi        # 20d020 <_ZSt4cout@@GLIBCXX_3.4>
    b803:	e8 b8 50 ff ff       	callq  8c0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    b808:	48 89 c1             	mov    %rax,%rcx
    b80b:	8b 15 27 19 20 00    	mov    0x201927(%rip),%edx        # 20d138 <upcounter>
    b811:	8b 05 29 19 20 00    	mov    0x201929(%rip),%eax        # 20d140 <upswap>
    b817:	01 c2                	add    %eax,%edx
    b819:	89 d0                	mov    %edx,%eax
    b81b:	01 c0                	add    %eax,%eax
    b81d:	01 d0                	add    %edx,%eax
    b81f:	01 c0                	add    %eax,%eax
    b821:	89 c6                	mov    %eax,%esi
    b823:	48 89 cf             	mov    %rcx,%rdi
    b826:	e8 e5 50 ff ff       	callq  910 <_ZNSolsEi@plt>
    b82b:	48 89 c2             	mov    %rax,%rdx
    b82e:	48 8b 05 9b 17 20 00 	mov    0x20179b(%rip),%rax        # 20cfd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    b835:	48 89 c6             	mov    %rax,%rsi
    b838:	48 89 d7             	mov    %rdx,%rdi
    b83b:	e8 a0 50 ff ff       	callq  8e0 <_ZNSolsEPFRSoS_E@plt>
    b840:	b8 00 00 00 00       	mov    $0x0,%eax
    b845:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    b849:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    b850:	00 00 
    b852:	74 05                	je     b859 <main+0xad7b>
    b854:	e8 97 50 ff ff       	callq  8f0 <__stack_chk_fail@plt>
    b859:	c9                   	leaveq 
    b85a:	c3                   	retq   

000000000000b85b <_Z41__static_initialization_and_destruction_0ii>:
    b85b:	55                   	push   %rbp
    b85c:	48 89 e5             	mov    %rsp,%rbp
    b85f:	48 83 ec 10          	sub    $0x10,%rsp
    b863:	89 7d fc             	mov    %edi,-0x4(%rbp)
    b866:	89 75 f8             	mov    %esi,-0x8(%rbp)
    b869:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    b86d:	75 32                	jne    b8a1 <_Z41__static_initialization_and_destruction_0ii+0x46>
    b86f:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
    b876:	75 29                	jne    b8a1 <_Z41__static_initialization_and_destruction_0ii+0x46>
    b878:	48 8d 3d b6 18 20 00 	lea    0x2018b6(%rip),%rdi        # 20d135 <_ZStL8__ioinit>
    b87f:	e8 7c 50 ff ff       	callq  900 <_ZNSt8ios_base4InitC1Ev@plt>
    b884:	48 8d 15 7d 17 20 00 	lea    0x20177d(%rip),%rdx        # 20d008 <__dso_handle>
    b88b:	48 8d 35 a3 18 20 00 	lea    0x2018a3(%rip),%rsi        # 20d135 <_ZStL8__ioinit>
    b892:	48 8b 05 5f 17 20 00 	mov    0x20175f(%rip),%rax        # 20cff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    b899:	48 89 c7             	mov    %rax,%rdi
    b89c:	e8 ff 4f ff ff       	callq  8a0 <__cxa_atexit@plt>
    b8a1:	90                   	nop
    b8a2:	c9                   	leaveq 
    b8a3:	c3                   	retq   

000000000000b8a4 <_GLOBAL__sub_I__Z10init_gridsP4Grid>:
    b8a4:	55                   	push   %rbp
    b8a5:	48 89 e5             	mov    %rsp,%rbp
    b8a8:	be ff ff 00 00       	mov    $0xffff,%esi
    b8ad:	bf 01 00 00 00       	mov    $0x1,%edi
    b8b2:	e8 a4 ff ff ff       	callq  b85b <_Z41__static_initialization_and_destruction_0ii>
    b8b7:	5d                   	pop    %rbp
    b8b8:	c3                   	retq   
    b8b9:	90                   	nop

000000000000b8ba <_Z4swapPP4GridS1_>:
    b8ba:	55                   	push   %rbp
    b8bb:	48 89 e5             	mov    %rsp,%rbp
    b8be:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b8c2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    b8c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b8ca:	48 8b 00             	mov    (%rax),%rax
    b8cd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    b8d1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b8d5:	48 8b 10             	mov    (%rax),%rdx
    b8d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b8dc:	48 89 10             	mov    %rdx,(%rax)
    b8df:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    b8e3:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    b8e7:	48 89 10             	mov    %rdx,(%rax)
    b8ea:	90                   	nop
    b8eb:	5d                   	pop    %rbp
    b8ec:	c3                   	retq   
    b8ed:	90                   	nop

000000000000b8ee <_ZN4HeapC1Ev>:
    b8ee:	55                   	push   %rbp
    b8ef:	48 89 e5             	mov    %rsp,%rbp
    b8f2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b8f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b8fa:	c7 80 04 00 20 00 02 	movl   $0x2,0x200004(%rax)
    b901:	00 00 00 
    b904:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b908:	c7 80 00 00 20 00 00 	movl   $0x0,0x200000(%rax)
    b90f:	00 00 00 
    b912:	90                   	nop
    b913:	5d                   	pop    %rbp
    b914:	c3                   	retq   
    b915:	90                   	nop

000000000000b916 <_ZN4Heap4sizeEv>:
    b916:	55                   	push   %rbp
    b917:	48 89 e5             	mov    %rsp,%rbp
    b91a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b91e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b922:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax
    b928:	5d                   	pop    %rbp
    b929:	c3                   	retq   

000000000000b92a <_ZN4Heap4pushEP4Grid>:
    b92a:	55                   	push   %rbp
    b92b:	48 89 e5             	mov    %rsp,%rbp
    b92e:	48 83 ec 10          	sub    $0x10,%rsp
    b932:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    b936:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    b93a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b93e:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax
    b944:	8d 50 01             	lea    0x1(%rax),%edx
    b947:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b94b:	89 90 00 00 20 00    	mov    %edx,0x200000(%rax)
    b951:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b955:	8b 90 00 00 20 00    	mov    0x200000(%rax),%edx
    b95b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b95f:	48 63 d2             	movslq %edx,%rdx
    b962:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
    b966:	48 89 0c d0          	mov    %rcx,(%rax,%rdx,8)
    b96a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    b96e:	48 89 c7             	mov    %rax,%rdi
    b971:	e8 04 00 00 00       	callq  b97a <_ZN4Heap10heapify_upEv>
    b976:	90                   	nop
    b977:	c9                   	leaveq 
    b978:	c3                   	retq   
    b979:	90                   	nop

000000000000b97a <_ZN4Heap10heapify_upEv>:
    b97a:	55                   	push   %rbp
    b97b:	48 89 e5             	mov    %rsp,%rbp
    b97e:	48 83 ec 18          	sub    $0x18,%rsp
    b982:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    b986:	8b 05 ac 17 20 00    	mov    0x2017ac(%rip),%eax        # 20d138 <upcounter>
    b98c:	83 c0 01             	add    $0x1,%eax
    b98f:	89 05 a3 17 20 00    	mov    %eax,0x2017a3(%rip)        # 20d138 <upcounter>
    b995:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b999:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax
    b99f:	89 45 fc             	mov    %eax,-0x4(%rbp)
    b9a2:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    b9a6:	0f 84 d3 00 00 00    	je     ba7f <_ZN4Heap10heapify_upEv+0x105>
    b9ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b9b0:	8b 55 fc             	mov    -0x4(%rbp),%edx
    b9b3:	48 63 d2             	movslq %edx,%rdx
    b9b6:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    b9ba:	8b 48 04             	mov    0x4(%rax),%ecx
    b9bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b9c1:	8b 90 04 00 20 00    	mov    0x200004(%rax),%edx
    b9c7:	8b 45 fc             	mov    -0x4(%rbp),%eax
    b9ca:	01 d0                	add    %edx,%eax
    b9cc:	8d 70 fe             	lea    -0x2(%rax),%esi
    b9cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b9d3:	8b b8 04 00 20 00    	mov    0x200004(%rax),%edi
    b9d9:	89 f0                	mov    %esi,%eax
    b9db:	99                   	cltd   
    b9dc:	f7 ff                	idiv   %edi
    b9de:	89 c2                	mov    %eax,%edx
    b9e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    b9e4:	48 63 d2             	movslq %edx,%rdx
    b9e7:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    b9eb:	8b 40 04             	mov    0x4(%rax),%eax
    b9ee:	39 c1                	cmp    %eax,%ecx
    b9f0:	0f 8f 89 00 00 00    	jg     ba7f <_ZN4Heap10heapify_upEv+0x105>
    b9f6:	8b 05 44 17 20 00    	mov    0x201744(%rip),%eax        # 20d140 <upswap>
    b9fc:	83 c0 01             	add    $0x1,%eax
    b9ff:	89 05 3b 17 20 00    	mov    %eax,0x20173b(%rip)        # 20d140 <upswap>
    ba05:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ba09:	8b 90 04 00 20 00    	mov    0x200004(%rax),%edx
    ba0f:	8b 45 fc             	mov    -0x4(%rbp),%eax
    ba12:	01 d0                	add    %edx,%eax
    ba14:	8d 48 fe             	lea    -0x2(%rax),%ecx
    ba17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ba1b:	8b b0 04 00 20 00    	mov    0x200004(%rax),%esi
    ba21:	89 c8                	mov    %ecx,%eax
    ba23:	99                   	cltd   
    ba24:	f7 fe                	idiv   %esi
    ba26:	48 98                	cltq   
    ba28:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    ba2f:	00 
    ba30:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ba34:	48 01 c2             	add    %rax,%rdx
    ba37:	8b 45 fc             	mov    -0x4(%rbp),%eax
    ba3a:	48 98                	cltq   
    ba3c:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    ba43:	00 
    ba44:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ba48:	48 01 c8             	add    %rcx,%rax
    ba4b:	48 89 d6             	mov    %rdx,%rsi
    ba4e:	48 89 c7             	mov    %rax,%rdi
    ba51:	e8 64 fe ff ff       	callq  b8ba <_Z4swapPP4GridS1_>
    ba56:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ba5a:	8b 90 04 00 20 00    	mov    0x200004(%rax),%edx
    ba60:	8b 45 fc             	mov    -0x4(%rbp),%eax
    ba63:	01 d0                	add    %edx,%eax
    ba65:	8d 48 fe             	lea    -0x2(%rax),%ecx
    ba68:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    ba6c:	8b b8 04 00 20 00    	mov    0x200004(%rax),%edi
    ba72:	89 c8                	mov    %ecx,%eax
    ba74:	99                   	cltd   
    ba75:	f7 ff                	idiv   %edi
    ba77:	89 45 fc             	mov    %eax,-0x4(%rbp)
    ba7a:	e9 23 ff ff ff       	jmpq   b9a2 <_ZN4Heap10heapify_upEv+0x28>
    ba7f:	90                   	nop
    ba80:	c9                   	leaveq 
    ba81:	c3                   	retq   

000000000000ba82 <_ZN4Heap3popEv>:
    ba82:	55                   	push   %rbp
    ba83:	48 89 e5             	mov    %rsp,%rbp
    ba86:	48 83 ec 10          	sub    $0x10,%rsp
    ba8a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    ba8e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    ba92:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax
    ba98:	8d 48 ff             	lea    -0x1(%rax),%ecx
    ba9b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    ba9f:	89 8a 00 00 20 00    	mov    %ecx,0x200000(%rdx)
    baa5:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    baa9:	48 98                	cltq   
    baab:	48 8b 14 c2          	mov    (%rdx,%rax,8),%rdx
    baaf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    bab3:	48 89 50 08          	mov    %rdx,0x8(%rax)
    bab7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    babb:	48 89 c7             	mov    %rax,%rdi
    babe:	e8 87 00 00 00       	callq  bb4a <_ZN4Heap12heapify_downEv>
    bac3:	90                   	nop
    bac4:	c9                   	leaveq 
    bac5:	c3                   	retq   

000000000000bac6 <_Z14find_min_childP4Heapii>:
    bac6:	55                   	push   %rbp
    bac7:	48 89 e5             	mov    %rsp,%rbp
    baca:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    bace:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    bad1:	89 55 e0             	mov    %edx,-0x20(%rbp)
    bad4:	c7 45 f4 a0 86 01 00 	movl   $0x186a0,-0xc(%rbp)
    badb:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
    bae2:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)

    bae9:	8b 45 f8             	mov    -0x8(%rbp),%eax
    baec:	3b 45 e0             	cmp    -0x20(%rbp),%eax
    baef:	7d 56                	jge    bb47 <_Z14find_min_childP4Heapii+0x81>
    baf1:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    baf4:	8b 45 f8             	mov    -0x8(%rbp),%eax
    baf7:	01 c2                	add    %eax,%edx
    baf9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bafd:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax
    bb03:	39 c2                	cmp    %eax,%edx
    
    bb05:	7f 3a                	jg     bb41 <_Z14find_min_childP4Heapii+0x7b>
    bb07:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    bb0a:	8b 45 f8             	mov    -0x8(%rbp),%eax
    bb0d:	01 c2                	add    %eax,%edx
    bb0f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bb13:	48 63 d2             	movslq %edx,%rdx
    bb16:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    bb1a:	8b 40 04             	mov    0x4(%rax),%eax
    bb1d:	39 45 f4             	cmp    %eax,-0xc(%rbp)

    bb20:	7e 1f                	jle    bb41 <_Z14find_min_childP4Heapii+0x7b>
    bb22:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    bb25:	8b 45 f8             	mov    -0x8(%rbp),%eax
    bb28:	01 c2                	add    %eax,%edx
    bb2a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bb2e:	48 63 d2             	movslq %edx,%rdx
    bb31:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    bb35:	8b 40 04             	mov    0x4(%rax),%eax
    bb38:	89 45 f4             	mov    %eax,-0xc(%rbp)
    bb3b:	8b 45 f8             	mov    -0x8(%rbp),%eax
    bb3e:	89 45 fc             	mov    %eax,-0x4(%rbp)
    bb41:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)

    bb45:	eb a2                	jmp    bae9 <_Z14find_min_childP4Heapii+0x23>
    bb47:	90                   	nop
    bb48:	5d                   	pop    %rbp
    bb49:	c3                   	retq   

000000000000bb4a <_ZN4Heap12heapify_downEv>:
    bb4a:	55                   	push   %rbp
    bb4b:	48 89 e5             	mov    %rsp,%rbp
    bb4e:	48 83 ec 18          	sub    $0x18,%rsp
    bb52:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    bb56:	8b 05 e0 15 20 00    	mov    0x2015e0(%rip),%eax        # 20d13c <downcounter>
    bb5c:	83 c0 01             	add    $0x1,%eax
    bb5f:	89 05 d7 15 20 00    	mov    %eax,0x2015d7(%rip)        # 20d13c <downcounter>
    bb65:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    bb6c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bb70:	8b 80 04 00 20 00    	mov    0x200004(%rax),%eax
    bb76:	0f af 45 f8          	imul   -0x8(%rbp),%eax
    bb7a:	89 c2                	mov    %eax,%edx
    bb7c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bb80:	8b 80 04 00 20 00    	mov    0x200004(%rax),%eax
    bb86:	83 e8 02             	sub    $0x2,%eax
    bb89:	29 c2                	sub    %eax,%edx
    bb8b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bb8f:	8b 80 00 00 20 00    	mov    0x200000(%rax),%eax
    bb95:	39 c2                	cmp    %eax,%edx
    bb97:	0f 8f b7 00 00 00    	jg     bc54 <_ZN4Heap12heapify_downEv+0x10a>
    bb9d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bba1:	8b 80 04 00 20 00    	mov    0x200004(%rax),%eax
    bba7:	0f af 45 f8          	imul   -0x8(%rbp),%eax
    bbab:	89 c2                	mov    %eax,%edx
    bbad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bbb1:	8b 80 04 00 20 00    	mov    0x200004(%rax),%eax
    bbb7:	83 e8 02             	sub    $0x2,%eax
    bbba:	29 c2                	sub    %eax,%edx
    bbbc:	89 d0                	mov    %edx,%eax
    bbbe:	89 45 fc             	mov    %eax,-0x4(%rbp)
    bbc1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bbc5:	8b 90 04 00 20 00    	mov    0x200004(%rax),%edx
    bbcb:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    bbce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bbd2:	89 ce                	mov    %ecx,%esi
    bbd4:	48 89 c7             	mov    %rax,%rdi
    bbd7:	e8 ea fe ff ff       	callq  bac6 <_Z14find_min_childP4Heapii>
    bbdc:	01 45 fc             	add    %eax,-0x4(%rbp)
    bbdf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bbe3:	8b 55 f8             	mov    -0x8(%rbp),%edx
    bbe6:	48 63 d2             	movslq %edx,%rdx
    bbe9:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    bbed:	8b 48 04             	mov    0x4(%rax),%ecx
    bbf0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bbf4:	8b 55 fc             	mov    -0x4(%rbp),%edx
    bbf7:	48 63 d2             	movslq %edx,%rdx
    bbfa:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
    bbfe:	8b 40 04             	mov    0x4(%rax),%eax
    bc01:	39 c1                	cmp    %eax,%ecx
    bc03:	7e 4d                	jle    bc52 <_ZN4Heap12heapify_downEv+0x108>
    bc05:	8b 05 39 15 20 00    	mov    0x201539(%rip),%eax        # 20d144 <downswap>
    bc0b:	83 c0 01             	add    $0x1,%eax
    bc0e:	89 05 30 15 20 00    	mov    %eax,0x201530(%rip)        # 20d144 <downswap>
    bc14:	8b 45 fc             	mov    -0x4(%rbp),%eax
    bc17:	48 98                	cltq   
    bc19:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    bc20:	00 
    bc21:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bc25:	48 01 c2             	add    %rax,%rdx
    bc28:	8b 45 f8             	mov    -0x8(%rbp),%eax
    bc2b:	48 98                	cltq   
    bc2d:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
    bc34:	00 
    bc35:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    bc39:	48 01 c8             	add    %rcx,%rax
    bc3c:	48 89 d6             	mov    %rdx,%rsi
    bc3f:	48 89 c7             	mov    %rax,%rdi
    bc42:	e8 73 fc ff ff       	callq  b8ba <_Z4swapPP4GridS1_>
    bc47:	8b 45 fc             	mov    -0x4(%rbp),%eax
    bc4a:	89 45 f8             	mov    %eax,-0x8(%rbp)
    bc4d:	e9 1a ff ff ff       	jmpq   bb6c <_ZN4Heap12heapify_downEv+0x22>
    bc52:	90                   	nop
    bc53:	90                   	nop
    bc54:	90                   	nop
    bc55:	c9                   	leaveq 
    bc56:	c3                   	retq   
    bc57:	90                   	nop

000000000000bc58 <_ZN4Heap3topEv>:
    bc58:	55                   	push   %rbp
    bc59:	48 89 e5             	mov    %rsp,%rbp
    bc5c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    bc60:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    bc64:	48 8b 40 08          	mov    0x8(%rax),%rax
    bc68:	5d                   	pop    %rbp
    bc69:	c3                   	retq   

000000000000bc6a <_Z5rdtscv>:
    bc6a:	55                   	push   %rbp
    bc6b:	48 89 e5             	mov    %rsp,%rbp
    bc6e:	0f 31                	rdtsc  
    bc70:	89 45 f8             	mov    %eax,-0x8(%rbp)
    bc73:	89 55 fc             	mov    %edx,-0x4(%rbp)
    bc76:	8b 45 f8             	mov    -0x8(%rbp),%eax
    bc79:	8b 55 fc             	mov    -0x4(%rbp),%edx
    bc7c:	48 c1 e2 20          	shl    $0x20,%rdx
    bc80:	48 09 d0             	or     %rdx,%rax
    bc83:	5d                   	pop    %rbp
    bc84:	c3                   	retq   
    bc85:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    bc8c:	00 00 00 
    bc8f:	90                   	nop

000000000000bc90 <__libc_csu_init>:
    bc90:	41 57                	push   %r15
    bc92:	41 56                	push   %r14
    bc94:	49 89 d7             	mov    %rdx,%r15
    bc97:	41 55                	push   %r13
    bc99:	41 54                	push   %r12
    bc9b:	4c 8d 25 b6 10 20 00 	lea    0x2010b6(%rip),%r12        # 20cd58 <__frame_dummy_init_array_entry>
    bca2:	55                   	push   %rbp
    bca3:	48 8d 2d be 10 20 00 	lea    0x2010be(%rip),%rbp        # 20cd68 <__init_array_end>
    bcaa:	53                   	push   %rbx
    bcab:	41 89 fd             	mov    %edi,%r13d
    bcae:	49 89 f6             	mov    %rsi,%r14
    bcb1:	4c 29 e5             	sub    %r12,%rbp
    bcb4:	48 83 ec 08          	sub    $0x8,%rsp
    bcb8:	48 c1 fd 03          	sar    $0x3,%rbp
    bcbc:	e8 af 4b ff ff       	callq  870 <_init>
    bcc1:	48 85 ed             	test   %rbp,%rbp
    bcc4:	74 20                	je     bce6 <__libc_csu_init+0x56>
    bcc6:	31 db                	xor    %ebx,%ebx
    bcc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    bccf:	00 
    bcd0:	4c 89 fa             	mov    %r15,%rdx
    bcd3:	4c 89 f6             	mov    %r14,%rsi
    bcd6:	44 89 ef             	mov    %r13d,%edi
    bcd9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    bcdd:	48 83 c3 01          	add    $0x1,%rbx
    bce1:	48 39 dd             	cmp    %rbx,%rbp
    bce4:	75 ea                	jne    bcd0 <__libc_csu_init+0x40>
    bce6:	48 83 c4 08          	add    $0x8,%rsp
    bcea:	5b                   	pop    %rbx
    bceb:	5d                   	pop    %rbp
    bcec:	41 5c                	pop    %r12
    bcee:	41 5d                	pop    %r13
    bcf0:	41 5e                	pop    %r14
    bcf2:	41 5f                	pop    %r15
    bcf4:	c3                   	retq   
    bcf5:	90                   	nop
    bcf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    bcfd:	00 00 00 

000000000000bd00 <__libc_csu_fini>:
    bd00:	f3 c3                	repz retq 
    bd02:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    bd09:	00 00 00 
    bd0c:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000bd10 <atexit>:
    bd10:	48 8b 15 f1 12 20 00 	mov    0x2012f1(%rip),%rdx        # 20d008 <__dso_handle>
    bd17:	31 f6                	xor    %esi,%esi
    bd19:	e9 82 4b ff ff       	jmpq   8a0 <__cxa_atexit@plt>

Disassembly of section .fini:

000000000000bd20 <_fini>:
    bd20:	48 83 ec 08          	sub    $0x8,%rsp
    bd24:	48 83 c4 08          	add    $0x8,%rsp
    bd28:	c3                   	retq   
