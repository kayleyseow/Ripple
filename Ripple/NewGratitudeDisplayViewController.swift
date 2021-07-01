//
//  NewGratitudeDisplayViewController.swift
//  Ripple
//
//  Created by Kayley on 6/30/21.
//

import UIKit

class NewGratitudeDisplayViewController: UIViewController {
    @IBOutlet weak var newGrat1TextDisplay: UILabel!
    @IBOutlet weak var newGrat2TextDisplay: UILabel!
    @IBOutlet weak var newGrat3TextDisplay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        newGrat1TextDisplay.text = gratitude1
        newGrat2TextDisplay.text = gratitude2
        newGrat3TextDisplay.text = gratitude3
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
