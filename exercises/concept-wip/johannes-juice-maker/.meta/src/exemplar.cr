class JuiceMaker
  def initialize(fluid : Int32)
    @fluid = fluid
    @running = false
  end

  def start
    @running = true
  end

  def add_fluid(fluid)
    @fluid += fluid
  end

  def stop(duration)
    @fluid -= duration * 5
    @running = false
  end
end
