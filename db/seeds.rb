# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Remover todos os dados existentes para evitar duplicações
Review.destroy_all
Question.destroy_all
Journey.destroy_all
User.destroy_all
Ingredient.destroy_all
Task.destroy_all
World.destroy_all
Path.destroy_all


# Creating Users and Profiles
user1 = User.create!(
  email: "user1@example.com",
  password: "password123",
  password_confirmation: "password123"
)

user2 = User.create!(
  email: "user2@example.com",
  password: "password123",
  password_confirmation: "password123"
)

# Criando caminhos (paths)
path1 = Path.create!(
  title: "Salty Recipes",
  description: ""
)

path2 = Path.create!(
  title: "Sweet Recipes",
  description: ""
)

# Criando mundos (worlds)
world1 = World.create!(
  title: "Brazil",
  done: true,
  path: path1,
  image_path: "badge1.svg"
)

world2 = World.create!(
  title: "South America",
  done: true,
  path: path1,
  image_path: "badge2.svg"
)

world3 = World.create!(
  title: "North America",
  done: true,
  path: path1,
  image_path: "badge3.svg"
)

world4 = World.create!(
  title: "Europe",
  done: false,
  path: path1,
  image_path: "badge4.svg"
)

world5 = World.create!(
  title: "Mediterranean",
  done: false,
  path: path1,
  image_path: "badge5.svg"
)

world6 = World.create!(
  title: "Asia",
  done: false,
  path: path1,
  image_path: "badge6.svg"
)

world7 = World.create!(
  title: "Brazil",
  done: true,
  path: path2,
  image_path: "badge7.svg"
)

world8 = World.create!(
  title: "North America",
  done: true,
  path: path2,
  image_path: "badge8.svg"
)

world9 = World.create!(
  title: "Europe",
  done: true,
  path: path2,
  image_path: "badge9.svg"
)

# Criando tarefas (tasks) associadas a mundos
task1 = Task.create!(
  title: "Pinhão",
  time: "30 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843659/pinhao_gdzvfz.jpg",
  steps: ["1. Wash the Pinhão", "2. In a pressure cooker: Add pinhão and enough water to cover them. Close the lid and cook under pressure for 20 to 30 minutes after it starts whistling.", "3. Check for Doneness: The shell should be slightly open, and the inside soft but not mushy. If still hard, cook for an additional 10-15 minutes.", "4. Serving: Drain the water, let them cool slightly, and crack open the shell with your teeth, knife, or scissors. Serve warm as a snack or use in recipes like Entrevero (stir-fry with meat and pinhão)."],
  done: true,
  world: world1
)

Ingredient.create!(
  name: "Pinhão",
  quantity: "1kg",
  task: task1
)

Ingredient.create!(
  name: "Water",
  quantity: "2l",
  task: task1
)

Ingredient.create!(
  name: "Salt",
  quantity: "1 tbsp",
  task: task1
)

task2 = Task.create!(
  title: "Virado à Paulista",
  time: "1 Hour",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843658/virado_vbjejr.jpg",
  steps: ["1. Prepare the Rice: In a pan, heat oil and sauté garlic until fragrant. Add rice and stir for 1-2 minutes. Pour in water, season with salt, and let it cook until the liquid is absorbed.", "2. Make the Tutu de Feijão: In a pan, heat oil and sauté onion and garlic. Add cooked beans (with broth), season with salt and pepper, and let it simmer. Gradually add cassava flour, stirring constantly until it thickens. Stir in chopped parsley if using.", "3. Cook the Pork Chops: Season pork chops with garlic, lemon juice, salt, and black pepper. Heat oil in a pan and sear the chops for about 4-5 minutes per side, until golden and cooked through.", "4. Prepare the Collard Greens: Heat oil or butter in a pan and sauté garlic. Add collard greens, season with salt, and stir-fry for about 2 minutes.", "5. Fry the Bananas: Dredge banana slices in flour, dip in beaten egg, and coat with breadcrumbs. Fry in hot oil until golden brown and crispy.", "6. Fry the Eggs: Heat oil or butter in a pan and fry eggs sunny-side-up.", "7. Assemble the Dish: Serve rice, tutu de feijão, pork chops, collard greens, fried bananas, and eggs together on a plate."],
  done: true,
  world: world1
)

Ingredient.create!(
  name: "Rice",
  quantity: "1 cup",
  task: task2
)

Ingredient.create!(
  name: "Water",
  quantity: "2 cups",
  task: task2
)

Ingredient.create!(
  name: "Oil",
  quantity: "1 tbsp",
  task: task2
)

Ingredient.create!(
  name: "Garlic",
  quantity: "1 clove",
  task: task2
)

Ingredient.create!(
  name: "Salt",
  quantity: "To taste",
  task: task2
)

Ingredient.create!(
  name: "Cooked black or pinto beans",
  quantity: "2 cups",
  task: task2
)

Ingredient.create!(
  name: "Onion",
  quantity: "1/2",
  task: task2
)

Ingredient.create!(
  name: "Garlic",
  quantity: "2 cloves",
  task: task2
)

Ingredient.create!(
  name: "Oil",
  quantity: "1 tbsp",
  task: task2
)

Ingredient.create!(
  name: "Cassava flour",
  quantity: "1/2 cup",
  task: task2
)

Ingredient.create!(
  name: "Salt and black pepper",
  quantity: "To taste",
  task: task2
)


Ingredient.create!(
  name: "Pork Chops",
  quantity: "4",
  task: task2
)

Ingredient.create!(
  name: "Garlic",
  quantity: "3 cloves",
  task: task2
)

Ingredient.create!(
  name: "Juice of lemon",
  quantity: "1",
  task: task2
)

Ingredient.create!(
  name: "Salt and black pepper",
  quantity: "To taste",
  task: task2
)

Ingredient.create!(
  name: "Oil or lard for frying",
  quantity: "2 tbsp",
  task: task2
)

Ingredient.create!(
  name: "Collard greens",
  quantity: "1 bunch",
  task: task2
)

Ingredient.create!(
  name: "Oil or butter",
  quantity: "2 tbsp",
  task: task2
)

Ingredient.create!(
  name: "Garlic",
  quantity: "2 cloves",
  task: task2
)

Ingredient.create!(
  name: "Salt",
  quantity: "To taste",
  task: task2
)

Ingredient.create!(
  name: "Bananas",
  quantity: "2",
  task: task2
)

Ingredient.create!(
  name: "Flour",
  quantity: "1/2 cup",
  task: task2
)

Ingredient.create!(
  name: "Egg",
  quantity: "1",
  task: task2
)

Ingredient.create!(
  name: "Breadcrumbs",
  quantity: "1/2 cup",
  task: task2
)

Ingredient.create!(
  name: "Oil for frying",
  quantity: "to taste",
  task: task2
)

Ingredient.create!(
  name: "Eggs",
  quantity: "4",
  task: task2
)

Ingredient.create!(
  name: "Oil or butter",
  quantity: "2 tbsp",
  task: task2
)

Ingredient.create!(
  name: "Salt",
  quantity: "To taste",
  task: task2
)

task3 = Task.create!(
  title: "Bode Guisado",
  time: "2 Hours",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843659/bode_uecxsj.jpg",
  steps: ["1. Prepare the Goat Meat: Rinse the goat meat well and season it with salt, black pepper, and a bit of the cumin, coriander, and ginger. Let it marinate for about 30 minutes (or longer if you have time).", "2. Sear the Meat: Heat the oil or lard in a large pot over medium-high heat. Brown the goat meat in batches until it’s seared on all sides, then remove it from the pot and set it aside.", "3. Sauté the Vegetables: In the same pot, add the onions and garlic and sauté until softened and fragrant. Add the tomatoes, bell peppers, and hot peppers (if using). Cook for about 5 minutes until the vegetables begin to soften.", "4. Cook the Stew: Return the browned goat meat to the pot. Stir in the tomato paste, remaining cumin, coriander, and a pinch of salt and pepper. Add the potatoes, carrots, cilantro, parsley, and bay leaf. Pour in the broth, ensuring the meat and vegetables are mostly covered. Bring the mixture to a boil. Reduce the heat, cover the pot, and simmer for about 1.5 to 2 hours, or until the goat meat is tender and the flavors have melded together.", "5. Adjust the Consistency: If the stew gets too thick, add more broth or water as needed to achieve your desired consistency. If you prefer a thicker sauce, let it simmer uncovered for a few minutes to reduce.", "6. Final Seasoning: Taste and adjust seasoning, adding more salt, pepper, or hot pepper if needed.", "7. Serve: Serve the Bode Gizado with white rice, a side of farofa, and a bit of hot sauce for extra spice if desired."],
  done: true,
  world: world1
)

Ingredient.create!(
  name: "Goat meat",
  quantity: "1 kg",
  task: task3
)

Ingredient.create!(
  name: "Oil",
  quantity: "2 tbsp",
  task: task3
)

Ingredient.create!(
  name: "Onions ",
  quantity: "2",
  task: task3
)

Ingredient.create!(
  name: "Garlic",
  quantity: "4 cloves",
  task: task3
)

Ingredient.create!(
  name: "Tomatoes",
  quantity: "2",
  task: task3
)

Ingredient.create!(
  name: "Bell Peppers",
  quantity: "2",
  task: task3
)

Ingredient.create!(
  name: "Potatoes",
  quantity: "2",
  task: task3
)

Ingredient.create!(
  name: "Carrots",
  quantity: "2",
  task: task3
)

Ingredient.create!(
  name: "Cilantro",
  quantity: "1 bunch",
  task: task3
)

Ingredient.create!(
  name: "Parsley",
  quantity: "1 bunch",
  task: task3
)

Ingredient.create!(
  name: "Tomato paste",
  quantity: "2 tbsp",
  task: task3
)

Ingredient.create!(
  name: "Ground cumin",
  quantity: "1 tbsp",
  task: task3
)

Ingredient.create!(
  name: "Ground coriander",
  quantity: "1 tbsp",
  task: task3
)

Ingredient.create!(
  name: "Ground ginger",
  quantity: "1 tbsp",
  task: task3
)

Ingredient.create!(
  name: "Hot peppers",
  quantity: "1-2",
  task: task3
)

Ingredient.create!(
  name: "Bay leaf",
  quantity: "1-2",
  task: task3
)

Ingredient.create!(
  name: "Beef or vegetable broth",
  quantity: "2 cups",
  task: task3
)

Ingredient.create!(
  name: "Salt and black pepper",
  quantity: "To taste",
  task: task3
)

task4 = Task.create!(
  title: "Tacacá",
  time: "1 Hour",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843659/tacaca_kv0zge.jpg",
  steps: ["1. Marinate the Shrimp: Place the shrimp in a bowl and squeeze the lime juice over them. Let them marinate for 10-15 minutes, then set them aside.", "2. Prepare the Tucupi: If using pre-made tucupi, simply heat it in a large pot over medium heat. If making it from scratch, you will need to extract the juice from fermented manioc root (which is a lengthy process), but it's typically easier to find ready-made tucupi in stores.", "3. Cook the Jambu: In a separate pot, bring some water to a boil and blanch the jambu for 2-3 minutes until tender. Drain and chop it coarsely.", "4. Prepare the Soup Base: In a large pot, heat the oil over medium heat and sauté the chopped onion and garlic until softened and fragrant. Add the tucupi to the pot and stir in the bay leaf. Let it simmer for about 10-15 minutes to allow the flavors to meld.", "5. Add the Shrimp: Add the marinated shrimp (and optional dried shrimp) to the tucupi, cooking for about 5-7 minutes, or until the shrimp turn pink and are cooked through.", "6. Add Jambu and Seasoning: Stir in the chopped jambu and season with salt to taste. Add the chopped pimenta-de-cheiro (or substitute chili peppers) for some heat. Simmer for another 5 minutes.", "7. Thicken the Soup: In a small bowl, mix the tapioca flour with a bit of tucupi or water to form a slurry. Slowly pour it into the simmering soup while stirring, and cook for another 5-7 minutes until the soup thickens slightly.", "8. Serve: Ladle the hot Tacacá into individual bowls. It is traditionally served in special bowls with a generous sprinkle of pimenta-de-cheiro on top."],
  done: true,
  world: world1
)

Ingredient.create!(
  name: "Shrimp",
  quantity: "500g",
  task: task4
)

Ingredient.create!(
  name: "Tucupi",
  quantity: "1 liter",
  task: task4
)

Ingredient.create!(
  name: "Jambu",
  quantity: "50g",
  task: task4
)

Ingredient.create!(
  name: "Garlic",
  quantity: "2 cloves",
  task: task4
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task4
)

Ingredient.create!(
  name: "Oil",
  quantity: "2 tbps",
  task: task4
)

Ingredient.create!(
  name: "Pimenta-de-cheiro",
  quantity: "1-2 tbps",
  task: task4
)

Ingredient.create!(
  name: "Dried shrimp",
  quantity: "1 tbpn",
  task: task4
)

Ingredient.create!(
  name: "Tapioca flour",
  quantity: "2 tbps",
  task: task4
)

Ingredient.create!(
  name: "Bay leaf",
  quantity: "1",
  task: task4
)

Ingredient.create!(
  name: "Salt",
  quantity: "To taste",
  task: task4
)

Ingredient.create!(
  name: "Lime",
  quantity: "1",
  task: task4
)

task5 = Task.create!(
  title: "Arroz com Pequi",
  time: "1 Hour",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843659/arroz_awcl5g.jpg",
  steps: ["1. Prepare the Pequi: If you are using fresh pequi, you'll need to peel them carefully, remove the seed, and scoop out the pulp. Be cautious, as the seeds can be sharp. If you're using canned pequi, just drain the liquid and set it aside.", "2. Cook the Bacon: In a large pot, heat the oil or butter over medium heat. Add the diced bacon (if using) and fry it until it's golden and crispy. Remove the bacon and set it aside.", "2. Sauté the Vegetables: In the same pot, add the chopped onion and garlic. Sauté until they become soft and fragrant, about 3-4 minutes. Add the chopped tomatoes and cook until they soften, around 3-5 minutes.", "3. Add the Rice: Stir in the rice and let it cook for about 1-2 minutes, allowing it to lightly toast and absorb the flavors from the onions and tomatoes.", "4. Cook the Arroz com Pequi: Add the chicken or vegetable broth (or water), the bay leaf, and salt and pepper to taste. Stir well to combine. Add the pequi pulp, and stir to distribute it evenly throughout the rice. Bring the mixture to a boil, then reduce the heat to low and cover the pot. Let the rice cook for about 15-20 minutes, or until the rice is tender and the liquid is absorbed.", "5. Finish and Serve: If you cooked bacon, you can stir it back into the rice for added flavor. Once the rice is cooked, remove it from the heat, fluff it with a fork, and let it sit for a few minutes before serving. Garnish with chopped cilantro and green onions (optional) for extra flavor."],
  done: true,
  world: world1
)

