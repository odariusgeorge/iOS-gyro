//
//  ViewController.swift
//  DevExperiments
//
//  Created by Darius-George Oanea on 2/13/20.
//  Copyright © 2020 DevExperiments. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    @IBOutlet weak var gyro: UITextField!
    let manager = CMMotionManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        manager.gyroUpdateInterval = 0.2
        manager.startGyroUpdates(to: OperationQueue.current!) {
            data, error in
            guard let data = data else { return }
            
            self.gyro.text = String(data.rotationRate.z)
            
        }
    }
    
    
}

