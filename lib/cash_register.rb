require "pry"
class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, quantity = 1, price)
    @total = price * quantity + @total
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << item
    end
  end
  
  def apply_discount
    @discount = @discount / 100.0 
    @total = @total - (@total * @discount)
    if @total > 0 
      return "After the discount, the total comes to $#{@total.round}."
    else @total = 0 
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
end
