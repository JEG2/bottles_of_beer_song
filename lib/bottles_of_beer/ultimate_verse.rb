require_relative "verse"

module BottlesOfBeer
  class UltimateVerse < Verse
    def to_s
      super.strip + "\n"
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
