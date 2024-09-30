var youtubeVideos: [Int:String] = [1:"React Course", 2:"Swift Course", 3:"Java Course"]

youtubeVideos[4] = "MERN Course"
youtubeVideos

var Key1 = youtubeVideos[1]

youtubeVideos.keys
youtubeVideos.values

[Int](youtubeVideos.keys)
[String](youtubeVideos.values)

var Value4 = youtubeVideos.updateValue("NextJS Course", forKey: 4)
youtubeVideos

//youtubeVideos[3] = nil
//youtubeVideos
youtubeVideos.removeValue(forKey: 3)
youtubeVideos

var FAQ = [
    "FAQ1" : [
        "question": "What is Swift?",
        "answer": "Swift is a programming language developed by Apple Inc. that is designed to be efficient, safe, and expressive."
    ],
    "FAQ2" : [
        "question": "What is SwiftUI?",
        "answer": "SwiftUI is a user interface library for developing user interfaces for iOS, macOS, and tvOS."
    ],
    "FAQ3" : [
        "question": "What is SwiftUIKit?",
        "answer": "SwiftUIKit is a framework for building user interfaces for iOS, macOS, and tvOS."
    ]
]

var Question1 = FAQ["FAQ1"]?["question"]
var Answer1 = FAQ["FAQ1"]?["answer"]

 
