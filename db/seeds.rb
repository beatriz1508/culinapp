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

# Confirmation output# Criando mundos (worlds)
world1 = World.create!(
  title: "Café da Manhã",
  done: true,
  path: path1,
  image_path: "badge1.svg"
)

world2 = World.create!(
  title: "Almoço",
  done: true,
  path: path1,
  image_path: "badge2.svg"
)

world3 = World.create!(
  title: "Jantar",
  done: true,
  path: path1
)

world4 = World.create!(
  title: "Lanche",
  done: false,
  path: path1
)

world5 = World.create!(
  title: "Sobremesas",
  done: false,
  path: path1
)

world6 = World.create!(
  title: "Café da Manhã",
  done: false,
  path: path2
)

world7 = World.create!(
  title: "Almoço",
  done: false,
  path: path2
)

world8 = World.create!(
  title: "Jantar",
  done: true,
  path: path2
)

world9 = World.create!(
  title: "Lanche",
  done: true,
  path: path2
)

world10 = World.create!(
  title: "Sobremesas",
  done: true,
  path: path2
)

# Criando tarefas (tasks) associadas a mundos
task1 = Task.create!(
  title: "Panquecas Americanas Fofinhas",
  time: "20 minutos",
  image_url: "https://static.itdg.com.br/images/1200-630/ddf2134d5d688cf43a5965c40e0ee905/dicas-para-a-panqueca-americana-bem-fofinha.jpg",
  steps: ["Em uma tigela, misture a farinha, o açúcar, o fermento e o sal.", "Em outra tigela, bata o ovo e adicione o leite, a manteiga derretida e a baunilha.", "Misture os ingredientes líquidos aos secos, mexendo suavemente até obter uma massa homogênea (não precisa bater muito).", "Aqueça uma frigideira antiaderente em fogo médio e unte levemente com manteiga ou óleo.", "Coloque pequenas porções da massa na frigideira e cozinhe até bolhas começarem a aparecer na superfície (cerca de 2 minutos).", "Vire a panqueca e cozinhe o outro lado por mais 1 minuto ou até dourar.", "Repita o processo com o restante da massa."],
  done: true,
  world: world1
)

task2 = Task.create!(
  title: "Omelete de Queijo e Presunto",
  time: "15 minutos",
  image_url: "https://vitat.com.br/receitas/images/recipeshandler.jpg?id=2152&tipo=r&default=s",
  steps: ["Em uma tigela, bata os ovos com o leite, o sal e a pimenta até ficarem bem misturados.", "Aqueça uma frigideira antiaderente em fogo médio e derreta a manteiga ou coloque um fio de azeite.", "Despeje a mistura dos ovos na frigideira e cozinhe por 1-2 minutos até começar a firmar nas bordas.", "Adicione o queijo e o presunto picados sobre metade da omelete.", "Quando o fundo estiver dourado e a parte de cima levemente úmida, dobre a omelete ao meio com a ajuda de uma espátula.", "Cozinhe por mais 1 minuto até o queijo derreter completamente.", "Retire do fogo e polvilhe salsinha, se desejar."],
  done: false,
  world: world1
)

task3 = Task.create!(
  title: "Pão de Queijo Caseiro",
  time: "40 minutos",
  image_url: "https://moinhoglobo.com.br/wp-content/uploads/2016/03/44-p%C3%A3o-de-queijo.jpg",
  steps: ["Em uma panela, aqueça o leite, o óleo e o sal até começar a ferver.", "Em uma tigela, misture os polvilhos e despeje o líquido quente, mexendo bem até formar uma massa grudenta.", "Deixe a massa amornar e adicione os ovos, misturando bem.", "Acrescente o queijo ralado e misture até a massa ficar homogênea.", "Modele bolinhas pequenas com as mãos untadas com óleo.", "Disponha as bolinhas em uma assadeira untada ou forrada com papel manteiga.", "Asse em forno preaquecido a 180°C por cerca de 25 a 30 minutos, ou até dourarem levemente."],
  done: false,
  world: world1
)

task4 = Task.create!(
  title: "Vitamina de Banana e Aveia",
  time: "5 minutos",
  image_url: "https://receitadaboa.com.br/wp-content/uploads/2024/08/iStock-1364301957.jpg",
  steps: ["No liquidificador, adicione a banana, o leite, a aveia e o mel.", "Bata tudo até ficar bem cremoso.", "Acrescente gelo e bata novamente se quiser mais refrescante.", "Sirva imediatamente."],
  done: false,
  world: world1
)

