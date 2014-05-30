# -*- coding: utf-8 -*-

require_relative "verse"

module BottlesOfBeer
  class UltimateVerse < Verse
    def to_s
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n"            +
      "Go to the store and buy some more, "   +
      "#{bottles} bottles of beer on the wall…\n"
    end
  end
end
