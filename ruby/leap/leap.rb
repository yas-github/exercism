class Year
  def self.leap?(year)
    if year % 400 == 0
      true
    elsif year % 100 == 0
      false
    elsif year % 4 == 0
      true
    else
      false
    end
  end
end

# https://exercism.io/tracks/ruby/exercises/leap/solutions/79477f497266460aa07427e15a0fa52f
# class Year
#   def self.leap?(year)
#     year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
#   end
# end