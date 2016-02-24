require 'rspec'

###################################################################################################################
# IMPLEMENTATION ##################################################################################################
###################################################################################################################

module OddOccurrencesInArray
  def self.solution(a)
    temp = {}

    a.each do |i|
      if temp.has_key? i
        temp.delete i
      else
        temp[i] = :ok
      end
    end

    temp.keys.last
  end
end


###################################################################################################################
# TESTS ###########################################################################################################
###################################################################################################################

RSpec.describe OddOccurrencesInArray do

  it 'returns the value of the unpaired element' do
    expect(OddOccurrencesInArray.solution([9,3,9,3,9,7,9])).to eq 7
  end

end



### Codility Result Link
# https://codility.com/demo/results/trainingSMSRTV-4KN
