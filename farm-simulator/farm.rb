class Farm

  @@food = 0

  def initialize(name)
    @name = name

  end

  def name
    @name
  end

  def self.all_food
    @@food
  end

  def self.add_food(more_food)
    @@food += more_food
  end

end
