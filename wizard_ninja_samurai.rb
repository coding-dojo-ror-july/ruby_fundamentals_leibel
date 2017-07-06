# from the platform for now
require_relative 'human'

class Ninja < Human
  def initialize
    super
    @stealh = 175
  end

  def steal(victim)
    attack(victim)
    @health += 10
  end

  def get_away
    @health -= 15
  end
end

class Samurai < Human
  @@count = 0

  def initialize
    super
    @health = 200
    @@count += 1
  end

  def death_blow
    if obj.class.ancestors.include?(Human)
      obj.health = 0
      true
    else
      false
    end
  end

  def meditate
    @health = 200
  end

  def self.count
    @@count
  end
end

class Wizard < Human
  def initialize
    super
    @health = 50
    @intelligence = 25
  end

  def heal
    @health += 10
  end

  def fireball(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      true
    else
      false
    end
  end
end
