//
//  ViewController04.swift
//  CandyReviewApp
//
//  Created by Marijoy Jatico on 10/31/23.
//

import UIKit

class ViewController04: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var chocoArray = ["KitKat", "Twix", "Meiji Milk Chocolate", "Milka Milk Chocolate"]
    
    var chocoRating = ["5 Stars", "5 Stars", "5 Stars", "5 Stars"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return chocoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = chocoArray[indexPath.row]
        cell.detailTextLabel?.text = chocoRating [indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
                {
                    tableView.deselectRow(at: indexPath, animated: true)
                }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "mySegue03"
                {
                    let s1 = segue.destination as! fourthDetailViewController
                    let imageIndex = tableView.indexPathForSelectedRow?.row
                    s1.imagePass = categoryThreeImagesData[imageIndex!]
                }
            }
   
    var categoryThreeImagesData = [String] (
)

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
         let dict = NSDictionary(contentsOfFile: path!)
        categoryThreeImagesData = dict!.object(forKey:"CategoryThreeImages") as! [String]
        
        
        
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
