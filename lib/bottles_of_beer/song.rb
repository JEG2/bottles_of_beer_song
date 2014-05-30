require_relative "verse"
require_relative "penultimate_verse"
require_relative "ultimate_verse"
require_relative "verse_with_transition"

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
      verses.each_cons(2) do |verse, next_verse|
        target << VerseWithTransition.new(verse, next_verse) << "\n"
      end
      target << VerseWithTransition.new(verses.last, verses.first)
    end
  end
end
