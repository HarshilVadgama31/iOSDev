import UIKit

var greeting = "Hello, playground !!!"
var userName: String = "Harshil"

print(userName)

var finalSentence = "My Name is \(userName)"

print(finalSentence)

var concatination = "\(greeting)" + "\(finalSentence)"

print(concatination)

greeting.uppercased()
greeting.count
greeting.contains("Hello")
greeting.removeFirst()
greeting.removeLast()
greeting.remove(at: greeting.index(greeting.startIndex, offsetBy: 3))
greeting.split(separator: ",")



