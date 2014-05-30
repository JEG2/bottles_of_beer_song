# -*- coding: utf-8 -*-

module BottlesOfBeer
  class VerseWithTransition
    def initialize(verse, next_verse)
      @verse      = verse
      @next_verse = next_verse
    end

    attr_reader :verse, :next_verse
    private     :verse, :next_verse

    def to_s
      "#{verse}, #{next_verse.opening.downcase}…\n"
    end
  end
end
