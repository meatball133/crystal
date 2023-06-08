class JuiceMaker
  def self.debug_light_on?
    true
  end

  def initialize(fluid : Int32)
    @fluid = fluid
    @running = false
  end

  def start
    @running = true
  end

  def running?
    @running
  end

  def add_fluid(fluid)
    @fluid += fluid
  end

  def stop(duration)
    @fluid -= duration * 5
    @running = false
  end
end
