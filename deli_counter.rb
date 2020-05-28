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
      @spot = 1
      if @restaurant.length < 2
      puts "Welcome, #{@person}. You are number #{@spot} in line."
      else
        @restaurant.each do |person|
        @spot += 1
        end
          puts "Welcome, #{@person}. You are number #{@spot-1} in line."
      end
  end

  def now_serving(restaurant)
    @restaurant = restaurant
    @current_person = ""
    if @restaurant.length == 0
    puts "There is nobody waiting to be served!"
  else
    @current_person = @restaurant.first
    @restaurant.shift
    puts "Currently serving #{@current_person}."
  end
end
