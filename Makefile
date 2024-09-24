.PHONY:		default
default:	readme;

readme:
	cat HEADER.md > README.md
	printf '\n' >> README.md
	cat FOOTER.md >> README.md
	@echo 'Done!'


%:
	@echo 'Invalid command'
	@make help
