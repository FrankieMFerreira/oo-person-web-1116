# your code goes here
class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name



  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end


  def happiness
    [[10, @happiness].min, 0].max
  end

  def hygiene
    [[10, @hygiene].min, 0].max
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

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
   end

   def work_out
     self.hygiene -= 3
     self.happiness += 2
     "♪ another one bites the dust ♫"
   end

   def call_friend(friend)
     self.happiness += 3
     friend.happiness += 3
     "Hi #{friend.name}! It's #{self.name}. How are you?"
   end

   def start_conversation(person, topic)
     if topic == "politics"
       self.happiness -= 2
       person.happiness -= 2
       "blah blah partisan blah lobbyist"
     elsif topic == "weather"
       self.happiness += 1
       person.happiness += 1
       "blah blah sun blah rain"
     else
       "blah blah blah blah blah"
     end
   end


end
