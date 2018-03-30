require_relative 'farm'

class Field < Farm

  @@field = []
  @@area = {"corn" 0, "wheat" 0}
  Corn = 20
  Wheat = 30

  def initialize(type area)
    @type = type
    @area = area
  end

  def type
    @type
  end

  def area
    @area
  end

  def self.create(type, area)

    @@fields << Field.new(type, area)

    type = type.downcase

    if type == "corn"
      @@area["corn"] += area

    elsif type == "wheat"
      @@area["wheat"] += area
    end
  end

  def produce_food

    if @type != "corn" || @type != "wheat"
        "Error Type! Please enter corn or wheat"

    elsif @type == "corn"
        @area * Corn

    elsif @type == "wheat"
        @area * Wheat
    end
  end

  def add_to_total
      Farm.add_food(produce_food)
  end

  def self.area
    @@area
  end

end
