require_relative 'vampire_weapon'

answer = nil
while answer.nil? || answer.include?("laughs")
  puts "What's your weapon?"
  weapon = gets.chomp
  puts "What is it made of?"
  material = gets.chomp
  answer = vampire_reaction_enhanced(weapon, material)
  puts answer
end
