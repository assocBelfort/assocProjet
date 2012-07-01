namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Jampard Jampard",
                 email: "jampard@oh.org",
                 password: "azeaze",
                 password_confirmation: "azeaze")
    admin.toggle!(:admin)

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@jampard.org"
      password  = "azeaze"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
