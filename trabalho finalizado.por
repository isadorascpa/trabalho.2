programa
{
	inclua biblioteca Util --> u
	
	inteiro apostas
	cadeia jogo
	inteiro dezenas
	real precoFinal
	real numerosAposta
	real teste[10]
	
	funcao inicio()
	{
		selecionar_jogo()
		numero_apostas()
		precoTotal()
		sorteiaNumero()
	}
	funcao numero_apostas(){
		
		escreva("quantos apostas você gostaria de fazer? ")
		leia(apostas)
	}

	funcao selecionar_jogo(){
		
		
		escreva("\nOlá qual jogo você gostaria?")
		Util.aguarde(2000)
		escreva("\n *Mega-sena*\n *Quina*\n *Lotomania*\n *Lotofácil* ")
		Util.aguarde(2000)
		escreva("\n eu gostaria do jogo: ")
		leia(jogo)
	}
	

	funcao precoTotal(){

		real precosMega[10]
		real precosQuina[11]
		real precoLotomania2
		real precosLotofacil[6]
		real precos
		inteiro numeroCerto
		real preco = 0
		

		para(inteiro i = 0; i < apostas; i++){

		escreva("Quantos dezenas gostaria de apostar? ")
		leia(numerosAposta)
		
		
		se(jogo == "Mega-sena"){
			
			enquanto(numerosAposta < 6 ou numerosAposta > 15){
		
			escreva("Não é possivel selecionar essa dezena tente novamente: ")
			leia(numerosAposta)
			}
			
			teste[i] = numerosAposta
			
		precosMega[0] = 4.50
		precosMega[1] = 31.50
		precosMega[2] = 126.00
		precosMega[3] = 378.00
		precosMega[4] = 945.00
		precosMega[5] = 2079.00
		precosMega[6] = 4158.00
		precosMega[7] = 7722.00
		precosMega[8] = 13513.50
		precosMega[9] = 22522.50

		numeroCerto = numerosAposta - 6

			escreva("\npreço gasto nessa aposta foi: ", precosMega[numeroCerto], "\n\n")
		
		preco = precosMega[numeroCerto] + preco} //preco mega

		//*************************************************************

		se(jogo == "Quina"){
			
			
		
		enquanto(numerosAposta < 5 ou numerosAposta > 15){
			escreva("Não é possivel selecionar essa dezena tente novamente: ")
			leia(numerosAposta)
		}

		teste[i] = numerosAposta

		precosQuina[0] = 2.00
		precosQuina[1] = 12.00
		precosQuina[2] = 42.00
		precosQuina[3] = 112.00
		precosQuina[4] = 252.00
		precosQuina[5] = 504.00
		precosQuina[6] = 924.00
		precosQuina[7] = 1584.00
		precosQuina[8] = 2574.00
		precosQuina[9] = 4004.00
		precosQuina[10] = 6006.00

		numeroCerto = numerosAposta - 5

		escreva("\npreço gasto nessa aposta foi: ", precosQuina[numeroCerto], "\n\n")
		
		preco = precosQuina[numeroCerto] + preco}
		
		//*************************************************************

		se(jogo == "Lotomania"){
			enquanto(numerosAposta != 50){
		
			escreva("Não é possivel selecionar essa dezena tente novamente: ")
			leia(numerosAposta)
			}

			
		precos = 2.50

		escreva("\npreço gasto nessa aposta foi: ", precos, "\n\n")
		
		preco = precos + preco
		
		}

		//*************************************************************

		se(jogo == "Lotofácil"){
			enquanto(numerosAposta < 15 ou numerosAposta > 20){
			escreva("Não é possivel selecionar essa dezena tente novamente: ")
			leia(numerosAposta)
		}

		teste[i] = numerosAposta

		precosLotofacil[0] = 2.50
		precosLotofacil[1] = 40.00
		precosLotofacil[2] = 340.00
		precosLotofacil[3] = 2040.00
		precosLotofacil[4] = 9690.00
		precosLotofacil[5] = 38760.00
		

		numeroCerto = numerosAposta - 15
		
		escreva("\npreço gasto nessa aposta foi: ", precosLotofacil[numeroCerto], "\n\n")
		
		preco = precosLotofacil[numeroCerto] + preco
		}
		
		}

		escreva("\npreço total: ", preco, "\n")	
	}
	
	funcao sorteiaNumero(){
		
		inteiro megasena[15]
		inteiro quina[15]
		inteiro lotomania[50]
		inteiro lotofacil[20]
		inteiro numeroSorteado
		inteiro vetor[15]
		inteiro vetor2[50]
		inteiro vetor3[20]
		inteiro auxiliar

		escreva("\nnumeros sorteados:\n")

		se(jogo == "Mega-sena"){
			para(inteiro a=0; a < apostas; a++){

		numerosAposta = teste[a]
		//sorteia numeros aleatorios
		logico esta_repetido = falso
		para(inteiro i=0; i < numerosAposta; i++){

			faca {
			numeroSorteado = u.sorteia(1, 60)
			esta_repetido = falso

			para(inteiro j=0; j < numerosAposta; j++){
				se(numeroSorteado == megasena[j]){
					esta_repetido = verdadeiro
					pare
				}

			   }
			   
			} enquanto(esta_repetido)
			
			
			megasena[i] = numeroSorteado
		}

		//ORDENAR
		para(inteiro i=0; i < numerosAposta; i++){
			
				para(inteiro j=i; j < numerosAposta; j++){

				se(megasena[j] < megasena[i]){
					auxiliar = megasena[i]
					megasena[i] = megasena[j]
					megasena[j] = auxiliar
				}
		}
		}

		escreva("\n*******************************\n")
		//exibe a lista de numeros sorteados
		para(inteiro i=0; i < numerosAposta; i++){
			escreva(megasena[i], " ")

		}
		escreva("\n")
		}}

		//*************************************************************

		
		se(jogo == "Quina"){
			para(inteiro a=0; a < apostas; a++){

		numerosAposta = teste[a]
		//sorteia numeros aleatorios
		logico esta_repetido = falso
		para(inteiro i=0; i < numerosAposta; i++){

			faca {
			numeroSorteado = u.sorteia(1, 60)
			esta_repetido = falso

			para(inteiro j=0; j < numerosAposta; j++){
				se(numeroSorteado == quina[j]){
					esta_repetido = verdadeiro
					pare
				}

			   }
			   
			} enquanto(esta_repetido)
			
			
			quina[i] = numeroSorteado
		}

		//ORDENAR
		para(inteiro i=0; i < numerosAposta; i++){
			
				para(inteiro j=i; j < numerosAposta; j++){

				se(quina[j] < quina[i]){
					auxiliar = quina[i]
					quina[i] = quina[j]
					quina[j] = auxiliar
				}
		}
		}
		escreva("\n*******************************\n")
		//exibe a lista de numeros sorteados
		para(inteiro i=0; i < numerosAposta; i++){
			escreva(quina[i], " ")

		}
		escreva("\n")
		}}
		
		//************************************************************

		se(jogo == "Lotomania"){
			para(inteiro a=0; a < apostas; a++){

		numerosAposta = teste[a]
		//sorteia numeros aleatorios
		logico esta_repetido = falso
		para(inteiro i=0; i < 50; i++){

			faca {
			numeroSorteado = u.sorteia(1, 60)
			esta_repetido = falso

			para(inteiro j=0; j < 50; j++){
				se(numeroSorteado == lotomania[j]){
					esta_repetido = verdadeiro
					pare
				}

			   }
			   
			} enquanto(esta_repetido)
			
			
			lotomania[i] = numeroSorteado
		}

		//ORDENAR
		para(inteiro i=0; i < 50; i++){
			
				para(inteiro j=i; j < 50; j++){

				se(lotomania[j] < lotomania[i]){
					auxiliar = lotomania[i]
					lotomania[i] = lotomania[j]
					lotomania[j] = auxiliar
				}
		}
		}
		escreva("\n*******************************\n")
		//exibe a lista de numeros sorteados
		para(inteiro i=0; i < 50; i++){
			escreva(lotomania[i], " ")

		}
		escreva("\n")
		}}

		//************************************************************

		se(jogo == "Lotofácil"){
			para(inteiro a=0; a < apostas; a++){

		numerosAposta = teste[a]
		//sorteia numeros aleatorios
		logico esta_repetido = falso
		para(inteiro i=0; i < numerosAposta; i++){

			faca {
			numeroSorteado = u.sorteia(1, 60)
			esta_repetido = falso

			para(inteiro j=0; j < numerosAposta; j++){
				se(numeroSorteado == lotofacil[j]){
					esta_repetido = verdadeiro
					pare
				}

			   }
			   
			} enquanto(esta_repetido)
			
			
			lotofacil[i] = numeroSorteado
		}

		//ORDENAR
		para(inteiro i=0; i < numerosAposta; i++){
			
				para(inteiro j=i; j < numerosAposta; j++){

				se(lotofacil[j] < lotofacil[i]){
					auxiliar = lotofacil[i]
					lotofacil[i] = lotofacil[j]
					lotofacil[j] = auxiliar
				}
		}
		}
		escreva("\n*******************************\n")
		//exibe a lista de numeros sorteados
		para(inteiro i=0; i < numerosAposta; i++){
			escreva(lotofacil[i], " ")

		}
		escreva("\n")
		}}
		
		}
	
	}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1622; 
 * @DOBRAMENTO-CODIGO = [18, 24, 53, 82, 113, 131, 173, 224, 273, 322, 159];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */