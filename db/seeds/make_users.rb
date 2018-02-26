if Rails.env.development?
  password = 'adminpassword'
else
  if ENV['ADMIN_PASSWORD'].nil?
    $stderr.puts 'Define password in environment.'
    exit -1
  else
    password =  ENV['ADMIN_PASSWORD']
  end
end

admin = Admin.find_or_initialize_by email: 'admin@mobiuscapitalmanagement.com'
admin.password = password
admin.save

u = User.find_or_create_by(email: 'analyst@fund.com')
u.password = 'userme123'
u.save

