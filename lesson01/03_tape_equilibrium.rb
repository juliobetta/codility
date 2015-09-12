require 'rspec'

########################################################################################################################
# IMPLEMENTATION #######################################################################################################
########################################################################################################################

module TapeEquilibrium
  def self.solution(a)
    return a[0] if a.length == 1

    left  = 0
    right = a.inject(0, :+)
    min   = nil

    (0..(a.length - 1)).each do |i|
      left  += a[i]
      right -= a[i]

      diff = (right - left).abs
      min  = diff if min.nil? || diff < min
    end

    min
  end
end


########################################################################################################################
# TESTS ################################################################################################################
########################################################################################################################

RSpec.describe TapeEquilibrium do
  context 'when more then 2 elements are given' do
    it 'minimize the values' do
      expect(TapeEquilibrium.solution([3,1,2,4,3])).to eq 1
    end
  end

  context 'when 2 elements are given' do
    it 'minimize values' do
      expect(TapeEquilibrium.solution([3,1])).to eq 2
    end
  end

  context 'when only one element is given' do
    it 'return the element' do
      expect(TapeEquilibrium.solution([1])).to eq 1
    end
  end
end



### Codility Result Link
# https://codility.com/demo/results/demo47FKWV-FYJ
