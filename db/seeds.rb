# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Link.create original_url: "http://burymewithmymoney.com/", short_url: Link.generate_short_url(3), visits: 0
Link.create original_url: "http://cant-not-tweet-this.com/", short_url: Link.generate_short_url(3), visits: 0
Link.create original_url: "http://www.staggeringbeauty.com/", short_url: Link.generate_short_url(3), visits: 0
Link.create original_url: "http://www.fallingfalling.com/", short_url: Link.generate_short_url(3), visits: 0




