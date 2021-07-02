//
//  NewGratitudeDisplayViewController.swift
//  Ripple
//
//  Created by Kayley on 6/30/21.
//

import UIKit

class NewGratitudeDisplayViewController: UIViewController {

    @IBOutlet weak var ng1TextDisplay: UILabel!
    @IBOutlet weak var ng2TextDisplay: UILabel!
    @IBOutlet weak var ng3TextDisplay: UILabel!
    @IBOutlet weak var ng4TextDisplay: UILabel!
    @IBOutlet weak var ng5TextDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ng1TextDisplay.text = gratitude1
        ng2TextDisplay.text = gratitude2
        ng3TextDisplay.text = gratitude3
        ng4TextDisplay.text = gratitude4
        ng5TextDisplay.text = gratitude5
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
