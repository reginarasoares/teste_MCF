Dado("eu estar na tela BUSCA") do
    visit '/categoria/roupas-e-acessorios'
    windows.last.maximize
    sleep(1) 
end
  
Quando("eu preencho o campo de busca") do
    fill_in(name: "busca", with: "Lorena")
    sleep(1)
    find(".btn.btn-secondary").click
    sleep(2)
end
  
Entao("verifico se o resultado da busca esta correto") do
   @busca = find(".card-title")
   expect(@busca.text).to eql "Lorena Pimentel"
end
  
Quando("eu clico no botao FAVORITAR") do
    find(".fa.fa-heart").click
    sleep(2)
end
  
Entao("eu verifico se o servico foi adicionado no FAVORITOS") do
   find_link(href: "/lavras/favoritos").click
   @favorito = find(".card-title")
   expect(@favorito.text).to eql "Lorena Pimentel"
   sleep(3)
end