Ingredient.create!(
  name: "Rice",
  quantity: "2 cups",
  task: task5
)

Ingredient.create!(
  name: "Pequi Fruits",
  quantity: "2-3",
  task: task5
)

Ingredient.create!(
  name: "Oil or butter",
  quantity: "1 tbsp",
  task: task5
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task5
)

Ingredient.create!(
  name: "Garlic",
  quantity: "2 cloves",
  task: task5
)

Ingredient.create!(
  name: "Tomatoes",
  quantity: "2",
  task: task5
)

Ingredient.create!(
  name: "Diced Bacon",
  quantity: "1/2 cup",
  task: task5
)

Ingredient.create!(
  name: "Chicken or Vegetable Broth",
  quantity: "2 cups",
  task: task5
)

Ingredient.create!(
  name: "Bay Leaf",
  quantity: "1",
  task: task5
)

Ingredient.create!(
  name: "Salt and Black pepper",
  quantity: "To taste",
  task: task5
)

Ingredient.create!(
  name: "Chopped Cilantro ",
  quantity: "1/2 cup",
  task: task5
)

Ingredient.create!(
  name: "Chopped Green Onions",
  quantity: "1/2 cup",
  task: task5
)

task6 = Task.create!(
  title: "Choripán Recipe",
  time: "30 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Chimichurri Sauce: In a bowl, combine the chopped parsley, minced garlic, red wine vinegar, olive oil, dried oregano, red pepper flakes (if using), salt, and black pepper. Mix well until everything is combined. Adjust the seasoning to taste, and let it sit for at least 10-15 minutes to allow the flavors to meld together. You can make this in advance and store it in the fridge for up to a few days.", "2. Grill the Chorizo: Preheat your grill (or a grill pan) to medium-high heat. Lightly brush the chorizo sausages with oil and place them on the grill. Grill the chorizo for about 10-12 minutes, turning occasionally until they are browned and cooked through.", "3. Prepare the Rolls: While the chorizo is grilling, slice the rolls lengthwise, leaving one side intact (like a sandwich). Toast the rolls lightly on the grill or in a pan for about 2 minutes until they’re crispy and golden.", "4. Assemble the Choripán: Once the chorizo is cooked, remove it from the grill and slice each sausage lengthwise (optional for easier eating). Place each chorizo sausage inside a toasted roll. Generously drizzle chimichurri sauce over the chorizo."],
  done: true,
  world: world2
)

Ingredient.create!(
  name: "Fresh Parsley",
  quantity: "1/2 cup",
  task: task6
)

Ingredient.create!(
  name: "Garlic",
  quantity: "2 cloves",
  task: task6
)

Ingredient.create!(
  name: "Red Wine Vinegar",
  quantity: "2 cloves",
  task: task6
)

Ingredient.create!(
  name: "Olive Oil",
  quantity: "1/4 cup",
  task: task6
)

Ingredient.create!(
  name: "Dried Oregano",
  quantity: "1 tspn",
  task: task6
)

Ingredient.create!(
  name: "Red Pepper Flakes",
  quantity: "1/2 tspn",
  task: task6
)

Ingredient.create!(
  name: "Salt and black pepper",
  quantity: "To taste",
  task: task6
)

Ingredient.create!(
  name: "Chorizo Sausages",
  quantity: "4",
  task: task6
)

Ingredient.create!(
  name: "Crusty Rolls",
  quantity: "4",
  task: task6
)

Ingredient.create!(
  name: "Oil",
  quantity: "1 tbpn",
  task: task6
)

task7 = Task.create!(
  title: "Pastel de Choclo",
  time: "50 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Corn Topping: If using fresh corn, blend the corn kernels in a food processor or blender until smooth, adding a little milk if necessary to help it blend. In a saucepan, melt the butter over medium heat. Add the corn puree, milk, and sugar (if using). Stir and cook for 5-7 minutes, allowing the corn to thicken. If you want the mixture to be thicker, mix the cornstarch with a little water to make a slurry, and add it to the corn mixture. Stir constantly until it reaches a creamy consistency. Season with salt and pepper to taste. Set aside.", "2. Prepare the Filling: Heat oil in a large pan over medium heat. Add the chopped onion and garlic, and sauté until they become soft and translucent, about 5 minutes. Add the ground meat to the pan, breaking it up with a spoon. Cook until the meat is browned and cooked through. Stir in the chopped olives, raisins, boiled eggs, paprika, cumin, salt, and pepper. Cook for another 2-3 minutes, allowing the flavors to combine.", "3. Assemble the Pastel de Choclo: Preheat your oven to 350°F (175°C). In a baking dish, spread the meat mixture evenly at the bottom Carefully spread the corn topping over the meat, smoothing it out with a spatula to cover the filling completely.", "4. Bake: Place the assembled Pastel de Choclo in the oven and bake for about 25-30 minutes, or until the top is golden and slightly crispy."],
  done: true,
  world: world2
)

Ingredient.create!(
  name: "Fresh Corn Kernels",
  quantity: "6 cups",
  task: task7
)

Ingredient.create!(
  name: "Milk",
  quantity: "1/2 cup",
  task: task7
)

Ingredient.create!(
  name: "Butter",
  quantity: "2 tbps",
  task: task7
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1/4 cup",
  task: task7
)

Ingredient.create!(
  name: "Salt and Pepper",
  quantity: "To taste",
  task: task7
)

Ingredient.create!(
  name: "Cornstarch",
  quantity: "2 tbps",
  task: task7
)

Ingredient.create!(
  name: "Ground Beef",
  quantity: "500g",
  task: task7
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task7
)

Ingredient.create!(
  name: "Garlic",
  quantity: "2 cloves",
  task: task7
)

Ingredient.create!(
  name: "Green Olives",
  quantity: "1/2 cup",
  task: task7
)

Ingredient.create!(
  name: "Raisins",
  quantity: "1/2 cup",
  task: task7
)

Ingredient.create!(
  name: "Boiled Eggs",
  quantity: "2",
  task: task7
)

Ingredient.create!(
  name: "Paprika",
  quantity: "1 tbpn",
  task: task7
)

Ingredient.create!(
  name: "Cumin",
  quantity: "1 tbpn",
  task: task7
)

Ingredient.create!(
  name: "Salt and pepper",
  quantity: "To Taste",
  task: task7
)

Ingredient.create!(
  name: "Oil",
  quantity: "1 tbpn",
  task: task7
)

task8 = Task.create!(
  title: "Milanesa a la Napolitana",
  time: "45 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Milanesa: Tenderize the meat: If using beef, use a meat mallet to pound the cutlets until they are about 1/2-inch thick. Bread the cutlets: Set up a breading station with three shallow dishes. Place flour in one dish, beaten eggs in another, and breadcrumbs in the third. Season the flour with salt, pepper, and optional garlic powder. Dredge each cutlet first in the flour, shaking off excess. Dip it into the beaten eggs, and then coat it in the breadcrumbs, pressing down gently to ensure an even coating.", "2. Fry the Milanesa: Heat a generous amount of oil in a large pan over medium-high heat. Fry the breaded cutlets for 3-4 minutes per side, or until golden brown and crispy. Remove them from the pan and drain on a paper towel to remove excess oil.", "3. Assemble the Milanesa a la Napolitana: Preheat the oven to 400°F (200°C). Place the fried cutlets on a baking sheet or oven-safe dish. Top each cutlet with a slice of ham, then spoon a little marinara sauce over the ham. Sprinkle the shredded mozzarella cheese evenly over the cutlets, and add a little grated Parmesan if desired for extra flavor.", "4. Bake: Place the assembled cutlets in the preheated oven and bake for about 10-15 minutes, or until the cheese is melted and bubbly, and the sauce is hot."],
  done: true,
  world: world2
)

Ingredient.create!(
  name: "Beef or Chicken Cutlets",
  quantity: "4",
  task: task8
)

Ingredient.create!(
  name: "Eggs",
  quantity: "2",
  task: task8
)

Ingredient.create!(
  name: "Breadcrumbs",
  quantity: "1 cup",
  task: task8
)

Ingredient.create!(
  name: "Flour",
  quantity: "1/2 cup",
  task: task8
)

Ingredient.create!(
  name: "Salt and Black Pepper",
  quantity: "1 tbpn",
  task: task8
)

Ingredient.create!(
  name: "Garlic Powder",
  quantity: "1 tbpn",
  task: task8
)

Ingredient.create!(
  name: "Ham",
  quantity: "4 slices",
  task: task8
)

Ingredient.create!(
  name: "Marinara Sauce",
  quantity: "1 cup",
  task: task8
)

Ingredient.create!(
  name: "Shredded Mozzarella Cheese",
  quantity: "1 1/2 cups",
  task: task8
)

Ingredient.create!(
  name: "Parmesan cheese",
  quantity: "1/4 cup",
  task: task8
)

task9 = Task.create!(
  title: "Ceviche",
  time: "45 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Fish: Cut the fresh fish into small, bite-sized cubes. If using shrimp, peel, devein, and chop them into smaller pieces. For other seafood like scallops, slice them thinly or dice them. Place the fish (or seafood) in a glass or ceramic bowl.", "2. Marinate the Fish: Pour the freshly squeezed lime juice (and lemon juice if using) over the fish, ensuring it’s fully submerged in the juice. Stir gently to mix. Cover the bowl with plastic wrap and refrigerate for 30 minutes to 2 hours. The acid in the citrus juice will 'cook' the fish, turning it opaque and firm.", "3. Prepare the Vegetables: While the fish is marinating, thinly slice the red onion and chili peppers. Chop the cilantro and prepare any additional vegetables like cucumber and tomato. If you prefer a milder flavor, soak the sliced onions in cold water for 10 minutes before using, to reduce their pungency.", "4. Assemble the Ceviche: Once the fish is marinated and has turned opaque, add the red onion, chili peppers, cilantro, cucumber, and tomato (if using). Season with salt and pepper to taste, and mix gently to combine all ingredients."],
  done: true,
  world: world2
)

Ingredient.create!(
  name: "Fresh Firm White Fish",
  quantity: "500g",
  task: task9
)

Ingredient.create!(
  name: "Red Onion",
  quantity: "1",
  task: task9
)

Ingredient.create!(
  name: "Fresh Chili Peppers ",
  quantity: "1 - 2",
  task: task9
)

Ingredient.create!(
  name: "Fresh Cilantro",
  quantity: "1/2 cup",
  task: task9
)

Ingredient.create!(
  name: "Freshly Squeezed Lime Juice",
  quantity: "1/2 cup",
  task: task9
)

Ingredient.create!(
  name: "Freshly Squeezed Limon Juice",
  quantity: "1/4 cup",
  task: task9
)

Ingredient.create!(
  name: "Salt",
  quantity: "1/2 tbpn",
  task: task9
)

Ingredient.create!(
  name: "Freshly Ground Black Pepper",
  quantity: "1/4 teaspoon",
  task: task9
)

Ingredient.create!(
  name: "Cucumber",
  quantity: "1",
  task: task9
)

Ingredient.create!(
  name: "Tomato",
  quantity: "1",
  task: task9
)

Ingredient.create!(
  name: "Tostadas or tortilla chips",
  quantity: "",
  task: task9
)

task10 = Task.create!(
  title: "Arepas",
  time: "45 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Dough: In a large bowl, combine the arepa flour and salt. Gradually add the warm water to the flour while stirring with a spoon or your hands. Continue adding water until the dough is smooth and slightly sticky. The dough should be moist but not too wet. Let the dough sit for about 5 minutes to allow it to absorb the water. If it's too wet, add a little more flour; if too dry, add more water. Once the dough is ready, divide it into 4-6 equal portions and shape each portion into a round ball, then flatten it into a disc about 1/2 inch thick. You can make them thicker or thinner depending on your preference.", "2. Cook the Arepas: Heat a non-stick skillet or griddle over medium heat. If you want extra crispiness, you can add a tablespoon of oil to the pan. Place the arepas on the skillet and cook for 4-5 minutes on each side until they form a golden-brown crust. Once both sides are golden and crispy, reduce the heat to low and cook for an additional 10-15 minutes, flipping occasionally, until the arepas are cooked through and sound hollow when tapped.", "3. Optional: Bake for extra crispiness: For a crispier exterior, after pan-frying, place the arepas on a baking sheet in a preheated oven at 350°F (175°C) and bake for about 10-15 minutes. This step is optional but gives a wonderful texture.", "4. Fill and Serve: Once the arepas are cooked, slice them open like a pita bread and stuff them with your favorite fillings. Some popular options are: Queso (cheese) Reina pepiada (a Colombian filling with chicken, avocado, and mayo) Shredded beef with black beans Avocado, tomato, and lettuce You can also eat them plain, with just butter or a sauce, if you prefer."],
  done: true,
  world: world2
)

Ingredient.create!(
  name: "Arepa Flour",
  quantity: "2 cups",
  task: task10
)

Ingredient.create!(
  name: "Warm Water",
  quantity: "2 1/2 cups",
  task: task10
)

Ingredient.create!(
  name: "Salt",
  quantity: "1 teaspoon",
  task: task10
)

Ingredient.create!(
  name: "Vegetable Oil",
  quantity: "1 tbpn",
  task: task10
)

Ingredient.create!(
  name: "Cheese",
  quantity: "",
  task: task10
)

Ingredient.create!(
  name: "Shredded Beef, Chicken, or Pork",
  quantity: "",
  task: task10
)

Ingredient.create!(
  name: "Avocado slices",
  quantity: "",
  task: task10
)

Ingredient.create!(
  name: "Black beans",
  quantity: "",
  task: task10
)

Ingredient.create!(
  name: "Crispy bacon",
  quantity: "",
  task: task10
)

Ingredient.create!(
  name: "Lettuce or tomatoes",
  quantity: "",
  task: task10
)

