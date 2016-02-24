require 'rspec'

###################################################################################################################
# IMPLEMENTATION ##################################################################################################
###################################################################################################################

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


###################################################################################################################
# TESTS ###########################################################################################################
###################################################################################################################

RSpec.describe TapeEquilibrium do
  context 'when more than 2 elements are given' do
    it 'minimizes the values' do
      expect(TapeEquilibrium.solution([3,1,2,4,3])).to eq 1
    end
  end

  context 'when 2 elements are given' do
    it 'minimizes values' do
      expect(TapeEquilibrium.solution([3,1])).to eq 2
    end
  end

  context 'when only one element is given' do
    it 'returns the element' do
      expect(TapeEquilibrium.solution([1])).to eq 1
    end
  end
end



### Codility Result Link
# https://codility.com/demo/results/demo47FKWV-FYJ
