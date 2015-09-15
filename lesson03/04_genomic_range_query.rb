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


  def self.solution02(s, p, q)
  end
end


###################################################################################################################
# TESTS ###########################################################################################################
###################################################################################################################

RSpec.describe GenomicRangeQuery do
  let(:params) { params = ['CAGCCTA', [2,5,0], [4,5,6]] }

  it 'finds the minimal nucleotide from a range of sequence DNA' do
    [:solution01].each do |solution|
      expect(GenomicRangeQuery.send(solution, *params)).to eq [2, 4, 1]
    end
  end
end



### Codility Result Link
# SOLUTION 01, 62%, O(n*m)
# https://codility.com/demo/results/demo5Z77UX-VU9
