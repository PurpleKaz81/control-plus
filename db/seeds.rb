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

inflow1 = Finance.new(
  date: '22/01/2022',
  description: 'Casa de repousa da minha mãe',
  value: rand(1..99),
  user:,
  category: 'inflow'
)
inflow1.save!

inflow2 = Finance.new(
  date: '04/03/2022',
  description: 'Arroucho do Partidão',
  value: rand(500..999),
  user:,
  category: 'inflow'
)
inflow2.save!

inflow3 = Finance.new(
  date: '05/04/2022',
  description: 'Subonro por cigarro, cela 23B',
  value: rand(1..75),
  user:,
  category: 'inflow'
)
inflow3.save!

puts 'Finished!'
