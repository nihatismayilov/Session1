//
//  MainViewModel.swift
//  Session1
//
//  Created by Nihad Ismayilov on 17.04.22.
//

import Foundation

class MainViewModel {
    private let carRepo = CarRepository()
    
    func getCars() -> [Car] {
        return self.carRepo.getCars()
    }
}
