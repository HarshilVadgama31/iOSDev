class Hero {
    var name = "Batman"
    
    init(_ a: Int){
        name = "Batman \(a)"
        print("I am \(name)")
    }
    
    func toolBelt(){
        print("Here is your cool gadgets!!!")
    }
    
    deinit{
        print("It's day time: Batman is gone, \(name)")
    }
}

for a in 1...4{
    let newHero = Hero(a)
    newHero.toolBelt()
}

//ARC
