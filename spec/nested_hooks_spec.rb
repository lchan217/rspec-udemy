#need to re-watch
RSpec.describe "nested hooks" do
    before(:context) do
        puts "before context"
    end
    
    before(:example) do
        puts "before example"
    end

    it 'does basic math' do
        expect(1+1).to eq(2)
    end

    context "with condition A" do
        before(:context) do
            puts "before context condition A"
        end
        before(:example) do
            puts "before example condition A"
        end
        it "does some more basic math" do
            expect(1+1).to eq(2)
        end
        it "does subtraction too" do
            expect(5-3).to eq(2)
        end
    end
end