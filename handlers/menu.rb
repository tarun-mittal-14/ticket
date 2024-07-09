$LOAD_PATH << '.'
require 'handlers/visitor_handler.rb'
require 'handlers/price.rb'

class Menu
    def open_main_menu(ticket_collection)
        puts "Enter your choice"
        puts "1 Generate ticket"
        puts "2 View ticket details"
        puts "3 Get ticket details by id"
        puts "4 Exit " 
        puts
        choice = gets.chomp.to_i
        case choice
            when 1
                t = Ticket.new
                ticket_detail = t.create_ticket
                ticket_collection[ticket_detail.id] = ticket_detail
                open_main_menu(ticket_collection)
            when 2
                t = Ticket.new
                t.get_ticket(ticket_collection)
                open_main_menu(ticket_collection)
            when 3
                t = Ticket.new
                t.get_ticket_by_id(ticket_collection)
                open_main_menu(ticket_collection)
            when 4
                puts "Exiting....."
                exit
            else 
                puts "Please Enter valid choice"
                open_main_menu(ticket_collection)
        end
    end
end    
