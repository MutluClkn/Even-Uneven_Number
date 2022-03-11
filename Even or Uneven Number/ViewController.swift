//
//  ViewController.swift
//  Even or Uneven Number
//
//  Created by Mutlu Çalkan on 11.03.2022.
//

import UIKit

enum TextFieldError {
    case error
}

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
        
        textField.placeholder = "Please enter your number."
        
        button.backgroundColor = UIColor.darkGray
        button.setTitle("Button", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = button.frame.height / 4
        button.layer.shadowColor = UIColor.blue.cgColor
        button.layer.shadowRadius = 5
        button.layer.shadowOpacity = 1
        button.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        
        
    }

    @IBAction func buttonDidPressed(_ sender: Any) {
        
        if let getNumber = Int(textField.text!) {
            if getNumber % 2 == 0 {
                resultLabel.text = "It is an even number."
            }else {
                resultLabel.text = "It is an uneven number."
            }
        }else {
            alertMessage()
        }
        
        
    }
    
    
    func alertMessage() {
        let alertMessagePopUp = UIAlertController(title: "Error", message: "Please enter a valid number.", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            self.textField.text = ""
        }
        
        alertMessagePopUp.addAction(okButton)
        self.present(alertMessagePopUp, animated: true , completion: nil)
    }
    
}

