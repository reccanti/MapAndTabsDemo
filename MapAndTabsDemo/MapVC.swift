//
//  MapVC.swift
//  MapAndTabsDemo
//
//  Created by Benjamin Wilcox on 3/28/17.
//  Copyright © 2017 Benjamin Wilcox. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    @IBOutlet weak var mapView:MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let pin = MKPointAnnotation()
        let newYorkLocation = CLLocationCoordinate2DMake(40.730872, -74.003066)
        pin.coordinate = newYorkLocation
        pin.title = "New York City"
        mapView.addAnnotation(pin)
        
        let metersPerMile:Double = 1609.344
        let myRegion = MKCoordinateRegionMakeWithDistance(pin.coordinate, metersPerMile * 100, metersPerMile * 100)
        
        mapView.setRegion(myRegion, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

