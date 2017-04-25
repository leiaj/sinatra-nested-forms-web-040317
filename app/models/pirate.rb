class Pirate

  attr_accessor :name, :weight, :height
  ALL = []

  def initialize(name:, weight:, height:)
    @name = name
    @weight = weight
    @height = height
    ALL << self
  end

  def self.all
    ALL
  end

end
