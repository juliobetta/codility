require 'rspec'

########################################################################################################################
# IMPLEMENTATION #######################################################################################################
########################################################################################################################

module MaxCounters
  def self.solution01(n, a)
    counters = Array.new(n, 0)
    limit    = n + 1
    max      = 0

    a.each_with_index do |val, i|
      if 1 <= val && val <= n
        counter = counters[val-1] += 1
        max     = counter if max > counter
      elsif val == limit
        counters.fill(counters.max)
      end
    end

    counters
  end


  def self.solution02(n, a)
    counters    = Array.new(n, 0)
    current_max = 0
    set_max     = 0

    a.each do |i|
      if i <= n
        val = [counters[i - 1], set_max].max + 1
        counters[i - 1] = val
        current_max = [val, current_max].max
      else
        set_max = current_max
      end
    end

    counters.map! {|i| [i, set_max].max}

    counters
  end
end


########################################################################################################################
# TESTS ################################################################################################################
########################################################################################################################

RSpec.describe MaxCounters do
  it 'returns counters' do
    [:solution01, :solution02].each do |solution|
      expect(MaxCounters.send(solution, *[5, [3,4,4,6,1,4,4]])).to eq [3,2,2,4,2]
    end
  end
end



### Codility Result Link
# SOLUTION 01, 66%
# https://codility.com/demo/results/demoRGSXM2-RTR
# SOLUTION 02, 100%
# https://codility.com/demo/results/demoYXBEYT-ZNW
