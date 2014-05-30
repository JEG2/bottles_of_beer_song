# -*- coding: utf-8 -*-

module BottlesOfBeer
  class Verse
    def initialize(bottles)
      @bottles = bottles
    end

    attr_reader :bottles
    private     :bottles

    def to_s
      "#{count_with_units} of beer on the wall, " +
      "#{count_with_units.downcase} of beer.\n"   +
      "#{action}, "                               +
      "#{bottles - 1} bottles of beer on the wall…\n\n"
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
