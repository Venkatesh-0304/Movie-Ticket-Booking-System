class Customer
  attr_accessor :name, :customer_id, :booked_tickets

  def initialize(name, customer_id)
    @name = name
    @customer_id = customer_id
    @booked_tickets = nil
  end
end

c1 = Customer.new("Venkatesh", 1)
puts c1.name
puts c1.customer_id