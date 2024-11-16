//
//  KeyView.swift
//  calculator
//
//  Created by Harshil Vadgama on 22/10/24.
//

import SwiftUI



struct KeyView: View {
    
    @State var value = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operation = .none
    @State private var changeColor = false
    
    let buttons : [[Keys]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equals]
    ]
    
    var body: some View {
        VStack{
            Spacer()
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(changeColor ?
                                     Color.num.opacity(0.4):
                                        Color.pink.opacity(0.2))
                    .scaleEffect(changeColor ? 1.5 : 1.0)
                    .frame(width: 350, height: 280)
                    .animation(Animation.easeInOut.speed(0.17).repeatForever(), value:changeColor)
                    .onAppear( perform: {
                        self.changeColor.toggle()
                    })
                    .overlay(Text(value)
                        .bold()
                        .font(.system(size:100))
                        .foregroundColor(.black)
                    )
            }.padding()
            ForEach(buttons, id: \.self){
                row in
                HStack(spacing: 10){
                    ForEach(row, id: \.self){
                        element in
                        Button {
                            self.didTap(button: element)
                        }label: {
                            Text(element.rawValue)
                                .font(.system(size:30))
                                .frame(width: self.getWidth(elem: element), height: self.getHeight(elem: element))
                                .background(element.buttonColor)
                                .foregroundColor(.black)
                                .cornerRadius(self.getWidth(elem: element)/2)
                                .shadow(color: .purple.opacity(0.8), radius: 30)
                                
                                
                        }
                    }
                }.padding(.bottom, 3)
            }
        }
    }

    func getWidth(elem: Keys) -> CGFloat {
        
        if elem == .zero{
            return (UIScreen.main.bounds.width - (40)) / 2
        }
        
        return (UIScreen.main.bounds.width - (50)) / 4
    }
    
    func getHeight(elem: Keys) -> CGFloat {
        return (UIScreen.main.bounds.width - (50)) / 5
    }
    
    func didTap(button: Keys){
        switch button {
        case .add, .subtract, .multiply, .divide, .equals:
            if button == .add {
                self.currentOperation = .add
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .subtract {
                self.currentOperation = .subtract
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .multiply {
                self.currentOperation = .multiply
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .divide {
                self.currentOperation = .divide
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .equals {
                let runningValue = self.runningNumber
                let currentValue = Int(self.value) ?? 0
                
                switch self.currentOperation {
                case .add:
                    self.value = "\(runningValue + currentValue)"
                case .subtract:
                    self.value = "\(runningValue - currentValue)"
                case .multiply:
                    self.value = "\(runningValue * currentValue)"
                case .divide:
                    self.value = "\(runningValue / currentValue)"
                case .none:
                    break
                }
            }
            if button != .equals {
                self.value = "0"
            }
        case .clear:
            self.value = "0"
            self.runningNumber = 0
        case .decimal, .negative, .percent:
            if button == .negative {
                self.value = "-\(self.value)"
                self.runningNumber = Int(self.value) ?? 0
            }
            else if button == .percent {
                self.runningNumber = Int(self.value) ?? 0
                let currentValue = Double(self.runningNumber)/100
                self.value = "\(currentValue)"
            }
            else if button == .decimal {
                self.value = "\(self.value)" + "."
                let currentValue = Double(self.value)
            }
        default:
            let number = button.rawValue
            if self.value == "0" {
                value = number
            }
            else {
                self.value = "\(self.value)\(number)"
            }
        }
    }
    
}



#Preview {
    KeyView()
}
