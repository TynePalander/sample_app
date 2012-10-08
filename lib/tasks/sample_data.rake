namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin= User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    User.create!(name: "q036 Furby",
                 email: "q036_furby@ma7.org",
                 password: "tbontb23",
                 password_confirmation: "tbontb23")
  end
end
