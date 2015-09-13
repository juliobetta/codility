require 'rspec'

###################################################################################################################
# IMPLEMENTATION ##################################################################################################
###################################################################################################################

module MinAvgTwoSlice
  def self.solution(a)
    min_avg_value = (a[0] + a[1]) / 2.0
    min_avg_pos   = 0

    (a.length - 2).times  do |i|
      avg_by_2 = ((a[i] + a[i+1]) / 2.0)
      avg_by_3 = ((a[i] + a[i+1] + a[i+2]) / 3.0)

      if avg_by_2 < min_avg_value
        min_avg_value = avg_by_2
        min_avg_pos   = i
      end

      if avg_by_3 < min_avg_value
        min_avg_value = avg_by_3
        min_avg_pos   = i
      end
    end

    if ((a[a.length - 1] + a[a.length - 2]) / 2.0) < min_avg_value
      min_avg_value = (a[a.length - 1] + a[a.length - 2]) / 2
      min_avg_pos   = a.length - 2
    end

    min_avg_pos
  end
end


###################################################################################################################
# TESTS ###########################################################################################################
###################################################################################################################

RSpec.describe MinAvgTwoSlice do
  it 'finds the minimal average of any slice containing at least two elements' do
    expect(MinAvgTwoSlice.solution([4,2,2,5,1,5,8])).to eq 1
  end
end



### Codility Result Link
# https://codility.com/demo/results/demo45G6Z4-QUS
