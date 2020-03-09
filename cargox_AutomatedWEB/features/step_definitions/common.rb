page.current_url

def wait_carregamento
  loading = assert_text("Carregando...")
  puts "Aguardando elemento..."
  while (loading)
    begin
      loading = assert_text("Carregando...")
      true
    rescue Capybara::ExpectationNotMet
      puts "Carregado com sucesso"
      return false
    end
  end
end
