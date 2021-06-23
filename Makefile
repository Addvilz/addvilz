.PHONY:		default
default:	test;

readme:
	cat HEADER.md > README.md
	clang-8 -S -emit-llvm self.c
	llc-8 self.ll
	printf '\n```asm\n' >> README.md
	cat self.s >> README.md
	printf '\n```\n' >> README.md
	cat FOOTER.md >> README.md
	@echo 'Done!'

test:
	clang-8 self.c -o self
	./self

%:
	@echo 'Invalid command'
	@make help
