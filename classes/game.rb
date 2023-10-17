class Game
  attr_accessor :player_1, :player_2, :current_player

  def initialize(player_1, player_2, current_player)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = current_player
  end

  def start_game
    puts "Are you ready? Let's begin!"
    puts "✖️➕➖➗🟰✖️➕➖➗🟰✖️➕➖➗🟰"
    puts "🔥                          🔥"
    puts "        #{@player_1.name.upcase} VS #{@player_2.name.upcase}"
    puts "🔥                          🔥"
    puts "✖️➕➖➗🟰✖️➕➖➗🟰✖️➕➖➗🟰"
  end
  
  def switch_turn
    if @current_player.nil?
      @current_player = @player_1
    else
      @current_player = (@current_player == @player_1) ? @player_2 : @player_1
    end
  end
end
