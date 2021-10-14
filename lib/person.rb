require 'pry'

class Person
    attr_accessor :bank_account, :hygiene
    attr_reader :name, :happiness
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        @happiness = value
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(value)
        @hygiene = value
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def happy?
        @happiness > 7
    end

    def clean? 
        @hygiene > 7
    end 

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end 

    def work_out 
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        people = [person, self]
        if (topic == 'politics')
            people.each {|person| person.happiness -= 2}
            "blah blah partisan blah lobbyist"  
        elsif (topic == 'weather')
            people.each {|person| person.happiness += 1}
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end 

end

devin = Person.new('Devin')
emily = Person.new('Emily')

