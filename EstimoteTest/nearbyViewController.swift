//
//  ViewController.swift
//  EstimoteTest
//
//  Created by Joe Edwards on 11/10/2017.
//  Copyright © 2017 Maddo. All rights reserved.
//

import UIKit

class nearbyViewController: UIViewController, ESTMonitoringV2ManagerDelegate {
    
    var monitoringManager: ESTMonitoringV2Manager!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        monitoringManager = ESTMonitoringV2Manager(desiredMeanTriggerDistance: 1.0, delegate: self)
        
        self.monitoringManager.startMonitoring(forIdentifiers: ["375578ae253441b91ecf38116b96f91c"])
        
        
    }

    func monitoringManager(_ manager: ESTMonitoringV2Manager, didExitDesiredRangeOfBeaconWithIdentifier identifier: String) {
        
        performSegue(withIdentifier: "exits", sender: nil)
        
    }
    
    
    func monitoringManager(_ manager: ESTMonitoringV2Manager, didDetermineInitialState state: ESTMonitoringState, forBeaconWithIdentifier identifier: String) {
        
    }
    
    func monitoringManagerDidStart(_ manager: ESTMonitoringV2Manager) {
        print("manager started with no errors")
    }
    
    func monitoringManager(_ manager: ESTMonitoringV2Manager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
 

}

