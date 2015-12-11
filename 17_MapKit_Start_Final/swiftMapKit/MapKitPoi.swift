//
//  MapKit.swift
//  swiftMapKit
//
//  Created by Andreas Wittmann on 08/01/15.
//  Copyright (c) 2015 Telekom. All rights reserved.
//

import UIKit
import MapKit

class MapKitPoi: NSObject, MKAnnotation {
    let title:String?
    let subitle:String
    let coordinate: CLLocationCoordinate2D
    let poiCat:Int
    init(poiTitle:String, poiSubitle:String,poiCoordinateLat:CLLocationDegrees, poiCoordinateLong:CLLocationDegrees,poiCat:Int){
    
        self.title = poiTitle
        self.subitle = poiSubitle
        self.coordinate = CLLocationCoordinate2D(latitude: poiCoordinateLat, longitude: poiCoordinateLong)
        self.poiCat = poiCat
        super.init()
     
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
