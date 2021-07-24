RSpec.describe 'not_to method' do
    it 'checks inverse of a matcher' do
        expect(5).not_to eq(4)
        expect('hello').not_to eq('Hello')
        expect([1,2]).not_to eq([1,2,3])
        expect(nil).not_to be_truthy
        expect('Chicago').not_to end_with('city')
        expect(5).not_to respond_to(:length)
        expect([:a, :b]).not_to include(:d)
        expect{ 1 + 1 }.not_to raise_error
    end
end