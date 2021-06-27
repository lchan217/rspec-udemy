# usually in a different place, but for simplicity's sake
# let's put in spec files

class Card
    attr_accessor :suit, :rank
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end

RSpec.describe Card do
    # before do
    #     @card = Card.new('Ace', 'Spades')
    # end
    let(:card) { Card.new('Spades', 'Ace') }
    let(:x) { 1+1 }
    let(:y) { x + 10 }

    #let! - equivalent to before do, not lazy loaded

    it "has a rank that can change" do
        expect(card.rank).to eq('Ace')
        card.rank = 'Queen' # uses cached card, not new instance
        expect(card.rank).to eq('Queen')
    end

    it "has a suit" do
        expect(card.suit).to eq('Spades')
    end

    it "has a custom error message" do
        card.suit = 'Blah'
        comparison = 'Spade'
        expect(card.suit).to eq(comparison), "Error: I expected #{comparison} but I got #{card.suit} instead!"
    end

    it "does math" do
        expect(x).to eq(2)
        expect(y).to eq(12)
    end
end

# RSpec.describe "Card" do
    # before do
        # @card = @card = Card.new('Ace', 'Spades')
        # potential issues
            # if you change this, all instances will need to be changed
            # if you forget an instance, it will result to
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