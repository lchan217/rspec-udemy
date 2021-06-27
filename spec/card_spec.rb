# usually in a different place, but for simplicity's sake
# let's put in spec files

class Card
    attr_reader :suit, :rank
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end

RSpec.describe Card do
    before do
        @card = Card.new('Ace', 'Spades')
    end

    it "has a rank" do
        expect(@card.rank).to eq('Spades')
    end

    it "has a suit" do
        expect(@card.suit).to eq('Ace')
    end
end

# RSpec.describe "Card" do
    # before do
        # @card = ...
        # if you change this, all instances will need to be changed
        # if you forget an instance, it will result to nil
    # end
    # before(:example) do
    # end
# it and specify are the same thing
#     it "describe the expected behavior" do
#         expect(what you're testing).to eq(the matcher, like ==)
#     end
#     specify "describe the expected behavior" do
#     end
# end

# examples - how many "it" statements there are
# example group - "describe"
# assertion - "expect..."