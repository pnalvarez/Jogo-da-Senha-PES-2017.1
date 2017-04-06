
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

user = {}
senha = {1,2,3,4}

user[1] = io.read()
user[2] = io.read()
user[3] = io.read()
user[4] = io.read()

io.write(obtemDica(comparaSequencias(senha,user)))

--[[while (tentativa <= 10 and comparaSequencias(senha,user).pretas ~= 4) do

          user[1] = io.read()
 	      user[2] = io.read()
          user[3] = io.read()
	      user[4] = io.read()

          
           io.write(obtemDica(comparaSequencias(senha,user)))
end

if (tentativa < 10) then io.write("acertou") else io.write("tempo esgotado") end--]]

       

      
  
