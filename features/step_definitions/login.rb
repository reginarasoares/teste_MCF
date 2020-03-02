Dado("eu estar na pagina inicial do site") do
    visit '/'
    windows.last.maximize
    sleep(2)
end
  
Quando("eu clico no botao ENTRAR") do
    find(".btn.btn-primary.float-right").click
    sleep(2)
end
  
Quando("preencho os campos corretamente") do
    fill_in(type:"email", with: 'reginarasoares@gmail.com')
    fill_in(type:"password", with: 'testeMCF')
    sleep(1)
    find(".btn.btn-primary.btn-block").click
    sleep(2)
end
  
Entao("eu verifico se entrou na pagina pessoal") do
    find(".user-initials").click
    sleep(2)
    @meu_cadastro = all(".dropdown-item") [1]
    @meu_cadastro.click
    @name = all(".font-gray.form-control.no-border.ng-binding") [0] 
    expect(@name.text).to eql "Regina Aline Soares"
    sleep(2)
    find(".close").click
    sleep(2)
end