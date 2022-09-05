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

puts 'Generating twenty inflows'

entrada1 = Finance.new(
  date: '05/01/2022',
  description: 'Remuneração',
  value: rand(4000.00..4500.00),
  user:,
  category: 'Entrada'
)
entrada1.save!

entrada2 = Finance.new(
  date: '10/01/2022',
  description: 'Arroucho do Partidão',
  value: rand(2000.00..2500.00),
  user:,
  category: 'Entrada'
)
entrada2.save!

entrada3 = Finance.new(
  date: '14/01/2022',
  description: 'Dr. Juarez',
  value: rand(2400.00..2800.00),
  user:,
  category: 'Entrada'
)
entrada3.save!

entrada4 = Finance.new(
  date: '22/01/2022',
  description: 'Boteco do Toninho',
  value: rand(600.00..999.99),
  user:,
  category: 'Entrada'
)
entrada4.save!

entrada5 = Finance.new(
  date: '05/02/2022',
  description: 'Remuneração',
  value: rand(4000.00..4500.00),
  user:,
  category: 'Entrada'
)
entrada5.save!

entrada6 = Finance.new(
  date: '10/02/2022',
  description: 'Arroucho do Partidão',
  value: rand(2000.00..2500.00),
  user:,
  category: 'Entrada'
)
entrada6.save!

entrada7 = Finance.new(
  date: '14/02/2022',
  description: 'Dr. Juarez',
  value: rand(2400.00..2800.00),
  user:,
  category: 'Entrada'
)
entrada7.save!

entrada8 = Finance.new(
  date: '22/02/2022',
  description: 'Boteco do Toninho',
  value: rand(600.00..999.99),
  user:,
  category: 'Entrada'
)
entrada8.save!

entrada9 = Finance.new(
  date: '05/03/2022',
  description: 'Remuneração',
  value: rand(4000.00..4500.00),
  user:,
  category: 'Entrada'
)
entrada9.save!

entrada10 = Finance.new(
  date: '10/03/2022',
  description: 'Arroucho do Partidão',
  value: rand(2000.00..2500.00),
  user:,
  category: 'Entrada'
)
entrada10.save!

entrada11 = Finance.new(
  date: '14/03/2022',
  description: 'Dr. Juarez',
  value: rand(2400.00..2800.00),
  user:,
  category: 'Entrada'
)
entrada11.save!

entrada12 = Finance.new(
  date: '22/03/2022',
  description: 'Boteco do Toninho',
  value: rand(600.00..999.99),
  user:,
  category: 'Entrada'
)
entrada12.save!

entrada13 = Finance.new(
  date: '05/04/2022',
  description: 'Remuneração',
  value: rand(4000.00..4500.00),
  user:,
  category: 'Entrada'
)
entrada13.save!

entrada14 = Finance.new(
  date: '10/04/2022',
  description: 'Arroucho do Partidão',
  value: rand(2000.00..2500.00),
  user:,
  category: 'Entrada'
)
entrada14.save!

entrada15 = Finance.new(
  date: '14/04/2022',
  description: 'Dr. Juarez',
  value: rand(2400.00..2800.00),
  user:,
  category: 'Entrada'
)
entrada15.save!

entrada16 = Finance.new(
  date: '22/04/2022',
  description: 'Boteco do Toninho',
  value: rand(600.00..999.99),
  user:,
  category: 'Entrada'
)
entrada16.save!

entrada17 = Finance.new(
  date: '05/05/2022',
  description: 'Remuneração',
  value: rand(4000.00..4500.00),
  user:,
  category: 'Entrada'
)
entrada17.save!

entrada18 = Finance.new(
  date: '10/05/2022',
  description: 'Arroucho do Partidão',
  value: rand(2000.00..2500.00),
  user:,
  category: 'Entrada'
)
entrada18.save!

entrada19 = Finance.new(
  date: '14/05/2022',
  description: 'Dr. Juarez',
  value: rand(2400.00..2800.00),
  user:,
  category: 'Entrada'
)
entrada19.save!

entrada20 = Finance.new(
  date: '22/05/2022',
  description: 'Boteco do Toninho',
  value: rand(600.00..999.99),
  user:,
  category: 'Entrada'
)
entrada20.save!

puts 'Finished generating inflows!'

puts 'Generating twenty outflows'

saida1 = Finance.new(
  date: '07/01/2022',
  description: 'Casa de repousa da mãe',
  value: rand(345.00..380.00),
  user:,
  category: 'Saída'
)
saida1.save!

saida2 = Finance.new(
  date: '08/01/2022',
  description: 'Compras do mês',
  value: rand(3000.00..4000.00),
  user:,
  category: 'Saída'
)
saida2.save!

