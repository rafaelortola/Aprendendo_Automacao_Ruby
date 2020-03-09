  Dado("que eu informe um email válido {string}") do |email|
    find(:xpath, "//*[@id='email']").set email
  end  
  
  Dado("informe uma senha válida") do
    fill_in 'passwd', with: '123987'
  end
  
  Quando("faço o login") do
    click_button 'Sign in'
  end
  
  Dado("que eu informe um email inválido {string}") do |email|
    find(:xpath, "//*[@id='email']").set email
  end

  Dado("que eu informe um email inexistente {string}") do |email|
    find(:xpath, "//*[@id='email']").set email
  end

  Dado("que eu informe um email em branco") do
    email = ""
    find(:xpath, "//*[@id='email']").set email
  end

  Então("sou autenticado com sucesso {string}") do |email_autenticado|
    find(:xpath, "/html/body/div[1]/div[2]/div/div[3]/div/div/div[1]/ul/li[4]/a/span").click
    usuario_cadastrado = find(:xpath, "/html/body/div[1]/div[2]/div/div[3]/div/div/form/fieldset/div[4]/input")
   if usuario_cadastrado == email_autenticado 
    puts "OK"
    end 
  end
  
  Então("não sou autenticado") do
    #Mensagens de validação
    email_invalido = "Invalid email address."
    email_inexistente = "Authentication failed."
    email_em_branco = "An email address required."

    msg = find('#center_column > div.alert.alert-danger > ol > li')
      if msg == email_invalido
        expect(email_invalido).to eql msg
      if  msg == email_inexistente
        expect(email_inexistente).to eql msg
      else  msg == email_em_branco
        expect(email_em_branco).to eql msg
        end
    end
  end