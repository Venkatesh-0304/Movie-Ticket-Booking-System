module TicketManager
  def calculate_amout(ticket)
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