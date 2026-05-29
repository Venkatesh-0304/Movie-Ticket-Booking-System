class Movie
  attr_accessor :title, :language, :ticket_price, :available_seats

  def initialize(title, language, ticket_price, available_seats)
    @title = title
    @language = language
    @ticket_price = ticket_price
    @available_seats = available_seats
  end
end
