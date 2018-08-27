class Simon
  # COLORS = %w(red blue green yellow)
  COLORS = %w(R B G Y)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize(sequence_length = 1, game_over = false, seq = [])
    @sequence_length = sequence_length
    @game_over = game_over
    @seq = seq
  end

  def play
    take_turn until @game_over == true
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message
    @sequence_length += 1
# @game_over = true
  end

  def show_sequence
    add_random_color
    @seq.each do |color_i|
      print "#{color_i} "
      sleep(0.5)
    end
    sleep(1)
    system("clear")
  end

  def require_sequence
    input = gets.chomp.split(" ")
    @game_over = true if input != @seq
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Round successful"
  end

  def game_over_message
    puts "--GAME OVER--"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

g = Simon.new
g.play
