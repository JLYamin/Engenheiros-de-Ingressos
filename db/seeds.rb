# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Classe eh teatro, esporte, show nacional e show internacional
ClassesEvento.create(classe:'teatro')
ClassesEvento.create(classe: 'esporte')
ClassesEvento.create(classe: 'show nacional')
ClassesEvento.create(classe: 'show internacional')

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
