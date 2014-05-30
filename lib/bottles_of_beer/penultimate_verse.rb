require_relative "verse"

module BottlesOfBeer
  class PenultimateVerse < Verse
    def initialize
      super(1)
    end

    def to_s
      super.gsub("1 bottles", "1 bottle")
    end
  end
end
