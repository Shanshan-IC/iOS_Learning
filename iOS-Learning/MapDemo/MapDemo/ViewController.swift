//
//  ViewController.swift
//  MapDemo
//
//  Created by 傅珊珊 on 16/2/1.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate,CLLocationManagerDelegate {
    
    @IBOutlet var map: MKMapView!

    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
        var latitude:CLLocationDegrees = 40.7
        
        var longitude:CLLocationDegrees = -73.0
        
        var latDelta:CLLocationDegrees = 0.01
        
        var lonDelta:CLLocationDegrees = 0.01
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        //map.setRegion(region, animated: true)
        
        var anmotation = MKPointAnnotation()
        
        anmotation.coordinate = location
        
        anmotation.title = "Niagra Falls"
        
        anmotation.subtitle = "One day I'll go there..."
        
        map.addAnnotation(anmotation)
        
        var uilpgr = UILongPressGestureRecognizer(target: self, action: "action:")
        
        uilpgr.minimumPressDuration = 2
        
        map.addGestureRecognizer(uilpgr)
        
        
    }

    func action(gestureReconizer: UIGestureRecognizer) {
        print("Gesture Recoginzed")
        
        var touchPoint = gestureReconizer.locationInView(self.map)
        
        var newCoordinate:CLLocationCoordinate2D = map.convertPoint(touchPoint, toCoordinateFromView: self.map)
        
        var anmotation = MKPointAnnotation()
        
        anmotation.coordinate = newCoordinate
        
        anmotation.title = "New Place"
        
        anmotation.subtitle = "One day I'll go there..."
        
        map.addAnnotation(anmotation)
        
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [CLLocation]) {
        print(locations)
        
        var userLocation:CLLocation = locations[0]
        
        var latitude = userLocation.coordinate.latitude
        
        var longitude = userLocation.coordinate.longitude
        
        var latDelta:CLLocationDegrees = 0.01
        
        var lonDelta:CLLocationDegrees = 0.01
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        self.map.setRegion(region, animated: true)

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

