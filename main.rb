require './classes/game'
require './classes/player'
require './classes/questions'

puts "WELCOME TO THE RUBY MATH CHAMPIONSHIP OF THE WORLD"

puts "Player 1, What's your name?"
player_1 = $stdin.gets.chomp
puts "Player 2, What's your name?"
player_2 = $stdin.gets.chomp

puts "Amazing! We have our two competitors, #{player_1} vs #{player_2}"

player1 = Player.new(player_1)
player2 = Player.new(player_2)
current_player = [player1, player2].sample
game = Game.new(player1, player2, current_player)

game.start_game

while player1.number_of_lives > 0 && player2.number_of_lives > 0
  question = Questions.new
  puts "#{current_player.name}, here's your question:"
  question.generate_question

  print "Your answer? > "
  player_answer = gets.chomp.to_i

  if (question.check_answer(player_answer))
    puts "✅Correct!✅"
  else
    current_player.lose_life
    puts "❌False! You now have #{current_player.number_of_lives} lives left!❌"
  end

  puts "#{player1.name}: #{player1.number_of_lives}/3 vs #{player2.name}: #{player2.number_of_lives}/3"

  if player1.number_of_lives == 0 || player2.number_of_lives == 0
    puts "❗❗❗❗❗GAME OVER❗❗❗❗❗"
    winner = player1.number_of_lives > 0 ? player1.name : player2.name
    puts "#{winner} wins with #{player1.number_of_lives > 0 ? player1.number_of_lives : player2.number_of_lives} lives left!"
    puts "Adios amigos!"
    exit
  else
    puts "----- NEW TURN -----"
    game.switch_turn
    current_player = game.current_player
  end
end