task11 = Task.create!(
  title: "Guacamole",
  time: "15 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843067/Captura_de_Tela_2025-01-31_a%CC%80s_11.20.59_e3nzc5.png",
  steps: ["1. Prepare the Avocados: Cut the avocados in half, remove the pits, and scoop out the flesh with a spoon. Place the avocado flesh in a large bowl. Use a fork or potato masher to mash the avocados to your desired consistency (smooth or chunky).", "2. Mix the Ingredients: Add the finely chopped onion, minced garlic, diced tomatoes, lime juice, and chopped chili pepper (if using) to the mashed avocado. Stir everything together gently to combine.", "3. Season the Guacamole: Add salt, black pepper, and cumin (if using) to taste. Adjust the seasoning according to your preference. You can also add more lime juice for extra tang. Stir in the fresh cilantro if desired.", "4. Taste and Adjust: Taste the guacamole and adjust the seasoning, adding more salt, pepper, or lime juice as needed."],
  done: true,
  world: world3
)

Ingredient.create!(
  name: "Avocados",
  quantity: "3",
  task: task11
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task11
)

Ingredient.create!(
  name: "Garlic",
  quantity: "1-2 cloves",
  task: task11
)

Ingredient.create!(
  name: "Tomatoes",
  quantity: "1-2",
  task: task11
)

Ingredient.create!(
  name: "Lime",
  quantity: "1",
  task: task11
)

Ingredient.create!(
  name: "Salt",
  quantity: "1/2 teaspoon",
  task: task11
)

Ingredient.create!(
  name: "Black Pepper",
  quantity: "1/4 teaspoon",
  task: task11
)

Ingredient.create!(
  name: "Chili Pepper",
  quantity: "1",
  task: task11
)

Ingredient.create!(
  name: "Fresh Cilantro",
  quantity: "1/4 cup",
  task: task11
)

Ingredient.create!(
  name: "Cumin",
  quantity: "1/4 teaspoon",
  task: task11
)

task12 = Task.create!(
  title: "Enchiladas",
  time: "45 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Enchilada Sauce: In a saucepan, heat 2 tablespoons of oil over medium heat. Add the chili powder, cumin, garlic powder, onion powder, and paprika. Stir for about 1 minute to toast the spices and bring out their flavors. Add the tomato sauce, chicken broth, salt, pepper, and sugar (if using). Stir to combine. Bring the sauce to a simmer and let it cook for 10-15 minutes, until it thickens slightly. Taste and adjust seasoning as needed.", "2. Prepare the Tortillas: Heat 1 tablespoon of oil in a skillet over medium heat. Lightly fry the corn tortillas for about 10-15 seconds per side, just enough to make them pliable. You don't want them crispy, just softened. Set the fried tortillas aside on a paper towel to drain any excess oil.", "3. Assemble the Enchiladas: Preheat the oven to 375°F (190°C). Pour a thin layer of enchilada sauce into the bottom of a baking dish (9x13 inches). Take one tortilla at a time, dip it in the enchilada sauce, then place it on a plate or cutting board. Spoon about 2 tablespoons of shredded chicken, 1 tablespoon of chopped onion, and a small amount of shredded cheese onto the center of each tortilla. Roll up the tortilla tightly around the filling and place it seam side down in the baking dish. Repeat with the remaining tortillas, arranging them in a single layer.", "4.Top the Enchiladas: Once all the tortillas are rolled up and placed in the baking dish, pour the remaining enchilada sauce over the top of the rolled tortillas. Sprinkle the remaining shredded cheese evenly over the top.", "5. Bake: Bake the enchiladas in the preheated oven for 20-25 minutes, or until the cheese is melted and bubbly, and the sauce is hot and slightly thickened."],
  done: true,
  world: world3
)

Ingredient.create!(
  name: "Vegetable Oil",
  quantity: "2 tbps",
  task: task12
)

Ingredient.create!(
  name: "Chili Powder",
  quantity: "1 tbpn",
  task: task12
)

Ingredient.create!(
  name: "Cumin",
  quantity: "1/2 teaspoon",
  task: task12
)

Ingredient.create!(
  name: "Garlic Powder",
  quantity: "1/2 teaspoon",
  task: task12
)

Ingredient.create!(
  name: "Onion Powder",
  quantity: "1/2 teaspoon",
  task: task12
)

Ingredient.create!(
  name: "Paprika",
  quantity: "1/4 teaspoon",
  task: task12
)

Ingredient.create!(
  name: "Tomato Sauce",
  quantity: "1/2 cup",
  task: task12
)

Ingredient.create!(
  name: "Chicken or Vegetable Broth",
  quantity: "1 1/2 cups",
  task: task12
)

Ingredient.create!(
  name: "Salt or Black Pepper",
  quantity: "To taste",
  task: task12
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 tbpn",
  task: task12
)

Ingredient.create!(
  name: "Corn Tortillas",
  quantity: "12",
  task: task12
)

Ingredient.create!(
  name: "Shredded Cooked Chicken",
  quantity: "2 cups",
  task: task12
)

Ingredient.create!(
  name: "Shredded Cheese",
  quantity: "1 cup",
  task: task12
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task12
)

Ingredient.create!(
  name: "Sour Cream",
  quantity: "1/2 cup",
  task: task12
)

Ingredient.create!(
  name: "Fresh cilantro",
  quantity: "",
  task: task12
)

Ingredient.create!(
  name: "Vegetable Oil",
  quantity: "1 tbpn",
  task: task12
)

task13 = Task.create!(
  title: "Mac and Cheese",
  time: "30 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Cook the Pasta: Bring a large pot of salted water to a boil. Add the elbow macaroni and cook according to the package instructions, about 8-10 minutes, until al dente. Drain the pasta and set aside.", "2.Make the Cheese Sauce: In a separate large saucepan, melt the butter over medium heat. Once the butter is melted, add the flour and whisk constantly for about 1-2 minutes to make a roux (a thickening paste). Gradually add the milk, whisking continuously to prevent lumps. Cook the mixture, stirring occasionally, for about 5 minutes until it thickens to the consistency of heavy cream. Reduce the heat to low, and add the shredded cheddar cheese and mozzarella cheese. Stir until the cheese is completely melted and the sauce is smooth. Season with salt, pepper, garlic powder, and mustard powder (if using). Taste and adjust the seasoning if needed.", "3. Combine Pasta and Cheese Sauce: Add the drained pasta to the cheese sauce, stirring gently to coat the pasta evenly with the sauce.", "4. Optional: Bake with Topping: Preheat the oven to 350°F (175°C). If you want a crunchy topping, pour the mac and cheese into a greased baking dish. Mix the breadcrumbs with the melted butter and sprinkle them over the top of the mac and cheese. Bake for about 15-20 minutes until the top is golden and crispy."],
  done: true,
  world: world3
)

Ingredient.create!(
  name: "Elbow Macaroni",
  quantity: "2 cups",
  task: task13
)

Ingredient.create!(
  name: "Butter",
  quantity: "2 tbps",
  task: task13
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "2 tbps",
  task: task13
)

Ingredient.create!(
  name: "Whole Milk",
  quantity: "2 cups",
  task: task13
)

Ingredient.create!(
  name: "Shredded Sharp Cheddar Cheese",
  quantity: "1 1/2 cups",
  task: task13
)

Ingredient.create!(
  name: "Shredded Sharp Mozzarella Cheese",
  quantity: "1/2 cup",
  task: task13
)

Ingredient.create!(
  name: "Garlic Powder",
  quantity: "1/4 teaspoon",
  task: task13
)

Ingredient.create!(
  name: "Mustard Powder",
  quantity: "1/4 teaspoon",
  task: task13
)

task14 = Task.create!(
  title: "Buffalo Wings",
  time: "45 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Chicken Wings: Preheat your oven to 400°F (200°C). Pat the chicken wings dry with paper towels to remove excess moisture (this helps them become crispy). Place the wings in a large bowl and toss with olive oil, salt, pepper, garlic powder, and paprika until evenly coated.", "2. Bake the Wings: Arrange the wings in a single layer on a baking sheet lined with parchment paper or a wire rack. (A wire rack helps the air circulate around the wings, making them crispier). Bake for 25-30 minutes, flipping halfway through, until the wings are golden brown and crispy. If you want extra crispy wings, you can broil them for the last 2-3 minutes.", "3. Make the Buffalo Sauce: While the wings are baking, melt the butter in a saucepan over medium heat. Once melted, add the hot sauce, white vinegar, garlic powder, and salt. Stir to combine and cook for about 2-3 minutes until the sauce is hot and well-mixed. Taste and adjust the heat level by adding more hot sauce if you like it spicier.", "4. Coat the Wings: Once the wings are baked and crispy, remove them from the oven and place them in a large bowl. Pour the Buffalo sauce over the wings and toss gently until all the wings are coated in the sauce."],
  done: true,
  world: world3
)

Ingredient.create!(
  name: "Chicken Wings",
  quantity: "2 pounds",
  task: task14
)

Ingredient.create!(
  name: "Olive Oil",
  quantity: "1 tbpn",
  task: task14
)

Ingredient.create!(
  name: "Garlic Powder",
  quantity: "1/2 tbpn",
  task: task14
)

Ingredient.create!(
  name: "Paprika",
  quantity: "1/2 tbpn",
  task: task14
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "1/2 cup",
  task: task14
)

Ingredient.create!(
  name: "Hot Sauce",
  quantity: "1/2 cup",
  task: task14
)

Ingredient.create!(
  name: "White Vinegar",
  quantity: "1 tbpn",
  task: task14
)

Ingredient.create!(
  name: "Garlic Powder",
  quantity: "1/2 teaspoon",
  task: task14
)

task15 = Task.create!(
  title: "Poutine",
  time: "45 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Fries: Peel the potatoes (if you prefer) and cut them into thin strips. Heat a large pot or deep fryer filled with vegetable oil to 350°F (175°C). Fry the potato strips in batches for about 4-6 minutes, or until golden brown and crispy. Drain the fries on paper towels to absorb excess oil. Season with salt immediately after frying.", "2. Make the Gravy: In a saucepan, melt the butter over medium heat. Whisk in the flour and cook for about 1-2 minutes to form a roux (paste). Gradually add the beef broth and chicken stock, whisking constantly to prevent lumps. Bring to a simmer and cook for about 5-10 minutes, until the gravy thickens slightly. Stir in the soy sauce, garlic powder, onion powder, salt, and pepper to taste. Keep the gravy warm on low heat until ready to serve.", "3. Assemble the Poutine: Place the hot, crispy fries on a plate or serving dish. Scatter the cheese curds generously over the fries. Pour the hot gravy over the fries and cheese curds, ensuring everything is covered. The heat from the gravy will cause the cheese curds to melt slightly."],
  done: true,
  world: world3
)

Ingredient.create!(
  name: "Russet Potatoes",
  quantity: "4",
  task: task15
)

Ingredient.create!(
  name: "Vegetable Oil",
  quantity: "",
  task: task15
)

Ingredient.create!(
  name: "Butter",
  quantity: "2 tbps",
  task: task15
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "2 tbps",
  task: task15
)

Ingredient.create!(
  name: "Beef Broth ",
  quantity: "1 1/2 cups",
  task: task15
)

Ingredient.create!(
  name: "Chicken or Beef Stock",
  quantity: "1/2 cup",
  task: task15
)

Ingredient.create!(
  name: "Soy Sauce",
  quantity: "1 tbpn",
  task: task15
)

Ingredient.create!(
  name: "Garlic Powder",
  quantity: "1/2 teaspoon",
  task: task15
)

Ingredient.create!(
  name: "Onion Powder",
  quantity: "1/2 teaspoon",
  task: task15
)

Ingredient.create!(
  name: "Cheese Curds",
  quantity: "2 cups",
  task: task15
)

task16 = Task.create!(
  title: "Bacalhau à Brás",
  time: "45 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Bacalhau (Cod): If using salted cod, soak it in cold water for about 24-48 hours (changing the water several times) to remove the salt. After soaking, drain and shred the cod into small pieces, removing any bones and skin. If using fresh or frozen cod, simply cook it briefly in water for about 10 minutes until tender, then shred it.", "2. Fry the Potatoes: Heat olive oil in a large frying pan over medium heat. Add the potato matchsticks and fry them in batches until they are golden and crispy but not fully dry (they should still have a bit of softness inside). Remove the fried potatoes and set them aside on paper towels to drain excess oil. Optionally, you can use pre-fried potatoes or even bake them in the oven for a healthier alternative.", "3. Cook the Onion and Garlic: In the same frying pan, add the olive oil and sauté the chopped onion over medium heat until softened and translucent (about 5 minutes). Add the minced garlic and cook for an additional 1-2 minutes, being careful not to burn it.", "4. Combine Cod and Potatoes: Add the shredded bacalhau to the pan with the onions and garlic. Stir to combine and cook for a few minutes to heat the cod through and blend the flavors. Gently fold in the fried potatoes and mix everything together. Season with salt and pepper to taste.", "5. Add the Eggs: Beat the eggs in a bowl and pour them over the cod and potato mixture. Stir gently over low heat, making sure the eggs scramble but don’t become too dry. The goal is to create a creamy consistency, with the eggs lightly binding everything together."],
  done: true,
  world: world4
)

Ingredient.create!(
  name: "Salted Cod",
  quantity: "450g",
  task: task16
)

Ingredient.create!(
  name: "Potatoes",
  quantity: "4",
  task: task16
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task16
)

Ingredient.create!(
  name: "Garlic",
  quantity: "3 cloves",
  task: task16
)

Ingredient.create!(
  name: "Eggs",
  quantity: "6",
  task: task16
)

Ingredient.create!(
  name: "Fresh Parsley",
  quantity: "1/4 cup",
  task: task16
)

Ingredient.create!(
  name: "Black Olives",
  quantity: "1/4 cup",
  task: task16
)

Ingredient.create!(
  name: "Olive Oil",
  quantity: "3 tbps",
  task: task16
)

Ingredient.create!(
  name: "Butter",
  quantity: "1 tbpn",
  task: task16
)

