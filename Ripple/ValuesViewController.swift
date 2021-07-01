//
//  ValuesViewController.swift
//  Ripple
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class ValuesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyTip(_ sender: Any) {
        let alertController = UIAlertController(title: "Test", message: "Would you honestly sacrifice any of these core values for money? Have you lost any of these core values in times of stress? Will this core value last for you in the next 25 years? Would you stop holding these values if at some point they put you at a competitive disadvantage?", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title:"Got it!", style: UIAlertAction.Style.default, handler: nil ))
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
