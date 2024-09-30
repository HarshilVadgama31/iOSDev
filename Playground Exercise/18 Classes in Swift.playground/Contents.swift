//Struct Vs Class
//Struct are Value Type

struct Movie {
    var name: String = ""
}

var info = Movie(name: "Ironman")
var info2 = info

info.name = "Avengers"
print(info.name)
print(info2.name)

//Class are Reference Type

class DC {
    var series: String
    var aired: Int
    var network: String
    
    init(series: String, aired: Int, network: String) {
        self.series = series
        self.aired = aired
        self.network = network
    }
}

var dc = DC(series: "Wonder Woman", aired: 2017, network: "Atlas")

print("Movie name is \(dc.series)")
print("Movie aired is \(dc.aired)")
print("Movie network is \(dc.network)")

// Classes are Reference Type

class Details{
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var minfo = Details(name: "Superman")
var minfo2 = minfo

minfo2.name = "Batman"

print(minfo.name)
print(minfo2.name)