task17 = Task.create!(
  title: "Lasagna",
  time: "1 1/2 hours",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Make the Meat Sauce: Heat olive oil in a large skillet over medium heat. Add the chopped onion and cook for about 5 minutes until softened. Add the minced garlic and cook for another 1 minute until fragrant. Add the ground beef to the skillet and cook, breaking it up with a spoon, until browned and cooked through (about 7-10 minutes). Stir in the crushed tomatoes, tomato paste, tomato sauce, and red wine (if using). Add the oregano, basil, sugar, salt, and pepper. Simmer on low heat for about 20-30 minutes, stirring occasionally, until the sauce thickens. Taste and adjust seasoning as needed.", "2. Make the Béchamel Sauce: In a separate saucepan, melt the butter over medium heat. Once melted, whisk in the flour and cook for about 2 minutes to form a roux (a thickening paste). Gradually add the milk while whisking to avoid lumps. Cook for about 5-7 minutes until the sauce thickens to the consistency of heavy cream. Stir in the salt, nutmeg, and black pepper. Remove from heat.", "3. Cook the Lasagna Noodles: If using regular lasagna noodles, cook them according to the package instructions. Drain and set aside on a large plate or tray, separating the noodles to prevent sticking. If using no-boil noodles, you can skip this step.", "4. Assemble the Lasagna: Preheat your oven to 375°F (190°C). Spread a thin layer of meat sauce on the bottom of a 9x13-inch baking dish. Layer 4 lasagna noodles on top of the sauce. Spread about 1/4 of the ricotta cheese evenly over the noodles, followed by a portion of the béchamel sauce and a portion of the meat sauce. Sprinkle a handful of mozzarella cheese and a little Parmesan cheese on top. Repeat the layers two more times (noodles, ricotta, béchamel, meat sauce, mozzarella, Parmesan) until all ingredients are used. For the top layer, finish with a final layer of noodles, remaining meat sauce, and top with the remaining mozzarella and Parmesan cheese.",  "5. Bake: Cover the lasagna with aluminum foil and bake for 25 minutes. Then, remove the foil and bake for another 20-25 minutes until the cheese is golden and bubbly. Let the lasagna rest for about 10-15 minutes before slicing and serving. This helps the layers set."],
  done: true,
  world: world4
)

Ingredient.create!(
  name: "Ground Beef",
  quantity: "450g",
  task: task17
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task17
)

Ingredient.create!(
  name: "Garlic",
  quantity: "2 cloves",
  task: task17
)

Ingredient.create!(
  name: "Crushed Tomatoes",
  quantity: "1 can",
  task: task17
)

Ingredient.create!(
  name: "Tomato Paste",
  quantity: "1 can",
  task: task17
)

Ingredient.create!(
  name: "Tomato Sauce",
  quantity: "1 can",
  task: task17
)

Ingredient.create!(
  name: "Red Wine",
  quantity: "1/4 cup",
  task: task17
)

Ingredient.create!(
  name: "Dried Oregano",
  quantity: "1 tbpn",
  task: task17
)

Ingredient.create!(
  name: "Dried Basil",
  quantity: "1 tbpn",
  task: task17
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1/2 teaspoon",
  task: task17
)

Ingredient.create!(
  name: "Olive Oil",
  quantity: "2 tbps",
  task: task17
)

Ingredient.create!(
  name: "Butter",
  quantity: "4 tbps",
  task: task17
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "4 tbps",
  task: task17
)

Ingredient.create!(
  name: "Whole Milk",
  quantity: "2 1/2 cups",
  task: task17
)

Ingredient.create!(
  name: "Ground Nutmeg",
  quantity: "1/4 teaspoon",
  task: task17
)

Ingredient.create!(
  name: "Lasagna Noodles",
  quantity: "12",
  task: task17
)

Ingredient.create!(
  name: "Shredded Mozzarella Cheese",
  quantity: "2 cups",
  task: task17
)

Ingredient.create!(
  name: "Ricotta Cheese",
  quantity: "1 1/2 cups",
  task: task17
)

Ingredient.create!(
  name: "Parmesan Cheese",
  quantity: "1 cup",
  task: task17
)

task18 = Task.create!(
  title: "Ratatouille",
  time: "1 hour",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Vegetables: Cut the eggplant into small cubes and sprinkle with a little salt. Let it sit for about 10 minutes to remove bitterness, then pat dry with a paper towel. Slice the zucchini and yellow squash into rounds. Chop the bell peppers, onion, and tomatoes.", "2. Sauté the Vegetables: Heat 2 tablespoons of olive oil in a large pan over medium heat. Add the onion and sauté for about 5 minutes until soft. Add the bell peppers and cook for another 5 minutes. Stir in the garlic and cook for 1 minute until fragrant.", "3. Add the Eggplant and Zucchini: Add the eggplant, zucchini, and yellow squash to the pan with the remaining 2 tablespoons of olive oil. Stir everything together and cook for 5-7 minutes until the vegetables start to soften.", "4. Simmer with Tomatoes and Herbs: Stir in the chopped tomatoes, thyme, oregano, salt, pepper, and red pepper flakes (if using). Reduce the heat to low, cover, and let it simmer for 30-40 minutes, stirring occasionally. The vegetables should be tender but not mushy.", "5. Finish and Serve: Stir in the fresh basil and balsamic vinegar (if using) for extra flavor. Taste and adjust seasoning as needed."],
  done: true,
  world: world4
)

Ingredient.create!(
  name: "Eggplant",
  quantity: "1",
  task: task18
)

Ingredient.create!(
  name: "Zucchini",
  quantity: "1",
  task: task18
)

Ingredient.create!(
  name: "Yellow Squash",
  quantity: "1",
  task: task18
)

Ingredient.create!(
  name: "Red Bell Pepper",
  quantity: "1",
  task: task18
)

Ingredient.create!(
  name: "Yellow Bell Pepper",
  quantity: "1",
  task: task18
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task18
)

Ingredient.create!(
  name: "Garlic",
  quantity: "4 cloves",
  task: task18
)

Ingredient.create!(
  name: "Tomatoes",
  quantity: "4",
  task: task18
)

Ingredient.create!(
  name: "Olive Oil",
  quantity: "1/4 cup",
  task: task18
)

Ingredient.create!(
  name: "Dried Thyme",
  quantity: "1 teaspoon",
  task: task18
)

Ingredient.create!(
  name: "Dried Oregano",
  quantity: "1 teaspoon",
  task: task18
)

Ingredient.create!(
  name: "Red Pepper Flakes",
  quantity: "1/4 teaspoon",
  task: task18
)

Ingredient.create!(
  name: "Fresh Basil",
  quantity: "1/2 cup",
  task: task18
)

Ingredient.create!(
  name: "Balsamic Vinegar",
  quantity: "1 tbpn",
  task: task18
)

task19 = Task.create!(
  title: "Soft Pretzels",
  time: "1 hour 30 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Make the Dough: In a large bowl, mix warm water, yeast, and sugar. Let it sit for 5 minutes until foamy. Add salt, melted butter, and flour (1 cup at a time) and mix until a dough forms. Knead the dough for 5-7 minutes on a floured surface until smooth and elastic. Place the dough in a greased bowl, cover, and let it rise in a warm place for 1 hour, or until doubled in size.", "2. Shape the Pretzels: Preheat your oven to 450°F (230°C) and line a baking sheet with parchment paper. Punch down the dough and divide it into 8 equal pieces. Roll each piece into a 24-inch (60cm) rope and shape into a pretzel by making a 'U' shape, crossing the ends, and pressing them onto the bottom loop.", "3. Boil the Pretzels (for Chewy Texture): In a large pot, bring 10 cups of water to a boil. Add the baking soda (it will bubble). Drop each pretzel into the boiling water for 20-30 seconds. Remove with a slotted spoon and place on the baking sheet.", "4. Bake the Pretzels: Brush each pretzel with the egg yolk wash and sprinkle with coarse salt. Bake for 12-15 minutes, or until golden brown."],
  done: true,
  world: world4
)

Ingredient.create!(
  name: "Warm Water",
  quantity: "1 1/2 cups",
  task: task19
)

Ingredient.create!(
  name: "Active Dry Yeast",
  quantity: "2 1/2 teaspoons",
  task: task19
)

Ingredient.create!(
  name: "Granulated Sugar",
  quantity: "1 tbpm",
  task: task19
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "500g",
  task: task19
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "2 tbps",
  task: task19
)

Ingredient.create!(
  name: "Water",
  quantity: "10 cups",
  task: task19
)

Ingredient.create!(
  name: "Baking Soda",
  quantity: "1/2 cup",
  task: task19
)

Ingredient.create!(
  name: "Egg Yolk",
  quantity: "1",
  task: task19
)

Ingredient.create!(
  name: "Coarse salt",
  quantity: "",
  task: task19
)

task20 = Task.create!(
  title: "Beef Stroganoff",
  time: "30 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Beef: Season the beef strips with salt, pepper, and flour (if using). Heat 1 tablespoon olive oil in a large skillet over medium-high heat. Add the beef and sear for 2-3 minutes per side, until browned. Remove the beef from the skillet and set aside.", "2. Cook the Vegetables: In the same skillet, add 1 tablespoon olive oil and butter. Sauté the onion for 3 minutes until soft. Add the garlic and mushrooms, and cook for 5-7 minutes, stirring occasionally, until mushrooms are browned.", "3. Make the Sauce: Pour in the beef broth, scraping up any bits from the bottom of the pan. Stir in Dijon mustard, Worcestershire sauce, and paprika. Let simmer for 5 minutes. Lower the heat and stir in the heavy cream (or sour cream). Mix well.", "4. Combine Everything: Return the seared beef to the skillet and stir to coat in the sauce. Simmer for 2-3 minutes until heated through (avoid overcooking to keep the beef tender)."],
  done: true,
  world: world4
)

Ingredient.create!(
  name: "Beef Sirloin or Tenderloin",
  quantity: "450g",
  task: task20
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "1 tbpn",
  task: task20
)

Ingredient.create!(
  name: "Olive Oil",
  quantity: "2 tbps",
  task: task20
)

Ingredient.create!(
  name: "Butter",
  quantity: "2 tbps",
  task: task20
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task20
)

Ingredient.create!(
  name: "Garlic",
  quantity: "2 cloves",
  task: task20
)

Ingredient.create!(
  name: "Mushrooms",
  quantity: "225g",
  task: task20
)

Ingredient.create!(
  name: "Beef Broth",
  quantity: "120ml",
  task: task20
)

Ingredient.create!(
  name: "Dijon Mustard",
  quantity: "1 tbpn",
  task: task20
)

Ingredient.create!(
  name: "Worcestershire Sauce",
  quantity: "1 tbpn",
  task: task20
)

Ingredient.create!(
  name: "Heavy Cream or Sour Cream",
  quantity: "120ml",
  task: task20
)

Ingredient.create!(
  name: "Paprika",
  quantity: "1/4 teaspoon",
  task: task20
)

Ingredient.create!(
  name: "Fresh Parsley",
  quantity: "",
  task: task20
)

task21 = Task.create!(
  title: "Couscous",
  time: "15 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the basic couscous as described above. Let it cool slightly.", "2. Mix in tomatoes, cucumber, red onion, and parsley.", "3. Drizzle with lemon juice and olive oil. Season with salt and black pepper.", "4.Toss gently and top with feta cheese (if using). Serve chilled or at room temperature."],
  done: true,
  world: world5
)

Ingredient.create!(
  name: "Cherry Tomatoes",
  quantity: "1/2 cup",
  task: task21
)

Ingredient.create!(
  name: "Cucumber",
  quantity: "1/2",
  task: task21
)

Ingredient.create!(
  name: "Red Onion",
  quantity: "1/4",
  task: task21
)

Ingredient.create!(
  name: "Fresh Parsley",
  quantity: "1/4 cup",
  task: task21
)

Ingredient.create!(
  name: "Feta cheese",
  quantity: "1/4 cup",
  task: task21
)

Ingredient.create!(
  name: "Lemon Juice",
  quantity: "2 tbps",
  task: task21
)

Ingredient.create!(
  name: "Olive Oil",
  quantity: "1 tbpn",
  task: task21
)

task22 = Task.create!(
  title: "Mahshi",
  time: "1 hour 15 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Vegetables: Wash the vegetables and cut off the tops. Save the tops to use as lids. Carefully hollow out the zucchinis, eggplants, and tomatoes with a small spoon, leaving about ¼ inch of flesh on the walls. Set the scooped-out flesh aside for the stuffing. If using bell peppers, remove the seeds and membranes.", "2. Prepare the Stuffing: In a large bowl, mix washed rice, chopped onion, tomatoes, parsley, dill, mint, and garlic. Add tomato paste, olive oil, salt, black pepper, cinnamon, allspice, and paprika. Mix well. Squeeze in the lemon juice and stir.", "3. Stuff the Vegetables: Fill each vegetable ¾ full with the rice mixture (the rice expands as it cooks). Place the tops back on the vegetables.", "4. Cook the Mahshi: Arrange the stuffed vegetables upright in a large pot. In a bowl, mix broth (or water), tomato paste, and olive oil. Pour over the vegetables until they are about halfway submerged. Place a small plate on top of the vegetables to keep them from moving while cooking. Cover and simmer over medium-low heat for 40-50 minutes, until the rice is fully cooked."],
  done: true,
  world: world5
)

Ingredient.create!(
  name: "Zucchini",
  quantity: "4",
  task: task22
)

Ingredient.create!(
  name: "Bell Pepper",
  quantity: "4",
  task: task22
)

Ingredient.create!(
  name: "Eggplants",
  quantity: "4",
  task: task22
)

Ingredient.create!(
  name: "Tomatoes",
  quantity: "4",
  task: task22
)

Ingredient.create!(
  name: "Short-grain Rice",
  quantity: "200g",
  task: task22
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task22
)

Ingredient.create!(
  name: "Tomatoes",
  quantity: "2",
  task: task22
)

Ingredient.create!(
  name: "Fresh Parsley",
  quantity: "1/2 cup",
  task: task22
)

Ingredient.create!(
  name: "Fresh Dill",
  quantity: "1/4 cup",
  task: task22
)

Ingredient.create!(
  name: "Fresh Mint",
  quantity: "1/4 cup",
  task: task22
)

Ingredient.create!(
  name: "Garlic",
  quantity: "3 cloves",
  task: task22
)

Ingredient.create!(
  name: "Tomato Paste",
  quantity: "2 tbps",
  task: task22
)

Ingredient.create!(
  name: "Olive Oil",
  quantity: "2 tbps",
  task: task22
)

Ingredient.create!(
  name: "Black Pepper",
  quantity: "1/2 teaspoon",
  task: task22
)

Ingredient.create!(
  name: "Ground Cinnamon",
  quantity: "1/2 teaspoon",
  task: task22
)

Ingredient.create!(
  name: "Ground Allspice",
  quantity: "1/2 teaspoon",
  task: task22
)

Ingredient.create!(
  name: "Paprika",
  quantity: "1/2 teaspoon",
  task: task22
)

