require 'rspec'

###################################################################################################################
# IMPLEMENTATION ##################################################################################################
###################################################################################################################

module GenomicRangeQuery
  def self.solution01(s, p, q)
    factors = {'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4}
    values  = []
    length  = p.length

    length.times do |i|
      values.push s.chars.slice(p[i]..q[i]).map { |char| factors[char] }.min
    end

    values
  end

  # based on http://codereview.stackexchange.com/q/101206
  def self.solution02(s, p, q)
    factors     = {'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4}
    prefix_sums = [[0,0,0,0]]
    result      = []
    length      = p.length

    s.chars.each_with_index do |char, i|
      prefix_sums[i + 1] = prefix_sums[i].clone
      prefix_sums[i + 1][factors[char] - 1] += 1
    end

    length.times do |i|
      head = p[i]
      tail = q[i]

      factors.values.each do |j|
        occurrences = prefix_sums[tail + 1][j-1] - prefix_sums[head][j-1]
        if occurrences > 0
          result << j
          break
        end
      end
    end

    result
  end
end


###################################################################################################################
# TESTS ###########################################################################################################
###################################################################################################################

RSpec.describe GenomicRangeQuery do
  let(:params) { params = ['CAGCCTA', [2,5,0], [4,5,6]] }

  it 'finds the minimal nucleotide from a range of sequence DNA' do
    [:solution01, :solution02].each do |solution|
      expect(GenomicRangeQuery.send(solution, *params)).to eq [2, 4, 1]
    end
  end
end



### Codility Result Link
# SOLUTION 01, 62%, O(n*m)
# https://codility.com/demo/results/demo5Z77UX-VU9
# SOLUTION 02, 100%, O(n*m)
# https://codility.com/demo/results/training9PGRWQ-GG3
