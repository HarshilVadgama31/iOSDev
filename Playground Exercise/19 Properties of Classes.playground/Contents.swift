class Comic{
    var production: String = ""
    var name: String = ""
}

var comic = Comic()

comic.production = "Marvel"
comic.name = "Avengers"

print("Comic's Name is \(comic.name) and is produced by \(comic.production).")

//Lazy Stored Property

class ComicStore {
    var name: String
    lazy var comicInfo: String = {
        return "\nWelcome to \(self.name)"
    }()
    init(name: String) {
        self.name = name
    }
}

let Store = ComicStore(name: "Marvel Store")

print(Store.comicInfo)

//Computed Properties

class Circle{
    var radius: Double?
    var cval: Double?
    var Area: Double{
        get {
            return radius! * radius!
        }
        set(newArea){
            cval = Double(newArea) * 3.14
        }
    }
}

let result = Circle()
result.Area = 100
print(result.cval!)

//read Only

class Multiplication {
    var num1 : Int = 5
    var num2 : Int = 5
    var multiply: Int {
        get{
            return num1 * num2
        }
    }
}

let result1 = Multiplication()
print("\(result1.multiply)\n")

//result1.multiply = 40 this is what we cannot do cause it does'nt have set method making it Read Only


// Swift Properties - Observer

class Changes{
    var num1: Int = 10{
        willSet(newValue) {
            print("Will Set \(num1)")
        }
        didSet {
            if num1 > oldValue {
                print("Added \(num1 - oldValue)")
            }
        }
    }
}

let answer = Changes()

answer.num1 = 56
answer.num1 = 345

print(answer.num1)

