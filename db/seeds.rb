# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
