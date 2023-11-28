//
//  GridCollectionViewController.swift
//  CollectionView0910
//
//  Created by Minh Triet Pham on 09/10/2023.
//

import UIKit

private let reuseIdentifier = "Cell"

class GridCollectionViewController: UICollectionViewController {

    
    private var dataSet : [Data] = [ Data(image: "banhxeo", name: "Food"),
                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
//                                     Data(image: "banhxeo", name: "Food"),
                                     Data(image: "banhxeo", name: "Food"),
                                     Data(image: "banhxeo", name: "Food"),
                                     Data(image: "banhxeo", name: "Food"),
                                     Data(image: "banhxeo", name: "Food")]
    var listGames: [Games] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return dataSet.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

    
        // Configure the cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! GridCollectionViewCell
        let dataSet = dataSet[indexPath.row]
        cell.ImageView.image = UIImage(named: dataSet.image)
        cell.NameLabel.text = dataSet.name
            
        
        return cell
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 20
//    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
