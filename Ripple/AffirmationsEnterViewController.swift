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
        let text = existingText ?? ""
        let isAtLimit = text.count + newText.count <= limit
        return isAtLimit
    }
    
    @objc(textField:shouldChangeCharactersInRange:replacementString:) func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return self.textLimit(existingText: textField.text, newText: string, limit: 140)
    }

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
    
    @IBOutlet weak var a1TVCC: UILabel!
    
    var afinput2ok = false
    var afinput3ok = false
    var afinput4ok = false
    var afinput5ok = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
                view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
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
