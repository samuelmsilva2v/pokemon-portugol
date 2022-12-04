programa
{
	inclua biblioteca Util --> u
	cadeia jogador, pokemon = ""
	caracter opcao, certeza = 'n', movimento
	inteiro vida_jogador = 0, ataque_jogador = 0, cura_jogador = 0, vida_mewtwo = 250, ataque_mewtwo = 40
	
	
	funcao linha(){
		escreva("----------------------------\n")
	}

	funcao continuar(){
			escreva("Você tem certeza? (S/N)\n")
			leia(certeza)
	}
	
	funcao pokemonEscolhido(){
		escreva(pokemon)
		escreva("\nVida: "+vida_jogador)
		u.aguarde(500)
		escreva("\nAtaque: "+ataque_jogador)
		u.aguarde(500)
		escreva("\nCura: "+cura_jogador+"\n")
		u.aguarde(500)
	}	

	funcao mewtwo(){
		escreva("\nMewtwo")
		u.aguarde(500)
		escreva("\nVida: "+vida_mewtwo)
		u.aguarde(500)
		escreva("\nAtaque: "+ataque_mewtwo+"\n\n")
		u.aguarde(500)
	}
	
	funcao inicio()
	{
		escreva("Bem-vindo a batalha Pokémon!\n")
		linha()
		escreva("Qual é o seu nome? ")
		leia(jogador)
		limpa()
		
		faca{
			
			escreva(jogador+", escolha seu pokémon! \n")
			escreva("\nA - Charizard\n")
			escreva("B - Blastoise\n")
			escreva("C - Venusaur\n")
			leia(opcao)
			limpa()

			escolha(opcao){
				caso 'A':
				caso 'a':
					pokemon = "Charizard"
					vida_jogador = 120
					ataque_jogador = 55
					cura_jogador = 50
					pokemonEscolhido()
					linha()
					continuar()
					limpa()
				pare

				caso 'B':
				caso 'b':
					pokemon = "Blastoise"
					vida_jogador = 170
					ataque_jogador = 35
					cura_jogador = 55
					pokemonEscolhido()
					linha()
					continuar()
					limpa()
					pare
					
				caso 'C':
				caso 'c':
					pokemon = "Venusaur"
					vida_jogador = 140
					ataque_jogador = 45
					cura_jogador = 50
					pokemonEscolhido()
					linha()
					continuar()
					limpa()
					pare

				caso 'K':
				caso 'k':
					pokemon = "Shiny Kadabra"
					vida_jogador = 500
					ataque_jogador = 70
					cura_jogador = 10
					pokemonEscolhido()
					linha()
					continuar()
					limpa()
					pare

				caso contrario:
					escreva("Escolha uma opção válida.\n")					
			}

			se(certeza != 'n' e certeza != 'N' e certeza != 's' e certeza != 'S'){
				escreva("Escolha uma opção válida.\n")
				continuar()
				limpa()
			}
			
		}enquanto(certeza == 'n' ou certeza == 'N')


		escreva("Agora é hora de batalhar!\n")
		u.aguarde(800)
		escreva("\nA wild Mewtwo appears!\n")
		u.aguarde(500)
		mewtwo()
		u.aguarde(2000)
		limpa()

		escreva(pokemon+", eu escolho você!\n\n")
		u.aguarde(2000)

		enquanto(vida_mewtwo > 0 e vida_jogador > 0){
			escreva("Você possui "+vida_jogador+" pontos de vida.\n")
			escreva("Mewtwo possui "+vida_mewtwo+" pontos de vida.\n")
			linha()
			escreva("\nO que deseja fazer nesse turno? ")
			escreva("\nA - Atacar")
			escreva("\nB - Curar\n")
			leia(movimento)

			escolha(movimento){
				caso 'A':
				caso 'a':
					vida_mewtwo = vida_mewtwo - ataque_jogador
					limpa()
					escreva("Você atacou Mewtwo e causou "+ataque_jogador+" de dano.\n")
					u.aguarde(500)
					linha()
					u.aguarde(1500)
				pare

				caso 'B':
				caso 'b':
					vida_jogador = vida_jogador + cura_jogador
					limpa()
					escreva("Você curou "+cura_jogador+" pontos de vida.\n")
					u.aguarde(500)
					linha()
					u.aguarde(1500)
				pare

				caso contrario:
					limpa()
					escreva("Você perdeu o turno. Escolha uma opção válida.\n")
					linha()
					u.aguarde(2000)	
			}
			
			se(vida_mewtwo >= 0){
				vida_jogador = vida_jogador - ataque_mewtwo
				escreva("Mewtwo atacou você e causou "+ataque_mewtwo+" de dano.\n")
				u.aguarde(500)
				linha()
				u.aguarde(1000)
				limpa()
		}
		}

		escreva("Mewtwo desmaiou!\n")
		u.aguarde(1000)
		limpa()
		escreva("Parabéns, você conseguiu a insígnia dos Kadabras! \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3218; 
 * @DOBRAMENTO-CODIGO = [8, 12, 27];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */