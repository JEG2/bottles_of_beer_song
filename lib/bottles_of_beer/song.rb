require_relative "verse"
require_relative "penultimate_verse"
require_relative "ultimate_verse"

module BottlesOfBeer
  class Song
    def initialize(verses = 99)
      @verses  = Array.new(verses - 1) { |i| Verse.new(verses - i) }
      @verses << PenultimateVerse.new
      @verses << UltimateVerse.new(verses)
    end

    attr_reader :verses
    private     :verses

    def sing(target = $stdout)
      verses.each do |verse|
        target << verse
      end
    end
  end
end
