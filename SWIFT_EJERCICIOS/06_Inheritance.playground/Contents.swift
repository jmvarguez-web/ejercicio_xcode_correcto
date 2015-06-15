class Animal{
    var name = "default"
    var age = 0;
    
    func getDetails()->String{
        return "this animals name is \(name) it is \(age) years old."
    }
}

class Dog : Animal{
    func woof()->String{
        return "Woof Woof Woof"
        
    }
}


class Cat : Animal{
    func meow() ->String{
        return "Mew Mew Meow"
    }
}


var RyansDog = Dog()
RyansDog.name="Toto"
RyansDog.age=16
RyansDog.woof()
RyansDog.getDetails()


var RyansCat = Cat()
RyansCat.name = "Hugo"
RyansCat.age = 1
RyansCat.meow()
RyansCat.getDetails()



var JansCat = Cat()
var daveCat = Cat()
