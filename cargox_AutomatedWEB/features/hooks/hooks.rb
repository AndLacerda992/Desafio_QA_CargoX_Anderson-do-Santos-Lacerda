Before do
  @login_page = LoginPage.new
  @home_page = HomePage.new
  @tasks_page = TasksPage.new
end

After do |scenario|
  shot = "reports/print-#{Time.now.to_i}.png"
  @driver.save_screenshot(shot)
  embed(shot, "image/png", "Clique aqui para ver o print do teste")
end

AfterStep do
end
