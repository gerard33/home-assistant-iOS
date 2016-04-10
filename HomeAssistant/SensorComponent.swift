//
//  SensorComponent.swift
//  HomeAssistant
//
//  Created by Robbie Trencheny on 4/5/16.
//  Copyright © 2016 Robbie Trencheny. All rights reserved.
//

import Foundation
import ObjectMapper

class Sensor: Entity {
    
    var UnitOfMeasurement: String?
    var SensorClass: String?
    
    required init?(_ map: Map) {
        super.init(map)
    }
    
    override func mapping(map: Map) {
        super.mapping(map)
        
        UnitOfMeasurement <- map["attributes.unit_of_measurement"]
        SensorClass       <- map["attributes.sensor_class"]
    }
}