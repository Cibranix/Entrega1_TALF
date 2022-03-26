machina:	machina.lex.c
	gcc -o machina lex.yy.c
machina.lex.c:	machina.l
	flex machina.l
clean:
	rm lex.yy.c machina
