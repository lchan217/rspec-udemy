RSpec.describe 'satisfy matcher' do
    # subject { 'racecar' } passes
    subject { 'racecars' } # render errors

    it 'is a palindrome' do
        expect(subject).to satisfy { |value| value == value.reverse }
    end

    it 'can accept a custom error message' do
        expect(subject).to satisfy('be a palindrome') do |value|
            value == value.reverse
        end
    end
end