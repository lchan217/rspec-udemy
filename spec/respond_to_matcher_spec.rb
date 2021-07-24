class HotChocolate
    def drink
        'Delicious'
    end

    def discard
        'PLOP!'
    end

    def purchase(number)
        "Awesome, I just bought #{number} more drinks!!"
    end
end

RSpec.describe HotChocolate do
    it 'confirms that an object can respond to a method' do
        # expect(subject).to respond_to(:drink) # do not care about the output
        expect(subject).to respond_to(:drink, :discard, :purchase)
    end

    it 'confirms that object can respond to a method with args' do
        expect(subject).to respond_to(:purchase).with(1).arguments
    end

    it { is_expected.to respond_to(:purchase, :discard) }
    it { is_expected.to respond_to(:purchase).with(1).arguments }
end