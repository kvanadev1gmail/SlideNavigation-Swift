//
//  LeftSideViewController.swift
//  Evee-Swift
//
//  Created by Kvana Inc 2 on 28/09/15.
//  Copyright (c) 2015 Kvana. All rights reserved.
//

import UIKit

class LeftSideViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableviewobject: UITableView!
    var optionsArray=["Find Events","Search Results","Settings"]
    var selectedimagesarray=["tab_location_over","icon_list","tab_settings"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden=true
        self.view.backgroundColor=UIColor .whiteColor()
        let tableviewobject:UITableView=UITableView()
        tableviewobject.frame=CGRectMake(0,40, self.view.frame.size.width, self.view.frame.size.height)
        self.view .addSubview(tableviewobject)
       
        tableviewobject.delegate=self
        tableviewobject.dataSource=self
        tableviewobject.tableFooterView = UIView(frame: CGRect.zero)
        tableviewobject.backgroundColor=UIColor.clearColor()
        tableviewobject.separatorColor=UIColor.blackColor()
        
        
       
       
        }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return optionsArray.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell!=UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "tableviewcell")
        cell.backgroundColor=UIColor.clearColor()
        cell.textLabel!.text=optionsArray[indexPath.row]
        
//        cell.leftImage.image=UIImage(named:selectedimagesarray[indexPath.row])

        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var vc:UIViewController;

        switch(indexPath.row)
        {
        case 0:
            
              vc=(self.storyboard?.instantiateViewControllerWithIdentifier("ViewController"))!
             
             break;
        case 1:
            
            
            vc=(self.storyboard?.instantiateViewControllerWithIdentifier("SecondViewController"))!
            
            break;
            
        
        default:
                    print("\(optionsArray[indexPath.row]) is selected");
            vc=(self.storyboard?.instantiateViewControllerWithIdentifier("ViewController"))!

        }
        SlideNavigationController.sharedInstance().popAllAndSwitchToViewController(vc) { () -> Void in
            
        };
    }
    

    
 
    
}
