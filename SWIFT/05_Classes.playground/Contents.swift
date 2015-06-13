class Anima{
    var name = "default"
    var age = 0;
    
    func getDetails()->String{
        return "this animals name is \(name) it is \(age) years old."
    }
}

var myAnimal = Anima()
myAnimal.name = "woofy"
myAnimal.age = 2
myAnimal.getDetails()