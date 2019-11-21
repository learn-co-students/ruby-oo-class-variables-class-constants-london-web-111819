require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition, :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !Shoe::BRANDS.include?(@brand)
      BRANDS.push(@brand)
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end