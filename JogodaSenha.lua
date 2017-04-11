
--[[Table structures]]--

adivinhacao = {}
senha = {}
querJogar = {quer = false}

math.randomseed(os.time())

--[[Functions]]--

--[[comparaSequencias: Funçāo que recebe duas sequencias de 4 valores entre 1 e 7 nao repetidos e retorna o numero de valores certos na posicao certa e valores certos na posicao errada--]]
--[[ Pre-condicoes: sequencia1 e sequencia2 existem e correspondem a sequencias de 4 valores entre 1 e 7 nao repetidos--]]
--[[Pos-condicoes: É retornado exatamente as quantidades de valores certos no lugar certo(peças pretas) e valores certos no lugar errado(peças brancas) --]]
function comparaSequencias(sequencia1,sequencia2)
 
   pretas = 0
   brancas = 0

    for posicao1,valor1 in pairs(sequencia1) do
     for posicao2,valor2 in pairs(sequencia2) do

       if(valor1 == valor2) then
    	if(posicao1 == posicao2) then
	    pretas = pretas + 1
          else
            brancas = brancas + 1
          end
	end
    end
end

      PretaseBrancas = { pretas = pretas, brancas = brancas}

      return PretaseBrancas

end

--[[obtemDica: Funçāo que recebe as quantidades de peças pretas e brancas ('p' e 'b') e retorna uma string correspondente a dica representando as quantidades de cada uma--]]
--[[Pre-condicoes: pretaseBrancas corresponde a tabela com respectivos valores de pecas certas nos lugares certos(numeros) e pecas certas no lugar errado--]]
--[[Pos-condicoes: é retornada uma string correspondendo exatamente ao numero de pecas pretas e brancas(sequencias de 'p's e 'b's concatenados e '.' indicando pecas erradas--]]
function obtemDica(pretaseBrancas)

     dica = " "

     for i = 1,pretaseBrancas.pretas do dica = dica.."p " end
     for j = 1,pretaseBrancas.brancas do dica = dica.."b " end
     for k = 1,(4-(pretaseBrancas.pretas+pretaseBrancas.brancas)) do dica = dica..". " end

      return dica
end

--[[geraSenha: Funcao que recebe uma tabela vazia e a preenche com uma senha de 4 numeros entre 1,7 gerados pseudo-aleatoriamente sem repetir a ser adivinhada pelo jogador--]]
--[[Pre-condicoes: a tabela senha existe e esta vazia--]]
--[[Pos-condicoes:  A tabela senha esta preenchida com 4 valores nao repetidos entre 1 e 7--]]
function geraSenha(senha)

senha[1] = math.random(1,7)

while(senha[2] == senha[1] or senha[2] == nil) do 

	senha[2] = math.random(1,7) end

while(senha[3] == senha[1] or senha[3] == senha[2] or senha[3] == nil) do
	senha[3] = math.random(1,7)
end

while(senha[4] == senha[1] or senha[4] == senha[2] or senha[4] == senha[3] or senha[4] == nil) do
	senha[4] = math.random(1,7)
 end

end

--[[JogadorAdivinhar: Funcao que recebe o numero da tentativa da adivinhacao, imprime uma mensagem para que o jogador tente adivinhar a senha e o mesmo tenta, realizando uma leitura por teclado(um numero da sequencia por linha)--]]
--[[Pre-condicoes: A senha ja foi gerada aleatoriamente e o valor da tentativa corresponde a um numero entre 1 e 10--]]
--[[Pos-condicoes: Uma sequencia correspondente aos numeros dados pelo jogador foi criada --]]
function JogadorAdivinhar(tentativa)

      io.write("insira 4 numeros no intervalo entre 1 e 7 sem repetir\nOBS:Insira um unico numero por linha\n\n".." "..tostring(tentativa).." tentativa\n")
          user = {io.read("*n"),io.read("*n"),io.read("*n"),io.read("*n")}
          adivinhacao = user
          io.write("\n")
end

--[[InformaDica: Funcao que imprime uma sequencia dica originaria da string de 'p's e b's criada pela obtemDica ja definida anteriormente--]]
--[[Pre-condicoes: As funcoes obtemDica e comparaSequencias obedecem suas assertivas de entrada e saida, senha e user sao tabelas validas correspondentes a 4 numeros entre 1 e 7 nao repetidos--]]
--[[Pos-condicoes: A sequencia correspondente a dica foi imprimida na tela para o jogador--]]
function InformarDica()
 io.write("\n")
 io.write("Dica: ")
 io.write(obtemDica(comparaSequencias(senha,user)))
          io.write("\n")
          io.write("Legenda: cada 'p' significa um valor certo na posiçāo certa e cada 'b' significa um valor certo na posiçāo errada\n\n\n")
      end

--[[ImprimeSequencia: Funcao que recebe uma tabela correspondente a uma sequencia e a imprime na tela--]]
--[[Pre-condicoes: Sequencia é uma tabela com exatamente 4 valores entre 1 e 7 nao repetidos--]]
--[[Pos-condicoes: Os valores da sequencia foram impressos na tela--]]
 function ImprimeSequencia(sequencia)

 	for i = 1,4 do
 		io.write(tostring(sequencia[i]).." ")
 	end
 	io.write("\n")
 end

--[[revelarSenha: Funcao que imprime a sequencia correspondente a senha--]]
--[[Pre-condicoes: Valem as assertivas de entrada e saida da ImprimeSequencia e senha é uma tabela valida com 4 valores nao repetidos entre 1 e 7--]]
--[[Pos-condicoes: A senha foi revelada na tela--]]
 function revelarSenha()

    io.write("A senha era: ")
 	ImprimeSequencia(senha)
 	io.write("\n")
 end

--[[Beginning match]]--


local tentativa = 1

geraSenha(senha)

--[[The player tries]]--

		  JogadorAdivinhar(tentativa)
		  InformarDica()

          tentativa = tentativa+1

while(tentativa < 10 and comparaSequencias(senha,adivinhacao).pretas < 4) do

	 JogadorAdivinhar(tentativa)
		  InformarDica()

          tentativa = tentativa+1
      end

--[[Match results]]--

if (tentativa < 10) then
 io.write("ACERTOU!\n\n") 

  else 
  	io.write("tempo esgotado\n\n")

    revelarSenha()
    end






      
  
