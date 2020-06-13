//
//  ViewController.swift
//  haptics-feedback
//
//  Created by Edo Lorenza on 13/06/20.
//  Copyright © 2020 Edo Lorenza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let notification = UINotificationFeedbackGenerator()
    let impactLight = UIImpactFeedbackGenerator(style: .light)
    let impactMedium = UIImpactFeedbackGenerator(style: .medium)
    let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
     let selection = UISelectionFeedbackGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSuccessTap(_ sender: Any) {
         notification.notificationOccurred(.success)
    }
    
    @IBAction func btnWarningTap(_ sender: Any) {
         notification.notificationOccurred(.warning)
    }
    
    @IBAction func btnErrorTap(_ sender: Any) {
          notification.notificationOccurred(.error)
    }
    
    @IBAction func btnLightTap(_ sender: Any) {
        self.impactLight.impactOccurred()
    }
    
    @IBAction func btnMediumTap(_ sender: Any) {
          self.impactMedium.impactOccurred()
    }
    
    @IBAction func btnHeavyTap(_ sender: Any) {
          self.impactHeavy.impactOccurred()
    }
    
    @IBAction func btnSelectionTap(_ sender: Any) {
        selection.selectionChanged()
    }
}

