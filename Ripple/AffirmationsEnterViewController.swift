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

class AffirmationsEnterViewController: UIViewController, UITextViewDelegate {
    /*didSet{
        firstAffirmationTextBox.delegate = self
    }
    func textLimit(existingText: String?, newText: String, limit: Int) -> Bool {
        let text = existingText ?? ""
        let isAtLimit = text.count + newText.count <= limit
        return isAtLimit
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return self.textLimit(existingText: textField.text, newText: string, limit: 10)
    }*/

    @IBOutlet weak var firstAffirmationTextBox: UITextField!
    @IBOutlet weak var secondAffirmationTextBox: UITextField!
    @IBOutlet weak var thirdAffirmationTextBox: UITextField!
    @IBOutlet weak var fourthAffirmationTextBox: UITextField!
    @IBOutlet weak var fifthAffirmationTextBox: UITextField!
    
    var afinput2ok = false
    var afinput3ok = false
    var afinput4ok = false
    var afinput5ok = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
