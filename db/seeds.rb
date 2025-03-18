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
Journey.destroy_all
Task.destroy_all
World.destroy_all
Path.destroy_all
User.destroy_all

# Criando usuários
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
  title: "Journey to the Unknown",
  description: "A thrilling adventure full of surprises."
)

path2 = Path.create!(
  title: "The Culinary Quest",
  description: "A journey to explore the world of culinary delights."
)

# Criando mundos (worlds)
world1 = World.create!(
  title: "Café da Manhã",
  done: true,
  path: path1
)

world2 = World.create!(
  title: "Almoço",
  done: true,
  path: path1
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
  ingredients: ["xícara de farinha de trigo", 1, "colher de sopa de açúcar", 1, "colher de chá de fermento em pó", 1, "pitada de sal", 1, "xícara de leite", "3/4", "ovo", 1, "colher de sopa de manteiga derretida", 1, "colher de chá de essência de baunilha (opcional)", 1],
  steps: ["Em uma tigela, misture a farinha, o açúcar, o fermento e o sal.", "Em outra tigela, bata o ovo e adicione o leite, a manteiga derretida e a baunilha.", "Misture os ingredientes líquidos aos secos, mexendo suavemente até obter uma massa homogênea (não precisa bater muito).", "Aqueça uma frigideira antiaderente em fogo médio e unte levemente com manteiga ou óleo.", "Coloque pequenas porções da massa na frigideira e cozinhe até bolhas começarem a aparecer na superfície (cerca de 2 minutos).", "Vire a panqueca e cozinhe o outro lado por mais 1 minuto ou até dourar.", "Repita o processo com o restante da massa."],
  done: true,
  world: world1
)

task2 = Task.create!(
  title: "Omelete de Queijo e Presunto",
  ingredients: ["ovos", 2, "colheres de sopa de leite (opcional, deixa mais fofinho)", 2, "Sal e pimenta-do-reino", "a gosto", "fatias de presunto picadas", 2, "fatias de queijo picadas ou raladas (mussarela, prato ou cheddar)", 2, "colher de sopa de manteiga ou azeite", 1, "Salsinha picada (opcional)", ""],
  steps: ["Em uma tigela, bata os ovos com o leite, o sal e a pimenta até ficarem bem misturados.", "Aqueça uma frigideira antiaderente em fogo médio e derreta a manteiga ou coloque um fio de azeite.", "Despeje a mistura dos ovos na frigideira e cozinhe por 1-2 minutos até começar a firmar nas bordas.", "Adicione o queijo e o presunto picados sobre metade da omelete.", "Quando o fundo estiver dourado e a parte de cima levemente úmida, dobre a omelete ao meio com a ajuda de uma espátula.", "Cozinhe por mais 1 minuto até o queijo derreter completamente.", "Retire do fogo e polvilhe salsinha, se desejar."],
  done: true,
  world: world1
)

task3 = Task.create!(
  title: "Pão de Queijo Caseiro",
  ingredients: ["xícaras de polvilho doce", 2, "xícara de polvilho azedo", 1, "xícara de leite", 1, "xícara de óleo", "1/2", "colher de chá de sal", 1, "ovos", 2, "xícara de queijo ralado (mussarela, parmesão ou meia cura)", "1 e 1/2"],
  steps: ["Em uma panela, aqueça o leite, o óleo e o sal até começar a ferver.", "DEm uma tigela, misture os polvilhos e despeje o líquido quente, mexendo bem até formar uma massa grudenta.", "Deixe a massa amornar e adicione os ovos, misturando bem.", "Acrescente o queijo ralado e misture até a massa ficar homogênea.", "Modele bolinhas pequenas com as mãos untadas com óleo.", "Disponha as bolinhas em uma assadeira untada ou forrada com papel manteiga.", "Asse em forno preaquecido a 180°C por cerca de 25 a 30 minutos, ou até dourarem levemente."],
  done: true,
  world: world1
)

