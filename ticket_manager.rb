module TicketManager

  def find_movie(movie)
    @movies.find {|m| m.title == movie.title}
  end
  
  def find_customer(customer)
    @customers.find {|c| c.customer_id == customer.customer_id}
  end

  def find_ticket(ticket)
    @tickets.find {|t| t.ticket_id == ticket.ticket_id}
  end

  def check_criteria(movie, customer, no_of_tickets)
    if no_of_tickets <= 0 
      raise InvalidTicketCount, "Invalid ticket count"
    elsif movie.available_seats < no_of_tickets
      raise NotEnoughSeatsException, "Not enough seats"
    elsif find_customer(customer) == nil
      raise CustomerNotFoundException, "Customer not found"
    end

    if find_movie(movie) == nil
      puts "#{movie.title} does not exist"
      return nil
    else
      return "Criteria passed"
    end
  end

  def add_movie(movie)
    if find_movie(movie) != nil
      puts "#{movie.title} already exist"
    else
      @movies << movie
      puts "#{movie.title} added successfully"
    end
  end

  def add_customer(customer)
    if find_customer(customer) != nil
      puts "#{customer.name} with #{customer.customer_id} already exist"
    else
      @@customers = customer
      puts "#{customer.name} added successfully"
    end
  end

  def book_ticket(movie, customer, ticket, no_of_tickets)
    if check_criteria(movie, customer, no_of_tickets) != nil
      ticket.price = movie.ticket_price
      @tickets << ticket
      movie.available_seats -= no_of_tickets
      customer.booked_tickets = ticket
      puts "Ticket booked successfully"
    end
  end

  def cancel_ticket(ticket)
    if find_ticket(ticket) != nil
      movie = ticket.movie
      customer = ticket.customer
      @tickets.delete(ticket)
      customer.booked_tickets = nil
      puts "Movie : #{movie.title} No of tickets : #{ticket.no_of_tickets} - Cancelled successfully"
    else
      puts "Ticket Doesn't exist"
    end    
  end  

  def calculate_amount(ticket)
    puts "Total amount : #{ticket.price * ticket.no_of_tickets}"
  end

  def display_booking_details(customer)
    if customer.booked_tickets != nil
      ticket = customer.booked_tickets
      movie = ticket.movie
      puts "Movie name : #{movie.title}"
      puts "Movie language : #{movie.language}"
      puts "Price : #{ticket.price}"
    end
  end
end