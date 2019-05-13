# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
      name: '1 Distrito',
      city: city
    },
    {
      name: '5 Distrito', 
      city: city
    },
    # A
    {
      name: 'Aeroporto Municipal', 
      city: city
    },
    {
      name: 'Alto Boa Vista', 
      city: city
    },
    {
      ǹame: 'Alto da Boa Vista', 
      city: city
    },
    {
      name: 'Ana Bonato', 
      city: city
    },
    {
      name: 'Atalia', 
      city: city
    },
    {
      name: 'Ator da Boa Vista', 
      city: city
    },
    # B
    {
      name: 'B Belizario',
      city: city
    },
    {
      name: 'Bairro Gaspar Dutra', 
      city: city
    },
    {
      name: 'Bairro Vila Leste', 
      city: city
    },
    {
      name: 'Bairro Zampereti',
      city: city
    },
    {
      name: 'Belizario', 
      city: city
    },
    {
      name: 'Belizario de Souza', 
      city: city
    },
    # C
    {
      name: 'Carlos Humberto', 
      city: city
    },
    {
      name: 'Castilhos', 
      city: city
    },
    {
      name: 'Centro', 
      city: city
    },
    {
      name: 'Ceu Aberto', 
      city: city
    },
    {
      name: 'Condomínio jardim ipe', 
      city: city
    },
    {
      name: 'Corrd Tropas', 
      city: city
    },
    # D
    {
      name: 'Daer', 
      city: city
    },
    {
      name: 'Distrito de Santiag', 
      city: city
    },
    {
      name: 'Distrito Industrial', 
      city: city
    }
    # G
    {
      name: 'Gaspar Dutra', 
      city: city
    },
    {
      name: 'Guabiróba', 
      city: city
    },
    # I
    {
      name: 'Interior', 
      city: city
    },
    {
      name: 'Irmã Dulce', 
      city: city
    },
    {
      name: 'Itu', 
      city: city
    },
    # J
    {
      name: 'Jardim América', 
      city: city
    },
    {
      name: 'Jardim Botânico', 
      city: city
    },
    {
      name: 'Jardim Ipê', 
      city: city
    },
    {
      name: 'Jardim Eucaliptos', 
      city: city
    },
    {
      name: 'Jardim Eucalipt', 
      city: city
    },
    {
      name: 'João Evangelista', 
      city: city
    },
    # L
    {
      name: 'Loteamento Darci Schiffler', 
      city: city
    },
    {
      name: 'Lulu Genro', 
      city: city
    },
    {
      name: 'Lulu Santos', 
      city: city
    },
    # M
    {
      name: 'Maria Alice Gomes', 
      city: city
    },
    {
      name: 'Missões', 
      city: city
    },
    {
      name: 'Monsenhor Assis', 
      city: city
    },
    {
      name: 'Monte Alegre', 
      city: city
    },
    # N
    {
      name: 'Nei Pereira', 
      city: city
    },
    # P
    {
      name: 'Padre Assis', 
      city: city
    },
    {
      name: 'Presidente João Goulart', 
      city: city
    },
    # R
    {
      name: 'Riachuelo', 
      city: city
    },
    {
      name: 'Rincão Castilhos', 
      city: city
    },
    # S
    {
      name: 'Santiago Pompeu', 
      city: city
    },
    {
      name: 'São Jorge', 
      city: city
    },
    {
      name: 'São Vicente', 
      city: city
    },
    {
      name: 'Sede', 
      city: city
    },
    {
      name: 'Suburbios', 
      city: city
    },
    # V
    {
      name: 'Vila Belizario', 
      city: city
    },
    {
      name: 'Vila Carlos Humbero', 
      city: city
    },
    {
      name: 'Vila das Paineiras', 
      city: city
    },
    {
      name: 'Vila Itu', 
      city: city
    },
    {
      name: 'Vila Jardim', 
      city: city
    },
    {
      name: 'Vila Missões', 
      city: city
    },
    {
      name: 'Vila N', 
      city: city
    },
    {
      name: 'Vila Nova', 
      city: city
    },
    {
      name: 'Vila Paineiras', 
      city: city
    },
    {
      name: 'Vila Rica', 
      city: city
    },
    {
      name: 'Vila S Pompeu', 
      city: city
    },
    {
      name: 'Vista Alegre', 
      city: city
    },
    # Z
    {
      name: 'Zona Rural', 
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
      name: 'Iee Professor Isaias', 
      type: 'Estadual',
      city: city
    },
    {
      name: 'Colégio Estadual Apolinario Porto Alegre',
      type: 'Estadual',
      city: city
    },
    {
      name: 'Thomas Fortes',
      type: 'Estadual',
      city: city
    },
    {
      name: 'Colégio Estadual Cristovão Pereira',
      type: 'Estadual',
      city: city
    },
    {
      name: 'Colégio Estadual Monsenhor Assis',
      type: 'Estadual',
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
      city: city
    },
    {
      name: 'UNISUL',
      description: 'Universidade do Sul de Santa Catarina',
      city: city
    },
    {
      name: 'ULBRA',
      description: 'Universidade Luterana do Brasil',
      city: city
    },
    {
      name: 'UNOPAR',
      description: 'Universidade Norte do Paraná',
      city: city
    },
    {
      name: 'URI',
      description: 'Universidade Regional Integrada do Alto Uruguai e das Missões',
      city: city
    }
  ]
)