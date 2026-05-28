class Movie
  attr_accessor :title, :language, :ticket_price, :available_seats

  def initialize(title, language, ticket_price, available_seats)
    @title = title
    @language = language
    @ticket_price = ticket_price
    @available_seats = available_seats
  end
end

m1 = Movie.new("Toxic", "kannada", 300, 250)

puts m1.title
puts m1.language
puts m1.ticket_price
puts m1.available_seats