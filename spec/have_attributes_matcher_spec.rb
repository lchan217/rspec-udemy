class ProfessionalWrestler
    attr_reader :name, :finishing_move

    def initialize(name, finishing_move)
        @name = name
        @finishing_move = finishing_move
    end
end

RSpec.describe 'attributes matcher' do
    describe ProfessionalWrestler.new('lizzie', 'kick')do 
        it 'checks for object attrs and proper values' do 
            expect(subject).to have_attributes(name: 'lizzie', finishing_move: 'kick')
        end
        it { is_expected.to have_attributes(name: 'lizzie') }
    end
end