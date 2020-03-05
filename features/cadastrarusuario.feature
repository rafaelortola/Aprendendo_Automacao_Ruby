#language: pt
Funcionalidade: teste

  @cadastro @smokeTest
  Esquema do Cenário: Cadastrar novo usuário
  Dado que eu abra a página do sistema
  E clico no link signin
  E informe um email válido
  E seleciono um titulo "<titulo>"
  E informo um nome
  E informo um sobrenome
  E informo uma senha
  E informo uma data de nascimento
  E informo um endereço
  E informo uma cidade
  E informo um estado
  E informo um código postal
  E informo um telefone
  Quando submeto o cadastro
    # Então sou cadastrado com sucesso
    Exemplos:
    |titulo|
    |Mr.   |
    |Mrs.  |