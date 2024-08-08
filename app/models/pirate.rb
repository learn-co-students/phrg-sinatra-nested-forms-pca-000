class Pirate
  attr_accessor :name, :weight, :height

  @@pirates = []

  def initialize(pirate)
    @name = pirate[:name]
    @weight = pirate[:weight]
    @height = pirate[:height]

    @@pirates << self
  end

  def self.all
    @@pirates
  end
end
