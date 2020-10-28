//
//  books.swift
//  FirebaseTemplate
//
//  Created by Mac on 10/17/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import Foundation

struct Book: Codable {
    var name: String
    var writer: String
    var category: String
    var price: Double
    var image: String
    var description: String
}

struct Category: Codable {
    var category: String
    var books: [Book]
}

var fantasy: [Book] = [
    .init(name: "The Lord of the Rings", writer: "J.R.R. Tolkien", category: "Fantasy", price: 4.9, image: "The Lord of the Rings", description: "In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins."),
    .init(name: "The Hobbit", writer: "J. R. R. Tolkien", category: "Fantasy", price: 5.2, image: "The Hobbit", description: "Smaug certainly looked fast asleep, when Bilbo peeped once more from the entrance. He was just about to step out onto the floor when he caught a sudden thin ray of red from under the drooping lid of Smaug's left eye. He was only pretending to be sleep! He was watching the tunnel entrance!"),
    .init(name: "A Game Of Thrones", writer: "George R. R. Martin", category: "Fantasy", price: 4.6, image: "A Game Of Thrones", description: "Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.")
]



var crime: [Book] = [
.init(name: "IN COLD BLOOD", writer: "Truman Capote", category: "Crime", price: 2.2, image: "book", description: "On November 15, 1959, in the small town of Holcomb, Kansas, four members of the Clutter family were savagely murdered by blasts from a shotgun held a few inches from their faces. There was no apparent motive for the crime, and there were almost no clues. "),
.init(name: "THE STRANGER BESIDE ME", writer: "Ann Rule", category: "Crime", price: 3.3, image: "book", description: "Utterly unique in its astonishing intimacy, as jarringly frightening as when it first appeared, Ann Rule's The Stranger Beside Me defies our expectation that we would surely know if a monster lived among us, worked alongside of us, appeared as one of us. With a slow chill that intensifies with each heart-pounding page, Rule describes her dawning awareness that Ted Bundy, her sensitive coworker on a crisis hotline, was one of the most prolific serial killers in America. He would confess to killing at least thirty-six young women from coast to coast, and was eventually executed for three of those cases. Drawing from their correspondence that endured until shortly before Bundy's death, and striking a seamless balance between her deeply personal perspective and her role as a crime reporter on the hunt for a savage serial killer -- the brilliant and charismatic Bundy, the man she thought she knew -- Rule changed the course of true-crime literature with this unforgettable chronicle."),
.init(name: "THE JOURNALIST AND THE MURDERER", writer: "Janet Malcolm", category: "Crime", price: 3.7, image: "book", description: "A seminal work and examination of the psychopathology of journalism. Using a strange and unprecedented lawsuit as her larger-than-life example -- the lawsuit of Jeffrey MacDonald, a convicted murderer, against Joe McGinniss, the author of Fatal Vision, a book about the crime -- she delves into the always uneasy, sometimes tragic relationship that exists between journalist and subject. In Malcolm's view, neither journalist nor subject can avoid the moral impasse that is built into the journalistic situation. When the text first appeared, as a two-part article in The New Yorker, its thesis seemed so radical and its irony so pitiless that journalists across the country reacted as if stung.")
]
var romance: [Book] = [
.init(name: "It Ends With Us", writer: "COLLEEN HOOVER", category: "Romance", price: 3.2, image: "book", description: "Lily hasn’t always had it easy, but that’s never stopped her from working hard for the life she wants. She’s come a long way from the small town in Maine where she grew up—she graduated from college, moved to Boston, and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything in Lily’s life suddenly seems almost too good to be true."),
.init(name: "The Proposal", writer: "JASMINE GUILLORY", category: "Romance", price: 3.0, image: "book", description: "When freelance writer Nikole Paterson goes to a Dodgers game with her actor boyfriend, his man bun, and his bros, the last thing she expects is a scoreboard proposal. Saying no isn't the hard part—they've only been dating for five months, and he can’t even spell her name correctly. The hard part is having to face a stadium full of disappointed fans..."),
.init(name: "The Hating Game", writer: "SALLY THORNE", category: "Romance", price: 3.4, image: "book", description: "Lucy Hutton and Joshua Templeman hate each other. Not dislike. Not begrudgingly tolerate. Hate. And they have no problem displaying their feelings through a series of ritualistic passive aggressive maneuvers as they sit across from each other, executive assistants to co-CEOs of a publishing company. Lucy can’t understand Joshua’s joyless, uptight, meticulous approach to his job. Joshua is clearly baffled by Lucy’s overly bright clothes, quirkiness, and Pollyanna attitude.")
]
var childrenBooks: [Book] = [
.init(name: "Each Peach Pear Plum", writer: "Allan Ahlberg", category: "Children", price: 2, image: "book", description: "")
]

