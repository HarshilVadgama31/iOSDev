var dcWorld = {
    print("Welcome to DC")
}

var myClosure: () -> () = {}

var numClosure: (Int) -> (Int) = {
    (myNum: Int) -> Int in
    return myNum + 2
}

numClosure(2)

var anotherNumberClosure = {
    myNum in
    return myNum + 4
}

// A closure with no parameter & only return type
var founded = {
    () in
    return 2022
}

founded()


// A closure with only parameter type
var founders = {
    (name: String) in
    print(name)
}

founders("You are the Founder")


// A closure with a parameter & return type
var anotherFounder = {
    (name:String) -> String in
    return name
}

anotherFounder("You")

// A closure with two parameter & a return type
var twoFounder = {
    (name:String, name2:String) -> String in
    return name + name2
}

twoFounder("You","Your Friend")

// Real-life example

let movieNames = ["Shawshank Redemption", "Godfather", "Dark Knight", "Avengers"]

var sortNames = movieNames.sorted { (m1:String, m2:String) -> Bool in
    return m1 > m2
}

print(sortNames)
var l:[String] = movieNames.reversed()
print(l)

//Closure in Function

func calculate(num:Int) -> Int {
    num * 20
}

func sum(num1: Int, num2:Int, closureparam: (Int)->(Int)) -> Int {
    var sum = 0
    for i in num1...num2 {
        sum += closureparam(i)
    }
    return sum
}

print(sum(num1: 1, num2: 10, closureparam: calculate))

// INTERVIEW 101
/*

 func dataTask(with url: URL, completionHandler: @escaping(Data?, URLResponse?, Error?) -> Void) -> Void {
     //URLSessionDataTask
 }// Here Escaping helps in executing the comletionHandler at
  // the end of function instead of its usual behaviour i.e. to execute at the calling line
 
*/

//INTERVIEW 101 Rare Cases

func printNumbers(result: () -> Void){
    print("One")
    result()
    print("Two")
}

printNumbers(result: {
    print("Three")
})

//Improved Syntax

func printNumbers2(result: @autoclosure () -> Void){
    print("One")
    result()
    print("Two")
}

printNumbers2(result: print("Three"))

//Improved Syntax

func printNumbers3(_ result: @autoclosure () -> Void){
    print("One")
    result()
    print("Two")
}

printNumbers3(print("Three"))

