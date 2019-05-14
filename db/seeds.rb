# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'benchmark'
puts '\n Start running seeds \n'

realtime = Benchmark.realtime do

# User
# @implemented
User.destroy_all
User.create(
  [
    {
      name: 'Renato Franco',
      email: 'renato_ny@live.com',
      password: 'test123',
      password_confirmation: 'test123'
    }
  ]
)


# State
# @implemented
State.destroy_all
State.create(
  [
    {
      name: 'Rio Grande do Sul',
      region: 'Sul',
      acronym: 'RS'
    }
  ]
)

# City
# @implemented
state = State.where(name: 'Rio Grande do Sul').first()
City.destroy_all
City.create(
  [
    {
      name: 'Santiago', 
      state: state
    }
  ]
)

# Neighborhood
# @implemented
city = City.where(name: 'Santiago').first()
Neighborhood.destroy_all
Neighborhood.create(
  [
   {
     name: 'Missões',
     city: city
   },
   {
     name: 'Belizário',
     city: city
   },
   {
     name: 'São Vicente',
     city: city
   },
   {
     name: 'Itu',
     city: city
   },
   {
     name: 'Vista Alegre',
     city: city
   },
   {
     name: 'Guabiroba',
     city: city
   },
   {
     name: 'Alto da Boa Vista',
     city: city
   },
   {
     name: 'Jardim das Paineiras',
     city: city
   },
   {
     name: 'Jardim das Palmeiras',
     city: city
   },
   {
     name: 'Centro',
     city: city
   },
   {
     name: 'Vila Nova',
     city: city
   },
   {
     name: 'Vila Rica',
     city: city
   },
   {
     name: 'Atalaia',
     city: city
   },
   {
     name: 'Maria Alice Gomes',
     city: city
   },
   {
     name: 'Zamperetti',
     city: city
   },
   {
     name: 'Santiago Pompeo',
     city: city
   },
   {
     name: 'Irmã Dulce',
     city: city
   },
   {
     name: 'Nei Pereira',
     city: city
   },
   {
     name: 'Jardim dos Eucaliptos',
     city: city
   },
   {
     name: 'Carlos Humberto',
     city: city
   },
   {
     name: 'Eletrecitários',
     city: city
   },
   {
     name: 'Riachuelo',
     city: city
   },
   {
     name: 'Lulu Genro',
     city: city
   },
   {
     name: 'João Goulart',
     city: city
   },
   {
     name: 'Gaspar Dutra',
     city: city
   },
   {
     name: 'São Jorge',
     city: city
   },
   {
     name: 'Monsenhor Assis',
     city: city
   },
   {
     name: 'Ana Bonato',
     city: city
   },
   {
     name: 'Céu aberto',
     city: city
   },
   {
     name: 'Castilhos',
     city: city
   },
   {
     name: 'João Evangelista',
     city: city
   },
   {
     name: 'DAER',
     city: city
   }
  ]
)

# College
# @implemented
College.destroy_all
College.create(
  [
    {
      name: 'IEE Professor Isaias', 
      type_of: 'Estadual',
      city: city
    },
    {
      name: 'Colégio Estadual Apolinario Porto Alegre',
      type_of: 'Estadual',
      city: city
    },
    {
      name: 'Thomas Fortes',
      type_of: 'Estadual',
      city: city
    },
    {
      name: 'Colégio Estadual Cristovão Pereira',
      type_of: 'Estadual',
      city: city
    },
    {
      name: 'Colégio Estadual Monsenhor Assis',
      type_of: 'Estadual',
      city: city
    }
  ]
)

# University
# @implemented
University.destroy_all
University.create(
  [
    {
      name: 'UNINTER',
      description: 'Centro universitário internacional',
      education_type: 'EAD',
      city: city
    },
    {
      name: 'UNISUL',
      description: 'Universidade do Sul de Santa Catarina',
      education_type: 'EAD',
      city: city
    },
    {
      name: 'ULBRA',
      description: 'Universidade Luterana do Brasil',
      education_type: 'EAD',
      city: city
    },
    {
      name: 'UNOPAR',
      description: 'Universidade Norte do Paraná',
      education_type: 'EAD',
      city: city
    },
    {
      name: 'URI',
      description: 'Universidade Regional Integrada do Alto Uruguai e das Missões',
      education_type: 'Presencial',
      city: city
    }
  ]
)
end

puts '\n Finished running seeds \n'
puts "\nProcessing time #{realtime.ceil}"