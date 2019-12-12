//
//  ViewController.swift
//  Symphony-iOS-Sample
//
//  Created by Hrishikesh Amravatkar on 11/12/19.
//  Copyright © 2019 Hrishikesh Amravatkar. All rights reserved.
//

import UIKit
import Leanplum

class ViewController: UIViewController {
    @IBOutlet weak var eventInput: UITextField!
    @IBOutlet weak var sendEvent: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sendEvent.addTarget(self, action: #selector(sendEventAction(_:)), for: .touchUpInside)
        Leanplum.setApiHostName("api.leanplum.com", withServletName: "api", usingSsl: true)
        Leanplum.setAppId("app_ve9UCNlqI8dy6Omzfu1rEh6hkWonNHVZJIWtLLt6aLs", withDevelopmentKey: "dev_cKF5HMpLGqhbovlEGMKjgTuf8AHfr2Jar6rrnNhtzQ0")
        Leanplum.start { (result) in
            print(result)
        }
    }

    @IBAction func sendEventAction(_ sender: Any) {
        print(self.eventInput.text ?? "")
        
    }
    
}

