require "open-uri"

Booking.destroy_all
Furry.destroy_all
User.destroy_all

user = User.create(email: "mawberrie@gmail.com", password: "helloworld")
User.create(email: "alice@gmail.com", password: "123456")

file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700660746/wolf-furry.png")
furry = Furry.create(name: "Luna Nightpaw",
description: "Luna Nightpaw, a nocturnal wolf with obsidian fur, luminescent sapphire eyes, and a crescent moon marking on her chest, roams under the starlit skies, exuding an enigmatic aura. Agile and mysterious, she navigates the darkness with a silent grace, her howls echoing tales of ancient wisdom and the unseen realms.",
price: 480,
fursona: "wolf",
availability: true,
address: "Hauptstraße 13, Berlin",
user_id: user.id)
furry.photo.attach(io: file, filename: "wolf-furry.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700659654/puppy-furry.png")
furry = Furry.create(name: "Mutty Puppup",
description: "Mutty Puppup, a canine charmer of varied lineage, flaunts a fur medley, a blend of hues and textures that captivate. With big, expressive eyes and perky ears, this playful pup's bouncy gait and wagging tail exude boundless joy. A furry companion, Mutty Puppup, brings a unique spirit, a patchwork of love in every step.",
price: 550,
fursona: "puppy",
availability: true,
address: "Stresemannstraße 72, Berlin",
user_id: user.id)
furry.photo.attach(io: file, filename: "puppy-furry.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700659654/cat-furry.png")
furry = Furry.create(name: "Astra Stardust",
description: "Astra Stardust, a celestial feline with a coat resembling a starlit galaxy, twinkles with cosmic hues against an ebony sky. Her eyes hold the mysteries of the cosmos, and her agile movements echo the dance of constellations. Astra embodies the cosmos' enigmatic wonders.",
price: 600,
fursona: "cat",
availability: true,
address: "Thiemannstraße 1, Berlin",
user_id: user.id)
furry.photo.attach(io: file, filename: "cat-furry.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700659654/panda-furry.png")
furry = Furry.create(name: "Bamboo Ironclaw",
description: "Bamboo Ironclaw, embodies a harmonious blend of strength and tranquility. His sleek black-and-white fur, as soft as bamboo shoots, conceals powerful muscles beneath. With gentle eyes reflecting wisdom, Bamboo moves gracefully, his ironclawed paws a testament to resilience. In the bamboo groves, he navigates with both grace and might, a living synthesis of nature's beauty and raw power.",
price: 700,
fursona: "panda",
availability: true,
address: "Ohlauer Str. 38, Berlin",
user_id: user.id)
furry.photo.attach(io: file, filename: "panda-furry.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700659424/racoon-furry.png")
furry = Furry.create(name: "Mischief Nightshade",
description: "Mischief Nightshade, a raccoon whose fur is a canvas of moonlit grays and midnight blacks. Her masked face conceals a glint of mystery, and her agile paws, adorned with subtle crescent markings, move stealthily through the night. Luna's presence is a celestial ballet, blending the intrigue of shadows with the allure of the nocturnal sky.",
price: 800,
fursona: "racoon",
availability: true,
address: "Revaler Str. 99, Berlin",
user_id: user.id)
furry.photo.attach(io: file, filename: "racoon-furry.png", content_type: "image/png")
