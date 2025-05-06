*** Settings ***

#   Setting são as declarações de bibliotecas e configurações para se começar a utilizar o robot framework como por exemplo
#   a biblioteca do selenium.

Library     SeleniumLibrary     # Cuidado com o nome das bibliotecas 1 letra errada e ele não declara corretamente.

#   Quando for declarar uma biblioteca como no exemplo a cima sempre cuidar para colocar 2 espaços ou tab entre o comando
#   Library e o nome da biblioteca caso você coloque apenas um espaço ele não ira identificar corretamente o comando
#   E sua biblioteca não sera importada


*** Variables ***

#   Sessão para declarar variaveis que serão utilizadas dentro do codigo como no exemplo

${variavel1}    
${variavel2}    teste
${variavel3}
${Senha}   name:senha

#   Para dar valor para a variavel precisa apenas dar tab apos a declaração e escrever o valor que a variavel irá receber
#   No exemplo a varaivel2 tem o valor teste ja as variavel1 e variavel3 não tem valor nenhum neles
#   As variaveis podem ser declaradas em qualquer lugar do codigo porém por boas praticas colcar na sessão variaveis facilita
#   a leitura do codigo para outras pessoas que irão ler posteriormente além é claro da melhor organização do codigo

*** Keywords ***
#   Uma keyword pode conter outras keyword dentro dela mesma, bem parecido com uma função chamando outra 
#   na programação como por exemplo:
Abrir pagina login card
    Open Browser    https://testescard.limbersoftware.com.br/#/auth/login     Chrome

Preencher email
    Input Text  xpath:/html/body/app-root/login/div/mat-card/form/mat-form-field[1]/div[1]/div/div[2]/input     Gustavo@limbersoftware.com.br

Preencher senha
    Input Text  ${Senha}      Gustavo1!

clicar em continuar
    Click Element   xpath:/html/body/app-root/login/div/mat-card/button

Fechar navegador
    Close Browser



*** Test Cases ***

#   Test cases é a sessão onde serão declaradas os testes que serão executados como por exemplo o teste de abrir o navegador:
#   Os Test Cases podem conter varios cenarios diferentes dentro do mesmo test case, quando executado o test ele executa todos os cenarios
#   Em sequencia, assim é possivel fazer varios teste diferentes em um unico Test Case.

#   Dentro do casos de testes entram as KeyWords que servem para executar os comandos e ações assim realizando a tarefa
#   As keywords podem ser criadas para executarem tarefas especificas desejadas porém algumas bibliotecas como a do Selenium que
#   contém algumas keyword próprias que podem ser utilizadas para facilitar a programação de novas tarefas. Você pode conferi-las nesse link: https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

# É importante que na hora de declarar um novo cenario ele esteja colado no inicio da linha para posteriormente
# a identação estar correta com os demais comandos.
Cenário 1: Teste de abrir o navegador
        Open Browser    https://www.google.com.br/     Chrome
        Close Browser

# Para utilizar uma keyword dentro de um test case basta colocar um tab e escrever o nome da keyword assim 
# o programa ja identifica como uma keyword e executa o comando dela. Essa keyword utilizada no exemplo já
# existe dentro do selenium assim não foi preciso cria-la dentro da sessão keywords.
# Sempre que uma keyword precisar de algum valor como no exemplo a URL e o browsee a ser utilizado é necessario 
# colocar um tab entre a keyword e o valor a ser passado, caso esse tab não exista o programa irá ler tudo 
# como o nome da keyword e não como os valores.

# O Robot indentifica que quando escrevemos uma frase no meio do codigo ele identifica como um caso de teste por isso
# quando declaramos uma variavel ou uma biblioteca precisamos dar tab para o programa não confundir uma declaração de biblioteca
# com a declaração de um caso de teste.

Cenário 2: Teste abrir a tela de login do card
    Open Browser    https://testescard.limbersoftware.com.br/#/auth/login     Chrome
    Close Browser

# Apenas escrevendo ele ja indentifica como diferentes cenarios assim mesmo declarando um cenario abaixo do outro
# Ele consegue separar os casos entre si e executa-los de forma individual sem um cenario interferir no outro.
# Os nomes podem ser colocados oq quiser porem é sempre preferivel colocar bem explicado o que aquele caso de teste ira fazer
# assim fica mais facil saber qual codigo está com erro ou precisa ser ajustado

Cenario 3: Teste de logar no card
    Abrir pagina login card
    preencher email
    preencher senha
    clicar em continuar
    Fechar navegador

#Esse test case tem a keys words criada na sessão keywords    




#Esse teste deverá aparecer como erro no relatório com a mensagem: Test cannot be empty.

# ***EXECUTAR UM TESTE***
# Para se executar um teste no robot basta abrir o terminal pelo VsCode (Ou pela ferramenta que estiver utilizando)
# Após abrir o terminal basta colocar o comando: robot nomedoteste.robot
# Assim ele executa o teste que você escolheu. Lembre de verificar se está utilizando o powershell antes de executar