module FrogRiverOne
  def self.solution(x, a)
    positions = {}

    a.each_with_index do |value, i|
      positions[value] = :ok
      return i if positions.size == x
    end

    return -1
  end
end


### Codility Result Link
# https://codility.com/demo/results/demo98T8T9-76E