task4 = Task.create!(
  title: "Vitamina de Banana e Aveia",
  ingredients: ["banana madura", 1, "copo (200ml) de leite (pode ser de vaca, amêndoas ou aveia)", 1, "colher de sopa de aveia em flocos", 1, "colher de chá de mel (opcional)", 1],
  steps: ["No liquidificador, adicione a banana, o leite, a aveia e o mel.", "Bata tudo até ficar bem cremoso.", "Acrescente gelo e bata novamente se quiser mais refrescante.", "Sirva imediatamente."],
  done: false,
  world: world1
)

task5 = Task.create!(
  title: "Crepioca Simples",
  ingredients: ["colheres de sopa de goma de tapioca", 2, "ovo", 1, "pitada de sal", 1, "colher de chá de azeite ou manteiga (opcional)", 1],
  steps: ["Em uma tigela, bata o ovo com uma pitada de sal.", "Acrescente a goma de tapioca e misture bem até formar uma massa homogênea.", "Aqueça uma frigideira antiaderente em fogo médio e, se desejar, adicione o azeite ou manteiga.", "Despeje a mistura na frigideira e espalhe uniformemente.", "Cozinhe por cerca de 2-3 minutos de cada lado, até ficar dourada e firme.", "Retire da frigideira e sirva quente."],
  done: false,
  world: world1
)

task6 = Task.create!(
  title: "Panquecas Americanas Fofinhas",
  ingredients: ["xícara de farinha de trigo", 1, "colher de sopa de açúcar", 1, "colher de chá de fermento em pó", 1, "pitada de sal", 1, "xícara de leite", "3/4", "ovo", 1, "colher de sopa de manteiga derretida", 1, "colher de chá de essência de baunilha (opcional)", 1],
  steps: ["Em uma tigela, misture a farinha, o açúcar, o fermento e o sal.", "Em outra tigela, bata o ovo e adicione o leite, a manteiga derretida e a baunilha.", "Misture os ingredientes líquidos aos secos, mexendo suavemente até obter uma massa homogênea (não precisa bater muito).", "Aqueça uma frigideira antiaderente em fogo médio e unte levemente com manteiga ou óleo.", "Coloque pequenas porções da massa na frigideira e cozinhe até bolhas começarem a aparecer na superfície (cerca de 2 minutos).", "Vire a panqueca e cozinhe o outro lado por mais 1 minuto ou até dourar.", "Repita o processo com o restante da massa."],
  done: true,
  world: world2
)

task7 = Task.create!(
  title: "Omelete de Queijo e Presunto",
  ingredients: ["ovos", 2, "colheres de sopa de leite (opcional, deixa mais fofinho)", 2, "Sal e pimenta-do-reino", "a gosto", "fatias de presunto picadas", 2, "fatias de queijo picadas ou raladas (mussarela, prato ou cheddar)", 2, "colher de sopa de manteiga ou azeite", 1, "Salsinha picada (opcional)", ""],
  steps: ["Em uma tigela, bata os ovos com o leite, o sal e a pimenta até ficarem bem misturados.", "Aqueça uma frigideira antiaderente em fogo médio e derreta a manteiga ou coloque um fio de azeite.", "Despeje a mistura dos ovos na frigideira e cozinhe por 1-2 minutos até começar a firmar nas bordas.", "Adicione o queijo e o presunto picados sobre metade da omelete.", "Quando o fundo estiver dourado e a parte de cima levemente úmida, dobre a omelete ao meio com a ajuda de uma espátula.", "Cozinhe por mais 1 minuto até o queijo derreter completamente.", "Retire do fogo e polvilhe salsinha, se desejar."],
  done: true,
  world: world2
)

