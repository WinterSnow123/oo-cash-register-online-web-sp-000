class CashRegister

  attr_accessor :total, :employee_discount

  def initialize(employee_discount=0)
    @total = 0
    @employee_discount = employee_discount
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
  last_total = @total
  @total += price*quantity
  end

  def apply_discount
    if @employee_discount > 0
      new_total = @employee_discount / 100 * @total
      puts "Discount successfully applied!"
      new_total
    end
  end

end