Ingredient.create!(
  name: "Juice of 1 lemon",
  quantity: "",
  task: task22
)

task23 = Task.create!(
  title: "Kabsa",
  time: "1 hour 15 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Cook the Meat: Heat oil or ghee in a large pot over medium heat. Add the onion and sauté until golden brown. Stir in garlic, tomatoes, tomato paste, and grated carrots. Cook for 5 minutes. Add the chicken or lamb and all the spices, stirring to coat the meat. Pour in broth (or water) and bring to a boil. Cover and simmer for: Chicken: 30-35 minutes Lamb: 1-1.5 hours (until tender)", "2. Cook the Rice: Remove the meat and set it aside. Strain the broth if needed. Add soaked and drained rice to the pot with the broth. Stir in raisins (if using) and season with salt. Cover and cook over low heat for 15-20 minutes, until the rice absorbs the liquid."],
  done: true,
  world: world5
)

Ingredient.create!(
  name: "Chicken or Lamb",
  quantity: "700g",
  task: task23
)

Ingredient.create!(
  name: "Vegetable Oil or Ghee",
  quantity: "3 tbps",
  task: task23
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task23
)

Ingredient.create!(
  name: "Garlic",
  quantity: "4 cloves",
  task: task23
)

Ingredient.create!(
  name: "Tomatoes",
  quantity: "2",
  task: task23
)

Ingredient.create!(
  name: "Tomato Paste",
  quantity: "1 tbpn",
  task: task23
)

Ingredient.create!(
  name: "Carrots",
  quantity: "2",
  task: task23
)

Ingredient.create!(
  name: "Ground Cumin",
  quantity: "1 teaspoon",
  task: task23
)

Ingredient.create!(
  name: "Ground Coriander",
  quantity: "1 teaspoon",
  task: task23
)

Ingredient.create!(
  name: "Ground Cinnamon",
  quantity: "1 teaspoon",
  task: task23
)

Ingredient.create!(
  name: "Ground Cardamom",
  quantity: "1 teaspoon",
  task: task23
)

Ingredient.create!(
  name: "Ground Black Pepper",
  quantity: "1 teaspoon",
  task: task23
)

Ingredient.create!(
  name: "Paprika",
  quantity: "1 teaspoon",
  task: task23
)

Ingredient.create!(
  name: "Turmeric",
  quantity: "1/2 teaspoon",
  task: task23
)

Ingredient.create!(
  name: "Ground Cloves",
  quantity: "1/2 teaspoon",
  task: task23
)

Ingredient.create!(
  name: "Chili Powder",
  quantity: "1/2 teaspoon",
  task: task23
)

Ingredient.create!(
  name: "Dried Bay Leaves",
  quantity: "2",
  task: task23
)

Ingredient.create!(
  name: "Cloves",
  quantity: "4",
  task: task23
)

Ingredient.create!(
  name: "Cardamom Pods",
  quantity: "4",
  task: task23
)


Ingredient.create!(
  name: "Stick Cinnamon",
  quantity: "1",
  task: task23
)

Ingredient.create!(
  name: "Basmati Rice",
  quantity: "2 cups",
  task: task23
)

Ingredient.create!(
  name: "Chicken or Beef Broth",
  quantity: "4 cups",
  task: task23
)

Ingredient.create!(
  name: "Almonds or Cashews",
  quantity: "1/4 cup",
  task: task23
)

Ingredient.create!(
  name: "Fresh Cilantro or Parsley",
  quantity: "",
  task: task23
)

task24 = Task.create!(
  title: "Mandi",
  time: "1 hour 30 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Marinate & Cook the Meat: In a bowl, mix olive oil, salt, black pepper, turmeric, cardamom, cinnamon, cumin, paprika, and lemon juice. Rub this spice mixture over the chicken or lamb and let it marinate for 30 minutes to 1 hour. Preheat the oven to 375°F (190°C). Place the marinated meat on a wire rack over a baking tray. Cover with foil and bake for: Chicken: 45-50 minutes Lamb: 1.5-2 hours (until tender) Remove the foil in the last 10 minutes for a golden-brown crust.", "2. Cook the Rice: Heat 2 tablespoons oil in a large pot. Add onions and sauté until golden. Add garlic, tomatoes, cinnamon stick, cardamom pods, cloves, and bay leaves. Sauté for 5 minutes. Pour in broth (or water) and bring to a boil. Stir in soaked rice and season with salt. Cover and cook over low heat for 15-20 minutes, until the rice absorbs the liquid.", "3. Add the Smoky Flavor (Optional but Authentic): Heat a piece of charcoal until red-hot. Place a small heatproof bowl in the center of the rice pot. Add 1 teaspoon ghee (or oil) to the bowl and drop in the hot charcoal. Cover immediately to trap the smoky aroma. Let it sit for 5 minutes, then remove the charcoal."],
  done: true,
  world: world5
)

Ingredient.create!(
  name: "Lamb or Chicken",
  quantity: "700g",
  task: task24
)

Ingredient.create!(
  name: "Olive Oil or Ghee",
  quantity: "2 tbps",
  task: task24
)

Ingredient.create!(
  name: "Turmeric",
  quantity: "1/2 teaspoon",
  task: task24
)

Ingredient.create!(
  name: "Ground Cardamom",
  quantity: "1/2 teaspoon",
  task: task24
)

Ingredient.create!(
  name: "Ground Cinnamon",
  quantity: "1/2 teaspoon",
  task: task24
)

Ingredient.create!(
  name: "Ground Cumin",
  quantity: "1/2 teaspoon",
  task: task24
)

Ingredient.create!(
  name: "Paprikan",
  quantity: "1/2 teaspoon",
  task: task24
)

Ingredient.create!(
  name: "Lemon Juice",
  quantity: "1 teaspoon",
  task: task24
)

Ingredient.create!(
  name: "Basmati Rice",
  quantity: "2 cups",
  task: task24
)

Ingredient.create!(
  name: "Chicken or Lamb Broth",
  quantity: "4 cups",
  task: task24
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task24
)

Ingredient.create!(
  name: "Garlic",
  quantity: "3 cloves",
  task: task24
)

Ingredient.create!(
  name: "Tomatoes",
  quantity: "2",
  task: task24
)

Ingredient.create!(
  name: "Cinnamon Stick",
  quantity: "1",
  task: task24
)

Ingredient.create!(
  name: "Cardamom Pods",
  quantity: "3",
  task: task24
)

Ingredient.create!(
  name: "Cloves",
  quantity: "3",
  task: task24
)

Ingredient.create!(
  name: "Bay Leaves",
  quantity: "2",
  task: task24
)

Ingredient.create!(
  name: "Almonds or Cashews",
  quantity: "1/4 cups",
  task: task24
)

Ingredient.create!(
  name: "Fresh Cilantro or Parsley",
  quantity: "",
  task: task24
)

task25 = Task.create!(
  title: "Mandi",
  time: "1 hour 45 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Cook the Meat: In a large pot, heat ghee or butter and sauté the onion until golden brown. Add the lamb or chicken and cook until browned. Stir in salt, black pepper, cumin, cardamom, cinnamon, and turmeric. Pour in 3 cups of water, cover, and let it simmer until the meat is tender: Chicken: 30-40 minutes Lamb: 1-1.5 hours", "2. Add the Jareesh (Crushed Wheat): Drain the soaked jareesh and add it to the pot with the cooked meat. Stir well and add more water if needed to achieve a thick, porridge-like consistency. Cover and simmer on low heat for 30-45 minutes, stirring occasionally.", "3. Add the Yogurt (for Creaminess): Stir in yogurt and mix well until combined. Cook for another 10-15 minutes, stirring frequently.", "4. Final Touches & Garnish: In a small pan, heat ghee or butter and add ground black lime (loomi) and dried mint. Drizzle this over the Jareesh before serving. Optionally, top with caramelized onions for extra flavor."],
  done: true,
  world: world5
)

Ingredient.create!(
  name: "Crushed Wheat",
  quantity: "1 cup",
  task: task25
)

Ingredient.create!(
  name: "Water",
  quantity: "3 cups",
  task: task25
)

Ingredient.create!(
  name: "Lamb or Chicken",
  quantity: "700g",
  task: task25
)

Ingredient.create!(
  name: "Onion",
  quantity: "1",
  task: task25
)

Ingredient.create!(
  name: "Ghee or Butter",
  quantity: "2 tbps",
  task: task25
)

Ingredient.create!(
  name: "Ground Cumin",
  quantity: "1/2 tbpn",
  task: task25
)

Ingredient.create!(
  name: "Ground Cardamom",
  quantity: "1/2 tbpn",
  task: task25
)

Ingredient.create!(
  name: "Ground Cinnamon",
  quantity: "1/2 tbpn",
  task: task25
)

Ingredient.create!(
  name: "Turmeric",
  quantity: "1/2 tbpn",
  task: task25
)

Ingredient.create!(
  name: "Yogurt",
  quantity: "1 1/2 cups",
  task: task25
)

Ingredient.create!(
  name: "Ghee or Butter",
  quantity: "2 tbps",
  task: task25
)

Ingredient.create!(
  name: "Ground Black Lime",
  quantity: "1 teaspoon",
  task: task25
)

Ingredient.create!(
  name: "Dried Mint",
  quantity: "1 teaspoon",
  task: task25
)

Ingredient.create!(
  name: "Caramelized Onions",
  quantity: "",
  task: task25
)

task26 = Task.create!(
  title: "Sushi",
  time: "50 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Sushi Rice: Rinse the rice under cold water until the water runs clear. Cook the rice with 2 ½ cups water (use a rice cooker or stovetop). Let it cool slightly. In a small saucepan, heat rice vinegar, sugar, and salt until dissolved (do not boil). Gently fold the vinegar mixture into the rice using a wooden spoon. Let it cool.", "2. Make Maki (Sushi Rolls): Place a nori sheet on a bamboo mat (shiny side down). Wet your fingers and spread a thin layer of sushi rice over the nori, leaving 1 inch at the top. Arrange fish, cucumber, and avocado in a line near the bottom of the rice. Use the bamboo mat to roll the sushi tightly. Seal the edge with a little water. Slice into 6-8 pieces using a sharp, wet knife.", "3. Make Nigiri (Hand-Pressed Sushi): Wet your hands and take a small amount of sushi rice (about the size of a ping-pong ball). Shape it into an oval mound. Add a thin layer of wasabi on top. Place a slice of fish over the rice and gently press it down. Serve with soy sauce, wasabi, and pickled ginger."],
  done: true,
  world: world6
)

Ingredient.create!(
  name: "Sushi Rice",
  quantity: "2 cups",
  task: task26
)

Ingredient.create!(
  name: "Water",
  quantity: "2 1/2 cups",
  task: task26
)

Ingredient.create!(
  name: "Rice Vinegar",
  quantity: "1/4 cups",
  task: task26
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 tbpn",
  task: task26
)

Ingredient.create!(
  name: "Nori",
  quantity: "4-6 sheets",
  task: task26
)

Ingredient.create!(
  name: "Sushi-grade Fish",
  quantity: "250g",
  task: task26
)

Ingredient.create!(
  name: "Cucumber",
  quantity: "250g",
  task: task26
)

Ingredient.create!(
  name: "Avocado",
  quantity: "1",
  task: task26
)

Ingredient.create!(
  name: "Cream Cheese",
  quantity: "2 tbps",
  task: task26
)

Ingredient.create!(
  name: "Soy Sauce",
  quantity: "",
  task: task26
)

Ingredient.create!(
  name: "Wasabi and Pickled Ginger",
  quantity: "",
  task: task26
)

Ingredient.create!(
  name: "Wasabi and Pickled Ginger",
  quantity: "",
  task: task26
)

task27 = Task.create!(
  title: "Bibimbap",
  time: "35 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Rice Cook the short-grain rice and keep it warm.", "2. Cook the Vegetables Heat a little sesame oil in a pan and separately sauté carrots, zucchini, and mushrooms with salt until soft. Mix the blanched spinach with sesame oil, salt, and garlic. Mix the blanched bean sprouts with sesame oil, salt, and garlic. Set all vegetables aside.", "3. Cook the Protein In a bowl, mix beef or chicken with soy sauce, sesame oil, sugar, garlic, and black pepper. Cook in a pan over medium heat until browned and fully cooked.", "4. Make the Gochujang Sauce Mix gochujang, sesame oil, sugar, rice vinegar, soy sauce, and water in a bowl until smooth.", "5. Fry the Eggs Heat vegetable oil in a pan and fry eggs until the whites are set but the yolks are runny.", "6. Assemble the Bibimbap Divide warm rice into bowls. Arrange vegetables, meat, and fried egg on top in separate sections. Drizzle with gochujang sauce and sprinkle sesame seeds. Mix everything together before eating!"],
  done: true,
  world: world6
)

Ingredient.create!(
  name: "Cooked Short-grain Rice",
  quantity: "2 cups",
  task: task27
)

Ingredient.create!(
  name: "Spinach",
  quantity: "1/2 cup",
  task: task27
)

Ingredient.create!(
  name: "Bean Sprouts",
  quantity: "1/2 cup",
  task: task27
)

Ingredient.create!(
  name: "Carrots",
  quantity: "1/2 cup",
  task: task27
)

Ingredient.create!(
  name: "Zucchini",
  quantity: "1/2 cup",
  task: task27
)

Ingredient.create!(
  name: "Shiitake Mushrooms",
  quantity: "1/2 cup",
  task: task27
)

Ingredient.create!(
  name: "Sesame Oil",
  quantity: "1 tbpn",
  task: task27
)

Ingredient.create!(
  name: "Garlic",
  quantity: "1 clove",
  task: task27
)

Ingredient.create!(
  name: "Beef or Chicken",
  quantity: "250g",
  task: task27
)

Ingredient.create!(
  name: "Soy Sauce",
  quantity: "1 tbpn",
  task: task27
)

Ingredient.create!(
  name: "Sesame Oil",
  quantity: "1 tbpn",
  task: task27
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 tbpn",
  task: task27
)

Ingredient.create!(
  name: "Garlic",
  quantity: "1 clove",
  task: task27
)

Ingredient.create!(
  name: "Black Pepper",
  quantity: "1/2 tbpn",
  task: task27
)

Ingredient.create!(
  name: "Gochujang",
  quantity: "2 tbps",
  task: task27
)

Ingredient.create!(
  name: "Sesame Oil",
  quantity: "1 tbpn",
  task: task27
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 teaspoon",
  task: task27
)

