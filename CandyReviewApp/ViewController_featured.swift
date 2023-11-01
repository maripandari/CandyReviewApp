//
//  ViewController_featured.swift
//  CandyReviewApp
//
//  Created by Marijoy Jatico on 10/31/23.
//

import UIKit

class ViewController_featured: UIViewController {

    @IBOutlet weak var featuredCandyTitle: UILabel!
  
    @IBOutlet weak var featuredCandyImage: UIImageView!
    
    @IBOutlet weak var candyReview: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        featuredCandyImage.image = UIImage(named: "HiChew01")
        featuredCandyTitle.text = "Featured Candy: Morinaga Hi Chew"
        featuredCandyTitle.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        candyReview.text = "Hi-Chew candy is a popular fruit-flavored chewy candy known for its delightful fruity yogurt taste. It originated in Japan but has gained worldwide recognition.Its soft texture and individual packaging make it a convenient snack option"
        
        
        
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
