class CashRegister

  attr_accessor :total

  def initialize
    @total = 0
  end

  def total
    @total
  end

  def add_item(title,price)
  @total += price
  end
end
