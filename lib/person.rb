# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def bank_account
        @bank_account
    end
   
    def happiness
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0 
            @happiness = 0
        else 
            @happiness
        end
    end

    def hygiene
        if @hygiene > 10
            @hygiene = 10 
        elsif @hygiene < 0 
            @hygiene = 0
        else
            @hygiene
         
        end
    end
    
    def happy?
        if @happiness > 7 
            true
        else
            false
        end
    end 
    
    def clean?
        if @hygiene > 7 
            true
        else
            false
        end
    end
    
    def get_paid(salary)
        @bank_account += salary
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(felix)
        self.happiness +=3
        felix.happiness +=3
        return "Hi #{felix.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
                return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
    


end

