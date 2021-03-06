//
//  ViewController.swift
//  LocationTracking
//
//  Created by Shridhar Mali on 6/15/17.
//  Copyright © 2017 Shridhar Mali. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var speedTxt: UITextField!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var btnLocationUpdate: UISwitch!
    let locationManagerHelper = LocationManagerHelper.sharedInstance
    
    // MARK:- ViewLife Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnLocationUpdate.isOn = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    // MARK:- Private Methods
    
    // MARK:- Actions
    @IBAction func enableLocationUpdates(_ sender: UISwitch) {
        if sender.isOn {
            locationManagerHelper.updateUserLocation()
        } else {
            // locationManagerHelper.stopLocationUpdate()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension HomeViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
         locationManagerHelper.speedInKmPerHour = Double(textField.text!)!
         locationManagerHelper.locationUpdatesAsPerCalculatedSpeedOfVehicle()
        return true
    }
    
}
