user_attributes = {
  first_name: 'Baron',
  last_name: 'Bloomer',
  email: Figaro.env.admin_user_email,
  password: Figaro.env.admin_user_password,
  role: 'admin'
}
User.create! user_attributes
