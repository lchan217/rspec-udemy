class King
    attr_reader :name

    def initialize(name)
        @name = name
    end
end

RSpec.describe King do
    subject { described_class.new('Boris') }
    let(:louis) { described_class.new('Louis' )}

    it 'has a name' do
        expect(subject.name).to eq('Boris')
        expect(louis.name).to eq('Louis')
    end
 
end