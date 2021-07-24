RSpec.describe 'equality matchers' do
    let(:a) { 3.0 }
    let(:b) { 3 }

    describe 'eq matcher' do
        it 'tests for value and ignores type' do
            expect(a).to eq(b)
        end
    end

    describe 'eql matcher' do
        it 'tests for value AND type' do
            expect(a).not_to eql(b)
            expect(a).not_to eql(3)
            expect(b).not_to eql(3.0)
        end
    end

    describe 'equal and be matcher' do
        let(:c) { [1,2,3] }
        let(:d) { [1,2,3] }
        let(:e) { c }

        # c & d are not identical because they're pointing to 2 different arrays
        # even though they are the same
        # can be same, but not identical
        it 'cares about object identity' do
            expect(c).to eq(d)
            expect(c).to eql(d)

            expect(c).not_to equal(d)
            expect(c).to equal(e) 
            expect(c).to equal(d) # this will fail - look at output for dif objs
        end
    end
end