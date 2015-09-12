module MissingElement
  def self.solution(a)
    return 1 if !a.is_a?(Array) || a.empty?

    expected_size = a.size + 1
    expected_sum  = expected_size * (expected_size + 1) / 2
    current_sum   = a.inject(&:+)

    expected_sum - current_sum
  end
end


### Codility Result Link
# https://codility.com/demo/results/demo4R7MP3-8K6
