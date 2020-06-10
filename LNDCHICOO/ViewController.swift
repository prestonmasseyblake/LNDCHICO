//
//  ViewController.swift
//  LNDCHICOO
//
//  Created by Preston Blake on 6/9/20.
//  Copyright © 2020 Preston. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var optionsTableView: TableViewDrinkCatagories!
    @IBOutlet weak var collectionView: UICollectionView!
    
    struct imgStruct {
        var image: UIImage
        var type: String
        init(image: String,type:String) {
            self.image = UIImage(named: image)!
            self.type = type
        }
    }
    var typeArr : [imgStruct] = []
    
    var wine = imgStruct(image: "wine", type: "Wine")
    var beer = imgStruct(image: "beer", type: "Beer")
    var liquor = imgStruct(image: "liquor", type: "Liquor")
    var extras = imgStruct(image: "extras", type: "Extras")
    var local = imgStruct(image: "local", type: "Local")
    var deals = imgStruct(image: "deals", type: "Deals")

    override func viewDidLoad() {
        super.viewDidLoad()
        typeArr.append(wine)
        typeArr.append(beer)
        typeArr.append(liquor)
        typeArr.append(extras)
        typeArr.append(local)
        typeArr.append(deals)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 200, height: 120)
        collectionView.collectionViewLayout = layout
        collectionView.delegate = self
        collectionView.dataSource = self
        optionsTableView.delegate = self
        optionsTableView.dataSource = self
    }
    
    //Mask - UICOLLECTIONVIEW
      func numberOfSections(in collectionView: UICollectionView) -> Int {
          return 1
      }
      func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return 6
      }
      
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DrinksCollectionViewCell
        cell.imgImage.image = typeArr[indexPath.row].image
        cell.titleLabel.text = typeArr[indexPath.row].type
          cell.backgroundColor = UIColor.white
          
          return cell
      }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("check")
    }
    
    //Table View For Options
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = optionsTableView.dequeueReusableCell(withIdentifier:"tableCell", for: indexPath)
        cell.backgroundColor = UIColor.red
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
    
    
      

}

