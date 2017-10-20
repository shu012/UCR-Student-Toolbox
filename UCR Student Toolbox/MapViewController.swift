//
//  MapViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 7/30/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit
import MapKit
import GooglePlaces
import GoogleMaps

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    let distance: CLLocationDistance = 950
    let pitch: CGFloat = 65
    let heading = 0.0
    var camera: MKMapCamera?
    
    override func viewDidLoad() {
        if #available(iOS 11.0, *) {
            mapView.mapType = .hybridFlyover
        } else {
            // Fallback on earlier versions
            mapView.mapType = .hybrid
        }
        
        let coordinate = CLLocationCoordinate2D(latitude: 33.973661,
                                                longitude: -117.3281893)
        camera = MKMapCamera(lookingAtCenter: coordinate,
                             fromDistance: distance,
                             pitch: pitch,
                             heading: heading)
        mapView.camera = camera!
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
