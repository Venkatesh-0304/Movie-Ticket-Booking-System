class Ticket
  attr_accessor :ticket_id, :movie, :customer, :no_of_tickets

  def initialize(ticket_id, no_of_tickets, movie, customer)
    @ticket_id = ticket_id
    @no_of_tickets = no_of_tickets
    @movie = movie
    @customer = customer
    @price = nil
  end
end
