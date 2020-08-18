class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1 
    @name2 = name2 
    @cups = Array.new(14){Array.new}
    self.place_stones 
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    self.cups.each_with_index do |cup, idx|
      unless idx == 6 || idx == 13
        4.times {self.cups[idx] << :stone}
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos <= 13
    raise "Starting cup is empty" if self.cups[start_pos].empty? 
  end

  def make_move(start_pos, current_player_name)
    stone_count = self.cups[start_pos].dup
    self.cups[start_pos].clear
    i = start_pos+1
    current_player_name == @name1 ? skip_idx = 13 : skip_idx = 6
    until stone_count.empty?
      i = 0 if i == 14
      self.cups[i] << stone_count.pop unless i == skip_idx
      i += 1
    end
    self.render    
    self.next_turn(i-1)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 13 || ending_cup_idx == 6
      return :prompt
    elsif self.cups[ending_cup_idx].length == 1
      return :switch
    else
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    side_1 = self.cups[0..5]
    side_2 = self.cups[7..12]
    side_1.all? {|cup| cup.empty?} || side_2.all? {|cup| cup.empty?}
  end

  def winner
    p1_score = self.cups[6].length 
    p2_score = self.cups[13].length 
    if p1_score > p2_score
        @name1
    elsif p2_score > p1_score 
        @name2 
    else
      :draw
    end
  end
end
