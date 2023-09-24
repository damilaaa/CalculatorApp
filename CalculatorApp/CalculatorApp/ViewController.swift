//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Damla Sahin on 23.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelOperations: UILabel!
    @IBOutlet weak var labelResult: UILabel!
    
    private var operations: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func operationsAppend(value: String) {
        operations = operations + value
        labelOperations.text = operations
    }

    @IBAction func deleteAction(_ sender: Any) {
        operations = ""
        labelOperations.text = ""
        labelResult.text = ""
    }
    
    @IBAction func sevenAction(_ sender: Any) {
        operationsAppend(value: "7")
    }
    
    @IBAction func eightAction(_ sender: Any) {
        operationsAppend(value: "8")
    }
    
    @IBAction func nineAction(_ sender: Any) {
        operationsAppend(value: "9")
    }
    
    @IBAction func fourAction(_ sender: Any) {
        operationsAppend(value: "4")
    }
    
    @IBAction func fiveAction(_ sender: Any) {
        operationsAppend(value: "5")
    }
    
    @IBAction func sixAction(_ sender: Any) {
        operationsAppend(value: "6")
    }
    
    @IBAction func oneaction(_ sender: Any) {
        operationsAppend(value: "1")
    }
    
    @IBAction func twoAction(_ sender: Any) {
        operationsAppend(value: "2")
    }
    
    @IBAction func threeAction(_ sender: Any) {
        operationsAppend(value: "3")
    }
    
    @IBAction func zeroAction(_ sender: Any) {
        operationsAppend(value: "0")
    }
    
    @IBAction func plusAction(_ sender: Any) {
        operationsAppend(value: "+")
    }
    
    @IBAction func equalsAction(_ sender: Any) {
        let expression = NSExpression(format: operations)
        let result = expression.expressionValue(with: nil, context: nil) as! Int
        labelResult.text = String(result)
    }
}

