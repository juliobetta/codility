require 'rspec'

###################################################################################################################
# IMPLEMENTATION ##################################################################################################
###################################################################################################################

module CountDiv
  def self.solution(a, b, k)
    offset = 0
    offset += 1 if a % k == 0

    ((b/k) - (a/k)) + offset
  end
end


###################################################################################################################
# TESTS ###########################################################################################################
###################################################################################################################

RSpec.describe CountDiv do
  it 'returns number of integers divisible by k in range a..b' do
    expect(CountDiv.solution(6,11,2)).to eq 3
    expect(CountDiv.solution(7,11,2)).to eq 2
    expect(CountDiv.solution(1,4,2)).to eq 2
    expect(CountDiv.solution(6,18,3)).to eq 5
    expect(CountDiv.solution(0,1,2)).to eq 1
  end
end



### Codility Result Link
# https://codility.com/demo/results/demo9SZDAM-J9W
