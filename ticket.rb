require_relative "movie"
require_relative "customer"
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


m1 = Movie.new("Toxic", "kannada", 300, 250)
c1 = Customer.new("Venkatesh", 1)

t1 = Ticket.new(1, 5, m1, c1)

puts t1.ticket_id
puts t1.movie.title
puts t1.customer.name
puts t1.no_of_tickets