//
//  DetailsVC.swift
//  ColectionView
//
//  Created by Fy Spoti on 09/10/2023.
//

import UIKit

class DetailsVC: UIViewController {
    
    var lankmark: LankMark?
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: lankmark!.image)
        label.text = lankmark!.name
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
