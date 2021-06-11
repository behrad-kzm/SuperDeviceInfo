//
//  ViewController.swift
//  SuperDeviceInfo
//
//  Created by behrad-kzm on 05/30/2021.
//  Copyright (c) 2021 behrad-kzm. All rights reserved.
//

import UIKit
import SuperDeviceInfo
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      let allInfo = UseCaseProvider.getAllInfo()
      print(allInfo)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

