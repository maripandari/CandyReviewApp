//
//  ViewController03.swift
//  CandyReviewApp
//
//  Created by Marijoy Jatico on 10/31/23.
//

import UIKit

class ViewController03: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var chewsArray = ["Hi Chew Mixed", "White Rabbit", "Goetze Caramel Cream", "Starburst"]
    
    var chewsRating = ["5 Stars", "5 Stars", "5 Stars", "4 Stars"]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return chewsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = chewsArray[indexPath.row]
        cell.detailTextLabel?.text = chewsRating [indexPath.row]
        cell.textLabel?.text = text
        return cell
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
                {
                    tableView.deselectRow(at: indexPath, animated: true)
                }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "mySegue02"
                {
                    let s1 = segue.destination as! thirdDetailViewController
                    let imageIndex = tableView.indexPathForSelectedRow?.row
                    s1.imagePass = categoryTwoImagesData[imageIndex!]
                }
            }
   
    var categoryTwoImagesData = [String] (
)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
         let dict = NSDictionary(contentsOfFile: path!)
        categoryTwoImagesData = dict!.object(forKey:"CategoryTwoImages") as! [String]
        
        
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
