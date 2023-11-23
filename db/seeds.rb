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
furry = Furry.create(name: "Dingdong Ironclaw",
description: "Dingdong Ironclaw, embodies a harmonious blend of strength and tranquility. His sleek black-and-white fur, as soft as bamboo shoots, conceals powerful muscles beneath. With gentle eyes reflecting wisdom, Bamboo moves gracefully, his ironclawed paws a testament to resilience. In the bamboo groves, he navigates with both grace and might, a living synthesis of nature's beauty and raw power.",
price: 700,
fursona: "panda",
availability: true,
address: "Ohlauer Str. 38, Berlin",
user_id: user.id)
furry.photo.attach(io: file, filename: "panda-furry.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700659424/raccoon-furry.png")
furry = Furry.create(name: "Mischief Nightshade",
description: "Mischief Nightshade, a raccoon whose fur is a canvas of moonlit grays and midnight blacks. Her masked face conceals a glint of mystery, and her agile paws, adorned with subtle crescent markings, move stealthily through the night. Mischief's presence is a celestial ballet, blending the intrigue of shadows with the allure of the nocturnal sky.",
price: 800,
fursona: "raccoon",
availability: true,
address: "Revaler Str. 99, Berlin",
user_id: user.id)
furry.photo.attach(io: file, filename: "raccoon-furry.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700740247/luna-howlheart.png")
furry = Furry.create(name: "Wolfgang Howlheart",
  description: "Wolfgang Howlheart, a majestic wolf with a coat that shimmers like the moonlit night. With piercing amber eyes and a dignified demeanor, Luna roams the wilderness with grace and strength. A guardian spirit, Luna Howlheart embodies the wisdom of the wild.",
  price: 600,
  fursona: "wolf",
  availability: true,
  address: "Waldweg 7, Berlin",
  user_id: user.id)
furry.photo.attach(io: file, filename: "luna-howlheart.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700740003/whisker-whimsy.png")
furry = Furry.create(name: "Shadowpaw Whimsy",
  description: "Shadowpaw Whimsy, a mischievous cat with a playful spirit and a coat adorned in a palette of vibrant colors. With a graceful stride and an insatiable curiosity, Shadowpaw Whimsy brings an air of enchantment wherever they go, leaving a trail of joy in their wake.",
  price: 500,
  fursona: "cat",
  availability: true,
  address: "Großbeerenstraße 4, Berlin",
  user_id: user.id)
furry.photo.attach(io: file, filename: "whisker-whimsy.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700740565/panda-pawsitive.png")
furry = Furry.create(name: "Panda Pawsitive",
  description: "Panda Pawsitive, a gentle giant with a heart as big as their black and white fur. Known for their calm demeanor and love for bamboo, Panda Pawsitive brings harmony and positivity to every corner of the world. A serene companion for a peaceful journey.",
  price: 700,
  fursona: "panda",
  availability: true,
  address: "Altonaer Str. 2, Berlin",
  user_id: user.id)
furry.photo.attach(io: file, filename: "panda-pawsitive.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700741029/rascal-ringer.png")
furry = Furry.create(name: "Rascal Ringer",
  description: "Rascal Ringer, a sly and clever raccoon with a penchant for mischief. Their mask-like fur pattern adds to the air of mystery surrounding them. With nimble paws and a twinkle in their eyes, Rascal Ringer is the perfect companion for those seeking a bit of adventure.",
  price: 550,
  fursona: "raccoon",
  availability: true,
  address: "Schattenweg 8, Berlin",
  user_id: user.id)
  furry.photo.attach(io: file, filename: "rascal-ringer.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700740108/sunny-purrsona.png")
furry = Furry.create(name: "Sunny Purrsona",
  description: "Sunny Purrsona, a radiant and warm-hearted cat with a fur coat that resembles the golden hues of a sunlit day. Playful and affectionate, Sunny Purrsona is always ready to bask in the glow of companionship, bringing sunshine wherever they go.",
  price: 520,
  fursona: "cat",
  availability: true,
  address: "Sonnenallee 15, Berlin",
  user_id: user.id)
furry.photo.attach(io: file, filename: "purrsona.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700740645/bamboo-bouncer.png")
furry = Furry.create(name: "Bamboo Bouncer",
  description: "Bamboo Bouncer, an energetic panda with a love for bouncing through the bamboo groves. With a lively spirit and an adorable clumsiness, Bamboo Bouncer is sure to bring laughter and joy to anyone lucky enough to share in their playful adventures.",
  price: 650,
  fursona: "panda",
  availability: true,
  address: "Mühlenstraße 62, Berlin",
  user_id: user.id)
furry.photo.attach(io: file, filename: "bamboo-bouncer.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700740345/shadow-stalker.png")
furry = Furry.create(name: "Shadow Stalker",
  description: "Shadow Stalker, a mysterious and enigmatic wolf with a sleek, dark fur coat that allows them to blend seamlessly into the shadows. With piercing blue eyes that seem to hold ancient secrets, Shadow Stalker is a silent guardian and a wise confidant.",
  price: 580,
  fursona: "wolf",
  availability: true,
  address: "Kienitzer Str. 110, Berlin",
  user_id: user.id)
furry.photo.attach(io: file, filename: "shadow-stalker.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700740841/whisker-wonderland.png")
furry = Furry.create(name: "Whisker Wonderland",
  description: "Whisker Wonderland, an imaginative cat with a fur pattern that resembles a starry night sky. With a dreamy gaze and a love for all things fantastical, Whisker Wonderland is a whimsical companion for those who believe in the magic of life.",
  price: 530,
  fursona: "cat",
  availability: true,
  address: "Weinstraße 9, Berlin",
  user_id: user.id)
furry.photo.attach(io: file, filename: "whisker-wonderland.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700744593/sly-slyberry.png")
furry = Furry.create(name: "Sly Slyberry",
  description: "Sly Slyberry, a cunning raccoon with a sleek silver and gray coat that glistens in the moonlight. Known for their quick wit and resourcefulness, Sly Slyberry is the perfect partner for those who enjoy a bit of clever mischief in their lives.",
  price: 570,
  fursona: "raccoon",
  availability: true,
  address: "Admiralstraße, 10967 Berlin",
  user_id: user.id)
furry.photo.attach(io: file, filename: "slyberry.png", content_type: "image/png")


file = URI.open("https://res.cloudinary.com/dbd4uen7z/image/upload/v1700740711/cocoa-cuddlepaws.png")
furry = Furry.create(name: "Cocoa Cuddlepaws",
  description: "Cocoa Cuddlepaws, a warm and affectionate panda with a fur coat that resembles rich cocoa. With a penchant for cozy cuddles and a gentle demeanor, Cocoa Cuddlepaws is the perfect furry friend for those seeking comfort and companionship.",
  price: 620,
  fursona: "panda",
  availability: true,
  address: "Puschkinallee, Berlin",
  user_id: user.id)
furry.photo.attach(io: file, filename: "cocoa-cuddlepaws.png", content_type: "image/png")
