//
//  MapViewController.swift
//  UCR Student Toolbox
//
//  Created by Sara Hu on 7/30/17.
//  Copyright © 2017 Sara Hu. All rights reserved.
//

import UIKit
import MapKit
//import GoogleMaps
class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
//    override func loadView() {
//        navigationItem.title = "Hello Map"
//
//        let camera = GMSCameraPosition.camera(withLatitude: 33.973661,
//                                              longitude: -117.3281893,
//                                              zoom: 14)
//        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
//
//        let marker = GMSMarker()
//        marker.position = camera.target
//        marker.snippet = "Hello World"
//        marker.appearAnimation = kGMSMarkerAnimationPop
//        marker.map = mapView
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let location = CLLocationCoordinate2D(
            latitude: 33.973661,
            longitude: -117.3281893
        )
        // 2
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)

        //3
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "University of California Riverside"
        annotation.subtitle = "Riverside"
        mapView.addAnnotation(annotation)
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
