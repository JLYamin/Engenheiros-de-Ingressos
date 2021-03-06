# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Classe eh teatro, esporte, show nacional e show internacional
ClassesEvento.create(classe:'Teatro')
ClassesEvento.create(classe: 'Esporte')
ClassesEvento.create(classe: 'Show Nacional')
ClassesEvento.create(classe: 'Show Internacional')

Estado.create(name: 'Acre', sigla: 'AC')
Estado.create(name: 'Alagoas', sigla: 'AL')
Estado.create(name: 'Amapá', sigla: 'AP')
Estado.create(name: 'Amazonas', sigla: 'AM')
Estado.create(name: 'Bahia', sigla: 'BA')
Estado.create(name: 'Ceará', sigla: 'CE')
Estado.create(name: 'Distrito Federal', sigla: 'DF')
Estado.create(name: 'Espírito Santo', sigla: 'ES')
Estado.create(name: 'Goiás', sigla: 'GO')
Estado.create(name: 'Maranhão', sigla: 'MA')
Estado.create(name: 'Mato Grosso', sigla: 'MT')
Estado.create(name: 'Mato Grosso do Sul', sigla: 'MS')
Estado.create(name: 'Minas Gerais', sigla: 'MG')
Estado.create(name: 'Pará', sigla: 'PA')
Estado.create(name: 'Paraíba', sigla: 'PB')
Estado.create(name: 'Paraná', sigla: 'PR')
Estado.create(name: 'Pernambuco', sigla: 'PE')
Estado.create(name: 'Piauí', sigla: 'PI')
Estado.create(name: 'Rio de Janeiro', sigla: 'RJ')
Estado.create(name: 'Rio Grande do Norte', sigla: 'RN')
Estado.create(name: 'Rio Grande do Sul', sigla: 'RS')
Estado.create(name: 'Rondônia', sigla: 'RO')
Estado.create(name: 'Roraima', sigla: 'RR')
Estado.create(name: 'Santa Catarina', sigla: 'SC')
Estado.create(name: 'São Paulo', sigla: 'SP')
Estado.create(name: 'Sergipe', sigla: 'SE')
Estado.create(name: 'Tocantins', sigla: 'TO')


User.create(name: 'Administrador', email: 'adm@adm.com', password:'admadm', adm: 'true')
User.create(name: 'Jorge', email: 'oi@gmail.com', password:'123456', cpf:Faker::CPF.cpf)
User.create(name: 'Pão', email: 'pao@pao.com', password:'paopao', cpf: Faker::CPF.cpf)

d1 = DateTime.new(2022,06,22)
d2 = DateTime.new(2022,06,27)

Evento.create(title: 'Oi sdds', date_begin: DateTime.new(2022,06,22) ,date_end: DateTime.new(2022,06,27), user_id: 1, descricao: 'oi sdds', faixa_etarium_id: 2, classes_evento_id: 1)
Evento.create(title: 'Helo Goda', date_begin: DateTime.new(2022,05,03) ,date_end: DateTime.new(2022,10,01), user_id: 1, faixa_etarium_id: 5, classes_evento_id: 3)
Evento.create(title: 'Helsing Goda', date_begin: DateTime.new(2022,05,03) ,date_end: DateTime.new(2022,10,01), user_id: 3, faixa_etarium_id: 5, classes_evento_id: 3)
Evento.create( title: 'Show da Anitta', date_begin: DateTime.new(2020,2,3,4,5,6), date_end: DateTime.new(2020,3,1,1,5), user_id: 1, faixa_etarium_id: 1, classes_evento_id: 3)
Evento.create( title: 'Campeonato Regional de LoL', date_begin: DateTime.new(2019,7,3,10,0), date_end: DateTime.new(2019,7,3,14,0), user_id: 1, faixa_etarium_id: 2, classes_evento_id: 2) 

FaixaEtarium.create(faixa_etaria:'Livre', description:'Não expõe crianças a conteúdos potencialmente prejudiciais')
FaixaEtarium.create(faixa_etaria:'Não recomendado para menores de 10 anos', description:'Conteúdo violento ou linguagem inapropriada para crianças, ainda que em menor intensidade')
FaixaEtarium.create(faixa_etaria:'Não recomendado para menores de 12 anos', description:'As cenas podem conter agressão física, consumo de drogas e insinuação sexual')
FaixaEtarium.create(faixa_etaria:'Não recomendado para menores de 14 anos', description:'Conteúdos mais violentos e/ ou de linguagem sexual mais acentuada')
FaixaEtarium.create(faixa_etaria:'Não recomendado para menores de 16 anos', description:'Não expõe crianças a conteúdos potencialmente prejudiciais')
FaixaEtarium.create(faixa_etaria:'Não recomendado para menores de 18 anos', description:'Conteúdos violentos e sexuais extremos. Cenas de sexo, incesto ou atos repetidos de tortura, mutilação ou abuso sexual.')
