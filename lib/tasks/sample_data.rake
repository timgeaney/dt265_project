namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    #create admin user account
    admin = User.create!(name: "admin",
                 email: "admin@example.com",
                 password: "foobar",
                 password_confirmation: "foobar")
    admin.toggle!(:admin)
    #create 99 users
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@dt265project.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    #create 50 microposts for each user

      users = User.all(limit: 10)
      50.times do
        content = Faker::Lorem.sentence(5)
        users.each {|user| user.microposts.create!(content: content)}
    end

    # #create 100 number events
    # 100.times do |e|
    #   title = Faker::Name.name
    #   category = [:sport, :cinema, :drama, :comedy, :art, :music].sample
    #   event_date
    #   description
      




  end
end