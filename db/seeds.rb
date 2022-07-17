@user = User.create(email: 'test@test.com', password: 'test@test', password_confirmation: 'test@test', first_name: 'Alex', last_name: 'Vlasov')

p '1 User created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

p '100 Posts have been created'