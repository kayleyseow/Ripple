//
//  AffirmationsEnterViewController.swift
//  Ripple
//
//  Created by  Kayley on 6/29/21.
//

import UIKit

var affirmation1 = ""
var affirmation2 = ""
var affirmation3 = ""
var affirmation4 = ""
var affirmation5 = ""

class AffirmationsEnterViewController: UIViewController, UITextFieldDelegate {
    
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
    }*/
    
    /*@objc(textField:shouldChangeCharactersInRange:replacementString:) func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return self.textLimit(existingText: textField.text, newText: string, limit: 140)
    }*/

    @IBOutlet weak var firstAffirmationTextBox: UITextField!{
        didSet{
            firstAffirmationTextBox.delegate = self
        }
    }
    @IBOutlet weak var secondAffirmationTextBox: UITextField!{
        didSet{
            secondAffirmationTextBox.delegate = self
        }
    }
    @IBOutlet weak var thirdAffirmationTextBox: UITextField!{
        didSet{
            thirdAffirmationTextBox.delegate = self
        }
    }
    @IBOutlet weak var fourthAffirmationTextBox: UITextField!{
        didSet{
            fourthAffirmationTextBox.delegate = self
        }
    }
    @IBOutlet weak var fifthAffirmationTextBox: UITextField!{
        didSet{
            fifthAffirmationTextBox.delegate = self
        }
    }
    
    @IBOutlet weak var a1TFCharCount: UILabel!
    @IBOutlet weak var a2TFCharCount: UILabel!
    @IBOutlet weak var a3TFCharCount: UILabel!
    @IBOutlet weak var a4TFCharCount: UILabel!
    @IBOutlet weak var a5TFCharCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
                view.addGestureRecognizer(tap)
        a1TFCharCount.text = "140/140"
        a2TFCharCount.text = "140/140"
        a3TFCharCount.text = "140/140"
        a4TFCharCount.text = "140/140"
        a5TFCharCount.text = "140/140"
        //self.updateCharacterCount()
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    //stackoverflow
    /*func updateCharacterCount() {
        let tF1Count = self.firstAffirmationTextBox.text?.count
        let tF2Count = self.secondAffirmationTextBox.text?.count
        
        self.a1TFCharCount.text = "\((0) + tF1Count!)/140"
        self.a2TFCharCount.text = "\((0) + tF2Count!)/140"
    }

    func textFieldDidChange(_ textField: UITextField) {
       self.updateCharacterCount()
    }*/
    
    //tutorialpoint
    /*func textFieldChange(_ textFieldC: UITextField, shouldChangeCharactersIn range: NSRange, replacementStringC string: String) -> Bool {
        if (textFieldC == firstAffirmationTextBox) {
            let stringLength = textFieldC.text?.count ?? 0
            let lengthToAdd = string.count
            var lengthCount = stringLength + lengthToAdd
            lengthCount = 1234 // no text is appearing
            self.a1TFCharCount.text = "\(lengthCount)"
            return true
        }
        return false
    }*/
    
    //stackoverflow 14
    /*func textFieldDisplay(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let newLength = textField.count + count(string.utf16) - range.length
        if(newLength <= 140){
            self.a1TFCharCount.text = "\(140 - newLength)"
            return true
            
        }else{
            return false
        }
    }*/
    
    //Hacking with swift
    /*func textField3(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // get the current text, or use an empty string if that failed
        let currentText = firstAffirmationTextBox.text ?? ""

        // attempt to read the range they are trying to change, or exit if we can't
        guard let stringRange = Range(range, in: currentText) else { return false }

        // add their new text to the existing text
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)

        // make sure the result is under 16 characters
        return updatedText.count <= 16
    }*/
    
    /*func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if(textField == firstAffirmationTextBox){
            let strLength = firstAffirmationTextBox.text?.count ?? 0
            let lngthToAdd = string.count
            let lengthCount = strLength + lngthToAdd
            let trueCount = 140-lengthCount
            self.a1TFCharCount.text = "\(trueCount)/140"
        }
        else if(textField == secondAffirmationTextBox){
            let strLength = secondAffirmationTextBox.text?.count ?? 0
            let lngthToAdd = string.count
            let lengthCount = strLength + lngthToAdd
            let trueCount = 140-lengthCount
            self.a2TFCharCount.text = "\(trueCount)/140"
        }
        else if(textField == thirdAffirmationTextBox){
            let strLength = thirdAffirmationTextBox.text?.count ?? 0
            let lngthToAdd = string.count
            let lengthCount = strLength + lngthToAdd
            let trueCount = 140-lengthCount
            self.a3TFCharCount.text = "\(trueCount)/140"
        }
        else if(textField == fourthAffirmationTextBox){
            let strLength = fourthAffirmationTextBox.text?.count ?? 0
            let lngthToAdd = string.count
            let lengthCount = strLength + lngthToAdd
            let trueCount = 140-lengthCount
            self.a4TFCharCount.text = "\(trueCount)/140"
        }
        else{
            let strLength = fifthAffirmationTextBox.text?.count ?? 0
            let lngthToAdd = string.count
            let lengthCount = strLength + lngthToAdd
            let trueCount = 140-lengthCount
            self.a5TFCharCount.text = "\(trueCount)/140"
        }
        return true
    }*/
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if(textField == firstAffirmationTextBox){
                let lengthCount = textCount(existingText: firstAffirmationTextBox.text ?? "", newText: string)
                let trueCount = 140-lengthCount
                self.a1TFCharCount.text = "\(trueCount)/140"
            }
            else if(textField == secondAffirmationTextBox){
                let lengthCount = textCount(existingText: secondAffirmationTextBox.text ?? "", newText: string)
                let trueCount = 140-lengthCount
                self.a2TFCharCount.text = "\(trueCount)/140"
            }
            else if(textField == thirdAffirmationTextBox){
                let lengthCount = textCount(existingText: thirdAffirmationTextBox.text ?? "", newText: string)
                let trueCount = 140-lengthCount
                self.a3TFCharCount.text = "\(trueCount)/140"
            }
            else if(textField == fourthAffirmationTextBox){
                let lengthCount = textCount(existingText: fourthAffirmationTextBox.text ?? "", newText: string)
                let trueCount = 140-lengthCount
                self.a4TFCharCount.text = "\(trueCount)/140"
            }
            else{
                let lengthCount = textCount(existingText: fifthAffirmationTextBox.text ?? "", newText: string)
                let trueCount = 140-lengthCount
                self.a5TFCharCount.text = "\(trueCount)/140"
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
    
    @IBAction func affirmation1TextBox(_ sender: UITextField) {
        affirmation1 = "\(firstAffirmationTextBox.text ?? "")"
    }
    
    @IBAction func affirmation2TextBox(_ sender: UITextField) {
        affirmation2 = "\(secondAffirmationTextBox.text ?? "")"
    }
    
    @IBAction func affirmation3TextBox(_ sender: UITextField) {
        affirmation3 = "\(thirdAffirmationTextBox.text ?? "")"
    }
    
    @IBAction func affirmation4TextBox(_ sender: UITextField) {
        affirmation4 = "\(fourthAffirmationTextBox.text ?? "")"
    }
    
    @IBAction func affirmation5TextBox(_ sender: UITextField) {
        affirmation5 = "\(fifthAffirmationTextBox.text ?? "")"
    }
    
    @IBAction func affirmFinishedSubmit(_ sender: UIButton) {
        affirmation1 = "\(firstAffirmationTextBox.text ?? "")"
        affirmation2 = "\(secondAffirmationTextBox.text ?? "")"
        affirmation3 = "\(thirdAffirmationTextBox.text ?? "")"
        affirmation4 = "\(fourthAffirmationTextBox.text ?? "")"
        affirmation5 = "\(fifthAffirmationTextBox.text ?? "")"
    }
}
