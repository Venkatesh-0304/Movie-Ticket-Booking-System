module TicketManager
  @@movies = []
  @@customers = []

  def movie_exist(movie)
    @@movies.find {|m| m.title == movie.title}
  end

  def customer_exist(customer)
    @@customers.find {|c| c.customer_id == customer.customer_id}
  end

  def available_seats(movie, no_of_tickets)
    movie.available_seats 
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
    if movie_exist(movie) != nil && customer_exist(customer) != nil && movie.available_seats >= no_of_tickets
      return "Criteria passed"
    end
  end

  def book_ticket(movie, customer, no_of_tickets)
    if check_criteria(movie, customer, no_of_tickets) != nil
      customer.booked_tickets = movie
    end
  end
end