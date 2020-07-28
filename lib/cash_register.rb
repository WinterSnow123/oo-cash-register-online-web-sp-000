class CashRegister

  attr_accessor :total, :employee_discount, :items, :last_total

  def initialize(employee_discount=0)
    @total = 0.0
    @last_total = 0.0
    @employee_discount = employee_discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
  @items << title
  @last_total = @total
  @total += price*quantity
  end

  def apply_discount
    if @employee_discount > 0
      new_total = @employee_discount / 100 * @total
      puts "Discount successfully applied!"
      new_total
    else
      puts "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @last_total = @total
  end
end
