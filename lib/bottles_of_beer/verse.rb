# -*- coding: utf-8 -*-

module BottlesOfBeer
  class Verse
    def initialize(bottles)
      @bottles = bottles
    end

    attr_reader :bottles
    private     :bottles

    def to_s
      "#{bottles} bottles of beer on the wall, " +
      "#{bottles} bottles of beer.\n"            +
      "Take one down and pass it around, "       +
      "#{bottles - 1} bottles of beer on the wall…\n\n"
    end
  end
end
