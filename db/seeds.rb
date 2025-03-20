# Clear existing data
Review.destroy_all
Journey.destroy_all
Profile.destroy_all
Task.destroy_all
World.destroy_all
Path.destroy_all
User.destroy_all

# Creating Users and Profiles
user1 = User.create!(
  email: "user1@example.com",
  password: "password123",
  password_confirmation: "password123"
)
Profile.create!(user: user1)

user2 = User.create!(
  email: "user2@example.com",
  password: "password123",
  password_confirmation: "password123"
)
Profile.create!(user: user2)

# Creating Paths
path1 = Path.create!(
  title: "Journey to the Unknown",
  description: "A thrilling adventure full of surprises."
)

path2 = Path.create!(
  title: "The Culinary Quest",
  description: "A journey to explore the world of culinary delights."
)

# Creating Worlds
world1 = World.create!(title: "Café da Manhã", done: true, path: path1)
world2 = World.create!(title: "Almoço", done: true, path: path1)
world3 = World.create!(title: "Jantar", done: true, path: path1)
world4 = World.create!(title: "Lanche", done: false, path: path1)
world5 = World.create!(title: "Sobremesas", done: false, path: path1)

world6 = World.create!(title: "Café da Manhã", done: false, path: path2)
world7 = World.create!(title: "Almoço", done: false, path: path2)
world8 = World.create!(title: "Jantar", done: true, path: path2)
world9 = World.create!(title: "Lanche", done: true, path: path2)
world10 = World.create!(title: "Sobremesas", done: true, path: path2)

# Creating Tasks
tasks = [
  {
    title: "Panquecas Americanas Fofinhas",
    done: true, world: world1
  },
  {
    title: "Omelete de Queijo e Presunto",
    done: false, world: world1
  },
  {
    title: "Pão de Queijo Caseiro",
    done: false, world: world1
  },
  {
    title: "Vitamina de Banana e Aveia",
    done: false, world: world1
  },
  {
    title: "Crepioca Simples",
    done: false, world: world1
  },
  {
    title: "Panquecas Americanas Fofinhas",
    done: true, world: world2
  },
  {
    title: "Omelete de Queijo e Presunto",
    done: true, world: world2
  }
]

created_tasks = tasks.map do |task_data|
  Task.create!(
    title: task_data[:title],
    done: task_data[:done],
    world: task_data[:world],
    image_url: "https://via.placeholder.com/150",
    steps: ["Step 1", "Step 2", "Step 3"]
  )
end

# Creating Reviews (User completed tasks)
Review.create!(user: user1, task: created_tasks[0]) # user1 completed task1
Review.create!(user: user1, task: created_tasks[1]) # user1 completed task2
Review.create!(user: user1, task: created_tasks[2]) # user1 completed task3

Review.create!(user: user2, task: created_tasks[0]) # user2 completed task1
Review.create!(user: user2, task: created_tasks[4]) # user2 completed task5

# Creating Ingredients for tasks (simplified)
created_tasks.each do |task|
  Ingredient.create!(name: "Farinha de trigo", quantity: "1 xícara", task: task)
  Ingredient.create!(name: "Ovos", quantity: "2 unidades", task: task)
end

# Creating Journeys
Journey.create!(user: user1, path: path1)
Journey.create!(user: user2, path: path2)

# Confirmation output
puts "Seed data successfully created!"