Ingredient.create!(
  name: "Rice Vinegar",
  quantity: "1 teaspoon",
  task: task27
)

Ingredient.create!(
  name: "Soy Sauce",
  quantity: "1 teaspoon",
  task: task27
)

Ingredient.create!(
  name: "Water",
  quantity: "1 teaspoon",
  task: task27
)

Ingredient.create!(
  name: "Fried Eggs",
  quantity: "2",
  task: task27
)

Ingredient.create!(
  name: "Sesame Seeds",
  quantity: "1 teaspoon",
  task: task27
)

Ingredient.create!(
  name: "Vegetable Oil",
  quantity: "1 teaspoon",
  task: task27
)

task28 = Task.create!(
  title: "Peking Duck",
  time: "26 hours",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Duck (Drying Process – 24 Hours) Rinse the duck and pat it dry with paper towels. Mix five-spice powder, salt, and sugar, then rub it all over the duck (inside and out). In a large pot, bring 4 cups of water to a boil. Pour it slowly over the duck to tighten the skin. Mix soy sauce, rice vinegar, and honey, then brush it over the duck. Hang the duck in a cool, dry place (or place it uncovered on a wire rack in the fridge) for 12-24 hours to dry out the skin.", "2. Roast the Duck Preheat oven to 350°F (175°C). Place the duck on a rack over a roasting pan (to catch drippings). Roast for 60 minutes, flipping halfway. Increase temperature to 400°F (200°C) and roast for 20 more minutes until the skin is crispy.", "3. Glaze & Final Roast In a small saucepan, mix honey, soy sauce, and rice vinegar. Brush over the duck. Roast for an additional 10-15 minutes until golden and crispy.", "4. Serve the Peking Duck Slice the crispy skin and meat thinly. Serve with Mandarin pancakes, hoisin sauce, cucumber, and scallions. Spread hoisin sauce on a pancake, add duck, cucumber, and scallions, then roll it up."],
  done: true,
  world: world6
)

Ingredient.create!(
  name: "Whole Duck",
  quantity: "1",
  task: task28
)

Ingredient.create!(
  name: "Chinese five-spice powder",
  quantity: "2 tbps",
  task: task28
)

Ingredient.create!(
  name: "Salt",
  quantity: "1 tbpn",
  task: task28
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 tbpn",
  task: task28
)

Ingredient.create!(
  name: "Soy Sauce",
  quantity: "1 tbpn",
  task: task28
)

Ingredient.create!(
  name: "Rice Vinegar",
  quantity: "1 tbpn",
  task: task28
)

Ingredient.create!(
  name: "Honey or Maltose Syrup",
  quantity: "1 tbpn",
  task: task28
)

Ingredient.create!(
  name: "Boiling Water",
  quantity: "4 cups",
  task: task28
)

Ingredient.create!(
  name: "Honey",
  quantity: "2 tbps",
  task: task28
)

Ingredient.create!(
  name: "Soy Sauce",
  quantity: "1 tbpn",
  task: task28
)

Ingredient.create!(
  name: "Rice Vinegar",
  quantity: "1 tbpn",
  task: task28
)

Ingredient.create!(
  name: "Mandarin Pancakes",
  quantity: "",
  task: task28
)

Ingredient.create!(
  name: "Hoisin Sauce",
  quantity: "",
  task: task28
)

Ingredient.create!(
  name: "Thinly Sliced Cucumber",
  quantity: "",
  task: task28
)

Ingredient.create!(
  name: "Thinly Sliced Scallions",
  quantity: "",
  task: task28
)

task29 = Task.create!(
  title: "Butter Chicken",
  time: "1 hour",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Marinate the Chicken (30 minutes or overnight) Mix yogurt, lemon juice, garlic, ginger, and spices in a bowl. Add chicken and coat well. Cover and refrigerate for at least 30 minutes (overnight for best results).", "2. Cook the Chicken Heat 1 tablespoon oil in a pan over medium heat. Cook the chicken pieces (without marinade) until browned on all sides (about 5-7 minutes). Remove and set aside.", "3. Make the Butter Sauce In the same pan, melt 2 tablespoons butter and sauté onions until soft. Add garlic and ginger and cook for 1 minute. Stir in cumin, coriander, garam masala, paprika, and chili powder. Cook for 30 seconds. Add tomato puree and simmer for 10 minutes, stirring occasionally. Blend the sauce (optional for a smooth texture). Stir in heavy cream, sugar (if using), and remaining 2 tablespoons butter. Simmer for 5 minutes. Add the chicken and cook for another 5 minutes.", "4. Serve Garnish with fresh cilantro. Serve hot with naan or basmati rice."],
  done: true,
  world: world6
)

Ingredient.create!(
  name: "Boneless Chicken Thighs or Breasts",
  quantity: "700g",
  task: task29
)

Ingredient.create!(
  name: "Plain Yogurt",
  quantity: "1/2 cup",
  task: task29
)

Ingredient.create!(
  name: "Lemon Juice",
  quantity: "1 tbpn",
  task: task29
)

Ingredient.create!(
  name: "Salt",
  quantity: "1 tbpn",
  task: task29
)

Ingredient.create!(
  name: "Garam Masala",
  quantity: "1 tbpn",
  task: task29
)

Ingredient.create!(
  name: "Turmeric",
  quantity: "1 tbpn",
  task: task29
)

Ingredient.create!(
  name: "Cumin",
  quantity: "1 tbpn",
  task: task29
)

Ingredient.create!(
  name: "Chili Powder",
  quantity: "1 tbpn",
  task: task29
)

Ingredient.create!(
  name: "Garlic Paste",
  quantity: "1 tbpn",
  task: task29
)

Ingredient.create!(
  name: "Ginger Paste",
  quantity: "1 tbpn",
  task: task29
)

Ingredient.create!(
  name: "Butter",
  quantity: "2 tbps",
  task: task29
)

Ingredient.create!(
  name: "Oil",
  quantity: "1 tbpn",
  task: task29
)

Ingredient.create!(
  name: "Garlic",
  quantity: "3 cloves",
  task: task29
)

Ingredient.create!(
  name: "Ginger Paste",
  quantity: "1 tbpn",
  task: task29
)

Ingredient.create!(
  name: "Cumin",
  quantity: "1 teaspoon",
  task: task29
)

Ingredient.create!(
  name: "Coriander Powder",
  quantity: "1 teaspoon",
  task: task29
)

Ingredient.create!(
  name: "Garam Masala",
  quantity: "1 teaspoon",
  task: task29
)

Ingredient.create!(
  name: "Paprika",
  quantity: "1 teaspoon",
  task: task29
)

Ingredient.create!(
  name: "Chili Powder",
  quantity: "1/2 teaspoon",
  task: task29
)

Ingredient.create!(
  name: "Tomato Puree",
  quantity: "1 1/2 cups",
  task: task29
)

Ingredient.create!(
  name: "Heavy Cream",
  quantity: "1/2 cup",
  task: task29
)

Ingredient.create!(
  name: "Butter",
  quantity: "2 tbps",
  task: task29
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 teaspoon",
  task: task29
)

Ingredient.create!(
  name: "Fresh Cilantro",
  quantity: "2 tbps",
  task: task29
)

Ingredient.create!(
  name: "Naan or Basmati Rice",
  quantity: "",
  task: task29
)

task30 = Task.create!(
  title: "Pad Thai",
  time: "40 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Rice Noodles Soak the rice noodles in warm water for 30 minutes, or until soft but slightly firm. Drain and set aside.", "2. Make the Sauce In a bowl, mix fish sauce, tamarind paste, sugar, soy sauce, and chili flakes. Stir well and set aside.", "3. Stir-Fry the Pad Thai Heat vegetable oil in a wok or large pan over medium heat. Add garlic and shallots, stir-frying until fragrant (about 30 seconds). Add shrimp or chicken and cook until done (about 2-3 minutes). Push everything to one side of the pan and pour in the beaten eggs. Scramble until just set. Add the drained noodles and pour in the sauce. Toss to coat evenly. Stir in bean sprouts and green onions, cooking for another 1-2 minutes.", "4. Serve Divide into plates and sprinkle with crushed peanuts. Serve with lime wedges and extra chili flakes."],
  done: true,
  world: world6
)

Ingredient.create!(
  name: "Fish Sauce",
  quantity: "3 tbps",
  task: task30
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 tbpn",
  task: task30
)

Ingredient.create!(
  name: "Soy Sauce",
  quantity: "1 tbpn",
  task: task30
)

Ingredient.create!(
  name: "Rice Noodles",
  quantity: "200g",
  task: task30
)

Ingredient.create!(
  name: "Vegetable Oil",
  quantity: "2 tbps",
  task: task30
)

Ingredient.create!(
  name: "Garlic",
  quantity: "2 cloves",
  task: task30
)

Ingredient.create!(
  name: "Shallot",
  quantity: "1",
  task: task30
)

Ingredient.create!(
  name: "Shrimp or Chicken",
  quantity: "225g",
  task: task30
)

Ingredient.create!(
  name: "Eggs",
  quantity: "2",
  task: task30
)

Ingredient.create!(
  name: "Bean Sprouts",
  quantity: "1 cup",
  task: task30
)

Ingredient.create!(
  name: "Green Onions",
  quantity: "2",
  task: task30
)

Ingredient.create!(
  name: "Crushed Peanuts",
  quantity: "1/4 cup",
  task: task30
)

Ingredient.create!(
  name: "Lime",
  quantity: "1",
  task: task30
)

Ingredient.create!(
  name: "Fresh cilantro",
  quantity: "",
  task: task30
)

task31 = Task.create!(
  title: "Brigadeiro",
  time: "20 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Make the Brigadeiro Mixture In a non-stick saucepan, combine the sweetened condensed milk, cocoa powder, butter, and a pinch of salt. Cook over medium-low heat, stirring constantly to prevent burning. Continue cooking and stirring for about 10-15 minutes, until the mixture thickens and begins to pull away from the sides of the pan. You should be able to see the bottom of the pan when you stir.", "2. Form the Brigadeiros Once the mixture reaches the right consistency, remove from heat and let it cool for a few minutes. Butter your hands lightly to prevent sticking, then take small portions of the mixture (about a teaspoon) and roll them into balls. Roll each ball in chocolate sprinkles to coat evenly.", "3. Let Set and Serve Place the brigadeiros on a plate lined with wax paper and let them set at room temperature for about 30 minutes before serving."],
  done: true,
  world: world7
)

Ingredient.create!(
  name: "Sweetened Condensed Milk",
  quantity: "1 can",
  task: task31
)

Ingredient.create!(
  name: "Cocoa Powder",
  quantity: "2 tbps",
  task: task31
)

Ingredient.create!(
  name: "Butter",
  quantity: "2 tbps",
  task: task31
)

Ingredient.create!(
  name: "Chocolate Sprinkles",
  quantity: "",
  task: task31
)

task32 = Task.create!(
  title: "Beijinho",
  time: "20 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Make the Beijinho Mixture In a non-stick saucepan, combine the sweetened condensed milk, butter, and desiccated coconut. Cook over medium-low heat, stirring constantly to prevent burning. Continue cooking for about 10-15 minutes, until the mixture thickens and starts to pull away from the sides of the pan. You should be able to see the bottom of the pan when you stir.", "2. Form the Beijinhos Once the mixture reaches the right consistency, remove it from the heat and let it cool for a few minutes. Lightly butter your hands to prevent sticking. Take small portions of the mixture (about a teaspoon) and roll them into balls. Roll each ball in desiccated coconut to coat evenly.", "3. Garnish and Serve For an authentic touch, you can place a clove in the center of each beijinho as a garnish. Place the beijinhos on a plate lined with wax paper and let them set at room temperature for about 30 minutes before serving."],
  done: true,
  world: world7
)

Ingredient.create!(
  name: "Sweetened Condensed Milk",
  quantity: "1 can",
  task: task32
)

Ingredient.create!(
  name: "Butter",
  quantity: "2 tbps",
  task: task32
)

Ingredient.create!(
  name: "Desiccated Coconut",
  quantity: "1 cup",
  task: task32
)

Ingredient.create!(
  name: "Vanilla Extract",
  quantity: "1 teaspoon",
  task: task32
)

Ingredient.create!(
  name: "Extra Desiccated Coconut",
  quantity: "",
  task: task32
)

Ingredient.create!(
  name: "Clove",
  quantity: "",
  task: task32
)

task33 = Task.create!(
  title: "Pudim",
  time: "5 hours",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Make the Caramel Sauce In a saucepan over medium heat, melt the sugar until it turns golden brown. Carefully add the water (it may bubble), and stir to combine until smooth. Pour the caramel into the bottom of a round baking dish or pudim mold, swirling to coat the bottom evenly. Set aside to cool.", "2. Prepare the Pudim Mixture In a blender, combine the sweetened condensed milk, whole milk, eggs, vanilla, and a pinch of salt. Blend for about 1 minute until smooth. Pour the mixture over the cooled caramel in the baking dish.", "3. Bake the Pudim Preheat the oven to 350°F (175°C). Create a bain-marie (water bath) by placing the baking dish in a larger pan filled with hot water (about halfway up the sides of the dish). Bake for 50-60 minutes, or until the pudim is set (you can test by inserting a knife; it should come out clean).", "4. Cool and Serve Let the pudim cool to room temperature, then refrigerate for at least 4 hours or overnight. To serve, run a knife around the edges of the pudim, then invert onto a plate. The caramel will flow over the top, creating a beautiful sauce."],
  done: true,
  world: world7
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 cup",
  task: task33
)

Ingredient.create!(
  name: "Water",
  quantity: "1/4 cup",
  task: task33
)

Ingredient.create!(
  name: "Sweetened Condensed Milk",
  quantity: "1 can",
  task: task33
)

Ingredient.create!(
  name: "Whole Milk",
  quantity: "2 cups",
  task: task33
)

Ingredient.create!(
  name: "Eggs",
  quantity: "3",
  task: task33
)

Ingredient.create!(
  name: "Vanilla Extract",
  quantity: "1 tbpn",
  task: task33
)

