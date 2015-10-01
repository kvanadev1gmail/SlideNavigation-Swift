//
//  ViewController.swift
//  SlideNavigation-Swift
//
//  Created by Kvana Mac Pro 2 on 10/1/15.
//  Copyright © 2015 Kvana. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SlideNavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func slideNavigationControllerShouldDisplayLeftMenu() -> Bool {
        return true;
    }
    func slideNavigationControllerShouldDisplayRightMenu() -> Bool {
        return true;
    }

}

