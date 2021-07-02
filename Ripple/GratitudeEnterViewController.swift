//
//  GratitudeEnterViewController.swift
//  Ripple
//
//  Created by Kayley on 6/30/21.
//

import UIKit

var gratitude1 = ""
var gratitude2 = ""
var gratitude3 = ""
var gratitude4 = ""
var gratitude5 = ""

class GratitudeEnterViewController: UIViewController, UITextFieldDelegate {
    func textLimit(existingText: String?, newText: String, limit: Int) -> Bool {
        guard let existingText = existingText else {
            // existingText is nil, only measure based on the new text
            return newText.count < limit
            
        }
        let isAtLimit = textCount(existingText: existingText, newText: newText) < limit
        return isAtLimit
    }
    
    /*func textLimit(existingText: String?, newText: String, limit: Int) -> Bool {
        let text = existingText ?? ""
        let isAtLimit = text.count + newText.count <= limit
        return isAtLimit
    }
    
    @objc(textField:shouldChangeCharactersInRange:replacementString:) func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return self.textLimit(existingText: textField.text, newText: string, limit: 140)
    }*/
    
    @IBOutlet weak var grat1Text: UITextField!{
        didSet{
            grat1Text.delegate = self
        }
    }
    @IBOutlet weak var grat2Text: UITextField!{
        didSet{
            grat2Text.delegate = self
        }
    }
    @IBOutlet weak var grat3Text: UITextField!{
        didSet{
            grat3Text.delegate = self
        }
    }
    @IBOutlet weak var grat4Text: UITextField!{
        didSet{
            grat4Text.delegate = self
        }
    }
    @IBOutlet weak var grat5Text: UITextField!{
        didSet{
            grat5Text.delegate = self
        }
    }
    
    @IBOutlet weak var g1TFCharCount: UILabel!
    @IBOutlet weak var g2TFCharCount: UILabel!
    @IBOutlet weak var g3TFCharCount: UILabel!
    @IBOutlet weak var g4TFCharCount: UILabel!
    @IBOutlet weak var g5TFCharCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
                view.addGestureRecognizer(tap)
        g1TFCharCount.text = "140/140"
        g2TFCharCount.text = "140/140"
        g3TFCharCount.text = "140/140"
        g4TFCharCount.text = "140/140"
        g5TFCharCount.text = "140/140"
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    /*func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if(textField == grat1Text){
            let strLength = grat1Text.text?.count ?? 0
            let lngthToAdd = string.count
            let lengthCount = strLength + lngthToAdd
            let trueCount = 140-lengthCount
            self.g1TFCharCount.text = "\(trueCount)/140"
        }
        else if(textField == grat2Text){
            let strLength = grat2Text.text?.count ?? 0
            let lngthToAdd = string.count
            let lengthCount = strLength + lngthToAdd
            let trueCount = 140-lengthCount
            self.g2TFCharCount.text = "\(trueCount)/140"
        }
        else if(textField == grat3Text){
            let strLength = grat3Text.text?.count ?? 0
            let lngthToAdd = string.count
            let lengthCount = strLength + lngthToAdd
            let trueCount = 140-lengthCount
            self.g3TFCharCount.text = "\(trueCount)/140"
        }
        else if(textField == grat4Text){
            let strLength = grat4Text.text?.count ?? 0
            let lngthToAdd = string.count
            let lengthCount = strLength + lngthToAdd
            let trueCount = 140-lengthCount
            self.g4TFCharCount.text = "\(trueCount)/140"
        }
        else{
            let strLength = grat5Text.text?.count ?? 0
            let lngthToAdd = string.count
            let lengthCount = strLength + lngthToAdd
            let trueCount = 140-lengthCount
            self.g5TFCharCount.text = "\(trueCount)/140"
        }
        return true
    }*/
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if(textField == grat1Text){
                let lengthCount = textCount(existingText: grat1Text.text ?? "", newText: string)
                let trueCount = 140-lengthCount
                self.g1TFCharCount.text = "\(trueCount)/140"
            }
            else if(textField == grat2Text){
                let lengthCount = textCount(existingText: grat2Text.text ?? "", newText: string)
                let trueCount = 140-lengthCount
                self.g2TFCharCount.text = "\(trueCount)/140"
            }
            else if(textField == grat3Text){
                let lengthCount = textCount(existingText: grat3Text.text ?? "", newText: string)
                let trueCount = 140-lengthCount
                self.g3TFCharCount.text = "\(trueCount)/140"
            }
            else if(textField == grat4Text){
                let lengthCount = textCount(existingText: grat4Text.text ?? "", newText: string)
                let trueCount = 140-lengthCount
                self.g4TFCharCount.text = "\(trueCount)/140"
            }
            else{
                let lengthCount = textCount(existingText: grat5Text.text ?? "", newText: string)
                let trueCount = 140-lengthCount
                self.g5TFCharCount.text = "\(trueCount)/140"
            }
            return self.textLimit(existingText: textField.text, newText: string, limit: 140)
        }
        func textCount(existingText: String, newText: String) -> Int {
            let strLength = existingText.count
            let lngthToAdd = newText.count
            let lengthCount = strLength + lngthToAdd
            return lengthCount
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func grat1TextAction(_ sender: UITextField) {
        gratitude1 = "\(grat1Text.text ?? "")"
    }
    
    @IBAction func grat2TextAction(_ sender: UITextField) {
        gratitude2 = "\(grat2Text.text ?? "")"
    }
    
    @IBAction func grat3TextAction(_ sender: UITextField) {
        gratitude3 = "\(grat3Text.text ?? "")"
    }
    @IBAction func gratFinishedSubmit(_ sender: UIButton) {
        gratitude1 = "\(grat1Text.text ?? "")"
        gratitude2 = "\(grat2Text.text ?? "")"
        gratitude3 = "\(grat3Text.text ?? "")"
        gratitude4 = "\(grat4Text.text ?? "")"
        gratitude5 = "\(grat5Text.text ?? "")"
    }
}
