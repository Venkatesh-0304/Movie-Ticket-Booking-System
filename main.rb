require_relative "movie"
require_relative "customer"
require_relative "ticket_manager"

m1 = Movie.new("Toxic", "kannada", 300, 250)
c1 = Customer.new("Venkatesh", 1)
t1 = Ticket.new(1, 5, m1, c1)

