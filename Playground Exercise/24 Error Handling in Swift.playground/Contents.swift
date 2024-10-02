// Error Handling

enum UserError: Error {
    case invalidId
    case InvalidName
}

func userDetails(id: Int, name: String) throws {
    if id == 0 {
        throw UserError.invalidId
    }
    if name == "" {
        throw UserError.InvalidName
    }
}

do {
    try userDetails(id: 1, name: "")
} catch UserError.invalidId {
    print("Invalid ID")
} catch UserError.InvalidName {
    print("Invalid Name")
}

