RSpec.describe Hash do
    it 'should start off empty' do
        puts subject
        expect(subject.length).to eq(0)
        subject[:some_key] = "some value"
        puts subject
        expect(subject.length).to eq(1)
    end

    it 'is isolated between examples' do
        expect(subject.length).to eq(0)
    end
end