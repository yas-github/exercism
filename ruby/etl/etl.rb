module ETL
  def self.transform(old)
    old.values.flatten.map(&:downcase!)
    hash = {}

    old.each do |k, v|
      v.each { |val| hash[val] = k }
    end
    hash
  end
end