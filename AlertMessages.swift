//
//  AlertMessages.swift
//  PushUpApp
//
//  Created by Amaury C. Rivera on 3/14/22.
//

import Foundation
import UIKit

struct Alert{
    
     static func showAlertBox (on vc: UIViewController, with title: String, message: String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async
        {
            vc.present(alert, animated: true)
        }
    }
    
    
}
