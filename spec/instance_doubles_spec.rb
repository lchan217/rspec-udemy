class Person
    def a
        sleep(3)
        "hi there"
    end
end

RSpec.describe Person do
    describe 'regular double' do
        it 'can implement any method (this is not good, doesnt exist on person)' do
            person = double(a: "hi there", b: 20)
            expect(person.a).to eq("hi there")
        end
    end

    describe 'instance/verifying double' do
        it 'can only implement methods defined on the class' do
            # commented out lines should all cause errors
            # person = instance_double(Person, a: 'hi there', b: 20)
            # person = instance_double(Person)
            # allow(person).to receive(:a).with(3, 10).and_return("hi there")
            person = instance_double(Person, a:'hi there')
            expect(person.a).to eq("hi there")
        end
    end
end