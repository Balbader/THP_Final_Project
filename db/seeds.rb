Category.destroy_all
User.destroy_all
Trivium.destroy_all
Answer.destroy_all

data = { results: [
    # 09. General Knowledge
    {category: "General Knowledge",
      type: "multiple",
      question: "Area 51 is located in which US state?",
      correct_answer: "Nevada",
      incorrect_answers: [
        "Arizona",
        "New Mexico",
        "Utah"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      question: "In the Morse code, which letter is indicated by 3 dots? ",
      correct_answer: "S",
      incorrect_answers: [
        "O",
        "A",
        "C"
      ]
    },
    {category: "General Knowledge",
      type: "boolean",
      question: "It is automatically considered entrapment in the United States if the police sell you illegal substances without revealing themselves.",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "General Knowledge",
      type: "multiple",
      question: "Who is a co-founder of music streaming service Spotify?",
      correct_answer: "Daniel Ek",
      incorrect_answers: [
        "Sean Parker",
        "Felix Miller",
        "Michael Breidenbruecker"
      ]
    },
    {category: "General Knowledge",
      type: "multiple", 
      question: "Which of these banks are NOT authorized to issue currency notes in Hong Kong?",
      correct_answer: "OCBC",
      incorrect_answers: [
        "HSBC",
        "Standard Chartered",
        "Bank of China"
      ]
    },
    {category: "General Knowledge",
      type: "boolean", 
      question: "&quot;Number 16 Bus Shelter&quot; was a child&#039;s name that was approved by the New Zealand government.",
      correct_answer: "True",
      incorrect_answers: ["False"]
    },
    {category: "General Knowledge",
      type: "multiple",
      question: "What is the Swedish word for &quot;window&quot;?",
      correct_answer: "F&ouml;nster",
      incorrect_answers: [
        "H&aring;l",
        "Sk&auml;rm",
        "Ruta"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      question: "The term &quot;scientist&quot; was coined in which year?",
      correct_answer: "1833",
      incorrect_answers: [
        "1933",
        "1942",
        "1796"
      ]
    },
    {category: "General Knowledge",
      type: "multiple", 
      question: "Which one of these Swedish companies was founded in 1943?",
      correct_answer: "IKEA",
      incorrect_answers: [
      "H &amp; M",
      "Lindex",
      "Clas Ohlson"
      ]
    },
    {category: "General Knowledge",
      type: "multiple", 
      question: "According to Fair Works Australia, how long do you have to work to get Long Service Leave?",
      correct_answer: "7 years",
      incorrect_answers: [
        "2 years",
        "8 years",
        "6 months"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      question: "When was the Declaration of Independence approved by the Second Continental Congress?",
      correct_answer: "July 2, 1776",
      incorrect_answers: [
        "May 4, 1776",
        "June 4, 1776",
        "July 4, 1776"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      question: "What name represents the letter &quot;M&quot; in the NATO phonetic alphabet?",
      correct_answer: "Mike",
      incorrect_answers: [
        "Matthew",
        "Mark",
        "Max"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      question: "What is the defining characteristic of someone who is described as hirsute?",
      correct_answer: "Hairy",
      incorrect_answers: [
        "Rude",
        "Funny",
        "Tall"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      question: "Area 51 is located in which US state?",
      correct_answer: "Nevada",
      incorrect_answers: [
        "Arizona",
        "New Mexico",
        "Utah"
      ]
    },
    {category: "General Knowledge",
      type: "boolean",
      question: "Nutella is produced by the German company Ferrero.",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "General Knowledge",
      type: "boolean",
      question: "The word &quot;news&quot; originates from the first letters of the 4 main directions on a compass (North, East, West, South).",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "General Knowledge",
      type: "multiple", 
      question: "What year was Queen Elizabeth II born?",
      correct_answer: "1926",
      incorrect_answers: [
        "1923",
        "1929",
        "1930"
      ]
    },
    {category: "General Knowledge",
      type: "multiple",
      question: "The term &quot;scientist&quot; was coined in which year?",
      correct_answer: "1833",
      incorrect_answers: [
        "1933",
        "1942",
        "1796"
      ]
    },
    {category: "General Knowledge",
      type: "boolean",
      question: "Adolf Hitler was born in Australia. ",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "General Knowledge",
      type: "multiple",
      question: "What was the soft drink Pepsi originally introduced as?",
      correct_answer: "Brad&#039;s Drink",
      incorrect_answers: [
        "Pepsin Pop",
        "Carolina Cola",
        "Pepsin Syrup"
      ]
    },
    # 10. Entertainment: Books
    {category: "Entertainment: Books",
      type: "multiple",
      question: "Who wrote &quot;Harry Potter&quot;?",
      correct_answer: "J.K. Rowling",
      incorrect_answers: [
        "J.R.R. Tolkien",
        "Terry Pratchett",
        "Daniel Radcliffe"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "By what name was the author Eric Blair better known?",
      correct_answer: "George Orwell",
      incorrect_answers: [
        "Aldous Huxley",
        "Ernest Hemingway",
        "Ray Bradbury"
      ]
    },
    {category: "Entertainment: Books",
      type: "boolean",
      question: "The &quot;Berenstein Bears&quot; is the correct spelling of the educational children&#039;s book series&#039; name.",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "Entertainment: Books",
      type: "boolean",
      question: "The book 1984 was published in 1949.",
      correct_answer: "True",
      incorrect_answers: ["False"]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "Under what pseudonym did Stephen King publish five novels between 1977 and 1984?",
      correct_answer: "Richard Bachman",
      incorrect_answers: [
        "J. D. Robb",
        "Mark Twain",
        "Lewis Carroll"
      ]
    },
    {category: "Entertainment: Books",
      type: "boolean",
      question: "Stephen Chbosky wrote the book &#039;The Perks of Being A Wallflower&#039;.",
      correct_answer: "True",
      incorrect_answers: ["False"]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "J.K. Rowling completed &quot;Harry Potter and the Deathly Hallows&quot; in which hotel in Edinburgh, Scotland?",
      correct_answer: "The Balmoral",
      incorrect_answers: [
        "The Dunstane Hotel",
        "Hotel Novotel",
        "Sheraton Grand Hotel &amp; Spa"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "In the novel &quot;Lord of the Rings&quot;, how many rings of power were given to the race of man?",
      correct_answer: "9",
      incorrect_answers: [
        "5",
        "11",
        "13"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "What is the make and model of the tour vehicles in &quot;Jurassic Park&quot;?",
      correct_answer: "1992 Toyota Land Cruiser",
      incorrect_answers: [
        "1992 Jeep Wrangler YJ Sahar",
        "1992 Ford Explorer XLT",
        "Mercedes M-Class"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "In Alice in Wonderland, what is the name of Alice&#039;s kitten?",
      correct_answer: "Dinah",
      incorrect_answers: [
        "Oscar",
        "Heath",
        "Smokey"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "Who wrote &quot;Harry Potter&quot;?",
      correct_answer: "J.K. Rowling",
      incorrect_answers: [
        "J.R.R. Tolkien",
        "Terry Pratchett",
        "Daniel Radcliffe"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "Who wrote the &quot;A Song of Ice And Fire&quot; fantasy novel series?",
      correct_answer: "George R. R. Martin",
      incorrect_answers: [
        "George Lucas",
        "George Orwell",
        "George Eliot"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "What is the fourth book of the Old Testament?",
      correct_answer: "Numbers",
      incorrect_answers: [
        "Genesis",
        "Exodus",
        "Leviticus"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "The novel &quot;Of Mice And Men&quot; was written by what author? ",
      correct_answer: "John Steinbeck ",
      incorrect_answers: [
        "George Orwell",
        "Mark Twain ",
        "Harper Lee"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "In the year 1818, novelist Mary Shelly is credited with writing a fiction novel and creating this infamous character.",
      correct_answer: "Frankenstein&#039;s monster",
      incorrect_answers: [
        "Dracula",
        "The Thing",
        "The Invisible Man"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "What is the name of the gang that Ponyboy is a part of in the book, The Outsiders?",
      correct_answer: "The Greasers",
      incorrect_answers: [
        "The Outsiders",
        "The Mafia",
        "The Socs"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "The book &quot;Fahrenheit 451&quot; was written by whom?",
      correct_answer: "Ray Bradbury",
      incorrect_answers: [
        "R. L. Stine",
        "Wolfgang Amadeus Mozart",
        "Stephen King"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple", 
      question: "In Margaret Atwood&#039;s &quot;The Handmaid&#039;s Tale&quot;, what is Offred&#039;s real name is implied to be?",
      correct_answer: "June",
      incorrect_answers: [
        "August",
        "April",
        "May"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple", 
      question: "In the Magic: The Gathering universe, the Antiquities, Ice Age, and Alliances expansions take place on which continent?",
      correct_answer: "Terisiare",
      incorrect_answers: [
        "Aerona",
        "Shiv",
        "Jamuraa"
      ]
    },
    {category: "Entertainment: Books",
      type: "multiple",
      question: "In Alice in Wonderland, what is the name of Alice&#039;s kitten?",
      correct_answer: "Dinah",
      incorrect_answers: [
        "Oscar",
        "Heath",
        "Smokey"
      ]
    },
    # 11. Entertainment: Film
    {category: "Entertainment: Film",
      type: "multiple",
      question: "In the 1984 movie &quot;The Terminator&quot;, what model number is the Terminator portrayed by Arnold Schwarzenegger?",
      correct_answer: "T-800",
      incorrect_answers: [
        "I-950",
        "T-888",
        "T-1000"
      ]
    },
    {category: "Entertainment: Film",
      type: "boolean",
      question: "The movie &quot;The Nightmare before Christmas&quot; was all done with physical objects.",
      correct_answer: "True",
      incorrect_answers: ["False"]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "Which movie contains the quote, &quot;Say hello to my little friend!&quot;?",
      correct_answer: "Scarface",
      incorrect_answers: [
        "Reservoir Dogs",
        "Heat",
        "Goodfellas"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "This movie contains the quote, &quot;Nobody puts Baby in a corner.&quot;",
      correct_answer: "Dirty Dancing",
      incorrect_answers: [
        "Three Men and a Baby",
        "Ferris Bueller&#039;s Day Off",
        "Pretty in Pink"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "What is the orange and white bot&#039;s name in &quot;Star Wars: The Force Awakens&quot;?",
      correct_answer: "BB-8",
      incorrect_answers: [
        "BB-3",
        "AA-A",
        "R2-D2"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "What does TIE stand for in reference to the TIE Fighter in &quot;Star Wars&quot;?",
      correct_answer: "Twin Ion Engine",
      incorrect_answers: [
        "Twin Iron Engine",
        "Twin Intercepter Engine",
        "Twin Inception Engine"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple", 
      question: "In the 1964 film &quot;Zulu&quot;, what song does the British Army company sing before the final battle?",
      correct_answer: "Men of Harlech",
      incorrect_answers: [
        "Scotland the Brave",
        "Colonel Bogey March",
        "The British Grenadiers"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "Which animated film did Steven Lisberger direct in 1980 before going on to direct Tron?",
      correct_answer: "Animalympics",
      incorrect_answers: [
        "The Fox and the Hound",
        "The Black Cauldron",
        "The Great Mouse Detecive"
      ]
    },
    {category: "Entertainment: Film",
      type: "boolean",
      question: "George Lucas directed the entire original Star Wars trilogy.",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "What character in the Winnie the Pooh films was added by Disney and does not appear in the original books?",
      correct_answer: "Gopher",
      incorrect_answers: [
        "Tigger",
        "Heffalumps",
        "Rabbit"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "Who played Deputy Marshal Samuel Gerard in the 1993 film &quot;The Fugitive&quot;?",
      correct_answer: "Tommy Lee Jones",
      incorrect_answers: [
        "Harrison Ford",
        "Harvey Keitel",
        "Martin Landau"
      ]
    },
    {category: "Entertainment: Film",
      type: "boolean",
      question: "Shaquille O&#039;Neal appeared in the 1997 film &quot;Space Jam&quot;.",
      correct_answer: "False",
      incorrect_answers: ["True"]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "The 1939 movie &quot;The Wizard of Oz&quot; contained a horse that changed color, what material did they use to achieve this effect?",
      correct_answer: "Gelatin",
      incorrect_answers: [
        "Dye",
        "Paint",
        "CGI Effect"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "Which one of these films are shot entirely in one-take?",
      correct_answer: "Russian Ark",
      incorrect_answers: [
        "Good Will Hunting",
        "Birdman",
        "Schindler&#039;s List"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "Which movie of film director Stanley Kubrick is known to be an adaptation of a Stephen King novel?",
      correct_answer: "The Shining",
      incorrect_answers: [
        "2001: A Space Odyssey",
        " Dr. Strangelove ",
        "Eyes Wide Shut"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "What type of cheese, loved by Wallace and Gromit, had it&#039;s sale prices rise after their successful short films?",
      correct_answer: "Wensleydale",
      incorrect_answers: [
        "Cheddar",
        "Moon Cheese",
        "Edam"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "In the 1995 film &quot;Balto&quot;, who are Steele&#039;s accomplices?",
      correct_answer: "Kaltag, Nikki, and Star",
      incorrect_answers: [
        "Dusty, Kirby, and Ralph",
        "Nuk, Yak, and Sumac",
        "Jenna, Sylvie, and Dixie"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple", 
      question: "In order to cut costs, what were most of the extras of Mad Max (1979) paid with?",
      correct_answer: "Beer",
      incorrect_answers: [
        "Fast food",
        "Food stamps",
        "They weren&#039;t paid"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "Which former Star Trek actor directed Three Men and a Baby (1987)?",
      correct_answer: "Leonard Nimoy",
      incorrect_answers: [
        "William Shatner",
        "George Takei",
        "James Doohan"
      ]
    },
    {category: "Entertainment: Film",
      type: "multiple",
      question: "Which town is the setting for the Disney movie The Love Bug (1968)?",
      correct_answer: "San Francisco",
      incorrect_answers: [
        "Los Angeles",
        "Sacramento",
        "San Jose"
      ]
    },
    # 12. Entertainment: Music
    {category: "Entertainment: Music",
      type: "multiple",
      question: "Which English guitarist has the nickname &quot;Slowhand&quot;?",
      correct_answer: "Eric Clapton",
      incorrect_answers: [
        "Mark Knopfler",
        "Jeff Beck",
        "Jimmy Page"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      question: "Who is the frontman of the band 30 Seconds to Mars?",
      correct_answer: "Jared Leto",
      incorrect_answers: [
        "Gerard Way",
        "Matthew Bellamy",
        "Mike Shinoda"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      question: "Which band released songs such as &quot;Electric Feel&quot;, &quot;Kids&quot;, and &quot;Time to Pretend&quot;?",
      correct_answer: "MGMT",
      incorrect_answers: [
        "Passion Pit",
        "Phoenix",
        "Franz Ferdinand"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      question: "What was the name of singer Frank Ocean&#039;s second studio album, which was released on August 20, 2016?",
      correct_answer: "Blonde",
      incorrect_answers: [
        "Brunette",
        "Black",
        "Burgundy"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      question: "Which of these is NOT the name of an album released by American rapper Viper?",
      correct_answer: "The Life of Pablo",
      incorrect_answers: [
        "Kill Urself My Man",
        "You&#039;ll Cowards Don&#039;t Even Smoke Crack",
        "Yo Wife Handcuffin&#039; Me"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      question: "Which artist released the 2012 single &quot;Harlem Shake&quot;, which was used in numerous YouTube videos in 2013?",
      correct_answer: "Baauer",
      incorrect_answers: [
        "RL Grime",
        "NGHTMRE",
        "Flosstradamus"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple", 
      question: "Which band is the longest active band in the world with no breaks or line-up changes?",
      correct_answer: "U2",
      incorrect_answers: [
        "Radiohead",
        "Rush",
        "Rolling Stones"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      question: "What animal is featured on the cover of English electronic music group The Prodigy&#039;s album, &quot;The Fat of the Land&quot;?",
      correct_answer: "Crab",
      incorrect_answers: [
        "Fox",
        "Elephant",
        "Tiger"
      ]
    },
    {category: "Entertainment: Music",
      type: "multiple",
      question: "Which Beatles album does NOT feature any of the band members on it&#039;s cover?",
      correct_answer: "The Beatles (White Album)",
      incorrect_answers: [
        "Rubber Soul",
        "Abbey Road",
        "Magical Mystery Tour"
      ]
    },
    {
"category": "Entertainment: Film",
"type": "multiple",

"question": "What was the last Marx Brothers film to feature Zeppo?",
"correct_answer": "Duck Soup",
"incorrect_answers": [
"A Night at the Opera",
"A Day at the Races",
"Monkey Business"
]
},
{
"category": "Entertainment: Television",
"type": "multiple",
"question": "Which character was played by Dustin Diamond in the sitcom &#039;Saved by the Bell&#039;?",
"correct_answer": "Screech",
"incorrect_answers": [
"Zack",
"Mr. Belding",
"A.C. Slater"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"question": "Where is the train station &quot;Llanfair&shy;pwllgwyngyll&shy;gogery&shy;chwyrn&shy;drobwll&shy;llan&shy;tysilio&shy;gogo&shy;goch&quot;?",
"correct_answer": "Wales",
"incorrect_answers": [
"Moldova",
"Czech Republic",
"Denmark"
]
},
{
"category": "Science & Nature",
"type": "multiple",
"question": "How many objects are equivalent to one mole?",
"correct_answer": "6.022 x 10^23",
"incorrect_answers": [
"6.002 x 10^22",
"6.022 x 10^22",
"6.002 x 10^23"
]
},
{
"category": "Animals",
"type": "boolean",
"question": "The Ceratosaurus, a dinosaur known for having a horn on the top of its nose, is also known to be a decendent of the Tyrannosaurus Rex.",
"correct_answer": "False",
"incorrect_answers": [
"True"
]
},
{
"category": "Entertainment: Music",
"type": "multiple",
"question": "Typically, how many keys are on a piano?",
"correct_answer": "88",
"incorrect_answers": [
"24",
"12",
"96"
]
},
{
"category": "Animals",
"type": "boolean",
"question": "An octopus can fit through any hole larger than its beak.",
"correct_answer": "True",
"incorrect_answers": [
"False"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"question": "Rolex is a company that specializes in what type of product?",
"correct_answer": "Watches",
"incorrect_answers": [
"Cars",
"Computers",
"Sports equipment"
]
},
{
"category": "Science: Computers",
"type": "multiple",
"question": "What does GHz stand for?",
"correct_answer": "Gigahertz",
"incorrect_answers": [
"Gigahotz",
"Gigahetz",
"Gigahatz"
]
},
{
"category": "Politics",
"type": "boolean",
"question": "There was a satirical candidate named &quot;Deez Nuts&quot; running in the 2016 US presidential elections.",
"correct_answer": "True",
"incorrect_answers": [
"False"
]
},
{
"category": "History",
"type": "multiple",
"question": "Which of the following African countries was most successful in resisting colonization?",
"correct_answer": "Ethiopia",
"incorrect_answers": [
"C&ocirc;te d&rsquo;Ivoire",
"Congo",
"Namibia"
]
},
{
"category": "General Knowledge",
"type": "boolean",
"question": "There are 86400 seconds in a day.",
"correct_answer": "True",
"incorrect_answers": [
"False"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",

"question": "Why was the character Trevor Philips discharged from the Air Force?",
"correct_answer": "Mental Health Issues",
"incorrect_answers": [
"Injuries",
"Disease",
"Danger to Others"
]
},
{
"category": "Entertainment: Music",
"type": "multiple",
"question": "Which Queen song was covered by Brittany Murphy in the 2006 film &quot;Happy Feet&quot;?",
"correct_answer": "Somebody to Love",
"incorrect_answers": [
"Under Pressure",
"Flash",
"Bohemian Rhapsody"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"question": "&quot;Tomb Raider&quot; icon Lara Croft was originally called...",
"correct_answer": "Laura Cruz",
"incorrect_answers": [
"Laura Craft",
"Laura Croft",
"Lara Craft"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"question": "Which CS:GO eSports team won the major event ESL One Cologne 2016?",
"correct_answer": "SK Gaming",
"incorrect_answers": [
"Team Liquid",
"Fnatic",
"Virtus.pro"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"question": "Which of these is the name of a Japanese system of alternative medicine, literally meaning &quot;finger pressure&quot;?",
"correct_answer": "Shiatsu",
"incorrect_answers": [
"Ukiyo",
"Majime",
"Ikigai"
]
},
{
"category": "Geography",
"type": "multiple",

"question": "What year is on the flag of the US state Wisconsin?",
"correct_answer": "1848",
"incorrect_answers": [
"1634",
"1783",
"1901"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"question": "What is the Spanish word for &quot;donkey&quot;?",
"correct_answer": "Burro",
"incorrect_answers": [
"Caballo",
"Toro",
"Perro"
]
},
{
"category": "Politics",
"type": "boolean",
"question": "The 2016 United States Presidential Election is the first time Hillary Clinton has run for President.",
"correct_answer": "False",
"incorrect_answers": [
"True"
]
},
{
"category": "Entertainment: Video Games",
"type": "boolean",

"question": "In &quot;Metal Gear Solid 2&quot;, you will see through the eyes of Psycho Mantis if you go first person during his boss fight.",
"correct_answer": "True",
"incorrect_answers": [
"False"
]
},
{
"category": "Science & Nature",
"type": "multiple",

"question": "&quot;The Big Bang Theory&quot; was first theorized by a priest of what religious ideology?",
"correct_answer": "Catholic",
"incorrect_answers": [
"Christian",
"Jewish",
"Islamic"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"question": "By how many minutes are you late to work in &quot;Half-Life&quot;?",
"correct_answer": "30",
"incorrect_answers": [
"5",
"60",
"15"
]
},
{
"category": "Entertainment: Music",
"type": "multiple",
"question": "Which of these songs by artist Eminem contain the lyric &quot;Nice to meet you. Hi, my name is... I forgot my name!&quot;?",
"correct_answer": "Rain Man",
"incorrect_answers": [
"Without Me",
"Kim",
"Square Dance"
]
},
{
"category": "Entertainment: Music",
"type": "multiple",
"question": "Which of these is the name of a song by Tears for Fears?",
"correct_answer": "Shout",
"incorrect_answers": [
"Scream",
"Yell",
"Shriek"
]
},
{
"category": "Entertainment: Music",
"type": "multiple",
"question": "What is the relationship between the band members of American rock band King of Leon?",
"correct_answer": "Brothers &amp; cousins",
"incorrect_answers": [
"Childhood friends",
"Former classmates",
"Fraternity house members"
]
},
{
"category": "Science & Nature",
"type": "multiple",

"question": "Which of these is a stop codon in DNA?",
"correct_answer": "TAA",
"incorrect_answers": [
"ACT",
"ACA",
"GTA"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"question": "In Pokemon Red &amp; Blue, what is the name of HM05?",
"correct_answer": "Flash",
"incorrect_answers": [
"Strength",
"Cut",
"Fly"
]
},
{
"category": "Science: Computers",
"type": "boolean",
"question": "Time on Computers is measured via the EPOX System.",
"correct_answer": "False",
"incorrect_answers": [
"True"
]
},
{
"category": "History",
"type": "multiple",

"question": "The Battle of Hastings was fought in which year?",
"correct_answer": "1066",
"incorrect_answers": [
"911",
"1204",
"1420"
]
},
{
"category": "Science & Nature",
"type": "multiple",
"question": "Who made the discovery of X-rays?",
"correct_answer": "Wilhelm Conrad R&ouml;ntgen",
"incorrect_answers": [
"Thomas Alva Edison",
"James Watt",
"Albert Einstein"
]
},
{
"category": "Entertainment: Music",
"type": "boolean",

"question": "The band STRFKR was also briefly known as Pyramiddd.",
"correct_answer": "True",
"incorrect_answers": [
"False"
]
},
{
"category": "Geography",
"type": "multiple",
"question": "What is the busiest port in Europe?",
"correct_answer": "Port of Rotterdam",
"incorrect_answers": [
"Port of Antwerp",
"Port of Hamburg",
"Port of Amsterdam"
]
},
{
"category": "Sports",
"type": "multiple",
"question": "Which of the following Grand Slam tennis tournaments occurs LAST?",
"correct_answer": "US Open",
"incorrect_answers": [
"French Open",
"Wimbledon",
"Australian Open"
]
},
{
"category": "Vehicles",
"type": "multiple",
"question": "Which car tire manufacturer is famous for its &quot;Eagle&quot; brand of tires, and is the official tire supplier of NASCAR?",
"correct_answer": "Goodyear",
"incorrect_answers": [
"Pirelli",
"Bridgestone",
"Michelin"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"question": "In which year did the first Monster Hunter game get released?",
"correct_answer": "2004",
"incorrect_answers": [
"2006",
"2005",
"2002"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"question": "Ellen McLain, the voice of GLaDOS in the Portal game series, is married to the voice actor for which Team Fortress 2 character?",
"correct_answer": "Sniper",
"incorrect_answers": [
"Heavy",
"Soldier",
"Scout"
]
},
{
"category": "Science: Computers",
"type": "boolean",
"question": "Linux was first created as an alternative to Windows XP.",
"correct_answer": "False",
"incorrect_answers": [
"True"
]
},
{
"category": "Entertainment: Television",
"type": "multiple",
"question": "When Donkey Kong died in the &quot;Donkey Kong Country&quot; episode &quot;It&#039;s a Wonderful Life&quot;, who was his guardian angel?",
"correct_answer": "Eddie the Mean Old Yeti",
"incorrect_answers": [
"Kiddy Kong",
"Diddy Kong",
"King K. Rool"
]
},
{
"category": "Sports",
"type": "multiple",
"question": "Who won the &quot;Champions League&quot; in 1999?",
"correct_answer": "Manchester United",
"incorrect_answers": [
"Barcelona",
"Bayern Munich",
"Liverpool"
]
},
{
"category": "General Knowledge",
"type": "multiple",
"question": "When did the website &quot;Facebook&quot; launch?",
"correct_answer": "2004",
"incorrect_answers": [
"2005",
"2003",
"2006"
]
},
{
"category": "History",
"type": "boolean",

"question": "During the Winter War, the amount of Soviet Union soliders that died or went missing was five times more than Finland&#039;s.",
"correct_answer": "True",
"incorrect_answers": [
"False"
]
},
{
"category": "Entertainment: Music",
"type": "multiple",
"question": "Who is the vocalist and frontman of rock band &quot;Guns N&#039; Roses&quot;?",
"correct_answer": "Axl Rose",
"incorrect_answers": [
"Kurt Cobain",
"Slash",
"Bono"
]
},
{
"category": "Geography",
"type": "multiple",

"question": "The Andaman and Nicobar Islands in South East Asia are controlled by which country?",
"correct_answer": "India",
"incorrect_answers": [
"Vietnam",
"Thailand",
"Indonesia"
]
},
{
"category": "Science & Nature",
"type": "multiple",
"question": "What animal takes part in Schr&ouml;dinger&#039;s most famous thought experiment?",
"correct_answer": "Cat",
"incorrect_answers": [
"Dog",
"Bat",
"Butterfly"
]
},
{
"category": "Entertainment: Video Games",
"type": "multiple",
"question": "In which mall does &quot;Dead Rising&quot; take place?",
"correct_answer": "Willamette Parkview Mall",
"incorrect_answers": [
"Liberty Mall",
"Twin Pines Mall",
"Central Square Shopping Center"
]
},
{
"category": "Entertainment: Music",
"type": "multiple",
"question": "Where did the British Boy Band &quot;Bros&quot; come from?",
"correct_answer": "Camberley",
"incorrect_answers": [
"Guildford",
"Aldershot",
"Bagshot"
]
},
{
"category": "Entertainment: Board Games",
"type": "multiple",

"question": "When Magic: The Gathering was first solicited, which of the following was it originally titled?",
"correct_answer": "Mana Clash",
"incorrect_answers": [
"Magic",
"Magic Clash",
"Mana Duels"
]
},
{
"category": "Geography",
"type": "multiple",
"question": "Which of the following is the longest river in Europe?",
"correct_answer": "Volga",
"incorrect_answers": [
"Danube",
"Ural",
"Dnieper"
]
},
{
"category": "History",
"type": "multiple",
"question": "Which country was Josef Stalin born in?",
"correct_answer": "Georgia",
"incorrect_answers": [
"Russia",
"Germany",
"Poland"
]
}
  ]
}

data[:"results"].each do | result |
  category = Category.find_or_create_by(name: result[:category])

  trivia = Trivium.find_or_create_by(
                        question: result[:question], category_id: category.id)

  Answer.find_or_create_by(answer: result[:correct_answer], is_correct: true,
                          trivium_id: trivia.id)

  result[:incorrect_answers].each do | answer |
    Answer.find_or_create_by(answer: answer, is_correct: false,
                            trivium_id: trivia.id)
  end
end

#puts "#{User.count} users created!"
#puts "#{Category.count} categories created!"
#puts "#{Trivium.count} trivia created!"
#puts "#{Answer.count} answers created!"
