require 'speed_in_mph' 

describe 'speed_in_mph' do
    
    it 'return an error if the argument is not a float' do
       error ='Please pass a valid speed'
         expect(speed_in_mph('a')).to eq(error)
         expect(speed_in_mph([1])).to eq(error)
    end

    it 'converts speed from km/h to mi/h' do
        expect(speed_in_mph(10)).to eq 10 * 0.6213711922
    end
end