task8 = Task.create!(
  title: "Pão de Queijo Caseiro",
  ingredients: ["xícaras de polvilho doce", 2, "xícara de polvilho azedo", 1, "xícara de leite", 1, "xícara de óleo", "1/2", "colher de chá de sal", 1, "ovos", 2, "xícara de queijo ralado (mussarela, parmesão ou meia cura)", "1 e 1/2"],
  steps: ["Em uma panela, aqueça o leite, o óleo e o sal até começar a ferver.", "DEm uma tigela, misture os polvilhos e despeje o líquido quente, mexendo bem até formar uma massa grudenta.", "Deixe a massa amornar e adicione os ovos, misturando bem.", "Acrescente o queijo ralado e misture até a massa ficar homogênea.", "Modele bolinhas pequenas com as mãos untadas com óleo.", "Disponha as bolinhas em uma assadeira untada ou forrada com papel manteiga.", "Asse em forno preaquecido a 180°C por cerca de 25 a 30 minutos, ou até dourarem levemente."],
  done: true,
  world: world2
)

task9 = Task.create!(
  title: "Vitamina de Banana e Aveia",
  ingredients: ["banana madura", 1, "copo (200ml) de leite (pode ser de vaca, amêndoas ou aveia)", 1, "colher de sopa de aveia em flocos", 1, "colher de chá de mel (opcional)", 1],
  steps: ["No liquidificador, adicione a banana, o leite, a aveia e o mel.", "Bata tudo até ficar bem cremoso.", "Acrescente gelo e bata novamente se quiser mais refrescante.", "Sirva imediatamente."],
  done: true,
  world: world2
)

task10 = Task.create!(
  title: "Crepioca Simples",
  ingredients: ["colheres de sopa de goma de tapioca", 2, "ovo", 1, "pitada de sal", 1, "colher de chá de azeite ou manteiga (opcional)", 1],
  steps: ["Em uma tigela, bata o ovo com uma pitada de sal.", "Acrescente a goma de tapioca e misture bem até formar uma massa homogênea.", "Aqueça uma frigideira antiaderente em fogo médio e, se desejar, adicione o azeite ou manteiga.", "Despeje a mistura na frigideira e espalhe uniformemente.", "Cozinhe por cerca de 2-3 minutos de cada lado, até ficar dourada e firme.", "Retire da frigideira e sirva quente."],
  done: false,
  world: world2
)

task11 = Task.create!(
  title: "Panquecas Americanas Fofinhas",
  ingredients: ["xícara de farinha de trigo", 1, "colher de sopa de açúcar", 1, "colher de chá de fermento em pó", 1, "pitada de sal", 1, "xícara de leite", "3/4", "ovo", 1, "colher de sopa de manteiga derretida", 1, "colher de chá de essência de baunilha (opcional)", 1],
  steps: ["Em uma tigela, misture a farinha, o açúcar, o fermento e o sal.", "Em outra tigela, bata o ovo e adicione o leite, a manteiga derretida e a baunilha.", "Misture os ingredientes líquidos aos secos, mexendo suavemente até obter uma massa homogênea (não precisa bater muito).", "Aqueça uma frigideira antiaderente em fogo médio e unte levemente com manteiga ou óleo.", "Coloque pequenas porções da massa na frigideira e cozinhe até bolhas começarem a aparecer na superfície (cerca de 2 minutos).", "Vire a panqueca e cozinhe o outro lado por mais 1 minuto ou até dourar.", "Repita o processo com o restante da massa."],
  done: true,
  world: world3
)

task12 = Task.create!(
  title: "Omelete de Queijo e Presunto",
  ingredients: ["ovos", 2, "colheres de sopa de leite (opcional, deixa mais fofinho)", 2, "Sal e pimenta-do-reino", "a gosto", "fatias de presunto picadas", 2, "fatias de queijo picadas ou raladas (mussarela, prato ou cheddar)", 2, "colher de sopa de manteiga ou azeite", 1, "Salsinha picada (opcional)", ""],
  steps: ["Em uma tigela, bata os ovos com o leite, o sal e a pimenta até ficarem bem misturados.", "Aqueça uma frigideira antiaderente em fogo médio e derreta a manteiga ou coloque um fio de azeite.", "Despeje a mistura dos ovos na frigideira e cozinhe por 1-2 minutos até começar a firmar nas bordas.", "Adicione o queijo e o presunto picados sobre metade da omelete.", "Quando o fundo estiver dourado e a parte de cima levemente úmida, dobre a omelete ao meio com a ajuda de uma espátula.", "Cozinhe por mais 1 minuto até o queijo derreter completamente.", "Retire do fogo e polvilhe salsinha, se desejar."],
  done: true,
  world: world3
)

