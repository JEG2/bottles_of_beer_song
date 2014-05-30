# -*- coding: utf-8 -*-

module BottlesOfBeer
  class Song
    def initialize(verses = 99)
      fail ArgumentError, "Cannot sing negative verses" if verses < 0

      @verses = verses
    end

    attr_reader :verses
    private     :verses

    def sing(target = $stdout)
      verses.downto(0) do |count|
        action  = count.zero? ? "Go to the store and buy some more"
                              : "Take one down and pass it around"
        target << "#{bottles(count)} of beer on the wall, " +
                  "#{bottles(count).downcase} of beer.\n"   +
                  "#{action}, "                             +
                  "#{bottles(count - 1).downcase} of beer on the wall…\n"
        target << "\n" unless count.zero?
      end
    end

    private

    def bottles(count)
      if count < 0
        bottles(verses)
      elsif count.zero?
        "No more bottles"
      else
        "#{count} bottle#{'s' unless count == 1}"
      end
    end
  end
end
