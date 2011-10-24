require 'rubygems'
require 'highline/import'

def dice_roller num_sides
  result = Random.rand(num_sides.to_i)
end

say "Welcome to the dice roller!"

dice_sides = ask("How many sides do you want your dice to have?") do |question|
  question.default = "6"
end

say "You are rolling a D" + dice_sides

num_dice = ask("An how many dice do you want to roll?") do |question|
  question.default = "1"
end

say "You are rolling " + num_dice + " D" + dice_sides + "'s"

num_dice_int = num_dice.to_i

while num_dice_int > 0
  say "Your roll is " + dice_roller(dice_sides).to_s
  num_dice_int = num_dice_int - 1
end

