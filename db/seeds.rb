# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin_user = User.create!(username: "admin", email: "tubetvadmin@tube.tv", password: "tubetvadmin")

Channel.create!(channel_key: "UC0M0rxSz3IF0CsSour1iWmw", user: admin_user)
Channel.create!(channel_key: "UC3_VCOJMaivgcGqPCTePLBA", user: admin_user)