RSpec.describe 'before and after hooks' do
    # runs before context once, then examples (it blocks) many times, 
    # then after context once
    before(:context) do
        puts "before context"
    end

    after(:context) do
        puts "after context"
    end

    before(:example) do
        puts "before example"
    end

    after(:example) do
        puts "after example"
    end

    it "it just a random example" do
        expect(5 * 4).to eq(20)
    end

    it "it just a random example" do
        expect(3 - 2).to eq(1)
    end
end