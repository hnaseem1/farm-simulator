require_relative 'field'

# View displays and computes values for the the main program
class View < Field

# Add a new field
  def self.create(type, area)
    super(type, area)
  end

# Computes and displays harvest for each field instance
  def self.harvest

    Field.fields.each do |field|

      food = field.produce_food
      puts "Harvesting #{food} food from #{field.area} hectre #{field.type} field"
      field.add_to_total(food)
    end
      puts "The farm has #{Farm.all_food}"
  end

# Displays total harvest for each type of field
  def self.status
    Field.area.each do |k, v|
      puts "#{k} field is #{v} hectres"
      display_harvested_food
    end
  end

# Displays an informative msg using Fields class @@area hash
  def self.relax
    Field.area.each do |k, v|

      if k == "corn"
        puts "#{v} hectares of tall green stalks rustling in the breeze fill your horizon."

      elsif k == "wheat"
        puts "The sun hangs low, casting an orange glow on a sea of #{v} hectares of wheat."
      end
    end
  end


# Displays the total harvest using Farm class
  def self.display_harvested_food

    harvested_food = Farm.all_food
    puts "The Farm has #{harvested_food} harvested food so far"
  end

end
