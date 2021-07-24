RSpec.describe 'contain_exactly matcher' do
    subject { [1,2,3] }

    describe 'long form syntax' do
        it 'should check for the presence of all elements' do
            expect(subject).to contain_exactly(1,3,2)
            expect(subject).to contain_exactly(1,2,3 )
            expect(subject).to contain_exactly(3,2,1)

            expect(subject).to_not contain_exactly(1,2)
        end
    end

    it { is_expected.to contain_exactly(3,2,1) }
end