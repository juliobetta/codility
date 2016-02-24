require 'rspec'

###################################################################################################################
# IMPLEMENTATION ##################################################################################################
###################################################################################################################

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


###################################################################################################################
# TESTS ###########################################################################################################
###################################################################################################################

RSpec.describe PermCheck do
  context 'when one invalid element is given' do
    it 'returns 0' do
      expect(PermCheck.solution([6])).to eq 0
    end
  end

  context 'when one valid element is given' do
    it 'returns 1' do
      expect(PermCheck.solution([1])).to eq 1
    end
  end

  context 'when it is a permutation' do
    it 'returns 1' do
      expect(PermCheck.solution([4,1,3,2])).to eq 1
    end
  end

  context 'when it is not a permutation' do
    it 'returns 0' do
      expect(PermCheck.solution([4,1,3])).to eq 0
    end
  end
end



### Codility Result Link
# https://codility.com/demo/results/demoYQ6ME2-VE2
