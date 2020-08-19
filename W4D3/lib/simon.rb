# The specs should guide you as to what each method does. One important thing to note is that it is generally impractical to test console user input, so the specs don't test require_sequence. The goal of require_sequence is to prompt the user to repeat back the new sequence that was just shown to them, one color at a time. If they give an incorrect color, it should immediately set @game_over to be true.

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    if game_over
      take_turn
    else
      game_over_message
      reset_game
    end
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    unless game_over = true
      self.round_success_message
      sequence_length += 1
    end
  end

  def show_sequence
    seq.add_random_color
    seq
  end

  def require_sequence
    if seq.length == sequence_length
      round_success_message
      take_turn
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Oo. ROUND COMPLETE .oO"
  end

  def game_over_message
    puts "You Loooooooose"
  end

  def reset_game
    if game_over == true
      Simon.play
      sequence_length = 1
      game_over = false
      seq = []
    end
  end
end
