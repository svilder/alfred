puts "start seeding"


if Rails.env.development?

  puts "cleaning database"

  User.destroy_all
  ToDoList.destroy_all
  Task.destroy_all
  ShortNote.destroy_all
  Objectif.destroy_all
  Mission.destroy_all
  LongNote.destroy_all

  puts "creating fresh new instances"

  user = User.create!(email: "yo@yo.com", password: "yoyoyo", username: "BigYo")

  ToDoList.create!(user_id: 1, title: "Job stuffs")


  Task.create!(to_do_list_id: 1, description: "faire à manger")
  # status

  ShortNote.create!(user_id: 1, description: "Shoubidoubidou")

  Objectif.create!(user_id: 1, title: "atteindre la lune", date: "demain")
  # description

  Mission.create!(user_id: 1, title: "Maxime Hervé", client_name: "Maxime Hervé")
  # description, time_spent, money_earned (integer), note

  LongNote.create!(user_id: 1, title: "Siteweb RogerVilder - compte rendu d'expérience", )
  # description

end

puts "end of seed"
