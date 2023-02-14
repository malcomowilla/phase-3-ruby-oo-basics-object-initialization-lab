#Learning about initialize method
#Use initialize to set attributes when an instance is created

#Introduction
# We've already seen new instances of classes being created with the #new method. For example:
class Dog
attr_accessor :breed

end

snoopy = Dog.new # => #<Dog:0x007f970a2edfd0>

# The code above creates a new instance of the Dog class and sets that object equal to a variable, snoopy. If we want to give our dog a breed, we have to use the following code:
snoopy = Dog.new # => #<Dog:0x007f970a2edfd0>
snoopy.breed # => nil
snoopy.breed = "Beagle"
snoop.breed # => "Beagle"

# However, most dogs are born with a breed, not assigned a breed afterwards. How can we model the behavior of dogs being born with a breed in our Dog class? If only there was a way for us to assign an individual dog a breed automatically upon creation, or instantiation.
# Lucky for us, there is! It's called the #initialize method.

#The initialize method
# We already know that any Ruby class can produce new instances of itself, via the <Class Name>.new method, whether or not that class has an #initialize method. However, if we want each instance of our class to be created with certain data, we must define an #initialize method.

# The #initialize method is a method that is called automatically whenever .new is used.

# Let's define an #initialize method that takes in an argument of a dog's breed and sets a @breed variable equal to that argument. In other words, let's define our #initialize method to contain the functionality of the #breed= method, so that a dog instance will get a breed assigned to it right away when it is created, without us having to explicitly use the #breed= method.

class Dog
attr_reader :breed

def initialize(breed)
    @breed = breed
end


end


# Now, we can call .new like this
lassie = Dog.new("Collie")
lassie.breed = "Collie"
lassie.breed # => "Collie"

# When .new is called, Ruby will automatically invoke the #initialize method and forward the argument (or arguments) from .new to #initialize.


# Note: In the code above, we are now using the attr_reader macro instead of the attr_accessor macro because we are setting the value of the @breed attribute inside our #initialize method. This means we are not able to change the value of @breed after it's initially set. In some cases this is desirable, but if we want to be able to change the value of an attribute later, we would use the attr_accessor macro in addition to #initialize.



# If you’re familiar with Object Oriented JavaScript from previous experience, you may be curious about what this Ruby syntax looks like when translated to JavaScript. If you’re not, no worries — just know that most of the OO features we’re discussing in Ruby are possible in JavaScript too!

# The #initialize method is similar to the constructor method in JavaScript:
class Dog {
    constructor(breed){
        this.breed = breed;
    }
}


const lassie = new Dog("Collie")
# lassie.breed;  => "Collie"








