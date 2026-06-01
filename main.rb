require_relative "ticket"
require_relative "movie"
require_relative "customer"
require_relative "ticket_manager"
require_relative "theater"

t1 = Theater.new("Urvashi")

m1 = Movie.new("Toxic", "kannada", 300, 250)
c1 = Customer.new("Venkatesh", 1)
c2 = Customer.new("Srinivas", 2)
c3 = Customer.new("Shreyas", 3)
tck1 = Ticket.new(1, 5, m1, c1)
tck2 = Ticket.new(2, 2, m1, c2)

t1.add_movie(m1)
t1.add_customer(c1)
t1.add_customer(c2)
t1.book_ticket(m1, c1, tck1, 5)
t1.book_ticket(m1, c2, tck2, 5)
t1.calculate_amout(tck1)
t1.calculate_amout(tck2)
t1.cancel_ticket(tck1)
t1.cancel_ticket(tck1)


