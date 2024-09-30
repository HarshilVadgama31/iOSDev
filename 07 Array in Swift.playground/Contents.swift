var marvelHeroes: [String] = ["Captain America", "Ironman"]
var dcHeroes: Array<String> = Array<String>()
var empty:String = ""

dcHeroes.isEmpty

dcHeroes.append("Superman")
dcHeroes.append("Batman")
dcHeroes.append("Wonder Woman")
dcHeroes.append("Aquaman")
dcHeroes.append("Flash")

marvelHeroes.count
dcHeroes.count

marvelHeroes.append("Thor")
marvelHeroes.append("Hulk")

marvelHeroes[0]
dcHeroes[0]
empty = dcHeroes[0]
dcHeroes[0]=dcHeroes[1]
dcHeroes[1]=empty

marvelHeroes.insert("Watcher", at: 0)

marvelHeroes.sort()
marvelHeroes.reverse()//Works on the same array
marvelHeroes
marvelHeroes.reversed()// Work on the copy
marvelHeroes



