# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Book.destroy_all
Author.destroy_all
Genre.destroy_all

Author.create(firstname: 'Brandon', lastname: 'Sanderson', nationality: 'Botswana', date_of_birth: Date.parse('1981-10-11'), bio: 'Brandon’s major books for the second half of 2016.')
Author.create(firstname: 'Patrick', lastname: 'Rothfuss', nationality: 'Argenitna', date_of_birth: Date.parse('1957-12-12'), bio: "It all began when Pat Rothfuss was born to a marvelous set of parents. Throughout his formative years they encouraged him to do his best, gave him good advice, and were no doubt appropriately dismayed when he failed to live up to his full potential.")
Author.create(firstname: 'Cassandra', lastname: 'Clare', nationality: 'Iran', date_of_birth: Date.parse("1980-01-05"), bio: "Cassandra Clare was born overseas and spent her early years traveling around the world with her family and several trunks of fantasy books.")
Author.create(firstname: 'Rick', lastname: 'Riordan', nationality: 'Brazil', date_of_birth: Date.parse("1995-01-05"), bio: 'Rick Riordan is the #1 New York Times bestselling author of many books, ')
Author.create(firstname: 'Bill', lastname: 'Waterson', nationality: 'Canada', date_of_birth: Date.parse("1958-07-05"), bio: "Bill Watterson (born William Boyd Watterson II) is an American cartoonist, and the author of the comic strip \"Calvin and Hobbes\"")

Genre.create(name: 'Fantasy', desc: '
Fantasy is a genre that uses magic and other supernatural forms as a primary element of plot, theme, and/or setting.')
Genre.create(name: 'Romance', desc: '')
Genre.create(name: 'Adventure', desc: '')
Genre.create(name: 'Comics', desc: 'A comic book or comicbook, also called comic magazine or simply comic, is a publication that consists of comic art in the form of sequential juxtaposed panels that represent individual scenes.')

Book.create(title: 'The Way of Kings', author_id: 1, genre_id: 1, year: '2013', description: 'Roshar is a world of stone and storms. Uncanny tempests of incredible power sweep across the rocky terrain so frequently that they have shaped ecology and civilization alike.')
Book.create(title: 'Oathbringer', author_id: 1, genre_id: 1, year: '2015', description: 'In Oathbringer, the third volume of the New York Times bestselling Stormlight Archive, humanity faces a new Desolation with the return of the Voidbringers, a foe with numbers as great as their thirst for vengeance.')
Book.create(title: 'Words of Radiance', author_id: 1, genre_id: 1, year: '2017', description: 'From #1 New York Times bestselling author Brandon Sanderson, Words of Radiance, Book Two of the Stormlight Archive, continues the immersive fantasy epic that The Way of Kings began.')
Book.create(title: "The Wise Man's Fear", author_id: 2, genre_id: 1, year: '2010', description: 'There are three things all wise men fear: the sea in storm, a night with no moon, and the anger of a gentle man.')
Book.create(title: "The Lightning Tree", author_id: 2, genre_id: 1, year: '2014', description: 'The Lightning Tree is a novella and one of the companion tales in the The Kingkiller Chronicle series. It was published in the anthology called Rogues published by Bantam Spectra.')
Book.create(title: "Clockwork Princess", author_id: 3, genre_id: 2, year: '2015', description: '')
Book.create(title: "The House of Hades", author_id: 3, genre_id: 3, year: '2012', description: '')
Book.create(title: "Calvin and Hobbes", author_id: 4, genre_id: 4, year: '1995', description: 'This is the first collection of the popular comic strip that features Calvin, a rambunctious 6-year-old boy, and his stuffed tiger, Hobbes, who comes charmingly to life.')
