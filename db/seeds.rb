# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Planet.destroy_all
User.destroy_all
Note.destroy_all
Review.destroy_all

#planets
hoth = Planet.create(
    img_url: "https://img.cinemablend.com/cb/3/0/d/5/7/2/30d5729335fd4396a82511270ff7fe187ceb69fddb667d0fa5fcc797b3ca7513.jpg",
    planet_img_url: "https://vignette.wikia.nocookie.net/starwars/images/1/1d/Hoth_SWCT.png/revision/latest?cb=20160630022322",
    name: "Hoth", 
    terrain: "Frozen ice plains, glaciers, mountains", 
    temp_range: "Frigid, known to drop to -60°C come nightfall", 
    vegetation: "none", 
    animals: "Large gray snow lizards called tauntauns", 
    local_beings: "Wampa, Tauntaun", 
    backpack: "Snowpack")

tatooine = Planet.create(
    img_url: "https://images.csmonitor.com/csm/2015/03/0325-tunisia-tatooine.jpg?alias=standard_900x600",
    planet_img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/7f/Tatooine.jpg/220px-Tatooine.jpg",
    name: "Tatooine", 
    terrain: " Hot desert", 
    temp_range: "Hot and arid", 
    vegetation: "none", 
    animals: " Carnivorous krayt dragons,  dewbacks, rontos, womp rats, massiffs and scurriers", 
    local_beings: "Jawa, Tusken Raider", 
    backpack: "Desertpack")

naboo = Planet.create(
    img_url: "https://awol.junkee.com/wp-content/uploads/2018/03/ftre.png",
    planet_img_url: "https://vignette.wikia.nocookie.net/starwars/images/4/41/Naboo_FFGRebellion.png/revision/latest?cb=20170529051916",
    name: "Naboo", 
    terrain: "  Plain, Urban area, Swamp, Hill", 
    temp_range: "Variable climate with cool winters 57°F and hot summers 89°F", 
    vegetation: "Cambylictus tree, Locap, Naboo lettuce, Perlote tree", 
    animals: "  Shaak,  Opee sea killer,  Sando aqua monster", 
    local_beings: "Elders, Gungans", 
    backpack: "Trekkingpack")

yavin = Planet.create(
    img_url: "https://i1.trekearth.com/photos/3553/yavin_iv.jpg",
    planet_img_url: "https://vignette.wikia.nocookie.net/starwars/images/d/d4/Yavin-4-SWCT.png/revision/latest?cb=20181015023938",
    name: "Yavin 4", 
    terrain: "  Jungle", 
    temp_range: "Tropical", 
    vegetation: " Purple-barked Massassi trees, Grenade fungi, Bioluminescent orchids, and Climbing ferns", 
    animals: "  Armored eel, Leviathan grub, Lizard crab, Runyip, Stintaril, Whisper bird", 
    local_beings: "Masassi warriors", 
    backpack: "Junglepack")


kashyyyk = Planet.create(
    img_url: "https://pm1.narvii.com/5904/da561f7dba38523b765fb247c9d220268d7d3adc_hq.jpg",
    planet_img_url: "https://vignette.wikia.nocookie.net/starwars/images/d/d0/Kashyyyk_FFGRebellion.png/revision/latest?cb=20170529040615",
    name: "Kashyyyk", 
    terrain: "  Ocean, Forest, Swamp, Jungle", 
    temp_range: "Tropical", 
    vegetation: " Wroshyr trees", 
    animals: "  Arrawtha-dyr, Can-cells, Oevvaor, Srifly, Tach", 
    local_beings: "Wookiee", 
    backpack: "Varietypack")






yoyo = User.create(name: "Yoyo", bio: "green, smart, and ready to mingle", age: "23,092 dots", img_url: "https://media.mnn.com/assets/images/2017/12/porg-star-war.jpg.653x0_q80_crop-smart.jpg", username: "yoyo123", password: "letmein")

#reviews
reviewone = Review.create(
    title: "review of Hoth", 
    user_id: User.find_by(name: "Yoyo").id, 
    planet_id: Planet.find_by(name: "Hoth").id, 
    planet_review: "Best trip I've had in a log time", 
    img_url: "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fdam%2Fimageserve%2F498543148%2F960x0.jpg%3Ffit%3Dscale", 
    rating: "@")


