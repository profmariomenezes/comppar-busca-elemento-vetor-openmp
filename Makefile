busca:
	gcc -o busca busca.c -fopenmp

clean:
	rm busca

test: busca
	bash test.sh
