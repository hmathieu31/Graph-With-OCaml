
build:
	@echo "\n==== COMPILING ====\n"
	ocamlbuild ftest.native
	ocamlbuild readtest.native

format:
	ocp-indent --inplace src/*

edit:
	code . -n

demo: build
	@echo "\n==== EXECUTING ====\n"
	./readtest.native

demo2: build
	@echo "\n==== EXECUTING ====\n"
	./ftest.native graphs/graph2 1 2 outfile
	@echo "\n==== RESULT ==== (content of outfile) \n"
	@cat outfile

clean:
	-rm -rf _build/
	-rm ftest.native
