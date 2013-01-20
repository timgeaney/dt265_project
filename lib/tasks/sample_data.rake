namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    #create admin user account
    admin = User.create!(name: "admin",
                 email: "admin@example.com",
                 password: "foobar",
                 password_confirmation: "foobar")
    admin.toggle!(:admin)
    #create 35 users
    10.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@dt265project.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    #create 35 microposts for each user

      users = User.all(limit: 10)
      10.times do
        content = Faker::Lorem.sentence(5)
        users.each {|user| user.microposts.create!(content: content)}
    end

     #create 10 number events
     10.times do 
       title = ["Whats on in the cinema", "Leinster V's Munster", "Formula 1", "Tommy Tiernan", 
        "the Rolling stones", "Meath V's Dublin", "Caravagio at Art Museum", 
        "Debussy at National Concert Hall", "The Sopranoes"].sample
      date = []
      description = Faker::Lorem.sentence(5)
      contact_phone = []
      address = []
      country = []
      latitude = []
      longitude = []
      location = ["london", "cork", "dublin", "amsterdam"].sample
      users.each { |user| user.events.create!(title: title,
                   category: category,
                   location: location,)}
    end

    #create categories
    category = ["sport", "cinema", "drama", "comedy", "art", "music", "Tv", "Science"]
    category.each {|category| Category.create(name: category)}





  end
end