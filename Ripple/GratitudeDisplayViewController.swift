//
//  GratitudeDisplayViewController.swift
//  Ripple
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class GratitudeDisplayViewController: UIViewController {
    

    @IBOutlet weak var grat1Display: UILabel!
    @IBOutlet weak var grat2Display: UILabel!
    @IBOutlet weak var grat3Display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        grat1Display.text = gratitude1
        grat2Display.text = gratitude2
        grat3Display.text = gratitude3
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
