class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14)
    @name1 = name1
    @name2 = name2
    self.place_stones
  end

  def place_stones
    @cups.each_with_index do |ele, idx|
      stones = [:stone, :stone, :stone, :stone]
      if idx == 13 || idx == 6
        @cups[idx] = []
      else
        @cups[idx] = stones
      end
    end
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos > 13
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    num_stones = @cups[start_pos].length
    start_idx = start_pos + 1
    last_idx = start_pos + num_stones
    (start_idx..last_idx).each do |idx|
      @cups[idx].push(@cups[start_pos].pop)
    end

    self.render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
