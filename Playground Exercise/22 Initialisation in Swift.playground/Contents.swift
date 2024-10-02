// Initialisation

class concatenate {
    var fname: String = "Iron"
    var lname: String = "Man"
    
    var fullname: String
    
    init() {
        fullname = fname + " " + lname
    }
}

var name = concatenate()
print("Fullname is: \(name.fullname)")

class Marvel{
    var name: String
    init(movie: String, Date:String) {
        print("\(movie) \n \(Date)")
        self.name = movie
    }
    init(hero: String){
        print("\(hero)")
        self.name = hero
    }
}

var hero = Marvel(hero: "Ironman")
print("\(hero.name)")

var hero1 = Marvel(movie: "Thor", Date: "2011")
print("\(hero1.name)")

class Hero {
    var hname : String
    init(firstName fname: String, lastName lname:String)
    {
        hname = fname + lname
    }
    
    init(_ fname: String, _ lname:String){
        hname = fname + lname
    }
}

var heroName = Hero(firstName: "Iron", lastName: "Man")
var uname = Hero("Captain", "America")

// no init

class DC {
    var hname : String?
    var movie = "Aquaman"
}

var dc = DC()
print("\(dc.movie)")

// Failable init

struct User {
    var uuid: String?
    
    init?(uuid: String) {
        if uuid.count >= 5 {
            self.uuid = uuid
        } else {
            return nil
        }
    }
}

var userme = User(uuid: "abcde")
print("\(userme?.uuid ?? "abcdef")")
