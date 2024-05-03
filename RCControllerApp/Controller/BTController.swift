//
//  BTController.swift
//  RCControllerApp
//
//  Created by Carsten Przyluczky on 03.05.24.
//

import CoreBluetooth

class BTController: NSObject {
    
    var cbManager = CBCentralManager()
    
    func startUp() {
        cbManager = CBCentralManager(delegate: self, queue: nil)
    }
}

extension BTController: CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
             case .poweredOff:
                 print("Is Powered Off.")
             case .poweredOn:
                 print("Is Powered On.")
             case .unsupported:
                 print("Is Unsupported.")
             case .unauthorized:
             print("Is Unauthorized.")
             case .unknown:
                 print("Unknown")
             case .resetting:
                 print("Resetting")
             @unknown default:
               print("Error")
             }
    }    
}

