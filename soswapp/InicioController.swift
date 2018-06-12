//
//  ViewController.swift
//  SOSWApp
//
//  Created by Daniel Fuentes on 15-12-15.
//  Copyright (c) 2015 Salmon Software Chile. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class InicioController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    var manager:CLLocationManager!
    var lastLat:Double!
    var lastLng:Double!
    //@IBOutlet weak var btnSOS: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Se carga ubicacion
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        manager.distanceFilter = 100
        manager.pausesLocationUpdatesAutomatically = true
        manager.requestAlwaysAuthorization()
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        let json = ""
        let url : String = "http://soswapp.cl/api/acceso-app.php?v=1.1"
        let fileUrl = NSURL(string: url)
        let request = NSMutableURLRequest(URL: fileUrl!, cachePolicy: NSURLRequestCachePolicy.ReloadIgnoringLocalCacheData, timeoutInterval: 5)
        var response: NSURLResponse?
        request.HTTPBody = json.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
        request.HTTPMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            do {
                let data = try NSURLConnection.sendSynchronousRequest(request, returningResponse: &response)
                if let nData = NSString(data: data, encoding: NSUTF8StringEncoding){
                    if let httpResponse = response as? NSHTTPURLResponse {
                        print("Central informada")
                        
                    }
                }
            } catch var error1 as NSError {
                print("error Central informada")
              
                
            }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(manager:CLLocationManager, didUpdateToLocation location:CLLocation?, fromLocation oldLocation:CLLocation) {
        let defaults = NSUserDefaults.standardUserDefaults()
        if (location != nil) {
            if let userLat = location?.coordinate.latitude {
                if let userLng = location?.coordinate.longitude {
                    defaults.setObject(userLat, forKey: "userLat")
                    defaults.setObject(userLng, forKey: "userLng")
                    print("Ubicacion de usuario obtenida")
                    
                    let json = ""
                    let url : String = "http://soswapp.cl/api/ubicacion-usuario.php?lt=\(userLat)&ln=\(userLng)&v=1.1"
                    let fileUrl = NSURL(string: url)
                    let request = NSMutableURLRequest(URL: fileUrl!, cachePolicy: NSURLRequestCachePolicy.ReloadIgnoringLocalCacheData, timeoutInterval: 5)
                    var response: NSURLResponse?
                    request.HTTPBody = json.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
                    request.HTTPMethod = "POST"
                    request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                    do {
                        let data = try NSURLConnection.sendSynchronousRequest(request, returningResponse: &response)
                        if let nData = NSString(data: data, encoding: NSUTF8StringEncoding){
                            if let httpResponse = response as? NSHTTPURLResponse {
                                print("Central informada ubicacion")
                                
                            }
                        }
                    } catch var error1 as NSError {
                        print("error Central informada ubicacion")
                        
                        
                    }

                }
            }
        }
    }
}