task5 = Task.create!(
  title: "Crepioca Simples",
  time: "10 minutos",
  image_url: "https://s2-receitas.glbimg.com/y1OG3_6xsECT8el1j6FiQOTZwa0=/1200x0/filters:format(jpeg)/https://i.s3.glbimg.com/v1/AUTH_1f540e0b94d8437dbbc39d567a1dee68/internal_photos/bs/2024/R/k/xG8LzGQ0eKYP07rLUvCg/crepioca-simples.jpg",
  steps: ["Em uma tigela, bata o ovo com uma pitada de sal.", "Acrescente a goma de tapioca e misture bem até formar uma massa homogênea.", "Aqueça uma frigideira antiaderente em fogo médio e, se desejar, adicione o azeite ou manteiga.", "Despeje a mistura na frigideira e espalhe uniformemente.", "Cozinhe por cerca de 2-3 minutos de cada lado, até ficar dourada e firme.", "Retire da frigideira e sirva quente."],
  done: false,
  world: world1
)

task6 = Task.create!(
  title: "Panquecas Americanas Fofinhas",
  time: "20 minutos",
  image_url: "https://static.itdg.com.br/images/1200-630/ddf2134d5d688cf43a5965c40e0ee905/dicas-para-a-panqueca-americana-bem-fofinha.jpg",
  steps: ["Em uma tigela, misture a farinha, o açúcar, o fermento e o sal.", "Em outra tigela, bata o ovo e adicione o leite, a manteiga derretida e a baunilha.", "Misture os ingredientes líquidos aos secos, mexendo suavemente até obter uma massa homogênea (não precisa bater muito).", "Aqueça uma frigideira antiaderente em fogo médio e unte levemente com manteiga ou óleo.", "Coloque pequenas porções da massa na frigideira e cozinhe até bolhas começarem a aparecer na superfície (cerca de 2 minutos).", "Vire a panqueca e cozinhe o outro lado por mais 1 minuto ou até dourar.", "Repita o processo com o restante da massa."],
  done: true,
  world: world2
)

task7 = Task.create!(
  title: "Omelete de Queijo e Presunto",
  time: "15 minutos",
  image_url: "https://vitat.com.br/receitas/images/recipeshandler.jpg?id=2152&tipo=r&default=s",
  steps: ["Em uma tigela, bata os ovos com o leite, o sal e a pimenta até ficarem bem misturados.", "Aqueça uma frigideira antiaderente em fogo médio e derreta a manteiga ou coloque um fio de azeite.", "Despeje a mistura dos ovos na frigideira e cozinhe por 1-2 minutos até começar a firmar nas bordas.", "Adicione o queijo e o presunto picados sobre metade da omelete.", "Quando o fundo estiver dourado e a parte de cima levemente úmida, dobre a omelete ao meio com a ajuda de uma espátula.", "Cozinhe por mais 1 minuto até o queijo derreter completamente.", "Retire do fogo e polvilhe salsinha, se desejar."],
  done: true,
  world: world2
)

Ingredient.create!(
  name: "farinha de trigo",
  quantity: "1 xícara",
  task: task1
)

Ingredient.create!(
  name: "ovos",
  quantity: "2 unidades",
  task: task2
)

Ingredient.create!(
  name: "polvilho doce",
  quantity: "2 xícaras",
  task: task3
)

Ingredient.create!(
  name: "banana madura",
  quantity: "1 unidade",
  task: task4
)

Ingredient.create!(
  name: "goma de tapioca",
  quantity: "2 colheres de sopa",
  task: task5
)

Ingredient.create!(
  name: "farinha de trigo",
  quantity: "1 xícara",
  task: task6
)

Ingredient.create!(
  name: "ovos",
  quantity: "2 unidades",
  task: task7
)

Ingredient.create!(
  name: "polvilho doce",
  quantity: "2 xícaras",
  task: task1
)

Ingredient.create!(
  name: "banana madura",
  quantity: "1 unidade",
  task: task2
)

Ingredient.create!(
  name: "goma de tapioca",
  quantity: "2 colheres de sopa",
  task: task3
)

Ingredient.create!(
  name: "farinha de trigo",
  quantity: "1 xícara",
  task: task4
)

Ingredient.create!(
  name: "ovos",
  quantity: "2 unidades",
  task: task5
)

Ingredient.create!(
  name: "polvilho doce",
  quantity: "2 xícaras",
  task: task6
)

Ingredient.create!(
  name: "banana madura",
  quantity: "1 unidade",
  task: task7
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

# Exibindo informações para confirmar que o seeding foi bem-sucedido
puts "Seed data successfully created!"
