class PhoneNumber
  def self.clean(num)
    code = num.gsub(/^1|^\+1|[^\d]/, " ").split
    number = code.join

    return nil if number.length != 10
    return nil if %w(0 1).include?(code[0].chars[0])
    return nil if %w(0 1).include?(code[1].chars[0])
    number
  rescue
    number
  end
end

