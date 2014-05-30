require_relative "verse"

module BottlesOfBeer
  class PenultimateVerse < Verse
    def initialize
      super(1)
    end

    def count_with_units
      "1 bottle"
    end
  end
end
