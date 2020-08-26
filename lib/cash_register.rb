require 'pry'

class CashRegister

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = []
    end

    attr_accessor :total,:discount,:items, :last_transaction
    # attr_accessor :price, :quantity,


    def add_item(item, price, quantity = 1)
        self.total += price * quantity
        # self.price = price
        # self.quantity = quantity

        quantity.times do
            items << item
        end

       self.last_transaction = [item, price, quantity]
    end

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        else
            self.total -= self.total * (self.discount / 100.0) #reduce our price by the price times the discount
            return "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def void_last_transaction

        if self.items.length > 1
            self.total -= self.last_transaction[1] * self.last_transaction[2]
            self.items.pop(self.last_transaction[2])
        else
            self.items = []
            self.total = 0.0
        end

        # self.quantity.times do
        #         if(self.items.length > 1)
        #             self.total -= self.price
        #             self.items.pop
        #         else
        #             self.total= 0.0
        #         end

        # end
    end
    
end


