require 'pry'

class CashRegister

    def initialize(discount = 20)
        @total = 0
        @discount = discount
    end

    attr_accessor :total
    attr_accessor :discount

    def add_item(item, price, quantity = 1)
        self.total += price * quantity
    end

    def apply_discount()
        self.total -= self.total * (self.discount / 100.0) #reduce our price by the price times the discount
        return "After the discount, the total comes to $#{self.total.to_i}."
    end

end