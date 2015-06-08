require 'rspec'
require './lesson02/01_perm_check'
require './lesson02/02_frog_river_one'
require './lesson02/03_max_counters'

describe 'LESSON 02' do

  describe '#perm_check' do
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

    context 'when is permutation' do
      it 'returns 1' do
        expect(PermCheck.solution([4,1,3,2])).to eq 1
      end
    end

    context 'when is not a permutation' do
      it 'returns 0' do
        expect(PermCheck.solution([4,1,3])).to eq 0
      end
    end
  end


  describe '#frog_river_one' do
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

end