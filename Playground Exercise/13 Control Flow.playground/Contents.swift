// control statement

let marvel = ["Iron Man", "Thor", "Black Panther"]

//for in loop
for marvelCharacter in marvel {
    print(marvelCharacter)
}

//

for index in 1...5{
    print("\(index) times 5 is \(index * 5)")
}

let base = 10
let exponent = 2
var answer = 1

for _ in 1...exponent {
    answer *= base
}

print("\(base) to the power of \(exponent) is \(answer)")

//while

var i = 1, n = 6

while i <= n {
    print("\(i) times 5 is \(i * 5)")
    i += 1
}

// conditionals
// if statements

var age:Int = 80
var age2:Int = 40

if age > 70{
    print("Hero is getting OLD")
}

// Ternanry Operator

let young = (age > age2 ? ("Hero is OLD"): ("Hero is Young"))

// if Else Statements

var dcMovies = ["Batman", "Superman", "Wonder Woman"]

for movie in dcMovies{
    if (movie == "Batman") {
        print("DC Production")
    } else {
        print("Not a DC Production")
    }
}

var avengers = ["Iron Man", "Thor", "Black Panther"]

for hero in avengers{
    if hero == "Iron Man" {
        print("\(hero) - He will Die")
    } else if hero == "Thor" {
        print("\(hero) - He will live")
    } else {
        print("\(hero) - His baton will be passed")
    }
}
