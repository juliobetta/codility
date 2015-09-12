module PermCheck
  def self.solution(a)
    values = {}

    a.each do |value|
      return 0 if value > a.size
      values[value] = true
    end

    values.size == a.size ? 1 : 0
  end
end

### Codility Result Link
# https://codility.com/demo/results/demoYQ6ME2-VE2
