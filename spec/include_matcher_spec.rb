RSpec.describe 'include matcher do' do
    describe 'hot chocolate' do
        it 'checks for substring inclusion' do
            expect(subject).to include('choc')
        end
        it { is_expected.to include('t c') }
        it { is_expected.to include('choc') }
    end

    describe [1,2,3] do
        it { is_expected.to include(3) }
        it { is_expected.to include(3, 2) }
    end

    describe ({ a: 1, b: 2, c: 3 })do
        it { is_expected.to include(b: 2) }
        it { is_expected.to include(:a) }
        it { is_expected.to include(c: 3) }
    end
end