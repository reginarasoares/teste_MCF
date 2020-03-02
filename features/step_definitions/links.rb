Dado("eu estar na pagina favoritos") do
    visit '/'
    windows.last.maximize
    sleep(2)
end
  
Quando("eu clico em um {int} da tela") do |ordem|
    page.execute_script ("window.scrollBy(0,10000)")
    sleep(2)
    @link = all(".nav-link") [ordem]
    puts @link.text
    @link.click
    sleep(2)       
end

Entao("eu verico se redirecionou para as {string} corretas") do |pagina|
    @popup = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(@popup)
    expect(page).to have_current_path(pagina, url: true)
    @popup = page.driver.browser.window_handles.first
    page.driver.browser.switch_to.window(@popup) 
end