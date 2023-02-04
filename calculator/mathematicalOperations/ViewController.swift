//
//  ViewController.swift
//  mathematicalOperations
//
//  Created by Mac on 30/10/1944 Saka.
//

import UIKit

class ViewController: UIViewController,MathematicalOperations {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    var number1 :Int?
    var number2 :Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAdditoin(_ sender: Any) {
        if(firstNumberTextField.text!.isEmpty || (secondNumberTextField.text!.isEmpty)){
            
        }else{
       let number1 = Int(firstNumberTextField.text!)
       let number2 = Int(secondNumberTextField.text!)
       let result = addition(n1: number1!, n2:number2!)
        
    self.resultLabel.text = String(result)
        }
    }
    
    @IBAction func btnSubstraction(_ sender: Any) {
        if(firstNumberTextField.text!.isEmpty || (secondNumberTextField.text!.isEmpty)){
            
        }else{
        let number1 = Int(firstNumberTextField.text!)
        let number2 = Int(secondNumberTextField.text!)
        let result = substraction(n1: number1!, n2:number2!)

       self.resultLabel.text = String(result)
     }
    }
    @IBAction func btnMultiplication(_ sender: Any) {
        if(firstNumberTextField.text!.isEmpty || (secondNumberTextField.text!.isEmpty)){
            
        }else{
        let number1 = Int(firstNumberTextField.text!)
        let number2 = Int(secondNumberTextField.text!)
        let result = multiplication(n1: number1!, n2:number2!)
        self.resultLabel.text = String(result)
     }
    }
    
    @IBAction func btnDivision(_ sender: Any) {
        if(firstNumberTextField.text!.isEmpty || (secondNumberTextField.text!.isEmpty)){
            
        }else{
        let number1 = Int(firstNumberTextField.text!)
        let number2 = Int(secondNumberTextField.text!)
        let result = division(n1: Float(number1!), n2:Float(number2!))
        self.resultLabel.text = String(result)
        
    }
    }
    
    
    func addition(n1: Int, n2: Int) -> Int {
        return n1+n2
    }
    func substraction(n1: Int, n2: Int) -> Int {
        return n1-n2
    }
    
    func multiplication(n1: Int, n2: Int) -> Int {
        return n1*n2
    }
    
    func division(n1: Float, n2: Float) -> Float {
        return n1 / n2
    }
    @IBAction func clearBtn(_ sender: Any) {
        firstNumberTextField.text = ""
        secondNumberTextField.text = ""
        resultLabel.text = ""
    }
    
}

