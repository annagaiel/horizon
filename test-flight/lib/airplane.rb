class Airplane
  attr_reader :type

  def initialize(type, wing_loading, horsepower)
    @type = type
    @engine_on = false
    @is_flying = false
  end

  def land
    if @engine_on && @is_flying
      "airplane landed"
    elsif @engine_on
      "airplane already on the ground"
    else
      "airplane not started, please start"
    end
  end

  def takeoff
    if @engine_on && @is_flying
      "airplane is already flying"
    elsif @engine_on
      @is_flying = true
      "airplane launched"
    else
      "airplane not started, please start"
    end
  end

  def start
    if @engine_on
      "airplane already started"
    else
      @engine_on = true
      "engine started"
    end
  end
end
