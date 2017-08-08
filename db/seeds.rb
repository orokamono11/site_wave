# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do |d|
    Site.create(
        user_id: 1,
        title: "サイト#{d}",
        address: "site#{d}.co.jp",
        introduction: "紹介文#{d}"
    )
end