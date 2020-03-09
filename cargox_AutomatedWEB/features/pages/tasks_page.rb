class TasksPage
  def cadastro_task(nameTask)
    find(:id, "name").set(nameTask)
    find(:id, "date_start_date").set("05-03-2020")
    find(:id, "date_start_hours").set("12")
    find(:id, "date_start_minutes").set("00")
    find(:id, "date_due_date").set("13-03-2020")
    find(:id, "date_due_hours").set("12")
    find(:id, "date_due_minutes").set("00")
    find(:id, "priority").click
    find(:xpath, "//select[@id = 'priority']/option[text() = 'Medium']").click
    find(:id, "status").click
    find(:xpath, "//select[@id = 'status']/option[text() = 'In Progress']").click
    find(:id, "parent_type").click
    find(:xpath, "//select[@id = 'parent_type']/option[text() = 'Project Task']").click
    find(:id, "description").set("Teste Cargo X - Automação Web")
  end

  def save_button
    find(:xpath, "(//input[@id = 'SAVE'])[1]").click
  end

  def edit_task
    find(:id, "edit-4167df1b-75f0-b4df-6fb1-5e618b70de23").click
  end

  def edit_task_info(nameTaskEdited)
    find(:id, "name").set(nameTaskEdited)
  end

  def select_box
    find(:css, "#MassUpdate > div.list-view-rounded-corners > table > tbody > tr:nth-child(1) > td:nth-child(1) > input").click
  end

  def bulk
    find(:id, "actionLinkTop").click
  end

  def delete_task
    find(:xpath, "(//a[text() = 'Delete'])[1]").click
    page.driver.browser.switch_to.alert.accept
  end
end
