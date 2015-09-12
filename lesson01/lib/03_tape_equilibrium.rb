module TapeEquilibrium
  def self.solution(a)
    return a[0] if a.size == 1

    sum   = a.inject(0, :+)
    left  = 0
    right = sum
    min   = nil

    a.each_with_index do |value, i|
      break if a.size - 1 == i

      left  += value
      right -= value

      diff = (right - left).abs
      min  = diff if min.nil? || diff < min
    end

    min
  end
end

### Codility Result Link
# https://codility.com/demo/results/demo47FKWV-FYJ
