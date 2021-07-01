//
//  GratitudeEnterViewController.swift
//  Ripple
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

var gratitude1 = ""
var gratitude2 = ""
var gratitude3 = ""

class GratitudeEnterViewController: UIViewController {
    
    @IBOutlet weak var grat1Text: UITextField!
    @IBOutlet weak var grat2Text: UITextField!
    @IBOutlet weak var grat3Text: UITextField!
    
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
    }
}
