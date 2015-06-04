require 'rspec'
Dir["./lesson01/*.rb"].each {|file| require file }

describe 'Lesson 1' do
  context 'FROG JUMP' do
    it 'returns the right result' do
      expect(FrogJump.solution(10, 85, 30)).to eq 3
    end
  end

  context 'MISSING ELEMENT' do
    context 'when more than 1 elements are given' do
      it 'returns the right result' do
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
end
