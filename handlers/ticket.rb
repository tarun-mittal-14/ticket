$LOAD_PATH << '.'
require 'handlers/visitor_handler.rb'
require 'handlers/price.rb'
require 'handlers/menu.rb'
require 'handlers/ticket_details.rb'
require 'securerandom'

class Ticket

   def create_ticket
        ticket_id = SecureRandom.uuid
        visitors_list = visitor.add_visitor_details(ticket_id)
        p = Price.new

        ticket_price = 0
        visitors_list.each do |visitor|
            price = p.get_price(visitor.age)
            ticket_price +=  price
        end
        ticket_detail = TicketDetails.new(visitors_list, ticket_price, ticket_id)
        ticket_detail
   end



    def get_ticket(ticket_collection)
      ticket_collection.each_value do |ticket_detail|
        puts "TICKET ID : #{ticket_detail.id}"
        puts "PRICE : #{ticket_detail.price}"
        ticket_detail.visitors_list.each do |visitor|
          puts "#{visitor.name}, #{visitor.age}"
        end
        puts
      end
    end

    def get_ticket_by_id(ticket_collection)
      puts "Enter ticket id"
      ticket_id = gets.chomp
      ticket_detail = ticket_collection[ticket_id]
      if ticket_detail == nil
        puts "No ticket exist for given id"
      else
        puts "TICKET ID : #{ticket_detail.id}"
        puts "PRICE : #{ticket_detail.price}"
        ticket_detail.visitors_list.each do |visitor|
          puts "#{visitor.name}, #{visitor.age}"
        end
      end
    end

end
