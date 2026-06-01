class Customer
  attr_accessor :name, :customer_id, :booked_tickets

  def initialize(name, customer_id)
    @name = name
    @customer_id = customer_id
    @booked_tickets = []
  end
end