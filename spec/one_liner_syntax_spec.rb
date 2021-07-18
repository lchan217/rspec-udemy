RSpec.describe 'shorthand syntax' do
    subject { 2 }

        # these tests are the same thing
    context 'with classic syntax' do
        it 'should equal 2' do
            expect(subject).to eq(2)
        end
    end

    context 'with shorthand' do
        it { is_expected.to eq(2)}
    end
end