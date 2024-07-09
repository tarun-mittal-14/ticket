$LOAD_PATH << '.'
require 'handlers/visitor_handler.rb'
require 'handlers/menu.rb'


class Price

  def get_price(age)

    case age

    when 1..2
      price = 0

    when 3...18
      price = 100

    when 18...60
      price = 500

    else
     price = 300

    end
  end
end
