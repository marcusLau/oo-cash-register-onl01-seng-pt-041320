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
    @price = price # sets @price equal to LAST ITEM added
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
    
    # Array.delete(element): will remove ALL instances of said element
    
    item_to_remove = @items[-1]
    remove_counter = 0
    @items.each do |item|
      if item == item_to_remove
        remove_counter += 1
      end
    end
    @items.delete(item_to_remove) # deletes all instances of last item added from @items array
    @total = @total - (@price * remove_counter) # updates @total by price * amount of items removed
  end
    
end