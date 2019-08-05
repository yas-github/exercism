class Complement
  nucleotides = { "C" => "G", "G" => "C", "T" => "A", "A" => "U" }

  def self.of_dna(strand)
    strand.chars.map { |s| nucleotides[s] }.join
  end
end