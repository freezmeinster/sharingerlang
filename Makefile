run:
	@echo "Compile all"
	@for a in $$(ls *.erl); do erlc $$a; done;
clean:
	@rm -f *.beam
