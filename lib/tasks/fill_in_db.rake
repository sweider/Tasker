namespace :db do 
  task create_us: :environment do 
    User.create!(email: "sweider.b@gmail.com",
                password: "Alice06.12",
                password_confirmation: "Alice06.12",
                nick_name: "sweider_b")

    User.create!(email: "ya.ihnat@gmail.com",
                password: "Ihnat123A",
                password_confirmation: "Ihnat123A",
                nick_name: "Ihnat")
  end

end