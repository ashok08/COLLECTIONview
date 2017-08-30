//
//  ViewController.swift
//  pro5
//
//  Created by Intern on 06/07/17.
//  Copyright © 2017 Intern. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UIScrollViewDelegate {
    
    @IBOutlet weak var bottomc: NSLayoutConstraint!
    private var lastContentOffset: CGFloat = 0
    var Pass:String? = ""
    var Pass1 = UIImage(named: "")
    var button = NSLayoutConstraint()
    
    @IBOutlet weak var display1: UIButton!
    
    var imgarr = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15"),UIImage(named: "16"),UIImage(named: "17"),UIImage(named: "18"),UIImage(named: "19"),UIImage(named: "20")]
    
    var titleforMovie = ["TRANSFORMERS","SPIDERMAN","BABY DRIVER","DESICABLE ME3","WONDER WOMEN","MUMMY","TUBELIGHT","CARS3","KARIKALAN","SPIDER","VELAIKARAN","HAR HARA MAHA DEVA","DHRUVA NATCHATHIRAM","IMAIKKA NODIGAL","96","SADHURANGA VETTAI","ARAM SEITHU PAZHAGU","KARRUPURAJA VELLAIRAJA","POTHUVAGA YEN MANASU THANGA","IRAVUKKU AYRAM KANNAGAL"]
    
    
  //  override func viewDidLoad()
   // {
   //     createButton()
  //  }
    
    //MARK: -LayoutConstraint
    
 //   func createButton()
//{
 //       // display1 = UIButton(type: UIButtonType.system) as UIButton
        // display1.setTitle("+", for: UIControlState .normal)
        // display1.layer.cornerRadius = 5
        // display1.setTitleColor(UIColor.black, for: .normal)
        // display1.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        // display1.backgroundColor = UIColor.yellow
        // display1.clipsToBounds  = true
        // view.addSubview(display1)
        // display1.translatesAutoresizingMaskIntoConstraints = false
        
   //     let right = NSLayoutConstraint(item: self.display1, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.rightMargin, multiplier: 1.0, constant: 0)
        
    //    self.button = NSLayoutConstraint(item: self.display1, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.bottom, multiplier: 1.0, constant: -20)
        
   //     view.addConstraints([right,button])
  //  }
    
    //MARK: -CellData
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return imgarr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = imgarr[indexPath.row]
        cell.name.text = titleforMovie[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        Pass = cell.name.text
        Pass1 = cell.img.image
        if let secVC  = self.storyboard?.instantiateViewController(withIdentifier: "A") as? ViewController1
        {
            secVC.Value = Pass!
            secVC.Value1 = Pass1
            self.navigationController?.pushViewController(secVC, animated: true)
        }
        
    }
    
    //MARK: -AnimatingTheButton
    
    func scrollViewDidScroll(_ scrollView: UIScrollView)
    {
        if (self.lastContentOffset > scrollView.contentOffset.y) || (scrollView.contentOffset.y == 0) || (self.lastContentOffset == 0)
        {
            UIView.animate(withDuration: 0.2, animations: {() -> Void in
                //self.display1.alpha = 1
                self.bottomc.constant = 50
                self.view.layoutIfNeeded()
            })
        }
            
        else if (self.lastContentOffset < scrollView.contentOffset.y)
        {
            UIView.animate(withDuration: 0.2, animations: {() -> Void in
                //self.display1.alpha = 0
                self.bottomc.constant = -50
                self.view.layoutIfNeeded()
            })
        }
        self.lastContentOffset = scrollView.contentOffset.y
    }
}


