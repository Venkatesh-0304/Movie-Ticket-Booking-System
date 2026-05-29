module TicketManager
  @@movies = []
  @@customers = []
  @@tickets = []

  def movie_exist(movie)
    @@movies.find {|m| m.title == movie.title}
  end

  def customer_exist(customer)
    found_customer = @@customers.find {|c| c.customer_id == customer.customer_id}
    if found_customer != nil
      return found_customer
    else
      raise CustomerNotFoundException, "Customer with #{customer.customer_id} is not found"
    end
  end

  def available_seats(movie, no_of_tickets)
    current_available_seats = movie.available_seats 
    if current_available_seats <  no_of_tickets
      raise NotEnoughSeatsException, "Not enough seats"
    else
      current_available_seats
    end
  end

  def calculate_amout(movie, no_of_tickets)
    movie.ticket_price * no_of_tickets
  end

  def add_movie(movie)
    if movie_exist != nil
      @@movies << movie
      puts "#{movie.title} added successfully"
    else
      puts "#{movie.title} already exist !"
    end
  end

  def add_customer(customer)
    if customer_exist != nil
      @@customers << customer
      puts "#{customer.name} added successfully"
    else
      puts "#{customer.name} with #{customer.id} already exist !"
    end
  end

  def check_criteria(movie, customer, no_of_tickets)
    is_seat_available = available_seats(movie, no_of_tickets)
    if movie_exist(movie) != nil && customer_exist(customer) != nil && is_seat_available != nil
      return "Criteria passed"
    end
  end

  def book_ticket(movie, customer, ticket, no_of_tickets)
    if check_criteria(movie, customer, no_of_tickets) != nil
      amount = calculate_amout(movie, no_of_tickets)
      ticket.price = amount
      movie.available_seats -= no_of_tickets
      puts "Ticket booked successfully"
    else
    end
  end
end