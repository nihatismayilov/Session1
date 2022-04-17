//
//  ViewController.swift
//  Session1
//
//  Created by Nihad Ismayilov on 09.04.22.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    private let vm = MainViewModel()
    
    private var mutableStringText = "text1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        print("Width: \(self.view.frame.width)")
        print("Height: \(self.view.frame.height)")
        
        let label = UILabel()
        label.frame = CGRect.init(x: 100, y: 100, width: 100, height: 30)
        label.text = "Test, trial"
        label.textColor = .black
        //self.view.addSubview(label)
        
        self.mutableStringText = self.process()
        self.mutableStringText = self.processAdd(self.mutableStringText)
        
        var listIntegers = [1, 2, 3, 4, 5, 6]
        
        print(listIntegers)
        
        // forEach
        var sum = 0
        listIntegers.forEach { number in
            sum += number
        }
        
        // map
        let listNumbersStruct = listIntegers.map { number in
            return NumberStruct(displayTitle: "\(number)", value: number)
        }
        print(listNumbersStruct)
        
        // filter
        let listNumberOdds = listIntegers.filter { number in
            return number % 2 == 1
        }
        print(listNumberOdds)
        
        // reduce
        let sumReduced = listIntegers.reduce(0) { partialResult, next in
            partialResult + next
        }
        print(sumReduced)
        
        // complex
        let sumReducedCollection = listIntegers.filter { number in
            number >= 3
        }.reduce([NumberStruct]()) { partialResult, number in
            var lastArray = partialResult
            lastArray.append(NumberStruct(displayTitle: "\(number)", value: number))
            return lastArray
        }
        print(sumReduced)
        
        let instance = SingleStruct.shared
        let sum5 = instance.add(2, 3)
        
        print("Unread notification count: \(instance.getUnreadNotification())")
        instance.addUnreadNotifications(number: 4)
        
        print("Unread notification count: \(instance.getUnreadNotification())")
        
        let childInstance = ViewControllerChild()
        print("Unread notification count: \(childInstance.checkUnreadNotificationSum())")
        
        instance.readAll()
        print("Read all notifications")
        
        print("Unread notification count: \(instance.getUnreadNotification())")
        print("Unread notification count: \(childInstance.checkUnreadNotificationSum())")
        
        
        print("Builder")
        let car = Car.Builder()
            .setColor(.white)
            .setFuelType(.petrol)
            .setPassengerSize(5)
            .build()
        print(car.fuelType)
        print(car.passengerSize)
        print(car.color)
        
        print("Car Factory")
        
        let greenCar = CarFactory.build(fuelType: .diesel, color: .green)
        
        let cars = vm.getCars()
        
    }
    
    func process() -> String{
        return "text2"
    }
    
    func processAdd(_ text: String) -> String{
        return text + "1"
    }
    
    class ViewControllerChild {
        
        func checkUnreadNotificationSum() -> Int {
            SingleStruct.shared.getUnreadNotification()
        }
        
    }
    
}

struct NumberStruct {
    let displayTitle: String
    let value: Int
}
