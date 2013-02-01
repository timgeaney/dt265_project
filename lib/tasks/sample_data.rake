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
     



     users.each { |user| user.events.create!(title: "six nations" , category: "Rugby", 
          description: "ireland at home take on scotland",locality: "dublin",
          country: "Ireland", url: "http://www.ercrugby.com/",
          latitude: 63.5,
          longitude: -6.83    
                   )}
    users.each { |user| user.events.create!(title: "world cup" , category: "Rugby", 
          description: "Ireland take on australia",locality: "melbourne",
          country: "australia", url: "http://www.ercrugby.com/",
          latitude: 63.5,
          longitude: -6.83    
                   )}

    users.each { |user| user.events.create!(title: "Heineken Cup" , category: "Rugby", 
          description: "leinster V munster",locality: "cardiff",
          country: "wales", url: "http://www.ercrugby.com/",
          latitude: 63.5,
          longitude: -6.83    
                   )}
    users.each { |user| user.events.create!(title: "rugby world cup" , category: "Rugby", 
          description: "Ireland V's All blacks",locality: "cape town",
          country: "south africa", url: "http://www.ercrugby.com/",
          latitude: 63.5,
          longitude: -6.83    
                   )}

     users.each { |user| user.events.create!(title: "six nations" , category: "Rugby", 
          description: "wales at home take on scotland",locality: "edinburgh",
          country: "scotland", url: "http://www.ercrugby.com/",
          latitude: 63.5,
          longitude: -6.83    
                   )}
    users.each { |user| user.events.create!(title: "world cup" , category: "Rugby", 
          description: "South afdrica take on australia",locality: "cape town",
          country: "south africa", url: "http://www.ercrugby.com/",
          latitude: 63.5,
          longitude: -6.83    
                   )}

    users.each { |user| user.events.create!(title: "Heineken Cup" , category: "Rugby", 
          description: " munster V toulouse",locality: "toulouse",
          country: "france", url: "http://www.ercrugby.com/",
          latitude: 63.5,
          longitude: -6.83    
                   )}
    users.each { |user| user.events.create!(title: "rugby world cup" , category: "Rugby", 
          description: "france V's All blacks",locality: "wellington",
          country: "New Zealand", url: "http://www.ercrugby.com/",
          latitude: 63.5,
          longitude: -6.83    
                   )}












      users.each { |user| user.events.create!(title: "Formula 1", category: "Sport", 
          description: "melbourne",locality: "melbourne",
          country: "australia", url: "http://www.ercrugby.com/",
          latitude: 63.5,
          longitude: -6.83    
                   )}

       users.each { |user| user.events.create!(title: "The sopranoes", category: "TV", 
          description: "gansters",locality: "new york",
          country: "USA", url: "http://www.ercrugby.com/",
          latitude: 63.5,
          longitude: -6.83    
                   )}

         
  

   end
end