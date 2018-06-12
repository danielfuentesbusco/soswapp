//
//  ViewController.swift
//  SOSWApp
//
//  Created by Daniel Fuentes on 15-12-15.
//  Copyright (c) 2015 Salmon Software Chile. All rights reserved.
//

import UIKit

class EmergenciasDomesticasController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func clickCruzRoja(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nCruz Roja Chilena", message: "Orientación sobre primeros auxilios e intoxicaciones.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56227771448")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickChilectra(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nEmergencias Chilectra", message: "Fallas de energía eléctrica en el sector o domicilio.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56226971500")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickLipigas(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nEmergencias Lipigas", message: "Atención a problemas de cilindros, escapes, estanques, medidores y todo lo relacionado con el gas doméstico.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://6006009200")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickMetrogas(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nEmergencias Metrogas", message: "Atención a problemas de cilindros, escapes, estanques, medidores y todo lo relacionado con el gas doméstico.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56223378000")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickToxicologico(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nCentro de Información Toxicológica y Medicamentos UC", message: "Consulta de emergencia por intoxicaciones.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56226353800")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickQuemaduras(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nSociedad Chilena de Quemaduras", message: "Sociedad que orienta y ayuda a personas que han sufrido quemaduras.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56222322559")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickSOSEscucha(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nSOS Escucha Crisis Personal", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56223352100")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
}

