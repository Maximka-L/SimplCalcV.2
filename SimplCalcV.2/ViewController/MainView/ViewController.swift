

import UIKit

class ViewController: UIViewController {
    
    //MARK:View
    
    private let display = UITextField()
    private let displayView = UIView()
    private let mainVStack = UIStackView()
    
    
    
    // MARK: Properties
    
    var service: CalcService?

    
    //MARK: ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        service = CalcService(displayYiew: self)
        view.backgroundColor = .systemRed
       
        configureAppearance()
        
    }
    
    //MARK:ViewController
    func updateDisplay(text:String) {
        print(text)
    }


}

//MARK: ViewController private methods
private extension ViewController {
    func configureAppearance() {
        setupDisplayView()
        setupButtons()
        setupMainVstack()
        
    }
    func setupMainVstack(){
        mainVStack.axis = .vertical
        mainVStack.frame = CGRect (x: 0, y: 60, width: Constants.screenWidth, height: Constants.screenHeight-60)
        mainVStack.backgroundColor = .systemGreen
        
        self.view.addSubview(mainVStack)
    }
    func setupDisplayView() {
        displayView.frame = CGRect(x: 0, y: 0, width: Constants.screenWidth, height: Constants.screenHeight - (82*5) - 60 - 30)
        display.backgroundColor = .lightGray
        
        display.frame = CGRect (x: 0, y: 0, width: displayView.frame.width, height: displayView.frame.height)
        display.textAlignment = .right
        display.contentVerticalAlignment = .bottom
        display.text = "0"
        display.textColor = .white
        display.font = UIFont.boldSystemFont(ofSize: 80)
        
        display.backgroundColor = .gray
        displayView.addSubview(display)
        mainVStack.addSubview(displayView)
        
    }
    func setupButtons() {
        let line1 = createHStack(yPosition: Int(displayView.frame.height)+0)
        line1.addSubview(createButton(order: 0, title: "0", tag: 0))
        line1.addSubview(createButton(order: 1, title: "1", tag: 1))
        line1.addSubview(createButton(order: 2, title: "2", tag: 2))
        line1.addSubview(createButton(order: 3, title: "3", tag: 3))
        mainVStack.addSubview(line1)
        
        let line2 = createHStack(yPosition: Int(displayView.frame.height)+82)
        line2.addSubview(createButton(order: 0, title: "4", tag: 4))
        line2.addSubview(createButton(order: 1, title: "5", tag: 5))
        line2.addSubview(createButton(order: 2, title: "6", tag: 6))
        line2.addSubview(createButton(order: 3, title: "7", tag: 7))
        mainVStack.addSubview(line2)
        
        let line3 = createHStack(yPosition: Int(displayView.frame.height)+82*2)
        line3.addSubview(createButton(order: 0, title: "8", tag: 8))
        line3.addSubview(createButton(order: 1, title: "9", tag: 9))
        line3.addSubview(createButton(order: 2, title: "10", tag: 10))
        line3.addSubview(createButton(order: 3, title: "11", tag: 11))
        mainVStack.addSubview(line3)
        
        let line4 = createHStack(yPosition: Int(displayView.frame.height)+82*3)
        line4.addSubview(createButton(order: 0, title: "12", tag: 12))
        line4.addSubview(createButton(order: 1, title: "13", tag: 13))
        line4.addSubview(createButton(order: 2, title: "14", tag: 14))
        line4.addSubview(createButton(order: 3, title: "15", tag: 15))
        mainVStack.addSubview(line4)
        
        let line5 = createHStack(yPosition: Int(displayView.frame.height)+82*4)
        let zeroButton = createButton(order: 0, title: "16", tag: 16)
        zeroButton.frame = CGRect(x: 2, y: 0, width: (Int(Constants.screenWidth)/4)*2-2, height: 80)
        line5.addSubview(zeroButton)
        line5.addSubview(createButton(order: 2, title: "18", tag: 18))
        line5.addSubview(createButton(order: 3, title: "19", tag: 19))
        mainVStack.addSubview(line5)

    }
    func createButton(order: Int, title: String, tag: Int) -> UIButton {
        let button = UIButton(frame: CGRect(x: (0+Int(Constants.screenWidth/4)*order+2), y: 0, width: Int(Constants.screenWidth)/4-2, height: 80))
        button.setTitle(title, for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.setTitleColor(.white, for: .normal)
        return button
    }
    func createHStack (yPosition: Int) -> UIStackView {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.frame = CGRect(x: 0, y: yPosition, width: Int(Constants.screenWidth), height: 80)
        return stack
    }
}
