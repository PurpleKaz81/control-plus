# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
User.destroy_all

puts 'Generating user'

user = User.new(first_name: 'teste', last_name: 'teste', email: 'teste@teste.com', password: '123123',
                phone_number: '11999999999')

user.save

puts 'Generating three inflows'

entrada1 = Finance.new(
  date: '22/01/2022',
  description: 'Boteco do Toninho',
  value: rand(1..99),
  user:,
  category: 'Entrada'
)
entrada1.save!

entrada2 = Finance.new(
  date: '04/03/2022',
  description: 'Arroucho do Partidão',
  value: rand(500..999),
  user:,
  category: 'Entrada'
)
entrada2.save!

entrada3 = Finance.new(
  date: '05/04/2022',
  description: 'Suborno por cigarro, cela 23B',
  value: rand(1..75),
  user:,
  category: 'Entrada'
)
entrada3.save!

entrada4 = Finance.new(
  date: '22/01/2022',
  description: 'Boteco do Toninho',
  value: rand(1..99),
  user:,
  category: 'Entrada'
)
entrada4.save!

entrada5 = Finance.new(
  date: '04/03/2022',
  description: 'Arroucho do Partidão',
  value: rand(500..999),
  user:,
  category: 'Entrada'
)
entrada5.save!

entrada6 = Finance.new(
  date: '05/04/2022',
  description: 'Suborno por cigarro, cela 23B',
  value: rand(1..75),
  user:,
  category: 'Entrada'
)
entrada6.save!

entrada1 = Finance.new(
  date: '22/01/2022',
  description: 'Boteco do Toninho',
  value: rand(1..99),
  user:,
  category: 'Entrada'
)
entrada1.save!

entrada2 = Finance.new(
  date: '04/03/2022',
  description: 'Arroucho do Partidão',
  value: rand(500..999),
  user:,
  category: 'Entrada'
)
entrada2.save!

entrada3 = Finance.new(
  date: '05/04/2022',
  description: 'Suborno por cigarro, cela 23B',
  value: rand(1..75),
  user:,
  category: 'Entrada'
)
entrada3.save!

entrada1 = Finance.new(
  date: '22/01/2022',
  description: 'Boteco do Toninho',
  value: rand(1..99),
  user:,
  category: 'Entrada'
)
entrada1.save!

entrada2 = Finance.new(
  date: '04/03/2022',
  description: 'Arroucho do Partidão',
  value: rand(500..999),
  user:,
  category: 'Entrada'
)
entrada2.save!

entrada3 = Finance.new(
  date: '05/04/2022',
  description: 'Suborno por cigarro, cela 23B',
  value: rand(1..75),
  user:,
  category: 'Entrada'
)
entrada3.save!

entrada1 = Finance.new(
  date: '22/01/2022',
  description: 'Boteco do Toninho',
  value: rand(1..99),
  user:,
  category: 'Entrada'
)
entrada1.save!

entrada2 = Finance.new(
  date: '04/03/2022',
  description: 'Arroucho do Partidão',
  value: rand(500..999),
  user:,
  category: 'Entrada'
)
entrada2.save!

entrada3 = Finance.new(
  date: '05/04/2022',
  description: 'Suborno por cigarro, cela 23B',
  value: rand(1..75),
  user:,
  category: 'Entrada'
)
entrada3.save!

entrada1 = Finance.new(
  date: '22/01/2022',
  description: 'Boteco do Toninho',
  value: rand(1..99),
  user:,
  category: 'Entrada'
)
entrada1.save!

entrada2 = Finance.new(
  date: '04/03/2022',
  description: 'Arroucho do Partidão',
  value: rand(500..999),
  user:,
  category: 'Entrada'
)
entrada2.save!

entrada3 = Finance.new(
  date: '05/04/2022',
  description: 'Suborno por cigarro, cela 23B',
  value: rand(1..75),
  user:,
  category: 'Entrada'
)
entrada3.save!

puts 'Generating three outflows'

saida1 = Finance.new(
  date: '22/01/2022',
  description: 'Casa de repousa da minha mãe',
  value: rand(1..99),
  user:,
  category: 'Saída'
)
saida1.save!

saida2 = Finance.new(
  date: '04/03/2022',
  description: 'BK, pq tô aventureiro',
  value: rand(500..999),
  user:,
  category: 'Saída'
)
saida2.save!

saida3 = Finance.new(
  date: '05/04/2022',
  description: 'Não lembro, tava lôko',
  value: rand(1..75),
  user:,
  category: 'Saída'
)
saida3.save!

puts 'Finished!'