var horror: [Book] = [
   .init(name: "The Lord of the Rings", writer: "J.R.R. Tolkien", category: "Fantasy", price: 4.9, image: "book", description: "In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins."),
    .init(name: "The Hobbit", writer: "J. R. R. Tolkien", category: "Fantasy", price: 5.2, image: "book", description: "Smaug certainly looked fast asleep, when Bilbo peeped once more from the entrance. He was just about to step out onto the floor when he caught a sudden thin ray of red from under the drooping lid of Smaug's left eye. He was only pretending to be sleep! He was watching the tunnel entrance!"),
    .init(name: "A Game Of Thrones", writer: "George R. R. Martin", category: "Fantasy", price: 4.6, image: "book", description: "Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.")
]
var educational: [Book] = [
    .init(name: "The Lord of the Rings", writer: "J.R.R. Tolkien", category: "Fantasy", price: 4.9, image: "book", description: "In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins."),
    .init(name: "The Hobbit", writer: "J. R. R. Tolkien", category: "Fantasy", price: 5.2, image: "book", description: "Smaug certainly looked fast asleep, when Bilbo peeped once more from the entrance. He was just about to step out onto the floor when he caught a sudden thin ray of red from under the drooping lid of Smaug's left eye. He was only pretending to be sleep! He was watching the tunnel entrance!"),
    .init(name: "A Game Of Thrones", writer: "George R. R. Martin", category: "Fantasy", price: 4.6, image: "book", description: "Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.")
]
var religious: [Book] = [
    .init(name: "The Lord of the Rings", writer: "J.R.R. Tolkien", category: "Fantasy", price: 4.9, image: "book", description: "In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins."),
    .init(name: "The Hobbit", writer: "J. R. R. Tolkien", category: "Fantasy", price: 5.2, image: "book", description: "Smaug certainly looked fast asleep, when Bilbo peeped once more from the entrance. He was just about to step out onto the floor when he caught a sudden thin ray of red from under the drooping lid of Smaug's left eye. He was only pretending to be sleep! He was watching the tunnel entrance!"),
    .init(name: "A Game Of Thrones", writer: "George R. R. Martin", category: "Fantasy", price: 4.6, image: "book", description: "Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.")
]
var selfHelp: [Book] = [
    .init(name: "The Lord of the Rings", writer: "J.R.R. Tolkien", category: "Fantasy", price: 4.9, image: "book", description: "In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins."),
    .init(name: "The Hobbit", writer: "J. R. R. Tolkien", category: "Fantasy", price: 5.2, image: "book", description: "Smaug certainly looked fast asleep, when Bilbo peeped once more from the entrance. He was just about to step out onto the floor when he caught a sudden thin ray of red from under the drooping lid of Smaug's left eye. He was only pretending to be sleep! He was watching the tunnel entrance!"),
    .init(name: "A Game Of Thrones", writer: "George R. R. Martin", category: "Fantasy", price: 4.6, image: "book", description: "Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens.")
]
 
var categories: [Category] = [
    .init(category: "Romance", books: romance),
    .init(category: "Children", books: childrenBooks),
    .init(category: "Crime", books: crime),
    .init(category: "Fantasy", books: fantasy),
    .init(category: "Horror", books: horror),
    .init(category: "Educational", books: educational),
    .init(category: "Religious", books: religious),
    .init(category: "Self-Help", books: selfHelp)
]

