module BottlesOfBeer
  class Verse
    def initialize(bottles)
      @bottles = bottles
    end

    attr_reader :bottles
    private     :bottles

    def opening
      "#{count_with_units} of beer on the wall"
    end

    def to_s
      "#{opening}, "                            +
      "#{count_with_units.downcase} of beer.\n" +
      action
    end

    private

    def count_with_units
      "#{bottles} bottles"
    end

    def action
      "Take one down and pass it around"
    end
  end
end
