# language: pt

Funcionalidade: Validar login no sistema

@login @smokeTest
  Cenário: Login Sucesso
    Dado que eu informe um email válido
    E informe uma senha válida
    Quando faço o login
    Então sou cadastrado com sucesso

  @login
  Cenário: Login inexistente
    Dado que eu informe um email inexistente
    E informe uma senha válida
    Quando faço o login
    Então não sou autenticado

  @login @smokeTest
  Cenário: Login inválido
    Dado que eu informe um email inválido
    E informe uma senha válida
    Quando faço o login
    Então não sou autenticado

  @login @smokeTest
  Cenário: Login em branco
    Dado que eu informe um email em branco
    E informe uma senha válida
    Quando faço o login
    Então não sou autenticado


