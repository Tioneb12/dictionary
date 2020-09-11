require 'faker'

category = Category.new(
    name: "Mot"
  )
  category.save!

category = Category.new(
    name: "Adjectif"
  )
  category.save!

category = Category.new(
    name: "Adverbe"
  )
  category.save!

category = Category.new(
    name: "Expression"
  )
  category.save!

category = Category.new(
    name: "Verbe"
  )
  category.save!

  category = Category.new(
    name: "Prénom"
  )
  category.save!


puts 'Creating 100 fake words...'
200.times do
  word = Word.new(
    title:    Faker::Company.name,
    excerpt: Faker::Lorem.sentence(word_count: 2, supplemental: false, random_words_to_add: 4),
    content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    author_name: Faker::Name.name,
    author_email: Faker::Internet.email,
    published: true,
    category_id: rand(1..6)
  )
  word.save!

  rand(1..10).times do
    comment = Comment.new(
      pseudo: Faker::Name.name,
      email: Faker::Internet.email,
      content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4) ,
      word_id: word.id,
      published: true
    )
    comment.save!
  end

end

puts 'Finished!'






