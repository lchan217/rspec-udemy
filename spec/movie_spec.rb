class Actor
    def initialize(name)
        @name = name
    end

    def ready?
        sleep(1)
        true
    end

    def act
        "I love you"
    end

    def fall_off_ladder
        "Ahhhhh"
    end

    def light_on_fire
        false
    end
end

class Movie
    attr_reader :actor

    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            actor.act
            actor.fall_off_ladder
            actor.light_on_fire
            actor.act
        end
    end
end

RSpec.describe Movie do
    let(:stuntman) { double("Mr. Danger", 
        ready?: true, act: 'Any string here', 
        fall_off_ladder: 'a different string', 
        light_on_fire: true
    )}
    subject { described_class.new(stuntman) }

    describe '#start_shooting' do
        it 'expects an actor to do 3 actions' do
            # expectations
            expect(stuntman).to receive(:ready?).once
            expect(stuntman).to receive(:act).twice
            expect(stuntman).to receive(:fall_off_ladder).exactly(1).times
            expect(stuntman).to receive(:light_on_fire).at_most(1).times

            # invoke
            subject.start_shooting
        end
    end
end