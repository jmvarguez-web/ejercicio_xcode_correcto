var fruit = "apples"
var myfruit = "bananas"

if(fruit == myfruit){
    println("This is true")
}else if( fruit == "oranges"){
    println("special condition met")
}else{
    println("No conditions met")
}

switch fruit{
    case "apples":
        println("The fruit was some apple \(fruit)")
    
    case "bananas":
    println("The fruit was a bunch of \(fruit)")
    
default:
    println("No fruits matched")
    
    
}