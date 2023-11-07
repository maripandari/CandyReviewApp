//
//  ViewController.swift
//  CandyReviewApp
//
//  Created by Marijoy Jatico on 10/31/23.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var learnMoreButton: UIButton!
    @IBOutlet weak var featuredCandyTitle: UILabel!
    @IBOutlet weak var candyBGImage: UIImageView!
    @IBOutlet weak var featuredCandyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        candyBGImage.image = UIImage (named: "CandyBG02")
        featuredCandyImage.image = UIImage(named: "HiChew")
        featuredCandyTitle.text = "Featured Candy: Morinaga Hi Chew"
        
        featuredCandyTitle.font = UIFont.boldSystemFont(ofSize: 20.0)
       
        learnMoreButton.setTitle("Learn More", for: .normal)
    }

    @IBAction func learnMoreButton(_ sender: Any) {
        
    
    }
    
}

