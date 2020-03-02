Dado("eu estar na pagina categorias do site") do
    visit '/categoria/artigos-e-servicos'
    windows.last.maximize
    sleep(1)
end


Quando("eu clico no botao CATEGORIAS") do
    find(".nav-link.dropdown-toggle.ng-scope").click
    #sleep(1)
end
  
E("escolho uma {int} no menu") do |ordem|
    @categoria = all(".dropdown-item.ng-binding.ng-scope") [ordem]
    @categoria.click
    #sleep(1)
end
  
Entao("eu verifico se aparecem {string} da categoria escolhida") do |servico|
    @name = all(".card-title.float-left") [0]
    expect(@name.text).to eql servico
    sleep(2)
end