task13 = Task.create!(
  title: "Pão de Queijo Caseiro",
  ingredients: ["xícaras de polvilho doce", 2, "xícara de polvilho azedo", 1, "xícara de leite", 1, "xícara de óleo", "1/2", "colher de chá de sal", 1, "ovos", 2, "xícara de queijo ralado (mussarela, parmesão ou meia cura)", "1 e 1/2"],
  steps: ["Em uma panela, aqueça o leite, o óleo e o sal até começar a ferver.", "DEm uma tigela, misture os polvilhos e despeje o líquido quente, mexendo bem até formar uma massa grudenta.", "Deixe a massa amornar e adicione os ovos, misturando bem.", "Acrescente o queijo ralado e misture até a massa ficar homogênea.", "Modele bolinhas pequenas com as mãos untadas com óleo.", "Disponha as bolinhas em uma assadeira untada ou forrada com papel manteiga.", "Asse em forno preaquecido a 180°C por cerca de 25 a 30 minutos, ou até dourarem levemente."],
  done: true,
  world: world3
)

task14 = Task.create!(
  title: "Vitamina de Banana e Aveia",
  ingredients: ["banana madura", 1, "copo (200ml) de leite (pode ser de vaca, amêndoas ou aveia)", 1, "colher de sopa de aveia em flocos", 1, "colher de chá de mel (opcional)", 1],
  steps: ["No liquidificador, adicione a banana, o leite, a aveia e o mel.", "Bata tudo até ficar bem cremoso.", "Acrescente gelo e bata novamente se quiser mais refrescante.", "Sirva imediatamente."],
  done: false,
  world: world3
)

task15 = Task.create!(
  title: "Crepioca Simples",
  ingredients: ["colheres de sopa de goma de tapioca", 2, "ovo", 1, "pitada de sal", 1, "colher de chá de azeite ou manteiga (opcional)", 1],
  steps: ["Em uma tigela, bata o ovo com uma pitada de sal.", "Acrescente a goma de tapioca e misture bem até formar uma massa homogênea.", "Aqueça uma frigideira antiaderente em fogo médio e, se desejar, adicione o azeite ou manteiga.", "Despeje a mistura na frigideira e espalhe uniformemente.", "Cozinhe por cerca de 2-3 minutos de cada lado, até ficar dourada e firme.", "Retire da frigideira e sirva quente."],
  done: false,
  world: world3
)

task16 = Task.create!(
  title: "Panquecas Americanas Fofinhas",
  ingredients: ["xícara de farinha de trigo", 1, "colher de sopa de açúcar", 1, "colher de chá de fermento em pó", 1, "pitada de sal", 1, "xícara de leite", "3/4", "ovo", 1, "colher de sopa de manteiga derretida", 1, "colher de chá de essência de baunilha (opcional)", 1],
  steps: ["Em uma tigela, misture a farinha, o açúcar, o fermento e o sal.", "Em outra tigela, bata o ovo e adicione o leite, a manteiga derretida e a baunilha.", "Misture os ingredientes líquidos aos secos, mexendo suavemente até obter uma massa homogênea (não precisa bater muito).", "Aqueça uma frigideira antiaderente em fogo médio e unte levemente com manteiga ou óleo.", "Coloque pequenas porções da massa na frigideira e cozinhe até bolhas começarem a aparecer na superfície (cerca de 2 minutos).", "Vire a panqueca e cozinhe o outro lado por mais 1 minuto ou até dourar.", "Repita o processo com o restante da massa."],
  done: true,
  world: world4
)

