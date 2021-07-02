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
        let text = existingText ?? ""
        let isAtLimit = text.count + newText.count <= limit
        return isAtLimit
    }
    
    @objc(textField:shouldChangeCharactersInRange:replacementString:) func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return self.textLimit(existingText: textField.text, newText: string, limit: 140)
    }
    
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
