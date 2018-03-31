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
      self.display_harvested_food
  end

# Displays total harvest for each type of field
  def self.status
    Field.area.each do |k, v|
      puts "#{k} field is #{v} hectres"
    end
    display_harvested_food
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

  def self.main_menu

    puts "
      ----------------------------------------------------
      ----------------M-A-I-N----M-E-N-U------------------
      ----------------------------------------------------

      field -> adds a new field
      harvest -> harvests crops and adds to total harvested
      status -> displays some information about the farm
      relax -> provides lovely descriptions of your fields
      exit -> exits the program

      -----------------------------------------------------
      "
  end

end
