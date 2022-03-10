import Foundation
import UIKit

struct TipsyBrain {
    
//MARK: - Var
    
    var buttonTitle: String = ""
    var valueTip: Double = 0.10
    var billText: Double = 0
    var peaples: Double = 2
    var result: Double = 0
    
//MARK: - Functions
    
    mutating func setValueTip(valueTitle: String) {
        buttonTitle = valueTitle
        let buttonWithoutPct = String(buttonTitle.dropLast())
        let buttonValueInDouble = Double(buttonWithoutPct)!
        valueTip = buttonValueInDouble / 100
    }
    
    mutating func setSplitValue(splitValue: String) {
        peaples = Double(splitValue)!
    }
    
    mutating func setBillTextField(_ billTextField: String) {
        billText = Double(billTextField)!
    }
    
    mutating func calculate() {
        result = (billText + (billText * valueTip)) / peaples
    }
}
