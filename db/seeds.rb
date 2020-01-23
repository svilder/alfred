require 'faker'

puts "start seeding"

if Rails.env.development?

  puts "cleaning database"

  # Task.destroy_all
  ToDoList.destroy_all
  ShortNote.destroy_all
  Objectif.destroy_all
  Mission.destroy_all
  LongNote.destroy_all
  User.destroy_all

  puts "creating fresh new instances"

  user = User.create!(email: "yo@yo.com", password: "yoyoyo", username: "BigYo")
  user2 = User.create!(email: "albert@yo.com", password: "yoyoyo", username: "AlbertYo")
  puts "There is now #{User.count} users"

  todo1 = ToDoList.create!(user_id: user.id, title: "Job stuffs")
  todo2 = ToDoList.create!(user_id: user.id, title: "Personal stuffs")
  todo3 = ToDoList.create!(user_id: user2.id, title: "Things to do")
  puts "There is now #{ToDoList.count} ToDoList"

  (5..9).to_a.sample.times do
    Task.create!(to_do_list_id: todo1.id, description: "#{Faker::Verb.ing_form}", status: "#{Faker::Boolean.boolean}")
  end
  (5..9).to_a.sample.times do
    Task.create!(to_do_list_id: todo2.id, description: "#{Faker::Verb.ing_form}", status: "#{Faker::Boolean.boolean}")
  end
  (5..9).to_a.sample.times do
    Task.create!(to_do_list_id: todo3.id, description: "#{Faker::Verb.ing_form}", status: "#{Faker::Boolean.boolean}")
  end
  puts "There is now #{Task.count} tasks"

  (2..9).to_a.sample.times do
    ShortNote.create!(user_id: user.id, description: "#{Faker::Books::Dune.quote} #{Faker::Books::Dune.saying} #{Faker::Books::Lovecraft.sentences(number: 2)}")
  end
  (2..9).to_a.sample.times do
    ShortNote.create!(user_id: user2.id, description: "#{Faker::Books::Dune.quote} #{Faker::Books::Dune.saying} #{Faker::Books::Lovecraft.sentences(number: 2)}")
  end
  puts "There is now #{ShortNote.count} ShortNotes"

  date_objectif = ["Tomorrow", "next week", "end of the month", "this week", "this year", "until the 23th"].sample

  (2..5).to_a.sample.times do
    Objectif.create!(user_id: user.id, title: "#{Faker::Quote.yoda}", description: "#{Faker::Movies::StarWars.quote}", date: "#{date_objectif}")
  end
  (2..5).to_a.sample.times do
    Objectif.create!(user_id: user2.id, title: "#{Faker::Quote.yoda}", description: "#{Faker::Movies::StarWars.quote}", date: "#{date_objectif}")
  end
  puts "There is now #{Objectif.count} objectives"

  time_spent = ["one day", "one week", "one month", "two week", "a year", "10 days"].sample
  (2..5).to_a.sample.times do
    Mission.create!(user_id: user.id, title: "Website #{Faker::Movies::HarryPotter.spell}", client_name: "#{Faker::Movies::HarryPotter.character}", description: "#{Faker::Movies::PrincessBride.quote}", time_spent: "#{time_spent}", money_earned: Faker::Number.within(range: 300..10000), note: "#{Faker::Movies::BackToTheFuture.quote}")
  end
  (2..5).to_a.sample.times do
    Mission.create!(user_id: user2.id, title: "Website #{Faker::Movies::HarryPotter.spell}", client_name: "#{Faker::Movies::HarryPotter.character}", description: "#{Faker::Movies::PrincessBride.quote}", time_spent: "#{time_spent}", money_earned: Faker::Number.within(range: 300..10000), note: "#{Faker::Movies::BackToTheFuture.quote}")
  end
  puts "There is now #{Mission.count} missions"

  (2..5).to_a.sample.times do
    LongNote.create!(user_id: user.id, title: "Siteweb #{Faker::JapaneseMedia::OnePiece.character} - experience reporting", description: "#{Faker::Movies::Hobbit.quote} #{Faker::Books::Lovecraft.paragraphs(number: 5)}")
  end
  (2..5).to_a.sample.times do
    LongNote.create!(user_id: user2.id, title: "Siteweb #{Faker::JapaneseMedia::OnePiece.character} - experience reporting", description: "#{Faker::Movies::Hobbit.quote} #{Faker::Books::Lovecraft.paragraphs(number: 5)}")
  end
  puts "There is now #{LongNote.count} long notes"

end

puts "end of seed"
