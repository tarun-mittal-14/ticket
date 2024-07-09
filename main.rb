$LOAD_PATH << '.'
require 'handlers/menu.rb'
require 'handlers/visitor_handler.rb'
require 'handlers/price.rb'
require 'handlers/ticket.rb'

class Main
    def main_method
      ticket_collection = Hash.new
      menu = Menu.new
      menu.open_main_menu(ticket_collection)
    end
end

main = Main.new
main.main_method
  



