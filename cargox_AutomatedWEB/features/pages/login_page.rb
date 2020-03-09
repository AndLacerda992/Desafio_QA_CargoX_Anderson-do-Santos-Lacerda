class LoginPage
  def field_user
    find(:id, "user_name").set(ENV_TEST["user"])
  end

  def field_password
    find(:id, "username_password").set(ENV_TEST["password"])
  end

  def button_login
    find(:id, "bigbutton").click
  end
end
