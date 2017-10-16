if ENV['ADMIN_PASSWORD'].nil?
  $stderr.puts 'Define password in environment.'
  exit -1
else
  a = Admin.find_or_initialize_by email: 'admin@locals.com'
  a.password = ENV['ADMIN_PASSWORD']
  a.save
end
