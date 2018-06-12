//
//  ViewController.swift
//  SOSWApp
//
//  Created by Daniel Fuentes on 15-12-15.
//  Copyright (c) 2015 Salmon Software Chile. All rights reserved.
//

import UIKit

class EmergenciasSosController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickAmbulanciaPublica(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nAmbulancias SAMU", message: "Ambulancias SAMU", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://131")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickBombero(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nBomberos", message: "Bomberos", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://132")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickCarabineros(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nCarabineros de Chile", message: "Emergencias de robo, asaltos, homicidios, agresiones, accidentes de transito u otros que afecten la integridad de las personas.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://133")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickPdi(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nPolicia de Investigaciones de Chile", message: "Policia de Investigaciones de Chile", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://134")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickDroga(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nFono Drogas Carabineros de Chile", message: "Fono Drogas Carabineros de Chile", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://135")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickAmbulanciaPrivada(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp", message:
            "El servicio de Ambulancias Privadas no está disponible en la versión gratuita de SOSWApp", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    

}

