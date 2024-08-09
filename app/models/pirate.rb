class Pirate
  attr_accessor :name, :weight, :height

  @@prirates = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@prirates << self
  end

  def self.all
    @@prirates
  end
end
