require_relative "verse"
require_relative "penultimate_verse"
require_relative "ultimate_verse"
require_relative "verse_with_transition"

module BottlesOfBeer
  class Song
    def initialize(verses = 99)
      fail ArgumentError, "Cannot sing negative verses" if verses < 0

      @verses = verses
    end

    attr_reader :verses
    private     :verses

    def sing(target = $stdout)
      verses.downto(2).each_cons(2) do |bottles, next_bottles|
        write_verse(target, Verse.new(bottles), Verse.new(next_bottles))
      end
      write_verse(target, Verse.new(2),         PenultimateVerse.new) \
        if verses >= 2
      write_verse(target, PenultimateVerse.new, UltimateVerse.new) \
        if verses >= 1
      write_verse(target, UltimateVerse.new,    Verse.new(verses), "")
    end

    private

    def write_verse(target, verse, next_verse, padding = "\n")
      target << VerseWithTransition.new(verse, next_verse) << padding
    end
  end
end
