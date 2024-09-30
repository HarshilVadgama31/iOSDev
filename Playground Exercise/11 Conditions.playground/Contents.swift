var accountBalance = 199

var alertTrigger = 100
var offerTrigger = 150


if accountBalance <= alertTrigger {
    print("Alert: Your account balance is \(accountBalance). Please recharge your account.")
} else if accountBalance >= offerTrigger {
    print("Offer: Your account balance is \(accountBalance). We are offering you a 10% discount on your next purchase.")
}

var googleCred = true
var paymentInfo = false

if googleCred && paymentInfo {
    print("You can purchase")
}else {
    print("You cannot purchase")
}

var courseName: String?
var isLoggedIn: Bool? = true

if let getCourseName = courseName{
    print(getCourseName)
}

var courseWithPrice: [String: Int] = ["Reactjs": 199, "Swift": 299]

if let userLogin = isLoggedIn, let SwiftPrice = courseWithPrice["Swift"] {
    print("User is Logged In and Swift price is \(SwiftPrice)")
}
