# TO DO: Write the test that ensure:
# - Our array_to_hash method successfully converts an array to a hash, with the given pattern
# - Our palindrome? method successfully returns whether the given argument is a plindrome or not
require 'array_to_hash'
require 'palingdrome'

describe 'array_to_hash' do
    it 'successfully converts an array to a hash, with the given pattern' do
        expect(array_to_hash(['hi', 'ciao', 'salut'])).to eq({key0: 'hi', key1: 'ciao', key2: 'salut'})
    end
    it 'the keys and values are of the right type' do
        array = ['hi', 'ciao', 'salut']
        expect(array_to_hash(array).keys[0]).to be_a(Symbol)
        expect(array_to_hash(array).values[0]).to be_a(String)
    end
      
    it 'all of our array elements are still present in the hash' do
        array = ['hi', 'ciao', 'salut']
        expect(array_to_hash(array).values).to eq(array)
    end

    it "should convert an array to a hash" do
        input = ['hi', 'ciao', 'salut']
        output = {key0: 'hi', key1: 'ciao', key2: 'salut'}
        expect(array_to_hash(input)).to eq(output)
    end

end

describe 'palindrome' do
    it 'successfully returns whether the given argument is a plindrome or not' do
        expect(palindrome('racecar')).to eq true
        expect(palindrome('hello')).to eq false
    end
end