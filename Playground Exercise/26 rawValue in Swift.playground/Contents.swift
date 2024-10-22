import UIKit
import Foundation

enum PaperSize: String {
    case a4
    case a5
    case legal = "court"
}

let myPaper = PaperSize.legal

myPaper.rawValue

