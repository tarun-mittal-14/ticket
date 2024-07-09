class TicketDetails
    attr_accessor :visitors_list, :price, :id
    def initialize(visitors_list, price, id)
        @visitors_list = visitors_list
        @price = price
        @id = id
    end
end