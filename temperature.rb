class Temperature
  include Comparable

  alias eql? ==

  def initialize(temperature)
    @temperature = Float(temperature)
  end

  def cold?
    self < COLD_THRESHOLD
  end

  def <=>(other)
    temperature <=> other.temperature
  end

  def to_s
    temperature.to_s
  end

  def hash
    temperature.hash
  end

  protected

  COLD_THRESHOLD = new(59)
  attr_reader :temperature
end

p Temperature.new(37).cold?
p [Temperature.new(37), Temperature.new(68), Temperature.new(68)].uniq

