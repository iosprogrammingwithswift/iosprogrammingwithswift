//
//  ViewController.swift
//  swiftMapKit
//
//  Created by Andreas Wittmann on 06/01/15.
//  Copyright (c) 2015 Telekom. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet var mapView: MKMapView!
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        if CLLocationManager.authorizationStatus() == .NotDetermined {
            locationManager.requestAlwaysAuthorization()
        }

        let zoomLocationHochschuleWuerzburgSchweinfurt:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 49.7777578, longitude: 9.9642601)
        
        let viewRegion:MKCoordinateRegion = MKCoordinateRegion(center: zoomLocationHochschuleWuerzburgSchweinfurt, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
        
        /**
        *
        *User Location
        *
        */
        
        mapView.showsUserLocation = true
        mapView.userTrackingMode = MKUserTrackingMode.FollowWithHeading
        mapView.setUserTrackingMode(mapView.userTrackingMode, animated: true)
        mapView.setRegion(viewRegion, animated: true)
        
        showAnnotations()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
        
   /*  mapView.setRegion(MKCoordinateRegion(center: userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)), animated: true)
        */
    }
    /*
    *  func showAnnotations(){}
    */
    func showAnnotations()->Void{
        for location in allLocations{
            let annotation = MapKitPoi(poiTitle: location.title, poiSubitle: location.subtitle, poiCoordinateLat: location.lat, poiCoordinateLong: location.long, poiCat: location.cat)
            mapView.addAnnotation(annotation)
        }
        
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is MapKitPoi else{
            return nil
        }

        let identifier:String = "MapKitPoi"

        var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
        
        guard annotationView != nil else {
            annotationView!.annotation = annotation
            return annotationView
        }
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView!.canShowCallout = true
            annotationView!.image = UIImage(named:"arrest.png")
            //add right button 
            let rightButton:UIButton = UIButton(type: UIButtonType.DetailDisclosure) as UIButton
            annotationView!.rightCalloutAccessoryView = rightButton

        return annotationView
    }

    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        if control == view.rightCalloutAccessoryView {
          print("right Callout")
        }
        else{
            print("left Callout")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

