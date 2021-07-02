//
//  GratitudeInformationViewController.swift
//  Ripple
//
//  Created by Kayley on 6/30/21.
//

import UIKit

class GratitudeInformationViewController: UIViewController {

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
    @IBAction func goBackButtonSubmit(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
