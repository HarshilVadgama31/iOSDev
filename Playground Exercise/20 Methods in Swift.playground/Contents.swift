// Methods

class SuperHero {
    var name: String = ""
    
    func heroName(Str: String){
        name += Str
        print(name)
    }
}

var details = SuperHero()
details.heroName(Str: "Captain America")
details.heroName(Str: "Batman")

//init

class AreaOfRect {
    let n1 : Int
    let n2 : Int
    let area : Int
    
    init(n1: Int, n2: Int) {
        self.n1 = n1
        self.n2 = n2
        
        area = n1 * n2
    }
}

let area = AreaOfRect(n1: 12, n2: 13)
print("\nArea of Rectangle is: \(area.area)\n")

struct Modify{
    var num = 45
    
    mutating func areaOfSquare() -> Int{
        num *= num
        return num
    }
}


enum Heroes {
    case Marvel, Avengers, CaptainAmerica
    
    mutating func Types(){
        switch self{
        case .Marvel:
            self = .Avengers
        case .Avengers:
            self = .CaptainAmerica
        case .CaptainAmerica:
            self = .Marvel
        }
    }
}

var hero = Heroes.Marvel

hero.Types()
print(hero)

// Stack Overflow

class AreaSquare {
    class Area {
        func areaSq(num: Int) -> Int{
            return num * num
        }
    }
}

let sqArea = AreaSquare.Area().areaSq(num: 30)
print("\nArea is \(sqArea)")


//

class AreaSquare1 {
    class func areaSq1(num: Int) -> Int{
            return num * num
    }
}

let sqArea1 = AreaSquare1.areaSq1(num: 20)
print("\nArea is \(sqArea1)")
