//
//  calculatorModel.swift
//  calculator
//
//  Created by Harshil Vadgama on 22/10/24.
//

import Foundation
import SwiftUI

enum Keys: String{
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "/"
    case equals = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
    
    var buttonColor : Color{
        switch self {
        case .add, .subtract, .multiply, .divide, .equals:
            return Color.voperator
        case .clear, .percent, .negative:
            return Color.hoperator
        default:
            return Color.num
        }
    }
}

enum Operation {
    case add, subtract, multiply, divide, none
}
