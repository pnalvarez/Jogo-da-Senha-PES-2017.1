
function comparaSequencias(s1,s2)
 
   pretas = 0
   brancas = 0

    for k1,v1 in pairs(s1) do
     for k2,v2 in pairs(s2) do

       if(v1 == v2) then
    	if(k1 == k2) then
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

     str = " "

     for i = 1,pretaseBrancas.pretas do str = str.."p " end
     for j = 1,pretaseBrancas.brancas do str = str.."b " end
     for k = 1,(4-(pretaseBrancas.pretas+pretaseBrancas.brancas)) do str = str..". " end

      return str
end

tentativa = 1

senha = {1,2,3,4}

io.write("insira 4 numeros".." "..tostring(tentativa).." tentativa\n")
user = {io.read("*n"),io.read("*n"),io.read("*n"),io.read("*n")}
io.write("\n")
io.write(obtemDica(comparaSequencias(senha,user)))
io.write("\n")

while (tentativa <= 9 and comparaSequencias(senha,user).pretas ~= 4) do

		  io.write("insira 4 numeros".." "..tostring(tentativa).." tentativa\n")
          user = {io.read("*n"),io.read("*n"),io.read("*n"),io.read("*n")}
          io.write("\n")
          io.write(obtemDica(comparaSequencias(senha,user)))
          io.write("\n")

          tentativa = tentativa+1
end

if (tentativa < 10) then io.write("acertou") else io.write("tempo esgotado") end

       

      
  
