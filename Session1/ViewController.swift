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
        
        task2()
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

func task2() {
    let bestFriend = "Chingiz"
    print(bestFriend)

    let myName = "Nihad"
    let myAddress = "Bineqedi"

    print(myName)
    print(myAddress)

    let randomNum = Int.random(in: 10...20)

    print(Double(randomNum)/4)

    let x = Int.random(in: 0...100)

    print(x)

    print("The number smaller by 22 is: \(x - 22)")
    print("The number bigger by 22 is: \(x + 22)")

    let reminder = x % 2

    print("the reminder of the division by 2 iS \(reminder)")

    let num1 = Int.random(in: 0...100)
    let num2 = Int.random(in: 0...100)
    let num3 = Int.random(in: 0...100)
    let sum = num1 + num2 + num3

    print("the sum of 3 random numbers is \(sum)")

}

