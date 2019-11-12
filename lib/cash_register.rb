class CashRegister
  attr_accessor :total, :discount, :items, :prices
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @prices = []
  end 
  
  def add_item(item, price, quantity = 1)
    @total += price*quantity
    @prices << price*quantity
    quantity.times do 
      @items << item
    end
  end 
  
  def apply_discount
    if @discount != 0
      p "discount is #{@discount} and total is #{@total}"
      @total = @total*(1 - @discount/100) 
      p @total*(1 - @discount/100)
      p @total
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end 
  
  def void_last_transaction
    @total -= @prices[-1]
    @total
  end
end
