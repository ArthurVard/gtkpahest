# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


if Room.find(1)
	Room.find(1).update({id:1, number: 1,  name: "ՊԱՀԵՍՏՈՒՄ"})
else
	Room.create({id:1, number: 1,  name: "ՊԱՀԵՍՏՈՒՄ"})
end

if !State.any?
	State.create({id: 1, name: "Պիտանի"})
	State.create({id: 2, name: "Դուրս գրելու"})
	State.create({id: 3, name: "Նոր"})
end

if !Section.any?
	Section.create({ name: "Արտաքին համագործակցության բաժին", phone: 619})
	Section.create({ name: "Տնօրինություն", phone: 604})
	Section.create({ name: "Իրավաբանական և անձնակազմի կառավարման բաժին", phone: 604})
	Section.create({ name: "Ֆինանսահաշվապահական բաժին", phone: 604})
	Section.create({ name: "Հրատարակչական բաժին", phone: 604})
	Section.create({ name: "Տպարան", phone: 604})
	Section.create({ name: "Տնտեսական բաժին", phone: 622})
	Section.create({ name: "Քննությունների կազմակերպման բաժին", phone: 609})
	Section.create({ name: "Համակարգչային և վերլուծական աշխատանքների բաժին", phone: 604})
	Section.create({ name: "Թեստաբանության բաժին", phone: 604})
end

if !Position.any?
	Position.create({name: "Առաջին կարգի մասնագետ", salary: 120000})
	Position.create({name: "Առաջատար  մասնագետ", salary: 120000})
	Position.create({name: "Գլխավոր մասնագետ", salary: 120000})
	Position.create({name: "Բաժնի պետ", salary: 120000})
	Position.create({name: "Տնօրենի խորհրդական", salary: 120000})
	Position.create({name: "Տնօրեն", salary: 120000})
	Position.create({name: "Բանվոր", salary: 120000})
	Position.create({name: "Պահակ", salary: 120000})
	Position.create({name: "Վարորդ", salary: 120000})
	Position.create({name: "Հավաքարար", salary: 120000})
	
end