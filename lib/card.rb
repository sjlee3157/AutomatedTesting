
# card.rb

class Card
  attr_reader :value, :suit


  def initialize(value, suit)
    valid_suits = [:hearts, :spades, :clubs, :diamonds]
    valid_values = (1..13)
    raise ArgumentError unless valid_suits.include? (suit)
    raise ArgumentError unless valid_values.include? (value)
    
    @value = value
    @suit = suit

  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
