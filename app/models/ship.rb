class Ship
  attr_accessor :name, :booty, :type

  @@ships = []

  def initialize(details)
    @name = details[:name]
    @booty = details[:booty]
    @type = details[:type]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end
end
