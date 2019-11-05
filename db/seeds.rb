
User.destroy_all
Event.destroy_all
Attendance.destroy_all

10.times do 
    user = User.create(
        first_name: Faker::JapaneseMedia::DragonBall.character,
        last_name: Faker::JapaneseMedia::SwordArtOnline.game_name,
        description: Faker::TvShows::Friends.quote,
        email: "pomme#{i}@yopmail.com"),
        password: "azerty"
    if user.errors.any?
    puts user.errors.full_messages
    else
      puts "c'est bon"
    end
end

10.times do
    event = Event.create(
        start_date: Faker::Date.forward(days: 23),
        duration: Faker::Number.digit,
        title: Faker::TvShows::RickAndMorty.quote,
        description: Faker::Quotes::Shakespeare.hamlet_quote,
        price: Faker::Number.within(range: 1..1000),
        location: Faker::TvShows::Friends.location,
        admin_id: User.all.sample.id)
    if event.errors.any?
      puts  event.errors.full_messages
    else
      puts "c bon event"
    end
end


10.times do
    attendance = Attendance.create(
        stripe_customer_id: Faker::Games::Pokemon.name,
        user_id: User.all.sample.id,
        event_id: Event.all.sample.id)
    if attendance.errors.any?
    puts attendance.errors.full_messages
    else
      puts 'c bon attendance'
    end
end

puts "Eh voila db create jeune pomme :3"