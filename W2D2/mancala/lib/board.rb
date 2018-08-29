require 'byebug'

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1, @name2 = name1, name2
    @cups = Array.new(14) {[]}

    place_stones
  end

  def place_stones
    @cups.each_with_index do |el, idx|
      @cups[idx] += [:stone, :stone, :stone, :stone] unless idx == 6 || idx == 13
    end
  end

  def valid_move?(start_pos)
      raise ArgumentError.new("Invalid starting cup") if start_pos > 12
      raise ArgumentError.new("Starting cup is empty") if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    hand = @cups[start_pos]
    @cups[start_pos] = []

    cups_idx = (0...6).to_a + (7..12).to_a

    current_cup = (start_pos) % 14
    until hand.empty?
      current_cup = (current_cup + 1) % 14
      next if current_cup == 6 && current_player_name == @name2
      next if current_cup == 13 && current_player_name == @name1
      @cups[current_cup] << hand.pop
    end

    render
    puts current_cup
    next_turn(current_cup)
  end

  def next_turn(ending_cup_idx)
    return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13
    return :switch if @cups[ending_cup_idx].count == 1
    return ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? {|cup| cup.empty?} || @cups[7..12].all? {|cup| cup.empty?}
  end

  def winner
    return :draw if @cups[6].count == @cups[13].count
    @cups[6].count > @cups[13].count ? @name1 : @name2
  end
end
