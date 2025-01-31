class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @total_area = 0
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    @rooms.each do |room|
      @total_area += room.area
    end
    @total_area
  end

  def price_per_square_foot
    price = @price.gsub(/[$]/, '').to_i
    area / price
  end

end
