class Person
    attr_accessor :bank_account
    attr_writer :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        @happiness.clamp(0,10)
    end

    def hygiene
        @hygiene.clamp(0,10)
    end

    def happy?
        @happiness > 7 ? true : false
    end
    
    def clean?
        @hygiene > 7 ? true : false
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    
    def get_paid(num)
        @bank_account += num
        "all about the benjamins"
    end

    def start_conversation(person, topic)
        case topic
        when 'politics'
            person.happiness -= 2
            self.happiness -= 2
            'blah blah partisan blah lobbyist'
        when 'weather'
            person.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        when 'programming'
            person.happiness += 1
            self.happiness += 1
            'blah blah blah blah blah'
        end
    end
end