class Cell
  attr_reader :possibilities
  attr_accessor :value

  def initialize
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  def known?
    !!value
  end

  def remove_possibility(target)
    @possibilities.delete(target)
  end
end
