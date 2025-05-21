programa
{
    cadeia nomes[100]
    inteiro prioridades[100]
    inteiro inicia = 0, fim = 0
    cadeia nome
    inteiro prioridade
    inteiro opcao, i

    funcao enfileirar (cadeia nm, inteiro pr)
    {
        se (fim < 100)
        {
            nomes[fim] = nm
            prioridades[fim] = pr
            fim = fim + 1
            escreva("\nChamado de ", nm, " com prioridade ", pr, " adicionado.\n")
        }
        senao
        {
            escreva("\nFila cheia! Não é possível adicionar mais chamados.\n")
        }
    }

    funcao desenfileirar()
    {
        se (inicia < fim)
        {
            escreva("Chamado atendido: ", nomes[inicia], " (Prioridade: ", prioridades[inicia], ")\n")
            inicia = inicia + 1
        }
        senao
        {
            escreva("Fila vazia! Nenhum chamado para atender.\n")
        }
    }

    funcao mostrarChamados()
    {
        se (inicia < fim)
        {
            escreva("\nLista de Chamados:\n")
            para (i = inicia; i < fim; i++)
            {
                escreva(i - inicia + 1, ". ", nomes[i], " (Prioridade: ", prioridades[i], ")\n")
            }
        }
        senao
        {
            escreva("Nenhum chamado na fila.\n")
        }
    }

    funcao contarAltaPrioridade()
    {
        inteiro cont = 0
        para (i = inicia; i < fim; i++)
        {
            se (prioridades[i] >= 4)
            {
                cont = cont + 1
            }
        }
        escreva("Quantidade de chamados com alta prioridade (4 ou 5): ", cont, "\n")
    }

    funcao inicio()
    {
        inicia = 0
        fim = 0
        opcao = 5

      
        
            escreva("\n--- Sistema de Suporte Técnico ---\n")
            escreva("1 - Registrar novo chamado\n")
            escreva("2 - Atender chamado (remover da fila)\n")
            escreva("3 - Mostrar todos os chamados\n")
            escreva("4 - Mostrar quantidade de chamados com prioridade alta de 4 ou 5 \n")
            escreva("5 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

           

            escolha (opcao)
            {
                caso 1:
                    escreva("Digite o nome do solicitante: ")
                    leia(nome)
                    escreva("Digite a prioridade de 1 a 5 : ")
                    leia(prioridade)
                    enfileirar(nome, prioridade)
                    pare

                caso 2:
                    desenfileirar()
                    pare

                caso 3:
                    mostrarChamados()
                    pare

                caso 4:
                    contarAltaPrioridade()
                    pare

                caso 5:
                    escreva("Encerrando o sistema de suporte...\n")

                    
                    
            }
        }
                         
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */