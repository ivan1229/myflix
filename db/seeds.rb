# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Video.create(title: "The Avengers", description: "Earth's mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.", small_cover_url: "the_avengers_small.jpg", large_cover_url: "the_avengers_large.jpg")
Video.create(title: "Finding Dory", description: "The friendly but forgetful blue tang fish, Dory, begins a search for her long-lost parents, and everyone learns a few things about the real meaning of family along the way.", small_cover_url: "finding_dory_small.jpg", large_cover_url: "finding_dory_large.jpg")
Video.create(title: "Smurfs", description: "In this fully animated, all-new take on the Smurfs, a mysterious map sets Smurfette and her friends Brainy, Clumsy and Hefty on an exciting race through the Forbidden Forest leading to the discovery of the biggest secret in Smurf history.", small_cover_url: "smurfs_small.jpg", large_cover_url: "smurfs_large.jpg")
