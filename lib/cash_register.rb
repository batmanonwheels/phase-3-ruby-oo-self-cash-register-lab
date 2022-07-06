class CashRegister
  attr_accessor :total, :discount

  def initialize (discount = nil)
    @total = 0
    @discount = discount
  end

  def add_item (title, price, quantity = 1)
    self.total += price * quantity
    quantity.times { self.item(title) }
  end

  def apply_discount ()
    if self.discount
      new_value = self.total. * self.discount.to_f / 100
      self.total = new_value.to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def item(item)

  end

  def void_last_transaction

  end
end