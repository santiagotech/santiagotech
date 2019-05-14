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

# Profession
# @implemented
Profession.destroy_all
Profession.create(
  [
    {name: 'Administração'},
    {name: 'Administração Publica'},
    {name: 'Agronegócio e Agropecuaria'},
    {name: 'Ciências Aeronauticas'},
    {name: 'Ciências Atuarias'},
    {name: 'Ciências Contabeis'},
    {name: 'Ciências Economicas'},
    {name: 'Comércio Exterior'},
    {name: 'Defesa e Gestão Estratégica Internacional'},
    {name: 'Gastronomia'},
    {name: 'Gestão Comercial'},
    {name: 'Gestão de Recursos Humanos'},
    {name: 'Gestão de Segurança Privada'},
    {name: 'Gestão de Seguros'},
    {name: 'Gestão de Turismo'},
    {name: 'Gestão Financeira'},
    {name: 'Gestão Publica'},
    {name: 'Hotelaria'},
    {name: 'Logistica'},
    {name: 'Marketing'},
    {name: 'Negócios Imobiliários'},
    {name: 'Pilotegem profissional de aeronaves'},
    {name: 'Segurança Publica'},
    {name: 'Turismo'},
    {name: 'Arte e Design'},
    {name: 'Arquitetura e Urbanismo'},
    {name: 'Artes Visuais'},
    {name: 'Comunicação das Artes do Corpo'},
    {name: 'Artes Visuais'},
    {name: 'Convervação e Restauro'},
    {name: 'Dança'},
    {name: 'Design'},
    {name: 'Design de Games'},
    {name: 'Design de Interiores'},
    {name: 'Design de Moda'},
    {name: 'Fotografia'},
    {name: 'História da Arte'},
    {name: 'Jogos Digitais'},
    {name: 'Luteria'},
    {name: 'Música'},
    {name: 'Produção Ciêntifica'},
    {name: 'Produção Cientifica'},
    {name: 'Produção Fonográfica'},
    {name: 'Teatro'},
    {name: 'Agroecologia'},
    {name: 'Agronomia'},
    {name: 'Alimentos'},
    {name: 'Biocombustíveis'},
    {name: 'Biotecnologia'},
    {name: 'Biotecnologia e Bioquímica'},
    {name: 'Ciência e Tecnologia de Alimentos'},
    {name: 'Ciências Agrárias'},
    {name: 'Ciências Biológicas'},
    {name: 'Ciencias Naturais e Exatas'},
    {name: 'Ecologia'},
    {name: 'Geofísica'},
    {name: 'Geologia'},
    {name: 'Gestão Ambiental'},
    {name: 'Medicina Veterinária'},
    {name: 'Oceanografia'},
    {name: 'Produção de Bebidas'},
    {name: 'Produção Sucroalcooleira'},
    {name: 'Rochas Ornamentais'},
    {name: 'Zootecnia'},
    {name: 'Ciências Exatas e informatica'},
    {name: 'Astronomia'},
    {name: 'Banco de Dados'},
    {name: 'Ciência da Computação'},
    {name: 'Ciência e Tecnologia'},
    {name: 'Computação'},
    {name: 'Estatística'},
    {name: 'Fisíca'},
    {name: 'Gestão da Tecnologia da Informação'},
    {name: 'Informática Biomédica'},
    {name: 'Matemática'},
    {name: 'Nanotecnologia'},
    {name: 'Química'},
    {name: 'Redes de Computadores'},
    {name: 'Sistemas de Informação'},
    {name: 'Segurança da Informação'},
    {name: 'Sistemas para a Internet'},
    {name: 'Arqueologia'},
    {name: 'Ciencias do Consumo'},
    {name: 'Ciências Humanas'},
    {name: 'Ciências Sociais'},
    {name: 'Cooperativismo'},
    {name: 'Direito'},
    {name: 'Escrita Criativa'},
    {name: 'Estudos de Gênero e Diversidade'},
    {name: 'Filosofia'},
    {name: 'Geografia'},
    {name: 'Gestão de Cooperativas'},
    {name: 'História'},
    {name: 'Letras'},
    {name: 'Libras'},
    {name: 'Linguistica'},
    {name: 'Museologica'},
    {name: 'Pedagogia'},
    {name: 'Psicopedagogia'},
    {name: 'Relações Internacionais'},
    {name: 'Serviço Social'},
    {name: 'Serviços Judiciários e Notariais'},
    {name: 'Teologia'},
    {name: 'Tradutor e Interprete'},
    {name: 'Arquivologia'},
    {name: 'Biblioteconomia'},
    {name: 'Cinema e Audiovisual'},
    {name: 'Comunicação Institucional'},
    {name: 'Comunicação Organizacional'},
    {name: 'Educomunicação'},
    {name: 'Estudos de Mídia'},
    {name: 'Eventos'},
    {name: 'Gestão da Informação'},
    {name: 'Jornalismo'},
    {name: 'Produção Audiovisual'},
    {name: 'Produção Cultural'},
    {name: 'Produção Editorial'},
    {name: 'Produção Multimídia'},
    {name: 'Produção Publicitária'},
    {name: 'Publicidade e Propaganda'},
    {name: 'Rádio, TV e Internet'},
    {name: 'Relações Publicas'},
    {name: 'Secretáriado'},
    {name: 'Secretáriado Executivo'},
    {name: 'Agrimensura'},
    {name: 'Aquicultura'},
    {name: 'Automação Industrial'},
    {name: 'Construção Civil'},
    {name: 'Construção Naval'},
    {name: 'Eletrônica Industrial'},
    {name: 'Eletrotécnica Industrial'},
    {name: 'Energias Renováveis'},
    {name: 'Engenharia Acústica'},
    {name: 'Engenharia Aéronautica'},
    {name: 'Engenharia Agrícola'},
    {name: 'Engenharia Ambiental e Sanitária'},
    {name: 'Engenharia Biomédica'},
    {name: 'Engenharia Bioquimica, de Bioprocessos e Biotecnologia'},
    {name: 'Engenharia Cartográfica e de Agrimensura'},
    {name: 'Engenharia Civil'},
    {name: 'Engenharia de Computação'},
    {name: 'Engenharia de Alimentos'},
    {name: 'Engenharia de Biossistemas'},
    {name: 'Engenharia de Controle e Automação'},
    {name: 'Engenharia de Energia'},
    {name: 'Engenharia de Inovação'},
    {name: 'Engenharia de Materiais'},
    {name: 'Engenharia de Minas'},
    {name: 'Engenharia de Pesca'},
    {name: 'Engenharia de Petróleo'},
    {name: 'Engenharia de Produção'},
    {name: 'Engenharia de Segurança no Trabalho'},
    {name: 'Engenharia de Sistemas'},
    {name: 'Engenharia de Software'},
    {name: 'Engenharia de Telecomunicações'},
    {name: 'Engenharia de Transporte e Mobilidade'},
    {name: 'Engenharia Elétrica'},
    {name: 'Engenharia Eletrônica'},
    {name: 'Engenharia Física'},
    {name: 'Engenharia Florestal'},
    {name: 'Engenharia Hídrica'},
    {name: 'Engenharia Industrial Madeireira'},
    {name: 'Engenharia Mecânica'},
    {name: 'Engenharia Macatrônica'},
    {name: 'Engenharia Metalúrgica'},
    {name: 'Engenharia Naval'},
    {name: 'Engenharia Quimica'},
    {name: 'Engenharia Nuclear'},
    {name: 'Engenharia Têxtil'},
    {name: 'Fabricação Mecânica'},
    {name: 'Geoprocessamento'},
    {name: 'Gestão da Produção Industrial'},
    {name: 'Gestão de Qualidade'},
    {name: 'Irrigação e Drenagem'},
    {name: 'Manutenção de Aéronaves'},
    {name: 'Manutenção industrial (T/L)'},
    {name: 'Materiais'},
    {name: 'Macatrônica industrial'},
    {name: 'Mineração'},
    {name: 'Papel e Celulose'},
    {name: 'Petróleo e Gás'},
    {name: 'Processos Metalúrgicos'},
    {name: 'Processos Químicos'},
    {name: 'Produção Têxtil'},
    {name: 'Saneamento Ambiental'},
    {name: 'Segurança do Trabalho'},
    {name: 'Silvicultura'},
    {name: 'Sistemas Biomédicos'},
    {name: 'Sistemas de Telecomunicações'},
    {name: 'Sistemas Elétricos'},
    {name: 'Sistemas Embarcados'},
    {name: 'Transporte'},
    {name: 'Biomedicina'},
    {name: 'Educação Física'},
    {name: 'Enfermagem'},
    {name: 'Esporte'},
    {name: 'Estética e Cosmética'},
    {name: 'Farmácia'},
    {name: 'Fisioterapia'},
    {name: 'Fonoaudiologia'},
    {name: 'Gerontologia'},
    {name: 'Gestão Desportiva e de Lazer'},
    {name: 'Gestão em Saúde'},
    {name: 'Gestão Hospitalar'},
    {name: 'Medicina'},
    {name: 'Musicoterapia'},
    {name: 'Naturologia'},
    {name: 'Nutrição'},
    {name: 'Obstétricia'},
    {name: 'Odontologia'},
    {name: 'Oftálmica'},
    {name: 'Optometria'},
    {name: 'Psicologia'},
    {name: 'Quiropraxia'},
    {name: 'Radiologia'},
    {name: 'Sáude Coletiva'},
    {name: 'Terapia Ocupacional'},
    {name: 'Outra'}
  ]
)

puts '\n Finished running seeds \n'
puts "\nProcessing time #{realtime.ceil}"