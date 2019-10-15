class ResistorColorTrio
  attr_reader :colors

  RESISTOR_COLORS = %w[
    black brown red orange yellow green blue violet grey white
  ]

  def initialize(colors)
    @colors = colors
  end

  def label
    raise ArgumentError unless colors.all? { |c| RESISTOR_COLORS.include?(c) }
    num = colors.map { |c| RESISTOR_COLORS.index(c) }
    zero_count = num.slice!(-1)
    value = num.join + ("0" * zero_count)

    value = value.to_i >= 1000 ? (value.to_i / 1000).to_s + " kiloohms" : value + " ohms"

    return "Resistor value: #{value}"
  end
end