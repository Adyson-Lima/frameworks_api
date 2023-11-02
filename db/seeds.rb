puts 'Gerando frameworks...'

5.times do |i|
  Framework.create(
    name: ["Laravel", "Rails", "Spring"].sample ,
    language: ["L1", "L2","L3"].sample
    )
end

puts 'frameworks gerados com sucesso!'
