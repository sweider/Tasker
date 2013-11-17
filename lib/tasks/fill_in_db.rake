namespace :db do 
  task create_me: :environment do 
    User.create!(email: "sweider.b@gmail.com",
                password: "Alice06.12",
                password_confirmation: "Alice06.12",
                nick_name: "sweider_b")
  end

end