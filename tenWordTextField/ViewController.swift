//
//  ViewController.swift
//  tenWordTextField
//
//  Created by EricYang on 2016/7/20.
//  Copyright © 2016年 EricYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.textfield.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if string == ""{
            if let originalTextLength = textField.text?.characters.count{
                let TextLength = originalTextLength-1
                if TextLength > 10{
                    label.text = "text length: 10"
                    return false
                }
                else{
                    if originalTextLength == 0{
                        label.text = "text length: 0"
                        return false
                    }
                    else{
                        label.text = "text length: "+String(TextLength)
                        return true
                        
                    }
                }
            }
            else{
                label.text = "text length: 0"
                return false
            }
        }
        else{
            if let originalTextLength = textField.text?.characters.count{
                let TextLength = originalTextLength+1
                if TextLength > 10{
                    label.text = "text length: 10"
                    return false
                }
                else{
                    label.text = "text length: "+String(TextLength)
                    
                    return true
                }
            }
            else{
                let TextLength = 1
                label.text = "text length: "+String(TextLength)
                return true
                
            }
            
        }
        
    }

}

