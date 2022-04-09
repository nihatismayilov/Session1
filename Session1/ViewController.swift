//
//  ViewController.swift
//  Session1
//
//  Created by Nihad Ismayilov on 09.04.22.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect.init(x: 100, y: 100, width: 100, height: 30)
        label.text = "Test, trial"
        label.textColor = .black
        
        self.view.addSubview(label)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(#function)
    }


}

