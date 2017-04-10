# Jogo-da-Senha-PES-2017.1

1 regra): Titulo: Jogo da Senha
        Autoria: Pedro Alvarez
        Dia: 10/04/2017
        Versāo: 2.0
        Indicador de conteúdo: 125 linhas de código
        Descriçāo: Jogo simples que a cada partida gera-se uma sequência de 4 numeros aleatórios entre 1 e 7 e o jogador tem ate
 10 tentativas para acertar, sendo que a cada tentativa a aplicacao fornce uma dica para ele, que consiste numa sequencia de
 caracteres em que cada "p"(preto) significa que há um valor certo na posiçāo certa na sequencia, e a cada "b"(branco) significa
 um valor certo na posiçāo errada. 
 
  2 regra) |---ComparaSequencias(s1,s2)
          |---obtemDica(pretaseBrancas)
          |-- PerguntaSeQuerJogar(querJogar)
          |--geraSenha(user)
          |--JogadorAdivinhar(tentativa)
          |--InformarDica()
          |--ImprimeSequencia(seq)
         
3 regra) A aplicacao pode ser dividida em 5 partes: inicializaçāo(declaracāo das variaveis tipo tabela e "setar" o gerador de números)
pseudo-aleatórios para o tempo), modularizaçāo(programar as funções primárias a serem utilizadas na aplicaçāo), começo do jogo(gerar 
a senha a ser adivinhada, imprimir mensagem para o jogador no começo da partida e inicializar a tentativa para a primeira), sequencia de tentativas
por parte do jogador e informando a dica a cada uma, e por fim informar a senha e se o jogador venceu perguntando se ele deseja reiniciar
a partida ou nāo.

4 regra) Todas as variáveis assim como funções foram chamados conforme exatamente seu significado e propósito segundo o que e feito

5 regra) "Simple is beautiful": Todas as funções, procedimentos e algoritmos da aplicaçāo foram feitos do jeito mais simples possível gerando mínimo custo, fazendo apenas aquilo que se propõe segundo seu objetivo, gerando a senha segundo sorteios feitos de maneira nao repetível e realizando troca simples de dados com o jogador a cada iteraçāo

6 regra) Livro diário sobre a produçāo dos artefatos: Encontra-se em PDF anexado ao projeto em lua.


          
