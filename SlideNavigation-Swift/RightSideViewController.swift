//
//  RightSideViewController.swift
//  Evee-Swift
//
//  Created by Kvana Inc 2 on 28/09/15.
//  Copyright (c) 2015 Kvana. All rights reserved.
//

import UIKit

class RightSideViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    
    var clearEvents:UIButton=UIButton()
    var searchButton:UIButton=UIButton()
var emotionsArray=["mood_social","mood_active","mood_artistic","mood_dancey","mood_family","mood_foodie","mood_intelligent","mood_musical","mood_spiritual","mood_sporty"]
var emotionsselArray=["mood_social_sel","mood_active_sel","mood_artistic_sel","mood_dancey_sel","mood_family_sel","mood_foodie_sel","mood_intelligent_sel","mood_musical_sel","mood_spiritual_sel","mood_sporty_sel"]
    var emotionsColor=["#c01f28","#e14643","#f7933d","#b424b9","#245af5","#483e44","#330066","#88bf45","#1bc070","#1cd3fa"]
    

    private var collectionview:UICollectionView=UICollectionView(frame: CGRectZero, collectionViewLayout: UICollectionViewFlowLayout())
    
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden=true
      //collectionview
        collectionview.frame=CGRectMake(0 , 64, self.view.frame.size.width-20 ,self.view.frame.size.height-170)
        collectionview.backgroundColor=UIColor.clearColor()
        collectionview .registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        self.view.addSubview(collectionview)
        self.collectionview.delegate=self
        self.collectionview.dataSource=self
        clearEvents .removeFromSuperview()
        searchButton.removeFromSuperview()
    //clearEvents Button
      clearEvents.frame=CGRectMake(30 ,self.collectionview.frame.size.height+self.self.collectionview.frame.origin.y+10,95 ,35)
        clearEvents.setTitle("Clear", forState: UIControlState.Normal)
        clearEvents.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Normal)
        clearEvents.backgroundColor=UIColor.whiteColor()
        clearEvents.layer.borderColor=UIColorFromRGB(0xff7700).CGColor
        clearEvents.layer.cornerRadius=3.0
        clearEvents.layer.borderWidth=1.0
        clearEvents.titleLabel?.font=UIFont(name: "Corbel", size: 16)
        clearEvents.addTarget(self, action:"clearEventsClicked", forControlEvents: UIControlEvents.TouchDragInside)
        self.view.addSubview(clearEvents)
        
 //SearchEvents Button
  searchButton.frame=CGRectMake((self.view.frame.size.width/2-80)+(self.view.frame.size.width/4)-20,self.collectionview.frame.size.height+self.collectionview.frame.origin.y+10 ,95,35)
        searchButton.setTitle("Search", forState: UIControlState.Normal)
        searchButton.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Normal)
        searchButton.backgroundColor=UIColor.whiteColor()
        searchButton.layer.borderColor=UIColorFromRGB(0xff7700).CGColor
        searchButton.layer.cornerRadius=3.0
        searchButton.layer.borderWidth=1.0
        searchButton.titleLabel?.font=UIFont(name: "Corbel", size: 16)
        searchButton.addTarget(self, action:"searchButtonClicked", forControlEvents: UIControlEvents.TouchDragInside)
        self.view.addSubview(searchButton)

        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
         }
 //collection view methods
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return emotionsArray.count
         }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! UICollectionViewCell
        var image0=UIImageView(frame: CGRectMake(35, 30, 30,30))
         image0.image = UIImage(named:emotionsArray[indexPath.row])
     // image0.image=UIImage(named("mood_%@",(emotionsArray[indexPath.row].lowercaseString as String))
        cell.addSubview(image0)
        
       
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        var screenBounds:CGRect=CGRect()
        screenBounds=UIScreen .mainScreen().bounds
        if(screenBounds.size.height==480){
            return CGSizeMake(140, 50)
        }
       else if(screenBounds.size.height==568){
            return CGSizeMake(140, 65)
        }
        else{
            return CGSizeMake(155, 70)
        }

        }
}
//buttonActions
func searchButtonClicked(){
   // let vc=MapViewController .alloc()
  //  self.navigationController?.pushViewController(vc, animated: true)
    
   // let navController = self.navigationController
 //   navController!.popViewControllerAnimated(true)


    }

