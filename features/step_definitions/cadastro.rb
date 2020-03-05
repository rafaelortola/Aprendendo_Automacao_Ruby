require 'faker' 
 
 Dado("que eu abra a página do sistema") do
  #Abre o navegador na página indicada 
  visit 'http://automationpractice.com/index.php'

  #Valida se a página que abrir é a que realmente eu solicitei
  expect(page).to have_current_path('http://automationpractice.com/index.php', url: true)
 end

 Dado ("clico no link signin") do
  #Clica no link "Sign In"
  find(:xpath, "/html/body/div/div[1]/header/div[2]/div/div/nav/div[1]/a").click
 end
 
 Dado("informe um email válido") do 
  #Variável "email" vai armazenar o email faker criado 
  email = Faker::Internet.email

  #Preenche o campo "Email Address"
  fill_in 'email_create', with: email
  
  #Exibe no console o EMAIL criado
  puts 'Email cadastrado: ' + email

  #Clica no botão "Create an Account"
  click_button 'Create an account'
  end
  
  Dado("seleciono um titulo {string}") do |titulo|
    if titulo == "Mr."
    find(:css , "#id_gender1").click
    else
      find(:css , "#id_gender2").click
    end
  end
  
  Dado("informo um nome") do
     #Variável "nome" vai armazenar o email faker criado 
  nome = Faker::Name.first_name

  #Preenche o campo "First name"
  fill_in 'customer_firstname', with: nome
  
  #Exibe no console o NOME criado
  puts 'Nome cadastrado: ' + nome
  end
  
  Dado("informo um sobrenome") do
    sobrenome = Faker::Name.middle_name
    fill_in 'customer_lastname', with: sobrenome
    puts 'Sobrenome cadastrado: ' + sobrenome
  end
  
  Dado("informo uma senha") do
    senha = "765432"
    fill_in 'passwd', with: senha
  end
  
  Dado("informo uma data de nascimento") do
    dropdays = find(:css, "#uniform-days")
    dropdays.find('option', text: '13').select_option

   dropmonths = find(:css, "#uniform-months")
   dropmonths.find('option', text: 'April').select_option

   dropyears = find(:css, "#uniform-years")
   dropyears.find('option', text: '1990').select_option
  end
  
  Dado("informo um endereço") do
  endereco = Faker::Address.full_address
  fill_in 'address1', with: endereco
  end
  
  Dado("informo uma cidade") do
    cidade = Faker::Address.city
    fill_in 'city', with: cidade
  end
  
  Dado("informo um estado") do
   dropstate = find(:css, "#uniform-id_state")
   dropstate.find('option', text: 'Colorado').select_option
  end
  
  Dado("informo um código postal") do
    fill_in 'postcode', with: '98008'
  end
  
  Dado("informo um telefone") do
    fill_in 'phone_mobile', with: '988889900'
  end
  
  Quando("submeto o cadastro") do
    click_button 'Register'
    sleep 5
  end
  
  Então("sou cadastrado com sucesso") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado("que eu informe um email válido") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado("informe uma senha válida") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("faço o login") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado("que eu informe um email inválido") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("não sou autenticado") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado("que eu informe um email em branco") do
    pending # Write code here that turns the phrase above into concrete actions
  end