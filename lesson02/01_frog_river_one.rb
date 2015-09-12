require 'rspec'

###################################################################################################################
# IMPLEMENTATION ##################################################################################################
###################################################################################################################

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


###################################################################################################################
# TESTS ###########################################################################################################
###################################################################################################################

RSpec.describe FrogRiverOne do
  let(:positions) { [1,3,1,4,2,3,5,4] }

  context 'when a valid position is given' do
    it 'cross the river' do
      expect(FrogRiverOne.solution(5, positions)).to eq 6
    end
  end

  context 'when an invalid position is given' do
    it 'returns -1' do
      expect(FrogRiverOne.solution(7, positions)).to eq -1
    end
  end

  context 'when a position less than 1 is given' do
    it 'returns -1' do
      expect(FrogRiverOne.solution(-1, positions)).to eq -1
    end
  end

  context 'when there are no leaves' do
    it 'returns -1' do
      expect(FrogRiverOne.solution(5, [])).to eq -1
    end
  end
end



### Codility Result Link
# https://codility.com/demo/results/demo98T8T9-76E
