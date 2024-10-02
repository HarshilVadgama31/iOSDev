
//Inheritance

class Heroes {
    var name: String = ""
    var gender: String = ""
    var age: Int = 0
    
    init(Name: String, Gender: String, Age: Int) {
        self.name = Name
        self.gender = Gender
        self.age = Age
    }
}

class Marvel: Heroes{}
class DC: Heroes{}

let MarvelHero = Marvel.init(Name: "Captain America", Gender: "M", Age: 100)

// Overriding Methods

class Avenger1 {
    func partName(){
        print("The Avengers (Super Class)")
    }
}

class Avenger2: Avenger1{
    override func partName() {
        print("The Avengers: Age of Ultron")
    }
}

// Overriding Properties

class Avenger3 {
    var year: Int {
        return 2018
    }
    var movieName: String {
        return "Avengers: Infinity War"
    }
}

class Avenger4: Avenger3 {
    override var year: Int {
        return 2019
    }
    override var movieName: String {
        return "Avengers: Endgame"
    }
}
