//
//  ViewController.swift
//  ColectionView
//
//  Created by Fy Spoti on 09/10/2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lankmark.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "idCell", for: indexPath) as! MyCustomSquare
    
        // Configure the cell
        
        let lankmarks = lankmark[indexPath.row]
        cell.imageTBV.image = UIImage(named: lankmarks.image)
        cell.LabelTBV.text = lankmarks.name
    
        return cell
    }
    

    
    
    			
    
    
    private var lankmark : [LankMark] = [
        LankMark(image: "BenTre", name: "BenTre"),
        LankMark(image: "BinhThuan", name: "BinhThuan"),
        LankMark(image: "BuonMeThuoc", name: "BuonMeThuoc"),
        LankMark(image: "CaMau", name: "CaMau"),
        LankMark(image: "CamPha_QuangNinh", name: "CamPha_QuangNinh"),
        LankMark(image: "CanTho", name: "CanTho"),
        LankMark(image: "CaoBang", name: "CaoBang"),
        LankMark(image: "CuaLo", name: "CuaLo"),
        LankMark(image: "DaLat", name: "DaLat"),
        LankMark(image: "DaNang", name: "DaNang"),
        LankMark(image: "DaoLySon", name: "DaoLySon"),
        LankMark(image: "DaoPhuQuy", name: "DaoPhuQuy"),
        LankMark(image: "DienBien", name: "DienBien"),
        LankMark(image: "HaiPhong", name: "HaiPhong"),
        LankMark(image: "DongThap", name: "Ankara"),
        LankMark(image: "HaGiang", name: "Ankara")
    ]
    
    
    var chosenLandmark: LankMark?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
      
    }
    

    
    


}
