//
//  HomeScreenViewController.swift
//  Ripple
//
//  Created by Ellie Austin on 7/1/21.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    @IBOutlet weak var affirmationsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        affirmationsButton.layer.cornerRadius = 10
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func quoteButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Here's your quote", message: "quote", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
}
