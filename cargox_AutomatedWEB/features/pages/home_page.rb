class HomePage
  def field_create
    find(:xpath, "//div/div[@class = 'desktop-bar']/ul/li[@id = 'quickcreatetop']").click
  end

  def field_create_tasks
    find(:xpath, "//div[@class = 'desktop-bar']/ul/li/ul/li/a[text() = 'Create Tasks']").click
  end

  def field_activities
    find(:id, "grouptab_3").click
  end

  def field_activities_tasks
    find(:id, "moduleTab_9_Tasks").click
  end
end
