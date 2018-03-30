require_relative 'farm'

class Field < Farm
# Class variables and constants defined below
  @@field = [] #carries each instance
  @@area = {"corn" 0, "wheat" 0} # has area for both types
  Corn = 20 # constant produce per hectre
  Wheat = 30 # constant produce per hectre

  def initialize(type area)
    @type = type
    @area = area
  end

# readers and writers
  def type
    @type
  end

  def area
    @area
  end

  def self.area
    @@area
  end
# a class method to create new fields
  def self.create(type, area)

    @@fields << Field.new(type, area)

    type = type.downcase

    if type == "corn"
      @@area["corn"] += area

    elsif type == "wheat"
      @@area["wheat"] += area
    end
  end
# Instance method to produce food using contants
  def produce_food

    if @type != "corn" || @type != "wheat"
        "Error Type! Please enter corn or wheat"

    elsif @type == "corn"
        @area * Corn

    elsif @type == "wheat"
        @area * Wheat
    end
  end
# An instance method that uses Farm class method to calculate and save total harvested food in a class variable
  def add_to_total
      Farm.add_food(produce_food)
  end
end
