emilia = Actor.create(:first_name => "Emilia", :last_name => "Clarke")
khaleesi = Character.create(:name => "Khaleesi")
got = Show.create(:name => "Game of Thrones")

khaleesi.actor = emilia
khaleesi.show = got
khaleesi.save

danny_pudi = Actor.create(first_name: "Danny", last_name: "Pudi")
abed = Character.create(name:'Abed', actor_id: danny_pudi.id, catchphrase: "Cool, Cool, Cool.")