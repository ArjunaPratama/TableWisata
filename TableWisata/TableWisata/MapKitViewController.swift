//
//  MapKitViewController.swift
//  TableWisata
//
//  Created by DOTS2 on 10/17/17.
//  Copyright © 2017 Arjuna. All rights reserved.
//

import UIKit
import MapKit

class MapKitViewController: UIViewController {

    @IBOutlet weak var petaWisata: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // deklarasi lotitude longitude
        
        let lokasiWisata = CLLocationCoordinate2D(latitude: -8.707178, longitude: 115.262624)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: lokasiWisata, span: span)
        petaWisata.setRegion(region, animated: true)
        
        //annotation berfungsi untuk menjadi marker pada maps
        //ketika maps d pencet akan keluar title dan subtitle
        let annotation = MKPointAnnotation()
        annotation.coordinate = lokasiWisata
        annotation.title = "Pantai Sanur"
        annotation.subtitle = "Bali"
        petaWisata.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
