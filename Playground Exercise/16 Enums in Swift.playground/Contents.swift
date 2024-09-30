// Enums

enum Marvel {
    case IronMan, CaptainAmerica, Hulk, Thor, BlackWidow, Hawkeye
}

var hero = Marvel.IronMan

if hero == .IronMan {
    print("I am Iron Man")
}

switch hero {
    case .IronMan:
        print("I am Iron Man")
    case .CaptainAmerica:
        print("I am Captain America")
    case .Hulk:
        print("I am Hulk")
    case .Thor:
        print("I am Thor")
    case .BlackWidow:
        print("I am Black Widow")
    case .Hawkeye:
        print("I am Hawkeye")
}

enum marvelMovies {
    case Name(String)
    case Year(Int)
}

var mName = marvelMovies.Name("Iron Man")
var mYear = marvelMovies.Year(2013)

switch mName {
case .Name(let name):
    print("The movie name is \(name)")
case .Year(let year):
    print("The movie year is \(year)")
}

switch mYear {
case .Name(let name):
    print("The movie name is \(name)")
case .Year(let year):
    print("The movie year is \(year)")
}

//recursion Enum

indirect enum Arithematic {
    case Add(Arithematic, Arithematic)
    case Multiply(Arithematic, Arithematic)
    case Number(Int)
}

func evaluate(_ expression: Arithematic) -> Int {
    switch expression {
    case .Add(let left, let right):
        return evaluate(left) + evaluate(right)
    case .Multiply(let left, let right):
        return evaluate(left) * evaluate(right)
    case .Number(let value):
        return value
    }
}

let a = Arithematic.Number(5)
//let c = evaluate(.Number(5))
let b = Arithematic.Number(7)
let Addition = Arithematic.Add(a, b)
let Multiply = Arithematic.Multiply(a, b)

print(evaluate(Addition))
print(evaluate(Multiply))
