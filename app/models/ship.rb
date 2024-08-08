class Ship
  attr_accessor :name, :type, :booty

  @@ships = []

  def initialize(ship)
    @name = ship[:name]
    @type = ship[:type]
    @booty = ship[:booty]
    @@ships << self
  end

  def self.clear
    @@ships.clear
  end

  def self.all
    @@ships
  end
end
