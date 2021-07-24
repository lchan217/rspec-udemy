# predicate methods return true or false,
# usually end with question mark
# zero?, even?, odd?, empty?

RSpec.describe 'predicate methods and predicate matchers' do
    it 'can be tested with Ruby methods' do
        result = 16 / 2
        expect(result.even?).to eq(true)
    end

    it 'can be tested with predicate matchers' do
        result = 16 / 2
        expect(result).to be_even
        expect(result).not_to be_odd
        expect(0).to be_zero
        expect([]).to be_empty
    end

    describe 0 do
        it { is_expected.to be_zero }
    end
end