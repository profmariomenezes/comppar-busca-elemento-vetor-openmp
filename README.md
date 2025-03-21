# comppar-busca-elemento-vetor-openmp
Busca paralela com OpenMP

Crie um código-fonte em C, utilizando somente `#pragma omp parallel` para encontrar um elemento em um vetor de tamanho de 2^16. Para isso:

- garanta que os elementos no vetor sejam únicos

- faça a busca em um elemento que realmente exista

- utilize as primitiva `omp_get_num_threads()`, `omp_get_max_threads()` e `omp_get_thread_num()`

- compile preferencialmente sem a opção -O2

- não utilize qualquer outra função OpenMP, ou de sincronização, além daquela descrita acima

- para testar a lógica do seu algoritmo, faça testes em vetores de tamanho pequenos.

- *o nome do seu programa deve ser:*  `busca.c`

- o elemento a ser buscado deve ser recebido na linha de comando e também o nome do arquivo de busca (vou usar os arquivos de exemplo).

- o programa deve retornar unicamente a posição do elemento no vetor; **não use nenhum outro printf no seu código, apenas a posição do elemento ou -1 caso não seja encontrado**

Vou usar compilação e execução automática do código; seu programa será executado como segue:

```
$ gcc -o busca busca.c -fopenmp
$ ./busca <elemento> vetor1.txt
  <posição>
$
```

Ao final, imprima a posição do elemento encontrado.

Submeter: o código fonte e prints da tela da execução.
