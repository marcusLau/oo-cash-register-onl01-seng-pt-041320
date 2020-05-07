require 'pry'


class CashRegister
  
  attr_accessor :total, :discount, :items, :price
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity=1)
    @total += (price*quantity)
    @price = price
    for i in 0..quantity-1
      @items << item
    end
  end
  
  def apply_discount
    if @discount > 0 
      @total -= @discount*10
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end
    
  # gets last item added
  # iterates thru items[] and removes all from array 
  # for each removed item subtract that item price * item removed
  def void_last_transaction
    
    
  end
    
end