task17 = Task.create!(
  title: "Omelete de Queijo e Presunto",
  ingredients: ["ovos", 2, "colheres de sopa de leite (opcional, deixa mais fofinho)", 2, "Sal e pimenta-do-reino", "a gosto", "fatias de presunto picadas", 2, "fatias de queijo picadas ou raladas (mussarela, prato ou cheddar)", 2, "colher de sopa de manteiga ou azeite", 1, "Salsinha picada (opcional)", ""],
  steps: ["Em uma tigela, bata os ovos com o leite, o sal e a pimenta até ficarem bem misturados.", "Aqueça uma frigideira antiaderente em fogo médio e derreta a manteiga ou coloque um fio de azeite.", "Despeje a mistura dos ovos na frigideira e cozinhe por 1-2 minutos até começar a firmar nas bordas.", "Adicione o queijo e o presunto picados sobre metade da omelete.", "Quando o fundo estiver dourado e a parte de cima levemente úmida, dobre a omelete ao meio com a ajuda de uma espátula.", "Cozinhe por mais 1 minuto até o queijo derreter completamente.", "Retire do fogo e polvilhe salsinha, se desejar."],
  done: true,
  world: world4
)

task18 = Task.create!(
  title: "Pão de Queijo Caseiro",
  ingredients: ["xícaras de polvilho doce", 2, "xícara de polvilho azedo", 1, "xícara de leite", 1, "xícara de óleo", "1/2", "colher de chá de sal", 1, "ovos", 2, "xícara de queijo ralado (mussarela, parmesão ou meia cura)", "1 e 1/2"],
  steps: ["Em uma panela, aqueça o leite, o óleo e o sal até começar a ferver.", "DEm uma tigela, misture os polvilhos e despeje o líquido quente, mexendo bem até formar uma massa grudenta.", "Deixe a massa amornar e adicione os ovos, misturando bem.", "Acrescente o queijo ralado e misture até a massa ficar homogênea.", "Modele bolinhas pequenas com as mãos untadas com óleo.", "Disponha as bolinhas em uma assadeira untada ou forrada com papel manteiga.", "Asse em forno preaquecido a 180°C por cerca de 25 a 30 minutos, ou até dourarem levemente."],
  done: true,
  world: world4
)

task19 = Task.create!(
  title: "Vitamina de Banana e Aveia",
  ingredients: ["banana madura", 1, "copo (200ml) de leite (pode ser de vaca, amêndoas ou aveia)", 1, "colher de sopa de aveia em flocos", 1, "colher de chá de mel (opcional)", 1],
  steps: ["No liquidificador, adicione a banana, o leite, a aveia e o mel.", "Bata tudo até ficar bem cremoso.", "Acrescente gelo e bata novamente se quiser mais refrescante.", "Sirva imediatamente."],
  done: false,
  world: world4
)

task20 = Task.create!(
  title: "Crepioca Simples",
  ingredients: ["colheres de sopa de goma de tapioca", 2, "ovo", 1, "pitada de sal", 1, "colher de chá de azeite ou manteiga (opcional)", 1],
  steps: ["Em uma tigela, bata o ovo com uma pitada de sal.", "Acrescente a goma de tapioca e misture bem até formar uma massa homogênea.", "Aqueça uma frigideira antiaderente em fogo médio e, se desejar, adicione o azeite ou manteiga.", "Despeje a mistura na frigideira e espalhe uniformemente.", "Cozinhe por cerca de 2-3 minutos de cada lado, até ficar dourada e firme.", "Retire da frigideira e sirva quente."],
  done: false,
  world: world4
)

task21 = Task.create!(
  title: "Panquecas Americanas Fofinhas",
  ingredients: ["xícara de farinha de trigo", 1, "colher de sopa de açúcar", 1, "colher de chá de fermento em pó", 1, "pitada de sal", 1, "xícara de leite", "3/4", "ovo", 1, "colher de sopa de manteiga derretida", 1, "colher de chá de essência de baunilha (opcional)", 1],
  steps: ["Em uma tigela, misture a farinha, o açúcar, o fermento e o sal.", "Em outra tigela, bata o ovo e adicione o leite, a manteiga derretida e a baunilha.", "Misture os ingredientes líquidos aos secos, mexendo suavemente até obter uma massa homogênea (não precisa bater muito).", "Aqueça uma frigideira antiaderente em fogo médio e unte levemente com manteiga ou óleo.", "Coloque pequenas porções da massa na frigideira e cozinhe até bolhas começarem a aparecer na superfície (cerca de 2 minutos).", "Vire a panqueca e cozinhe o outro lado por mais 1 minuto ou até dourar.", "Repita o processo com o restante da massa."],
  done: true,
  world: world5
)

