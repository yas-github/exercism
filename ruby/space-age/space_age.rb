class SpaceAge

  EARTH_SECONDS = 31557600
  PLANET_SECONDS = {
    earth:   EARTH_SECONDS.to_f,
    mercury: EARTH_SECONDS * 0.2408467,
    venus:   EARTH_SECONDS * 0.61519726,
    mars:    EARTH_SECONDS * 1.8808158,
    jupiter: EARTH_SECONDS * 11.862615,
    saturn:  EARTH_SECONDS * 29.447498,
    uranus:  EARTH_SECONDS * 84.016846,
    neptune: EARTH_SECONDS * 164.79132,
  }.freeze

  def initialize(time)
    @time = time
  end

  PLANET_SECONDS.each do |planet, seconds|
    define_method("on_#{planet}") { (@time / seconds).round(2) }
  end
end