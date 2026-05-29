class Theater
  include TicketManager
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @movies = []
    @customers = []
    @tickets = []
  end
end
