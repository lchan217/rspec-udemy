class Deck
    def self.build
        # biz logic to build cards
    end
end

class CardGame
    attr_reader :cards

    def start
        @cards = Deck.build
    end
end

RSpec.describe CardGame do 
    it 'can only implement class methods that are defined on a class' do
        # class_double(Deck, build: ['ace', 'queen'], shuffle: ['queen', 'ace']).. shuffle doesn't exist so it would error
        deck_klass = class_double(Deck, build: ['ace', 'queen']).as_stubbed_const

        expect(deck_klass).to receive(:build)
        subject.start
        expect(subject.cards).to eq(['ace', 'queen'])
    end
end