task34 = Task.create!(
  title: "Cocada",
  time: "50 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Cook the Cocada In a saucepan, combine the sweetened condensed milk, sugar, butter, and pinch of salt. Cook over medium heat, stirring constantly to prevent burning. Once the sugar has dissolved, add the coconut and stir well. Continue cooking for about 10-15 minutes, until the mixture thickens and starts to pull away from the sides of the pan.", "2. Shape the Cocada Remove from heat and stir in the vanilla extract. Grease a small baking dish or line it with parchment paper. Pour the mixture into the dish and press it down evenly with a spatula. Allow it to cool for about 30 minutes at room temperature.", "3. Cut and Serve Once it has cooled and set, cut it into squares or rectangles. Serve and enjoy your delicious, homemade cocada!"],
  done: true,
  world: world7
)

Ingredient.create!(
  name: "Desiccated Coconut",
  quantity: "2 cups",
  task: task34
)

Ingredient.create!(
  name: "Sweetened condensed milk",
  quantity: "2 cups",
  task: task34
)

Ingredient.create!(
  name: "Butter",
  quantity: "2 tbps",
  task: task34
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 cup",
  task: task34
)

Ingredient.create!(
  name: "Vanilla Extract",
  quantity: "1 teaspoon",
  task: task34
)

task35 = Task.create!(
  title: "Quindim",
  time: "3 hours",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Caramel In a small saucepan, melt the sugar over medium heat until it turns golden brown. Carefully add the water (it may bubble), stirring to form a smooth caramel. Immediately pour the caramel into the bottom of individual ramekins or a flan mold, swirling to coat the bottom evenly. Set aside to cool.", "2. Make the Custard Preheat the oven to 350°F (175°C). In a bowl, whisk together the egg yolks, sweetened condensed milk, coconut milk, melted butter, and a pinch of salt until smooth. Stir in the desiccated coconut and vanilla extract.", "3. Bake the Quindim Pour the custard mixture into the prepared ramekins or mold over the caramel. Place the ramekins in a bain-marie (water bath): put the ramekins into a larger pan and fill the pan with hot water until it reaches halfway up the sides of the ramekins. Bake for 40-50 minutes or until a knife inserted into the custard comes out clean.", "4. Cool and Serve Remove from the oven and let the quindim cool to room temperature. Refrigerate for at least 2 hours or overnight for the best texture. To serve, run a knife around the edges of the quindim and invert it onto a plate. The caramel should flow over the top."],
  done: true,
  world: world7
)

Ingredient.create!(
  name: "Egg Yolks",
  quantity: "6",
  task: task35
)

Ingredient.create!(
  name: "Sweetened Condensed Milk",
  quantity: "1 can",
  task: task35
)

Ingredient.create!(
  name: "Coconut Milk",
  quantity: "1 cup",
  task: task35
)

Ingredient.create!(
  name: "Desiccated Coconut",
  quantity: "1 cup",
  task: task35
)

Ingredient.create!(
  name: "Butter",
  quantity: "1 tbpn",
  task: task35
)

Ingredient.create!(
  name: "Vanilla Extract",
  quantity: "1 teaspoon",
  task: task35
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 cup",
  task: task35
)

Ingredient.create!(
  name: "Water",
  quantity: "1/4 cup",
  task: task35
)

task36 = Task.create!(
  title: "Apple Pie",
  time: "2 hours",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Make the Pie Crust: In a large bowl, mix the flour, sugar, and salt. Add the cold butter and use a pastry cutter or your fingers to mix until the mixture looks like coarse crumbs. Slowly add ice water, one tablespoon at a time, and mix until the dough begins to come together. Turn the dough out onto a floured surface, divide it in half, and shape each half into a disk. Wrap the disks in plastic wrap and refrigerate for at least 30 minutes.", "2. Prepare the Filling: In a large bowl, toss the apple slices with sugar, brown sugar, flour, cinnamon, nutmeg, and lemon juice until the apples are evenly coated. Set aside.", "3. Assemble the Pie: Preheat the oven to 425°F (220°C). Roll out one of the dough disks on a floured surface into a circle large enough to fit into a 9-inch pie pan. Place the rolled dough into the pie pan and trim any excess. Pour the apple filling into the crust and dot with the butter pieces. Roll out the second dough disk and place it over the apples. Trim any excess dough and pinch the edges to seal. Cut a few slits in the top of the pie to allow steam to escape. Optional: Brush the top of the pie with a little milk or egg wash (1 egg beaten with 1 tablespoon water) for a golden finish.", "4. Bake the Pie: Bake the pie in the preheated oven for 45-50 minutes, or until the crust is golden brown and the filling is bubbling. If the edges of the crust brown too quickly, cover them with foil or a pie shield.", "5. Cool and Serve: Allow the pie to cool for at least 2 hours to set before slicing. Serve with whipped cream or vanilla ice cream if desired."],
  done: true,
  world: world8
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "2 1/2 cups",
  task: task36
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 tbpn",
  task: task36
)

Ingredient.create!(
  name: "Salt",
  quantity: "1 teaspoon",
  task: task36
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "1 cup",
  task: task36
)

Ingredient.create!(
  name: "Ice Water",
  quantity: "6-8 tpbs",
  task: task36
)

Ingredient.create!(
  name: "Apples",
  quantity: "6 cups",
  task: task36
)

Ingredient.create!(
  name: "Sugar",
  quantity: "3/4 cup",
  task: task36
)

Ingredient.create!(
  name: "Brown Sugar",
  quantity: "1/4 cup",
  task: task36
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "2 tbps",
  task: task36
)

Ingredient.create!(
  name: "Ground Cinnamon",
  quantity: "1 teaspoon",
  task: task36
)

Ingredient.create!(
  name: "Ground Nutmeg",
  quantity: "1/2 teaspoon",
  task: task36
)

Ingredient.create!(
  name: "Lemon Juice",
  quantity: "1 tbps",
  task: task36
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "1 tbps",
  task: task36
)

task37 = Task.create!(
  title: "Pecan Pie",
  time: "2 hours",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Make the Pie Crust: In a large bowl, mix the flour, sugar, and salt. Add the cold butter and use a pastry cutter or your fingers to mix until the mixture looks like coarse crumbs. Gradually add ice water, one tablespoon at a time, mixing gently until the dough comes together. Turn the dough out onto a floured surface and shape it into a disk. Wrap the dough in plastic wrap and refrigerate for at least 30 minutes. Once chilled, roll the dough out on a floured surface to fit a 9-inch pie pan. Trim the edges and press the dough into the pan.", "2. Prepare the Filling: Preheat the oven to 350°F (175°C). In a large bowl, whisk together the corn syrup, brown sugar, eggs, melted butter, and vanilla extract until smooth. Stir in a pinch of salt and the pecans.", "3. Assemble the Pie: Pour the pecan mixture into the prepared pie crust. Spread the pecans out evenly over the top.", "4. Bake the Pie: Bake the pie in the preheated oven for 55-60 minutes or until the filling is set and the crust is golden. You can cover the edges of the crust with foil if they brown too quickly. The filling should be firm to the touch, and you may see a slight jiggle in the center when done.", "5. Cool and Serve: Let the pie cool completely on a wire rack before serving, about 2 hours. Serve on its own or with whipped cream or vanilla ice cream. "],
  done: true,
  world: world8
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "2 1/4 cups",
  task: task37
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 tbpn",
  task: task37
)

Ingredient.create!(
  name: "Salt",
  quantity: "1/2 teaspoon",
  task: task37
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "1/2 cup",
  task: task37
)

Ingredient.create!(
  name: "Ice Water",
  quantity: "4-5 tbps",
  task: task37
)

Ingredient.create!(
  name: "Light Corn Syrup",
  quantity: "1 cup",
  task: task37
)

Ingredient.create!(
  name: "Brown Sugar",
  quantity: "1 cup",
  task: task37
)

Ingredient.create!(
  name: "Eggs",
  quantity: "4",
  task: task37
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "2 tbps",
  task: task37
)

Ingredient.create!(
  name: "Vanilla Extract",
  quantity: "1 teaspoon",
  task: task37
)

Ingredient.create!(
  name: "Pecan Halves",
  quantity: "1 1/2 cups",
  task: task37
)

task38 = Task.create!(
  title: "Butter Tarts",
  time: "1 hour 30 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Make the Pie Crust: In a large bowl, mix the flour, sugar, and salt. Add the cold butter and use a pastry cutter or your fingers to mix until the mixture looks like coarse crumbs. Gradually add ice water, one tablespoon at a time, mixing gently until the dough comes together. Turn the dough out onto a floured surface and shape it into a disk. Wrap the dough in plastic wrap and refrigerate for at least 30 minutes. Once chilled, roll the dough out on a floured surface to fit a 9-inch pie pan. Trim the edges and press the dough into the pan.", "2. Prepare the Filling: Preheat the oven to 350°F (175°C). In a large bowl, whisk together the corn syrup, brown sugar, eggs, melted butter, and vanilla extract until smooth. Stir in a pinch of salt and the pecans.", "3. Assemble the Pie: Pour the pecan mixture into the prepared pie crust. Spread the pecans out evenly over the top.", "4. Bake the Pie: Bake the pie in the preheated oven for 55-60 minutes or until the filling is set and the crust is golden. You can cover the edges of the crust with foil if they brown too quickly. The filling should be firm to the touch, and you may see a slight jiggle in the center when done.", "5. Cool and Serve: Let the pie cool completely on a wire rack before serving, about 2 hours. Serve on its own or with whipped cream or vanilla ice cream. "],
  done: true,
  world: world8
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "1 1/4 cups",
  task: task38
)

Ingredient.create!(
  name: "Salt",
  quantity: "1/4 teaspoon",
  task: task38
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "1/2 cup",
  task: task38
)

Ingredient.create!(
  name: "Ice Water",
  quantity: "3-4 tbps",
  task: task38
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "1/2 cup",
  task: task38
)

Ingredient.create!(
  name: "Brown Sugar",
  quantity: "3/4 cup",
  task: task38
)

Ingredient.create!(
  name: "White Sugar",
  quantity: "2 tbps",
  task: task38
)

Ingredient.create!(
  name: "Eggs",
  quantity: "2",
  task: task38
)

Ingredient.create!(
  name: "Vanilla Extract",
  quantity: "1 tbpn",
  task: task38
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "2 tbps",
  task: task38
)

Ingredient.create!(
  name: "Pecans",
  quantity: "1/2 cup",
  task: task38
)

Ingredient.create!(
  name: "Raisins",
  quantity: "1/2 cup",
  task: task38
)

task39 = Task.create!(
  title: "Pumpkin Pie",
  time: "2 hours 30 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Make the Pie Crust: In a large bowl, combine the flour, sugar, and salt. Add the cold butter and use a pastry cutter or your fingers to cut the butter into the flour until the mixture resembles coarse crumbs. Gradually add ice water, one tablespoon at a time, mixing gently until the dough comes together. Turn the dough out onto a floured surface and shape it into a disk. Wrap the dough in plastic wrap and refrigerate for at least 30 minutes to chill. Once chilled, roll out the dough on a floured surface to fit a 9-inch pie pan. Trim the edges and press the dough into the pan.", "2. Prepare the Filling: Preheat the oven to 425°F (220°C). In a large mixing bowl, whisk together the pumpkin puree, brown sugar, cinnamon, ginger, nutmeg, cloves, and salt until well combined. Beat in the eggs, followed by the heavy cream, milk, and vanilla extract until the mixture is smooth.", "3. Assemble the Pie: Pour the pumpkin filling into the prepared pie crust. Bake the pie at 425°F (220°C) for 15 minutes. After 15 minutes, reduce the temperature to 350°F (175°C) and continue baking for an additional 40-50 minutes, or until the filling is set (it should be slightly firm and a knife inserted into the center should come out clean).",  "4. Cool and Serve: Allow the pie to cool completely on a wire rack before slicing, about 2 hours. Serve with whipped cream or vanilla ice cream if desired."],
  done: true,
  world: world8
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "1 1/4 cups",
  task: task39
)

Ingredient.create!(
  name: "Sugar",
  quantity: "1 tbpn",
  task: task39
)

Ingredient.create!(
  name: "Salt",
  quantity: "1 teaspoon",
  task: task39
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "1/2 cup",
  task: task39
)

Ingredient.create!(
  name: "Ice Water",
  quantity: "4-5 tbpn",
  task: task39
)

Ingredient.create!(
  name: "Pure Pumpkin Puree",
  quantity: "1 can",
  task: task39
)

Ingredient.create!(
  name: "Brown Sugar",
  quantity: "3/4 cup",
  task: task39
)

Ingredient.create!(
  name: "Ground Cinnamon",
  quantity: "1 teaspoon",
  task: task39
)

Ingredient.create!(
  name: "Ground Ginger",
  quantity: "1/2 teaspoon",
  task: task39
)

Ingredient.create!(
  name: "Ground Nutmeg",
  quantity: "1/4 teaspoon",
  task: task39
)

Ingredient.create!(
  name: "Ground Cloves",
  quantity: "1/4 teaspoon",
  task: task39
)

Ingredient.create!(
  name: "Eggs",
  quantity: "2",
  task: task39
)

Ingredient.create!(
  name: "Heavy Cream",
  quantity: "1 cup",
  task: task39
)

Ingredient.create!(
  name: "Vanilla Extract",
  quantity: "1/2 cup",
  task: task39
)

task40 = Task.create!(
  title: "S'mores",
  time: "10 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Roast the Marshmallows: Over a campfire or on a grill, roast the marshmallows until golden brown and slightly crispy on the outside, and melty on the inside (about 1-2 minutes). If you're using an oven, you can place them on a baking sheet and broil for a couple of minutes, keeping a close eye on them to avoid burning.", "2. Assemble the S'mores: Break the graham crackers into two pieces to make 8 squares. Place one square of chocolate on top of each graham cracker. Once the marshmallows are roasted, carefully place one roasted marshmallow on top of the chocolate. Top with another graham cracker to form a sandwich.", "3. Serve and Enjoy: Press the s'more together gently so the chocolate begins to melt, and enjoy the warm, gooey treat!"],
  done: true,
  world: world8
)

Ingredient.create!(
  name: "Graham Cracker Squares",
  quantity: "16",
  task: task40
)

Ingredient.create!(
  name: "Marshmallows",
  quantity: "8",
  task: task40
)

Ingredient.create!(
  name: "Squares of Milk Chocolate",
  quantity: "8",
  task: task40
)

