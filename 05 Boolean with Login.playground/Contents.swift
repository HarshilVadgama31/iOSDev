var cardDetails: Bool = false

cardDetails = !cardDetails

var isLoggedIn = false

var canPay = isLoggedIn && cardDetails

var canPayGuest = isLoggedIn || cardDetails

canPay ? print("You can pay") : print("You cannot pay")

canPayGuest ? print("Guest can pay") : print("Guest cannot pay")
