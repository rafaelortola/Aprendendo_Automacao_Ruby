# language: pt

Funcionalidade: Validar login no sistema

@login @smokeTest
  Cenário: Login Sucesso
    Dado que eu abra a página do sistema
    E clico no link signin
    E que eu informe um email válido "illiii@gmail.com"
    E informe uma senha válida
    Quando faço o login
    Então sou autenticado com sucesso "illiii@gmail.com"

  @login @smokeTest
  Cenário: Login inexistente
    Dado que eu abra a página do sistema
    E clico no link signin
    E que eu informe um email inexistente "dsadsa@llll.com"
    E informe uma senha válida
    Quando faço o login
    Então não sou autenticado

  @login @smokeTest
  Cenário: Login inválido
    Dado que eu abra a página do sistema
    E clico no link signin
    E que eu informe um email inválido "#@!#JSAD@P$M"
    E informe uma senha válida
    Quando faço o login
    Então não sou autenticado

  @login @smokeTest
  Cenário: Login em branco
    Dado que eu abra a página do sistema
    E clico no link signin
    E que eu informe um email em branco 
    E informe uma senha válida
    Quando faço o login
    Então não sou autenticado


