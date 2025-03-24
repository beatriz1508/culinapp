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
# Ingredient.destroy_all
# Journey.destroy_all
# Task.destroy_all
# World.destroy_all
Review.destroy_all
Path.destroy_all
Photo.destroy_all
User.destroy_all


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
  image_path: "badge1.svg",
  icon_path: "world1.svg"
)

world2 = World.create!(
  title: "South America",
  done: true,
  path: path1,
  image_path: "badge2.svg",
  icon_path: "world2.svg"
)

world3 = World.create!(
  title: "North America",
  done: true,
  path: path1,
  image_path: "badge3.svg",
  icon_path: "world3.svg"
)

world4 = World.create!(
  title: "Europe",
  done: false,
  path: path1,
  image_path: "badge4.svg",
  icon_path: "world4.svg"
)

world5 = World.create!(
  title: "Mediterranean",
  done: false,
  path: path1,
  image_path: "badge5.svg",
  icon_path: "world5.svg"
)

world6 = World.create!(
  title: "Asia",
  done: false,
  path: path1,
  image_path: "badge6.svg",
  icon_path: "world6.svg"
)

world7 = World.create!(
  title: "Brazil",
  done: true,
  path: path2,
  image_path: "badge7.svg",
  icon_path: "world7.svg"
)

world8 = World.create!(
  title: "North America",
  done: true,
  path: path2,
  image_path: "badge8.svg",
  icon_path: "world8.svg"
)

world9 = World.create!(
  title: "Europe",
  done: true,
  path: path2,
  image_path: "badge9.svg",
  icon_path: "world9.svg"
)

# Criando tarefas (tasks) associadas a mundos
task1 = Task.create!(
  title: "Pinhão",
  time: "30 minutes",
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  title: "Bode Gizado",
  time: "2 Hours",
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
  image_url: "https://pbs.twimg.com/media/BxddNMZCcAAp7FK?format=jpg&name=small",
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
