require 'rspec'

########################################################################################################################
# IMPLEMENTATION #######################################################################################################
########################################################################################################################

module MissingElement
  def self.solution(a)
    return 1 if !a.is_a?(Array) || a.empty?

    expected_size = a.size + 1
    expected_sum  = expected_size * (expected_size + 1) / 2
    current_sum   = a.inject(&:+)

    expected_sum - current_sum
  end
end


########################################################################################################################
# TESTS ################################################################################################################
########################################################################################################################

RSpec.describe MissingElement do
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



### Codility Result Link
# https://codility.com/demo/results/demo4R7MP3-8K6