task41 = Task.create!(
  title: "Tiramisu",
  time: "4-5 hours",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Cream Mixture: In a heatproof bowl, whisk together the egg yolks and sugar over a double boiler, or in a heatproof bowl set over simmering water. Whisk constantly until the mixture becomes thick and pale (about 5 minutes). Remove from heat and let it cool slightly. In a separate bowl, beat the mascarpone cheese until smooth and creamy. In another bowl, whip the heavy cream and vanilla extract until stiff peaks form. Gently fold the mascarpone cheese into the egg mixture until smooth, then fold in the whipped cream until fully combined. Set aside.", "2. Assemble the Tiramisu: In a shallow dish, combine the coffee and rum (if using). Quickly dip each ladyfinger into the coffee mixture (do not soak them; just dip quickly to avoid them becoming soggy). Lay the dipped ladyfingers in a single layer at the bottom of a 9x9-inch or 9x13-inch dish. Spread half of the mascarpone cream mixture over the layer of ladyfingers. Repeat the process with another layer of dipped ladyfingers and top with the remaining cream mixture.", "3. Chill and Serve: Cover the tiramisu with plastic wrap and refrigerate for at least 4 hours, preferably overnight, to allow the flavors to meld and the dessert to set. Before serving, dust the top of the tiramisu with cocoa powder using a fine mesh sieve."],
  done: true,
  world: world9
)

Ingredient.create!(
  name: "Egg Yolks",
  quantity: "3",
  task: task41
)

Ingredient.create!(
  name: "Granulated Sugar",
  quantity: "1/2 cup",
  task: task41
)

Ingredient.create!(
  name: "Mascarpone Cheese",
  quantity: "1 cup",
  task: task41
)

Ingredient.create!(
  name: "Heavy Cream",
  quantity: "1 cup",
  task: task41
)

Ingredient.create!(
  name: "Vanilla Extract",
  quantity: "1 teaspoon",
  task: task41
)

Ingredient.create!(
  name: "Strong Brewed Coffee",
  quantity: "2 cups",
  task: task41
)

Ingredient.create!(
  name: "Dark Rum",
  quantity: "1 tbpn",
  task: task41
)

Ingredient.create!(
  name: "Ladyfinger Cookies",
  quantity: "24-30",
  task: task41
)

Ingredient.create!(
  name: "Cocoa Powder",
  quantity: "",
  task: task41
)

task42 = Task.create!(
  title: "Croissant",
  time: "4-5 hours",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Dough: In a small bowl, combine the warm milk and sugar. Sprinkle the yeast over the milk and let it sit for 5-10 minutes to activate. In a large bowl, mix the flour and salt. Create a well in the center. Add the yeast mixture and cold water to the flour mixture. Stir until combined, then knead until you get a smooth dough. This should take about 5-7 minutes. Form the dough into a ball, cover with a damp cloth or plastic wrap, and let it rise in a warm place for 1-2 hours, or until it doubles in size.", "2. Prepare the Butter Layer: Lay a sheet of parchment paper on your counter. Place the cold butter slabs on the parchment paper and cover with another sheet of parchment paper. Use a rolling pin to flatten the butter into a 1-inch thick rectangle. Try to keep the butter as cold as possible, so it doesn’t melt. Once it's shaped, chill it in the refrigerator for about 15 minutes.", "3. Laminate the Dough: After the dough has risen, roll it out on a floured surface into a large rectangle, about 16 inches by 10 inches. Place the chilled butter layer on the bottom two-thirds of the dough. Fold the remaining dough over the butter like a letter (one-third at a time), creating a 'book fold.' Roll the dough out again into a rectangle, then fold again into a letter. This creates the layers for the croissants. Wrap the dough in plastic wrap and refrigerate for 30 minutes to relax.", "4. Roll and Shape the Croissants: After the dough has rested, roll it out one last time into a large rectangle about 18 inches by 8 inches. Cut the dough into triangles (about 4 inches wide at the base and 8 inches long). Starting from the wide end of each triangle, gently roll the dough into a croissant shape. Place the croissants on a lined baking sheet, making sure they don’t touch each other. Tuck the tips of the triangles underneath the croissants to help them hold their shape.", "5. Proof the Croissants: Cover the croissants loosely with plastic wrap or a damp cloth, and let them rise in a warm place for about 1-2 hours, or until they’ve doubled in size.", "6. Bake the Croissants: Preheat the oven to 400°F (200°C). Beat the egg and brush it over the croissants to give them a golden, shiny finish. Bake the croissants for 15-20 minutes, or until they’re golden brown and crispy on the outside.", "7. Cool and Serve: Allow the croissants to cool slightly before serving. They are best served fresh but can be stored in an airtight container for a couple of days."],
  done: true,
  world: world9
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "4 cups",
  task: task42
)

Ingredient.create!(
  name: "Whole Milk",
  quantity: "1/2 cup",
  task: task42
)

Ingredient.create!(
  name: "Granulated Sugar",
  quantity: "1/4 cup",
  task: task42
)

Ingredient.create!(
  name: "Salt",
  quantity: "2 teaspoons",
  task: task42
)

Ingredient.create!(
  name: "Active Dry Yeast",
  quantity: "2 teaspoons",
  task: task42
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "1 1/2 cups",
  task: task42
)

Ingredient.create!(
  name: "Egg",
  quantity: "1",
  task: task42
)

Ingredient.create!(
  name: "Cold Water",
  quantity: "1 cup",
  task: task42
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "1 1/2 cups",
  task: task42
)

task43 = Task.create!(
  title: "Sachertorte",
  time: "2 hours 30 minutes",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Cake: Preheat your oven to 350°F (175°C). Grease and line the bottom of an 8-inch round cake pan with parchment paper. In a heatproof bowl, melt the chocolate over a pot of simmering water (double boiler method). Stir until smooth, then set aside to cool slightly. In a large bowl, beat the butter and sugar until light and fluffy, about 5-7 minutes. Add the egg yolks one at a time, mixing well after each addition. Stir in the vanilla extract and the melted chocolate. In a separate bowl, whisk the egg whites and salt until stiff peaks form. Gently fold the egg whites into the chocolate mixture in three additions. Sift the flour over the batter and gently fold it in until just combined. Pour the batter into the prepared cake pan and smooth the top. Bake in the preheated oven for about 40-45 minutes, or until a toothpick inserted into the center comes out clean. Let the cake cool in the pan for about 10 minutes, then transfer it to a wire rack to cool completely.", "2. Prepare the Apricot Filling: Once the cake has cooled, cut it in half horizontally with a serrated knife. Warm the apricot jam slightly in a small saucepan or microwave and strain it to remove any solids. Spread a thin layer of apricot jam evenly over the bottom half of the cake. Place the top half back on top.", "3. Prepare the Chocolate Glaze: In a heatproof bowl, combine the chocolate and heavy cream. Place the bowl over a pot of simmering water, stirring until the chocolate is fully melted and smooth. Remove the bowl from the heat and stir in the butter until fully incorporated.", "4. Assemble the Sachertorte: Place the cooled cake on a wire rack or a plate. Pour the chocolate glaze over the cake, starting from the center and spreading it evenly over the top and sides. Use a spatula to smooth the glaze and ensure it covers the entire cake. Allow the cake to set for about 30 minutes, or until the glaze has hardened.", "5. Serve: Once the glaze has set, slice the cake into wedges and serve with a dollop of whipped cream, if desired."],
  done: true,
  world: world9
)

Ingredient.create!(
  name: "Dark Chocolate",
  quantity: "200g",
  task: task43
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "170g",
  task: task43
)

Ingredient.create!(
  name: "Granulated Sugar",
  quantity: "200g",
  task: task43
)

Ingredient.create!(
  name: "Eggs",
  quantity: "6",
  task: task43
)

Ingredient.create!(
  name: "Vanilla Extract",
  quantity: "1 teaspoon",
  task: task43
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "150g",
  task: task43
)

Ingredient.create!(
  name: "Salt",
  quantity: "1/4 teaspoon",
  task: task43
)

Ingredient.create!(
  name: "Apricot Jam",
  quantity: "120g",
  task: task43
)

Ingredient.create!(
  name: "Dark Chocolate",
  quantity: "115g",
  task: task43
)

Ingredient.create!(
  name: "Heavy Cream",
  quantity: "120ml",
  task: task43
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "2 tbps",
  task: task43
)

task44 = Task.create!(
  title: "Baklava",
  time: "3 hours",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Prepare the Nut Filling: In a large bowl, combine the chopped nuts and ground cinnamon. Set aside.", "2. Assemble the Baklava: Preheat your oven to 350°F (175°C). Brush the bottom of a 9x13-inch baking dish with some of the melted butter. Place one sheet of phyllo dough into the pan and brush it lightly with melted butter. Repeat this process, layering and buttering each sheet, until you have about 8-10 layers. Sprinkle a thin layer of the nut mixture over the phyllo dough. Layer another 5-6 sheets of phyllo dough, brushing each with butter. Sprinkle another layer of nuts on top. Repeat this process (phyllo, butter, nuts) until all of the nuts are used up. Finish with 8-10 more layers of phyllo dough on top. Using a sharp knife, cut the baklava into squares or diamond shapes.", "3. Bake the Baklava: Bake the assembled baklava in the preheated oven for 40-45 minutes, or until the pastry is golden brown and crispy.", "4. Prepare the Honey Syrup: While the baklava is baking, prepare the honey syrup. In a small saucepan, combine the honey, water, lemon juice, and optional cinnamon stick and cloves. Bring to a simmer over medium heat. Once it begins to simmer, lower the heat and cook for 10 minutes, allowing it to thicken slightly. Remove from heat and let it cool.", "5. Assemble the Baklava: Once the baklava is finished baking, remove it from the oven and immediately pour the cooled honey syrup evenly over the hot baklava. Make sure to cover every piece. Allow the baklava to cool completely in the pan. The syrup will soak into the layers, making it sticky and sweet.", "6. Serve: Let the baklava sit for at least 2 hours, but preferably overnight, so the syrup can fully soak into the pastry. Once cooled, cut through the pre-marked lines to serve. Enjoy!"],
  done: true,
  world: world9
)

Ingredient.create!(
  name: "Phyllo Dough",
  quantity: "1 package",
  task: task44
)

Ingredient.create!(
  name: "Mixed Nut",
  quantity: "2 cups",
  task: task44
)

Ingredient.create!(
  name: "Ground Cinnamon",
  quantity: "1 teaspoon",
  task: task44
)

Ingredient.create!(
  name: "Unsalted Butter",
  quantity: "1 cup",
  task: task44
)

Ingredient.create!(
  name: "Granulated Sugar",
  quantity: "1 cup",
  task: task44
)

Ingredient.create!(
  name: "Honey",
  quantity: "1 cup",
  task: task44
)

Ingredient.create!(
  name: "Water",
  quantity: "1/2 cup",
  task: task44
)

Ingredient.create!(
  name: "Lemon juice",
  quantity: "1 teaspoon",
  task: task44
)

Ingredient.create!(
  name: "Cinnamon Stick",
  quantity: "1",
  task: task44
)

Ingredient.create!(
  name: "Whole Cloves",
  quantity: "2-3",
  task: task44
)

task45 = Task.create!(
  title: "Pastel de Nata",
  time: "1 hour",
  image_url: "https://res.cloudinary.com/dnnzp5urk/image/upload/v1742843803/default_jwut2j.jpg",
  steps: ["1. Make the Custard Filling: In a medium saucepan, combine the heavy cream, whole milk, cinnamon stick, and lemon peel (if using). Heat the mixture over medium heat until it just begins to simmer, but do not let it boil. Once it starts simmering, remove from heat and set aside to cool slightly. In a separate bowl, whisk the sugar, egg yolks, flour, and vanilla extract together until smooth and creamy. Gradually add the warm cream mixture to the egg mixture, whisking constantly to prevent the eggs from scrambling. Pour the custard mixture back into the saucepan and cook over low heat, stirring constantly, for about 5 minutes or until it thickens slightly. Once thickened, strain the custard through a fine-mesh sieve to remove the cinnamon stick and lemon peel, if used. Set aside to cool to room temperature.", "2. Prepare the Pastry: Preheat your oven to 475°F (245°C). Grease a 12-cup muffin tin or tart pan. Roll out the puff pastry on a lightly floured surface. Using a round cutter or a glass, cut out circles that are slightly larger than the tart cups (about 3 inches in diameter). Press each pastry circle into the muffin tin or tart pan, ensuring that the edges rise up the sides.", "3. Assemble and Bake the Tarts: Once the custard has cooled to room temperature, spoon it into the pastry-lined cups, filling them almost to the top. Place the tin in the preheated oven and bake for 15-20 minutes, or until the custard is set and the pastry is golden and crispy. The top of the custard should also develop small golden spots. If you want a more traditional look, you can broil the tarts for an additional 1-2 minutes to get dark spots on top of the custard (be sure to watch closely to avoid burning).", "4. Serve: Let the tarts cool for a few minutes before removing them from the tin. Serve warm or at room temperature, dusted with a little ground cinnamon or powdered sugar if desired."],
  done: true,
  world: world9
)

Ingredient.create!(
  name: "Heavy Cream",
  quantity: "300 ml",
  task: task45
)

Ingredient.create!(
  name: "Whole Milk",
  quantity: "240 ml",
  task: task45
)

Ingredient.create!(
  name: "Cinnamon Stick",
  quantity: "1",
  task: task45
)

Ingredient.create!(
  name: "Lemon Peel",
  quantity: "1 strip",
  task: task45
)

Ingredient.create!(
  name: "Granulated Sugar",
  quantity: "200 g",
  task: task45
)

Ingredient.create!(
  name: "Egg Yolks",
  quantity: "6",
  task: task45
)

Ingredient.create!(
  name: "All-purpose Flour",
  quantity: "2 tbps",
  task: task45
)

Ingredient.create!(
  name: "Vanilla Extract",
  quantity: "1 tbpn",
  task: task45
)

Ingredient.create!(
  name: "Puff Pastry",
  quantity: "1 package",
  task: task45
)


# Criando jornadas (journeys)
Journey.create!(
  user: user1,
  path: path1
)

Journey.create!(
  user: user2,
  path: path2
)

# criando trivia
q1 = QuizQuestion.create!(content: 'What is 10/2?')
q1.quiz_answers.create!(content: '5', correct: true)
q1.quiz_answers.create!(content: '2', correct: false)
q1.quiz_answers.create!(content: '8', correct: false)

q2 = QuizQuestion.create!(content: 'What is 30/3?')
q2.quiz_answers.create!(content: '10', correct: true)
q2.quiz_answers.create!(content: '5', correct: false)
q2.quiz_answers.create!(content: '3', correct: false)



# Exibindo informações para confirmar que o seeding foi bem-sucedido
puts "Seed data successfully created!"
