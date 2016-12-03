# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

current_account = Account.find_by(email: "dex.pgsoto@gmail.com")

1000.times { current_account.tasks.create(name: Faker::Name.name_with_middle, 
                                          description: Faker::Hipster.paragraph,
                                          is_done: Faker::Boolean.boolean) }
