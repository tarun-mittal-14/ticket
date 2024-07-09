$LOAD_PATH << '.'
require 'handlers/price.rb'
require 'handlers/menu.rb'
require 'handlers/visitor.rb'

class VisitorHandler

  def add_visitor_details(ticket_id)

    puts "Enter No of guest"
    no_of_guests = gets.chomp.to_i
    visitors_list = []
    no_of_guests.times do |c|
      visitor = Visitor.new()
      puts "Enter name of guest"
      name = gets.chomp
      visitor.name = name
      puts "Enter age of guest"
      age = gets.chomp.to_i
      visitor.age = age
      visitors_list << visitor
    end
    visitors_list
  end
end

