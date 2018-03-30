require_relative 'farm'

class View < Field


  def display_harvested_food

    harvested_food = Farm.all_food
    puts "The Farm has #{harvested_food} harvested food so far"
  end

  def relax
    Field.area.each do |k, v|

      if k == "corn"
        "#{v} hectares of tall green stalks rustling in the breeze fill your horizon."

      elsif k == "wheat"
        "The sun hangs low, casting an orange glow on a sea of #{v} hectares of wheat."
  end

  def status
    Field.area.each do |k, v|
      puts "#{k} field is #{v} hectres"
      display_harvested_food
  end

  def harvest

    Field.fields.each do |field|

      food = field.produce_food
      puts "Harvesting #{food} food from #{field.area} hectre #{field.type} field"
      field.add_to_total(food)

    end

      puts "The farm has #{Farm.all_food}"

  end


end
