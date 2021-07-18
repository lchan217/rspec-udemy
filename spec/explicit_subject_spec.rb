RSpec.describe Hash do
    subject(:deal) do
        { a: 1, b: 2}
    end
    it 'has 2 key value pairs' do
        puts subject
        expect(subject.length).to eq(2)
        expect(deal.length).to eq(2)
    end

    describe 'nested example' do
        it 'has 2 key value pairs' do
            expect(deal.length).to eq(2)
        end
    end
end