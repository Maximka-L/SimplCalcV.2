import Foundation

class CalcService {
    
    
    //MARK: Proper
    var isRunning = true
    var currentNumber = "0"
    var firstNumber = 0.0
    var secondNumber = 0.0
    var result = ""
    var currentOperation = Operations.none
    var displayYiew: ViewController
    
    init(displayYiew: ViewController) {
        self.displayYiew = displayYiew
    }
    
    
    //MARK: Metod
    func updateDisplay(text: String) {
        print(text)
    }
    
    func makeCalculation(operation: Operations) {
        switch operation {
        case .addition:
            result = String(firstNumber + secondNumber)
        case .subtraction:
            result = String(firstNumber - secondNumber)
        case .multiplication:
            result = String(firstNumber * secondNumber)
        case .division:
            if secondNumber != 0 {
                result = String(firstNumber / secondNumber)
            } else {
                result = "Error: Division by zero"
            }
        default:
            result = ""
        }
    }
    
    func makeResult() {
        makeCalculation(operation: currentOperation)
        firstNumber = Double(result) ?? 0.0
        currentOperation = Operations.none
    }
    
}