task22 = Task.create!(
  title: "Omelete de Queijo e Presunto",
  ingredients: ["ovos", 2, "colheres de sopa de leite (opcional, deixa mais fofinho)", 2, "Sal e pimenta-do-reino", "a gosto", "fatias de presunto picadas", 2, "fatias de queijo picadas ou raladas (mussarela, prato ou cheddar)", 2, "colher de sopa de manteiga ou azeite", 1, "Salsinha picada (opcional)", ""],
  steps: ["Em uma tigela, bata os ovos com o leite, o sal e a pimenta até ficarem bem misturados.", "Aqueça uma frigideira antiaderente em fogo médio e derreta a manteiga ou coloque um fio de azeite.", "Despeje a mistura dos ovos na frigideira e cozinhe por 1-2 minutos até começar a firmar nas bordas.", "Adicione o queijo e o presunto picados sobre metade da omelete.", "Quando o fundo estiver dourado e a parte de cima levemente úmida, dobre a omelete ao meio com a ajuda de uma espátula.", "Cozinhe por mais 1 minuto até o queijo derreter completamente.", "Retire do fogo e polvilhe salsinha, se desejar."],
  done: true,
  world: world5
)

task23 = Task.create!(
  title: "Pão de Queijo Caseiro",
  ingredients: ["xícaras de polvilho doce", 2, "xícara de polvilho azedo", 1, "xícara de leite", 1, "xícara de óleo", "1/2", "colher de chá de sal", 1, "ovos", 2, "xícara de queijo ralado (mussarela, parmesão ou meia cura)", "1 e 1/2"],
  steps: ["Em uma panela, aqueça o leite, o óleo e o sal até começar a ferver.", "DEm uma tigela, misture os polvilhos e despeje o líquido quente, mexendo bem até formar uma massa grudenta.", "Deixe a massa amornar e adicione os ovos, misturando bem.", "Acrescente o queijo ralado e misture até a massa ficar homogênea.", "Modele bolinhas pequenas com as mãos untadas com óleo.", "Disponha as bolinhas em uma assadeira untada ou forrada com papel manteiga.", "Asse em forno preaquecido a 180°C por cerca de 25 a 30 minutos, ou até dourarem levemente."],
  done: true,
  world: world5
)

task24 = Task.create!(
  title: "Vitamina de Banana e Aveia",
  ingredients: ["banana madura", 1, "copo (200ml) de leite (pode ser de vaca, amêndoas ou aveia)", 1, "colher de sopa de aveia em flocos", 1, "colher de chá de mel (opcional)", 1],
  steps: ["No liquidificador, adicione a banana, o leite, a aveia e o mel.", "Bata tudo até ficar bem cremoso.", "Acrescente gelo e bata novamente se quiser mais refrescante.", "Sirva imediatamente."],
  done: false,
  world: world5
)

task25 = Task.create!(
  title: "Crepioca Simples",
  ingredients: ["colheres de sopa de goma de tapioca", 2, "ovo", 1, "pitada de sal", 1, "colher de chá de azeite ou manteiga (opcional)", 1],
  steps: ["Em uma tigela, bata o ovo com uma pitada de sal.", "Acrescente a goma de tapioca e misture bem até formar uma massa homogênea.", "Aqueça uma frigideira antiaderente em fogo médio e, se desejar, adicione o azeite ou manteiga.", "Despeje a mistura na frigideira e espalhe uniformemente.", "Cozinhe por cerca de 2-3 minutos de cada lado, até ficar dourada e firme.", "Retire da frigideira e sirva quente."],
  done: false,
  world: world5
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
