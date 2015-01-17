category = Category.create(name: 'Sample')

project = Project.create(name: 'Project Name', 
                     thumburl: 'http://a1.s6img.com/cdn/0009/p/2250559_9176873_lz.jpg', 
                  description: 'This is a sample project description. It describes a sample project.', 
                         post: 'This is an example of the longer description that a project might have. It can include paragraphs and other editing tricks.', 
                     category: category)


picture = Picture.create(thumburl: 'http://a1.s6img.com/cdn/0009/p/2250559_9176873_lz.jpg', 
                         project: project, 
                         alt: 'This is a sloth in an astronaut costume')


theatre = Category.create(name: 'Theatre')

project = Project.create(name: 'Sample Theatre Project', 
                     thumburl: 'http://a1.s6img.com/cdn/0009/p/2250559_9176873_lz.jpg', 
                  description: 'Theater projects take a lot of late night work at the school', 
                         post: 'I did lots of them', 
                     category: theatre)


computing = Category.create(name: 'Computing')
other = Category.create(name: 'Other')