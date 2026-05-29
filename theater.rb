require_relative "ticket_manager"
class Theater
  include TicketManager
  attr_accessor :name
  def initialize(name)
    @name = name
    @@movies = []
    @@customers = []
    @@tickets = []
  end
end

t1 = Theater.new("urvashi")

puts t1.name