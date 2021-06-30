//
//  AffirmationsDisplayViewController.swift
//  Ripple
//
//  Created by  Kayley on 6/30/21.
//

import UIKit

class AffirmationsDisplayViewController: UIViewController {
    
    @IBOutlet weak var firstAffirmationDisplay: UILabel!
    @IBOutlet weak var secondAffirmationDisplay: UILabel!
    @IBOutlet weak var thirdAffirmationDisplay: UILabel!
    @IBOutlet weak var fourthAffirmationDisplay: UILabel!
    @IBOutlet weak var fifthAffirmationDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstAffirmationDisplay.text = affirmation1
        secondAffirmationDisplay.text = affirmation2
        thirdAffirmationDisplay.text = affirmation3
        fourthAffirmationDisplay.text = affirmation4
        fifthAffirmationDisplay.text = affirmation5
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

}
