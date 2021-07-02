//
//  SkillsViewController.swift
//  Ripple
//
//  Created by America on 7/1/21.
//

import UIKit

class SkillsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pinTip(_ sender: Any) {
        let alertController = UIAlertController(title: "Tip", message: "Use SMART: Specific, Measurable, Attainable, Relevant, and Time Bound (https://www.indeed.com/career-advice/career-development/smart-goals)", preferredStyle: UIAlertController.Style.alert)
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
