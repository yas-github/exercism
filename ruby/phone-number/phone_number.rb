class PhoneNumber
  def self.clean(num)
    code = num.gsub(/^1|^\+1|[^\d]/, " ").split
    number = code.join
    area_code = code[0].chars[0]
    exchange_code = code[1].chars[0] unless code[1].nil?

    return nil if number.length != 10
    return nil if %w(0 1).include?(area_code)
    return nil if %w(0 1).include?(exchange_code)
    number
  rescue
    number
  end
end

