require_relative 'view'

class FarmSimulator

  def initialize

  end

  def menu

    while true

      print_main_menu
      user_selected = gets.chomp
      call_option(user_selected)

    end

  end

  def print_main_menu

    View.main_menu

  end

  def call_option(user_selected)

    case user_selected

      when "field" then add_field
      when "harvest" then View.harvest
      when "status" then View.status
      when "relax" then View.relax
      when "exit" then exit
    end
  end

  def add_field

    puts "What kind of field is it: corn or wheat?"
    type = gets.chomp
    puts "How large is the field in hectares?"
    area = gets.chomp.to_i
    View.create(type, area)
    puts "Added a #{type} field of #{area} hectres"

  end

end


a = FarmSimulator.new
a.menu
