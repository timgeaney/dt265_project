namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    #make_relationships
    make_events
   end
end
    #create admin user account
    def make_users
    admin = User.create!(name: "admin",
                 email: "admin@example.com",
                 password: "foobar",
                 password_confirmation: "foobar")
    admin.toggle!(:admin)
    #create 10 users
 
 
     
      password  = "password"
      User.create!(name: "Tim Geaney",
                   email: "example@dt265project.com",
                   password: password,
                   password_confirmation: password)

      User.create!(name: "Irish Rugby Team",
                   email: "example1@dt265project.com",
                   password: password,
                   password_confirmation: password)

      User.create!(name: "U2",
                   email: "example2@dt265project.com",
                   password: password,
                   password_confirmation: password)

      User.create!(name: "Formula 1",
                   email: "example3@dt265project.com",
                   password: password,
                   password_confirmation: password)

      User.create!(name: "Tommy Tiernan",
                   email: "example4@dt265project.com",
                   password: password,
                   password_confirmation: password)

      User.create!(name: "Dublin Tourism Board",
                   email: "exampl5@dt265project.com",
                   password: password,
                   password_confirmation: password)

    
    end

    #create 35 microposts for each user
    def make_microposts
      users = User.all(limit: 10)
      35.times do
        content = Faker::Lorem.sentence(5)
        users.each {|user| user.microposts.create!(content: content)}
      end
    end

      def make_relationships
        users = User.all
        user  = users.first
        followed_users = users[2..30]
        followers      = users[3..20]
        followed_users.each { |followed| user.follow!(followed) }
        followers.each      { |follower| follower.follow!(user) }
       end
     


    def make_events
    user = User.find_by_id(1)
    user2 = User.find_by_id(2)
    user3 = User.find_by_id(3)
    user4 = User.find_by_id(4)
    user5 = User.find_by_id(5)
    user6 = User.find_by_id(6)



    user3.events.create!( title: "six nations" , 
                          category: "Rugby", 
                          description: "France V Wales",
                          locality: "paris",
                          country: "France", url: "http://www.ercrugby.com",
                          date: "2013-03-09",
                          latitude: 48.9244,
                          longitude: 2.3600
                          
                   )

    user3.events.create!( title: "six nations" , 
                          category: "Rugby", 
                          description: "Ireland V England",
                          locality: "dublin",
                          country: "ireland", url: "http://www.ercrugby.com",
                          date: "2013-03-10",
                          latitude: 52.3351,
                          longitude: -6.2283
                          
                   )

   

    user3.events.create!( title: "six nations" , 
                          category: "Rugby", 
                          description: "scotland V Wales",
                          locality: "murrayfield",
                          country: "scotland", url: "http://www.ercrugby.com",
                          date: "2013-03-11",
                          latitude: 55.9422,
                          longitude: -3.2409
                          
                   )
    user3.events.create!( title: "six nations" , 
                          category: "Rugby", 
                          description: "italy V ireland",
                          locality: "stadio olimpico",
                          country: "italy", url: "http://www.ercrugby.com",
                          date: "2013-03-16",
                          latitude: 41.9339,
                          longitude: 12.4548
                   )

    user4.events.create!( title: "U2360 TOUR" , 
                          category: "music", 
                          description: "U2360 TOUR",
                          locality: "Cape Town",
                          country: "SOUTH AFRICA", url: "http://www.u2.com/tour",
                          date: "2013-02-11",
                          latitude: -33.9053,
                          longitude: 18.4086
                   )

    

    user4.events.create!( title: "U2360 TOUR" , 
                          category: "music", 
                          description: "U2360 TOUR",
                          locality: "Buenos Aires",
                          country: "brazil", url: "http://www.u2.com/tour",
                          date: "2013-03-7",
                          latitude: -34.9137,
                          longitude: -57.9890
                   )

    user4.events.create!( title: "U2360 TOUR" , 
                          category: "music", 
                          description: "U2360 TOUR",
                          locality: "mexico",
                          country: "mexico", url: "http://www.u2.com/tour",
                          date: "2013-03-8",
                          latitude: 19.1300,
                          longitude: -99.400
                   )

    user5.events.create!( title: "AUSTRALIAN GRAND PRIX" , 
                          category: "sport", 
                          description: "albert park",
                          locality: "melbourne",
                          country: "australia", url: "http://www.formula1.com",
                          date: "2013-03-11",
                          latitude: -37.8420,
                          longitude: 144.9500
                   )

     user5.events.create!( title: "Malyasia grand prix" , 
                          category: "sport", 
                          description: "Sepang International Circuit",
                          locality: "malaysia",
                          country: "malaysia", url: "http://www.formula1.com",
                          date: "2013-04-14",
                          latitude: 2.7608,
                          longitude: 101.7383
                   )

     user5.events.create!( title: "Gran Premio De Espana" , 
                          category: "sport", 
                          description: "Circuit de Catalunya",
                          locality: "spain",
                          country: "spain",  url: "http://www.formula1.com",
                          date: "2013-04-28",
                          latitude: 41.5700,
                          longitude: 2.2611
                   )


     user5.events.create!( title: "GRAND PRIX DE MONACO" , 
                          category: "sport", 
                          description: "Circuit de Catalunya",
                          locality: "MONACO",
                          country: "spain",  url: "http://www.formula1.com",
                          date: "2013-05-14",
                          latitude: 43.7347,
                          longitude: 7.4206
                   )


     user5.events.create!( title: "GROSSER PREIS VON DEUTSCHLAND" , 
                          category: "sport", 
                          description: "Circuit de Catalunya",
                          locality: "germany",
                          country: "germany",  url: "http://www.formula1.com",
                          date: "2013-05-7",
                          latitude: 50.3356,
                          longitude: 6.9475
                   )



      
     end
         
  

