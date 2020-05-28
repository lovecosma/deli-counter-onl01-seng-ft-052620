# Write your code here.
  def line(restaurant)
    @restaurant = restaurant
    @positions = []
    @spot = 1
    if @restaurant.length == 0
      puts "The line is currently empty."
    else
      @restaurant.each do |person|
        @positions << " #{@spot}." + " #{person}"
        @spot += 1
      end
      @positions.to_s
      @positions.join
      puts "The line is currently:" + @positions.join
  end

  end

  def take_a_number(restaurant, person)
      @restaurant = restaurant
      @person = person
      @restaurant << @person
      @line = []
      @spot = 1
      if @restaurant.length < 2
      puts "Welcome, #{@person}. You are number #{@spot} in line."
      else
      @restaurant.each do |person|
      @line << person
      @spot += 1
      end
      puts "Welcome, #{@person}. You are number #{@spot} in line."
      end
  end
