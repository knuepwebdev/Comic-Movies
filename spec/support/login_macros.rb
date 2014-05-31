module LoginMacros
  def login(user)
    fill_in :Email, with: user.email
    fill_in :Password, with: user.password
    click_button 'Log in'
  end
end