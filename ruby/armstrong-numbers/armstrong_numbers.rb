class ArmstrongNumbers
  def self.include?(number)
    digits = number.to_s.length
    separated_num = number.to_s.chars.map(&:to_i)
    arr = []
    separated_num.each { |num| arr << num ** digits }

    number == arr.sum ? true : false
  end
end