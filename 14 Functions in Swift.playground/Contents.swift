// functions

/*
 
 func functionName(parameters) -> ReturnType{
 //statements
 
 return parameters
 }
 
 */


func avengers(){
    print("Hello Avengers !!!")
}

avengers()

//func with parameters

func avenger(year: Int){
    print("Avengers was released in \(year)")
}

func Avengers(x:String, y:String){
    print(x + " " + y)
}


Avengers(x:"Avengers",y:"Age of Ultron")

func avengerMovie() -> (String, String) {
    let movieName = "Avenger"
    let series = "Infinity War"
    
    return(movieName, series)
}


var val = avengerMovie()

print(val.0)
print(val.1)

func add (a:Int, b:Int) -> Int{
    return a + b
}

var addition: (Int, Int) -> Int = add

print("10 + 20 = \(addition(10, 20))")
