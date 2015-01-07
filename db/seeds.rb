# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project = Project.create(name: 'Project Name', thumburl: 'http://a1.s6img.com/cdn/0009/p/2250559_9176873_lz.jpg', description: 'This is a sample project description. It describes a sample project.', post: 'This is an example of the longer description that a project might have. It can include paragraphs and other editing tricks.')

picture = Picture.create(thumburl: 'http://a1.s6img.com/cdn/0009/p/2250559_9176873_lz.jpg', project_id: project.id , alt: 'This is a sloth in an astronaut costume')