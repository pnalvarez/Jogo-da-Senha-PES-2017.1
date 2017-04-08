adivinhacao = {}
senha = {}
querJogar = {quer = false}

math.randomseed(os.time())

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

function obtemDica(pretaseBrancas)

     dica = " "

     for i = 1,pretaseBrancas.pretas do dica = dica.."p " end
     for j = 1,pretaseBrancas.brancas do dica = dica.."b " end
     for k = 1,(4-(pretaseBrancas.pretas+pretaseBrancas.brancas)) do dica = dica..". " end

      return dica
end

function PerguntaSeQuerJogar(querJogar)

io.write("Digite sim se quiser jogar ou outra coisa se nao quiser\n")

imput = io.read("*l")

if(imput == "sim") then

	querJogar.quer = true
else 
	querJogar.quer = false
  end
end

function geraSenha(user)

user[1] = math.random(1,6)

while(user[2] == user[1] or user[2] == nil) do 

	user[2] = math.random(1,6) end

while(user[3] == user[1] or user[3] == user[2] or user[3] == nil) do
	user[3] = math.random(1,6)
end

while(user[4] == user[1] or user[4] == user[2] or user[4] == user[3] or user[4] == nil) do
	user[4] = math.random(1,6)
 end

end

function JogadorAdivinhar(tentativa)

      io.write("insira 4 numeros".." "..tostring(tentativa).." tentativa\n")
          user = {io.read("*n"),io.read("*n"),io.read("*n"),io.read("*n")}
          io.write("\n")
end

function InformarDica()
 io.write(obtemDica(comparaSequencias(senha,user)))
          io.write("\n")
      end

 function ImprimeSequencia(seq)

 	for i = 1,4 do
 		io.write(tostring(seq[i]).." ")
 	end
 	io.write("\n")
 end

PerguntaSeQuerJogar(querJogar)

while(querJogar.quer) do

local tentativa = 1

geraSenha(senha)

 JogadorAdivinhar(tentativa)
		  InformarDica()

tentativa = tentativa + 1

while (tentativa <= 9 and comparaSequencias(senha,adivinhacao).pretas ~= 4) do

		  JogadorAdivinhar(tentativa)
		  InformarDica()

          tentativa = tentativa+1
end

if (tentativa < 10) then
 io.write("acertou") 

  else 
  	io.write("tempo esgotado\n")

    ImprimeSequencia(senha)
    end

PerguntaSeQuerJogar(querJogar)
  end


      
  
