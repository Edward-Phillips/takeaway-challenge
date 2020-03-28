class Order
  def place_order(hash_of_dishes, suggested_total)
    # this method will be where they pass a hash of dishes and the amount and also the total
    # it will call the check_total method
  end
  protected
  def send_confirmation(method:Texter, number: @number, time: delivery_time)
    # this method sends a text by default but will accept a class that
    # uses the message() method that takes three arguments.
  end
  private
  def check_total(hash_of_dishes, suggested_total)
    # this method will check to see if the total from the hash of dishes checked against the menu is
    # the same as the suggested_total
  end
end
