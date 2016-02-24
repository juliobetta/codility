require 'rspec'

###################################################################################################################
# IMPLEMENTATION ##################################################################################################
###################################################################################################################

module PassingCars
  def self.solution01(a)
    return 0 if a.length <= 1

    counter = 0

    a.each_with_index do |value, i|
      if value == 0
        counter += (a.slice(i+1, a.length)).select { |n| n==1 }.count
        return -1 if counter > 1_000_000_000
      end
    end

    counter
  end


  def self.solution02(a)
    return 0 if a.length <= 1

    counter = 0
    accum   = 0

    a.each_with_index do |value, i|
      if value == 0
        accum += 1
      elsif value == 1
        counter += accum
      end

      return -1 if counter > 1_000_000_000
    end

    counter
  end
end


###################################################################################################################
# TESTS ###########################################################################################################
###################################################################################################################

RSpec.describe PassingCars do
  it 'counts the number of passing cars on the road' do
    [:solution01, :solution02].each do |solution|
      expect(PassingCars.send(*[solution, [0, 1, 0, 1, 1]])).to eq 5
    end
  end

  context 'when passings cars exceeds 1_000_000_000' do
    it 'returns -1' do
      # solution01 takes too long to process a large array, since its worse case complexity is O(n^2)
      # expect(PassingCars.solution01([0, 1] * 50_000)).to eq -1

      expect(PassingCars.solution02([0, 1] * 50_000)).to eq -1
    end
  end
end



### Codility Result Link
# SOLUTION 01, 44%, O(n^2)
# https://codility.com/demo/results/demoSM6MCJ-NCY
# SOLUTION 02, 100%, O(n)
# https://codility.com/demo/results/demo2G2CZB-99X
