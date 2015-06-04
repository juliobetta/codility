require 'rspec'
require './lesson01/01_frog_jmp'
require './lesson01/02_missing_element'
require './lesson01/03_tape_equilibrium'

describe 'Lesson 1' do
  describe '#frog_jmp' do
    it 'returns the right result' do
      expect(FrogJump.solution(10, 85, 30)).to eq 3
    end
  end

  describe '#missing_element' do
    context 'when more than 1 element are given' do
      it 'returns the missing element' do
        expect(MissingElement.solution([2,3,1,5])).to eq 4
      end
    end

    context 'when 1 element is given' do
      it 'returns the n+1 element' do
        expect(MissingElement.solution([1])).to eq 2
      end
    end

    context 'when non-array or empty array is given' do
      it 'returns 1' do
        [[], 1].each do |el|
          expect(MissingElement.solution(el)).to eq 1
        end
      end
    end
  end

  describe '#tape_equilibrium' do
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
end
