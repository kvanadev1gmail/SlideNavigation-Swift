//
//  SecondViewController.swift
//  SlideNavigation-Swift
//
//  Created by Kvana Mac Pro 2 on 10/1/15.
//  Copyright © 2015 Kvana. All rights reserved.
//

import Foundation
class SecondViewController: UIViewController,SlideNavigationControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.blueColor()
    }
    func slideNavigationControllerShouldDisplayLeftMenu() -> Bool {
        return true;
    }
}
