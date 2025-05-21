programa
{
	cadeia fila[100]
	inteiro inicia = 0, fim = 0
	cadeia nome
	inteiro opcao, i

	funcao enfileirar (cadeia nm)
	{
		se (fim < 100)
		{
			fila [fim] = nm
			fim = fim + 1
			escreva ("\nCliente ", nm, " adicionado à fila.\n")
		}
		senao
		{
			escreva("\nFila cheia! Não é possível adicionar mais clientes.\n")
		}
	}

	funcao desenfileirar()
	{
		se (inicia < fim)
		{
			escreva("Cliente atendido: ", fila[inicia], "\n")
			inicia = inicia + 1
           
		}
		senao
		{
			escreva("Fila vazia! Nenhum cliente para atender.\n")
		}
	}

	funcao mostrarFila()
	{
		se (inicia < fim)
		{
			escreva("\nFila atual:\n")
			para (i = inicia; i < fim; i++)
			{
				escreva(i - inicia + 1, ". ", fila[i], "\n")
			}
		}
		senao
		{
			escreva("A fila está vazia.\n")
		}
	}

	funcao inicio()
	{
		inicia = 0
		fim = 0
		opcao= 40

		
			escreva("\n---- Menu da Farmácia ----\n")
			escreva("1 - Enfileirar cliente\n")
			escreva("2 - Atender cliente (desenfileirar)\n")
			escreva("3 - Mostrar fila\n")
			escreva("4 - Sair\n")
			escreva("Escolha uma opção: ")
			leia(opcao)

			escolha (opcao)
			{
				caso 1:
					escreva("Digite o nome do cliente: ")
					leia(nome)
					enfileirar(nome)
					pare

				caso 2:
					desenfileirar()
					pare

				caso 3:
					mostrarFila()
					pare

				caso 4:
					escreva("Encerrando o sistema da farmácia...\n")
					pare

				caso 5:
					escreva("Opção inválida! Tente novamente.\n")
			}
		}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1451; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */