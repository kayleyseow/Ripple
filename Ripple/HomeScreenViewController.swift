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
    
    var quotes = ["\"There is a ripple effect to everything … Everything you think, say, do, feel. You either cause it, create it, or allow it.\"", "\"I alone cannot change the world, but I can cast a stone across the waters to create many ripples.\"", "\"Every good thing you do creates ripples that you may not see. Do them anyway.\"", "\"Even our smallest action creates ripples.\"", "\"While it may seem small, the ripple effects of small things are extraordinary.\"", "\"One teeny tiny change can create a lifetime of ripples.\"", "\"We can’t always choose the music life plays for us, but we can choose how we dance to it.\"", "\"Growth is growth. No matter how small.\"", "\"Act as if it were impossible to fail.\"", "\"Be kind whenever possible. It is always possible.\" —The 14th Dalai Lama", "\"Spread love everywhere you go. Let no one ever come to you without leaving happier.\" —Mother Teresa", "\"A kind word is like a Spring day.\", Russian Proverb", "\"To err on the side of kindness is seldom an error.\" —Liz Armbruster", "\"My wish for you is that you continue. Continue to be who and how you are, to astonish a mean world with your acts of kindness. Continue to allow humor to lighten the burden of your tender heart.\" —Maya Angelou", "\"Be thankful for what you have; you’ll end up having more. If you concentrate on what you don’t have, you will never, ever have enough.\" —Oprah Winfrey", "\"There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.\" —Albert Einstein", "\"Gratitude unlocks the fullness of life. It turns what we have into enough, and more. It turns denial into acceptance, chaos to order, confusion to clarity. It can turn a meal into a feast, a house into a home, a stranger into a friend.\" —Melody Beattie", "\"Be grateful, not only for others, but for yourself.\"", "\"He is a wise man who does not grieve for the things which he has not, but rejoices for those which he has.\" —Epictetus", "\"You cannot do a kindness too soon because you never know how soon it will be too late.\" —Ralph Waldo Emerson", "\"If you can't reward then you should thank.\", Arabic Proverb"]
    let quoteselect = Int.random(in: 0...20)
    
    @IBAction func quoteButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Your Quote:", message: "\(quotes[quoteselect])", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
}
