class CashRegister

    attr_accessor :total, :discount, :items, :last_price 

    @@all = []

    def initialize(discount = 0)
        @total = 0
        @discount = discount 
        @items = []
        @@all << self 
        @last_price = 0

       
    end 

    def self.all
        @@all
    end 

    def total
        @total
    end 

    def discount 
        @discount
    end 

    def add_item(title, price, quantity = 1)
        quantity.times do 
            self.items.push(title)
            end
        self.total += quantity * price  
        self.ast_price = quantity * price 
    end

    def apply_discount
        if self.discount > 0
        discount = self.discount/100.to_f
        self.total = self.total - (self.total * (discount))
        "After the discount, the total comes to $#{total.to_i}."
        else 
            "There is no discount to apply."
        end
    end 


    def void_last_transaction
        self.total = self.total - self.last_price
    end 





    


end 
