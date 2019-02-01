require_relative 'vampire_weapon'

answer = nil
until answer == "Vampire dies"
  puts "What's your weapon?"
  input = gets.chomp
  answer = vampire_weapon(input)
end
