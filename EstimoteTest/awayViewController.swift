//
//  awayViewController.swift
//  EstimoteTest
//
//  Created by Joe Edwards on 13/10/2017.
//  Copyright © 2017 Maddo. All rights reserved.
//

import UIKit

class awayViewController: UIViewController, ESTMonitoringV2ManagerDelegate {

     var monitoringManager: ESTMonitoringV2Manager!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        monitoringManager = ESTMonitoringV2Manager(desiredMeanTriggerDistance: 1.0, delegate: self)
        
        self.monitoringManager.startMonitoring(forIdentifiers: ["375578ae253441b91ecf38116b96f91c"])
        
    }
    
    func monitoringManager(_ manager: ESTMonitoringV2Manager, didEnterDesiredRangeOfBeaconWithIdentifier indentifier: String) {
        
        print("did exit")
        
        performSegue(withIdentifier: "enters", sender: nil)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
