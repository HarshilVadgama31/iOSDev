var challenge : Set = [
    "Get Weapons",
    "Kill Entry Troops",
    "Upgrade Weapons",
    "Kill Armies",
    "Reach End"
]

var challenge2 : Set = [
    "Get Weapons",
    "Kill Upgraded Troops",
    "Fuse Weapons",
    "Kill Armies",
    "Kill Boss",
    "Reach End"
]

challenge.contains("Kill Armies")
challenge.remove("Kill Entry Troops")

challenge.sorted()
challenge2.sorted()


var union1 = challenge.union(challenge2)
var intersection1 = challenge.intersection(challenge2)
var subtract2from1 = challenge.subtracting(challenge2)

