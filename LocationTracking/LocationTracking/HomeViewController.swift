//
//  ViewController.swift
//  LocationTracking
//
//  Created by Shridhar Mali on 6/15/17.
//  Copyright © 2017 Shridhar Mali. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var btnLocationUpdate: UISwitch!
    let locationManagerHelper = LocationManagerHelper.sharedInstance
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnLocationUpdate.isOn = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func enableLocationUpdates(_ sender: UISwitch) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

