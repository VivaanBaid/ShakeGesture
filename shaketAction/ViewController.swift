//
//  ViewController.swift
//  shaketAction
//
//  Created by Vivaan Baid on 17/07/21.
//

import UIKit

//VC needs to be first responder
//VC needs to be able to become first responder
//Detect the shake event

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
        becomeFirstResponder()
        
    }
    
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {

        if motion == .motionShake{
            //shake motion began
            self.view.backgroundColor = UIColor.cyan
            let alert = UIAlertController(title: "Hello", message: "Whats good", preferredStyle: .alert)
            let action = UIAlertAction(title: "Okay", style: .cancel) { myalert in
                alert.dismiss(animated: true, completion: nil)
            }
            
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            //shake motion ended
            self.view.backgroundColor = .black
        }
    }


}

