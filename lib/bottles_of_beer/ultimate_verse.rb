require_relative "verse"

module BottlesOfBeer
  class UltimateVerse < Verse
    def initialize
      super(0)
    end

    private

    def count_with_units
      "No more bottles"
    end

    def action
      "Go to the store and buy some more"
    end
  end
end
