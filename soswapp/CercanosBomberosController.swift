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

class CercanosBomberosController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        mapView.showsUserLocation = true
        mapView.setUserTrackingMode(MKUserTrackingMode.Follow, animated: true)
        let defaults = NSUserDefaults.standardUserDefaults()
        if let userLat = defaults.stringForKey("userLat") {
            if let userLng = defaults.stringForKey("userLng") {
                var url : String = "http://soswapp.cl/api/servicios-cercanos.php?s=2&a=" + userLat + "&n=" + userLng
                var cant = 0;
                var distanciaMax = 0.0
                
                let myURLString = url
                guard let myURL = NSURL(string: myURLString) else {
                    print("Error: \(myURLString) doesn't seem to be a valid URL")
                    return
                }
                
                do {
                    let nData = try String(contentsOfURL: myURL)
                    mapView.removeAnnotations(mapView.annotations.filter {$0 !== self.mapView.userLocation})
                    var userLocation = CLLocationCoordinate2D()
                    userLocation.latitude = (userLat as NSString).doubleValue
                    userLocation.longitude = (userLng as NSString).doubleValue
                    var result = nData.componentsSeparatedByString("_")
                    for i in result {
                        var txt = i
                        var data = txt.componentsSeparatedByString("|")
                        var lat = ((data[3] as String) as NSString).doubleValue
                        var lng = ((data[4] as String) as NSString).doubleValue
                        lat = round(lat * 1000000) / 1000000
                        lng = round(lng * 1000000) / 1000000
                        var location = CLLocationCoordinate2D()
                        location.latitude = lat
                        location.longitude = lng
                        var anotation = MKPointAnnotation()
                        anotation.coordinate = location
                        anotation.title = data[0] as String
                        let loc0 = CLLocation(latitude: lat, longitude: lng)
                        let loc1 = CLLocation(latitude: userLocation.latitude, longitude: userLocation.longitude)
                        let dist = loc0.distanceFromLocation(loc1)
                        let distanceTwo = dist / 1000
                        if distanciaMax < Double(dist) {
                            distanciaMax = Double(dist)
                        }
                        var km = String(format: "%.1f", distanceTwo)
                        anotation.subtitle = (data[1] as String) + " ("+km+"km)"
                        let artwork = CustomAnnot(title: data[0] as String,
                                                  locationName: (data[1] as String) + " ("+km+"km)",
                                                  discipline: "Haga click aquí para mas información",
                                                  telefono: data[2] as String,
                                                  coordinate: location,
                                                  direccion:(data[1] as String),
                                                  distancia:km)
                        mapView.addAnnotation(artwork)
                    }
                    let d = 1200.0
                    var newRegion = MKCoordinateRegionMakeWithDistance(userLocation, d, d)
                    var adRegion = self.mapView.regionThatFits(newRegion)
                    mapView.setRegion(adRegion, animated: true)
                } catch let error as NSError {
                    print("Error: \(error)")
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView! {
        if let annotation = annotation as? CustomAnnot {
            let identifier = "pin"
            var view: MKAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier){ // 2
                    dequeuedView.annotation = annotation
                    view = dequeuedView
                    view.image=UIImage(named:"pinbomber.png")

                    
            } else {
                // 3
                view = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                view.rightCalloutAccessoryView = UIButton(type: UIButtonType.DetailDisclosure) as UIView
                view.image=UIImage(named:"pinbomber.png")

                //view.leftCalloutAccessoryView = UIButton.buttonWithType(UIButtonType.ContactAdd) as! UIView
            }
            return view
        }
        return nil
    }
    
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        if control==view.rightCalloutAccessoryView {
            if let data=view.annotation as? CustomAnnot{
                print(data.telefono)
                let tel=data.telefono
                let phoneNumber=tel//{
                //self.lastPhone="telprompt://"+phoneNumber
                /*phoneNumber="telprompt://"+phoneNumber
                if let url=NSURL(string:phoneNumber){
                //UIApplication.sharedApplication().openURL(url)
                }*/
                //lblInfoAnnotation.hidden=false
                //btnClose.hidden=false
                //lblTitulo.hidden=false
                //lblSubtitulo.hidden=false
                //lblDistancia.hidden=false
                //btnLlamar.hidden=false
                //lblTitulo.text=data.title
                //lblSubtitulo.text=data.direccion
                //lblDistancia.text="Este destino se encuentra a "+data.distancia+"km."
                let alertController = UIAlertController(title: "SOSWApp", message: "Este cuartel de Bomberos está "+data.distancia+"km de usted.", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
                    let url:NSURL = NSURL(string: "tel://"+phoneNumber)!
                    UIApplication.sharedApplication().openURL(url)
                }))
                alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
                presentViewController(alertController, animated: true, completion: nil)
                
                let d = 1200.0
                var regLocation = CLLocationCoordinate2D()
                regLocation.latitude = view.annotation!.coordinate.latitude
                regLocation.longitude = view.annotation!.coordinate.longitude
                let newRegion = MKCoordinateRegionMakeWithDistance(regLocation, d, d)
                let adRegion = self.mapView.regionThatFits(newRegion)
                mapView.setRegion(adRegion, animated: true)
                mapView.deselectAnnotation(view.annotation, animated:false)
            }
        }
    }
    
}

