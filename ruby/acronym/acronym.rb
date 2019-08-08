class Acronym
  def self.abbreviate(str)
    split_str = str.split(/[ \,\-]/).reject(&:empty?)
    split_str.map { |c| c[0].upcase }.join.to_s
  end
end
