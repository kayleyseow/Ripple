//
//  RoleViewController.swift
//  Ripple
//
//  Created by America on 7/1/21.
//

import UIKit

class RoleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LightBulbTip(_ sender: Any) {
        let alertController = UIAlertController(title: "Tip", message: "Think about how have you positively influenced those around you.", preferredStyle: UIAlertController.Style.alert)
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
