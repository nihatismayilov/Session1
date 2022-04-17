//
//  CarRepository.swift
//  Session1
//
//  Created by Nihad Ismayilov on 17.04.22.
//

import Foundation
import UIKit

protocol CarRepositoryProtocol {
    var tires: [Tyre] { get }
    func getCars() -> [Car]
}

class AbstractCarRepository {
    
    func drive() {
        print("drive")
    }
    
}

class CarRepository: AbstractCarRepository, CarRepositoryProtocol {
    var tires: [Tyre]
    
    private var cars = [Car]()
    
    override init() {
        self.tires = [Tyre]()
        self.tires.append(Tyre.init(size: 18))
        
        self.cars.append(
            Car.Builder()
                .setColor(.white)
                .build())
        self.cars.append(
            Car.Builder()
                .setColor(.red)
                .build())
    }
    
    func getCars() -> [Car] {
        return self.cars
    }
    
    override func drive() {
        super.drive()
        print("drive child")
    }
}

extension CarRepository {
    func driveFast() {
        print("drive fast")
    }
}


// singleton pattern

class SingleStruct {
    
    static let shared: SingleStruct = SingleStruct()
    
    private var unreadNotificationsSum = 0
    
    private init() {
        
    }
    
    func add(_ value1: Int, _ value2: Int) -> Int {
        return value1 + value2
    }
    
    func readAll() {
        self.unreadNotificationsSum = 0
    }
    
    func getUnreadNotification() -> Int{
        return self.unreadNotificationsSum
    }
    
    func addUnreadNotifications(number: Int) {
        self.unreadNotificationsSum = self.unreadNotificationsSum + number
    }
}

struct Tyre {
    let size: Int
}

// builder pattern

class Car {
    var passengerSize: Int
    var fuelType: EngineFuel
    var color: UIColor
    
    init(
        passengerSize: Int,
        fuelType: EngineFuel,
        color: UIColor
    ) {
        self.passengerSize = passengerSize
        self.fuelType = fuelType
        self.color = color
    }
    
    init() {
        self.passengerSize = 4
        self.fuelType = .petrol
        self.color = UIColor.black
    }
    
    func setPassengerSize(_ size: Int) -> Car {
        self.passengerSize = size
        return self
    }
    
    func setFuelType (_ type: EngineFuel) -> Car {
        self.fuelType = type
        return self
    }
    
    func setColor (_ color: UIColor) -> Car {
        self.color = color
        return self
    }
    
    class Builder {
        private let car: Car = Car()
        
        func setPassengerSize(_ size: Int) -> Builder {
            self.car.passengerSize = size
            return self
        }
        
        func setFuelType (_ type: EngineFuel) -> Builder {
            self.car.fuelType = type
            return self
        }
        
        func setColor (_ color: UIColor) -> Builder {
            self.car.color = color
            return self
        }
        func build() -> Car {
            return self.car
        }
    }
    
}

// factory method pattern

class CarFactory {
    var passengerSize: Int
    var fuelType: EngineFuel
    var color: UIColor
    
    private init() {
        self.passengerSize = 4
        self.fuelType = .petrol
        self.color = UIColor.black
    }
    
    static func build(fuelType: EngineFuel, color: UIColor) -> CarFactory {
        let car = CarFactory()
        car.fuelType = fuelType
        car.color = color
        return car
    }
}

enum EngineFuel {
    case petrol, diesel
}