saida3 = Finance.new(
  date: '09/01/2022',
  description: 'Não lembro, tava bêbado',
  value: rand(80.00..100.00),
  user:,
  category: 'Saída'
)
saida3.save!

saida4 = Finance.new(
  date: '10/01/2022',
  description: 'Sandra Feitiço',
  value: rand(980.00..999.00),
  user:,
  category: 'Saída'
)
saida4.save!

saida5 = Finance.new(
  date: '12/01/2022',
  description: 'Boteco com Bino',
  value: rand(80.00..100.00),
  user:,
  category: 'Saída'
)
saida5.save!

saida6 = Finance.new(
  date: '13/01/2022',
  description: 'BK de café da manhã',
  value: rand(30.00..40.00),
  user:,
  category: 'Saída'
)
saida6.save!

saida7 = Finance.new(
  date: '13/01/2022',
  description: 'BK de almoço',
  value: rand(30.00..40.00),
  user:,
  category: 'Saída'
)
saida7.save!

saida8 = Finance.new(
  date: '13/01/2022',
  description: 'BK de jantar',
  value: rand(30.00..40.00),
  user:,
  category: 'Saída'
)
saida8.save!

saida9 = Finance.new(
  date: '15/01/2022',
  description: 'Psiquiatra',
  value: rand(800.00..900.00),
  user:,
  category: 'Saída'
)
saida9.save!

saida10 = Finance.new(
  date: '15/01/2022',
  description: 'Almoço',
  value: rand(30.00..40.00),
  user:,
  category: 'Saída'
)
saida10.save!

saida11 = Finance.new(
  date: '15/01/2022',
  description: 'Jantar com Suellen',
  value: rand(80.00..100.00),
  user:,
  category: 'Saída'
)
saida11.save!

saida12 = Finance.new(
  date: '16/01/2022',
  description: 'Não lembro, tava bêbado',
  value: rand(80.00..100.00),
  user:,
  category: 'Saída'
)
saida12.save!

saida13 = Finance.new(
  date: '17/01/2022',
  description: '.45 antiga',
  value: rand(80.00..200.00),
  user:,
  category: 'Saída'
)
saida13.save!

saida14 = Finance.new(
  date: '19/01/2022',
  description: 'Óculos',
  value: rand(440.00..470.00),
  user:,
  category: 'Saída'
)
saida14.save!

saida15 = Finance.new(
  date: '22/01/2022',
  description: 'Descarga',
  value: rand(80.00..100.00),
  user:,
  category: 'Saída'
)
saida15.save!

saida16 = Finance.new(
  date: '22/01/2022',
  description: 'Jantar',
  value: rand(80.00..100.00),
  user:,
  category: 'Saída'
)
saida16.save!

saida17 = Finance.new(
  date: '23/01/2022',
  description: 'Café com Juquinha da Vila Medeiros',
  value: rand(80.00..100.00),
  user:,
  category: 'Saída'
)
saida17.save!

saida18 = Finance.new(
  date: '25/01/2022',
  description: 'Visita com Uberval',
  value: rand(80.00..100.00),
  user:,
  category: 'Saída'
)
saida18.save!

saida19 = Finance.new(
  date: '30/01/2022',
  description: 'Não lembro, tava bêbado',
  value: rand(80.00..150.00),
  user:,
  category: 'Saída'
)
saida19.save!

saida20 = Finance.new(
  date: '31/01/2022',
  description: 'Remédios',
  value: rand(350.00..450.00),
  user:,
  category: 'Saída'
)
saida20.save!

puts 'Finished generating twenty outflows!'

puts 'Creating tasks seeds'

tarefa1 = Task.new(
  date: '25/01/2022',
  content: 'Visita com Uberval',
  user:
)
tarefa1.save!

tarefa2 = Task.new(
  date: '25/01/2022',
  content: 'Visita com Uberval',
  user:
)
tarefa2.save!

tarefa3 = Task.new(
  date: '25/01/2022',
  content: 'Visita com Uberval',
  user:
)
tarefa3.save!

tarefa4 = Task.new(
  date: '25/01/2022',
  content: 'Visita com Uberval',
  user:
)
tarefa4.save!

tarefa5 = Task.new(
  date: '25/01/2022',
  content: 'Visita com Uberval',
  user:
)
tarefa5.save!

tarefa6 = Task.new(
  date: '10/01/2022',
  content: 'Sandra Feitiço',
  user:
)
tarefa6.save!

tarefa7 = Task.new(
  date: '12/01/2022',
  content: 'Boteco com Bino',
  user:
)
tarefa7.save!

tarefa8 = Task.new(
  date: '13/01/2022',
  content: 'BK de café da manhã',
  user:
)
tarefa8.save!
