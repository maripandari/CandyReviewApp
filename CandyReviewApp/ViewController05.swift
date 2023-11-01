//
//  ViewController05.swift
//  CandyReviewApp
//
//  Created by Marijoy Jatico on 10/31/23.
//

import UIKit

class ViewController05: UIViewController {

    @IBOutlet weak var profilePhoto: UIImageView!
    
    @IBOutlet weak var candyReviewerHeader: UILabel!
    
    @IBOutlet weak var aboutMeInfo: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePhoto.image = UIImage (named: "AboutMePhoto")
        candyReviewerHeader.text = "Candy Reviewer: Marijoy Jatico"
        
        candyReviewerHeader.font = UIFont.boldSystemFont(ofSize: 18.0)
        
        aboutMeInfo.text = "Hi there! I'm Mari, your guide to the world of sweet delights. I'm on a never-ending quest to uncover the most scrumptious candies from around the globe. From gummy bears to chocolate truffles, I'm here to share my sugary escapades and satisfy your candy cravings one review at a time! Join me in this sugar-coated journey, and let's indulge in the sweeter side of life together. "
        
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
