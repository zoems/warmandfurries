# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Furrie.destroy_all
User.destroy_all
Furrie.destroy_all

user = User.create(email: "mawberrie@gmail.com", password: "helloworld")

Furrie.create(name: "Luna Nightpaw",
description: "
Luna Nightpaw, a nocturnal wolf with obsidian fur, luminescent sapphire eyes, and a crescent moon marking on her chest, roams under the starlit skies, exuding an enigmatic aura. Agile and mysterious, she navigates the darkness with a silent grace, her howls echoing tales of ancient wisdom and the unseen realms.",
price: 480,
fursona: "wolf",
availability: true,
user_id: user.id)

Furrie.create(name: "Mutty pupup",
description: "Zephyr Wildheart, an avian explorer with iridescent plumage reminiscent of the sky at dawn, possesses keen amber eyes and wings that ripple like the breeze. A wanderer seeking unseen horizons, Zephyr's gentle presence carries whispers of tales from distant lands.",
price: 550,
fursona: "puppy",
availability: true,
user_id: user.id)

Furrie.create(name: "Astra Stardust",
description: "Astra Stardust, a celestial feline with a coat resembling a starlit galaxy, twinkles with cosmic hues against an ebony sky. Her eyes hold the mysteries of the cosmos, and her agile movements echo the dance of constellations. Astra embodies the cosmos' enigmatic wonders.",
price: 600,
fursona: "cat",
availability: true,
user_id: user.id)

Furrie.create(name: "Bamboo Ironclaw",
description: "Ragnar Ironclaw, a formidable bear adorned with battle scars, boasts a coat resembling forged steel and fierce amber eyes that reflect a warrior's resolve. His powerful stature and solemn gaze echo tales of ancient battles and unwavering strength.",
price: 700,
fursona: "panda",
availability: true,
user_id: user.id)

Furrie.create(name: "Nutty Wavecrest",
description: "Oceana Wavecrest, a mermaid of the seas, possesses shimmering aquamarine scales that catch the sunlight's gleam. Her eyes mirror the depths of the ocean, and her flowing fins carry the songs of forgotten underwater realms. Oceana embodies the mysteries of the sea.",
price: 800,
fursona: "racoon",
availability: true,
user_id: user.id)
