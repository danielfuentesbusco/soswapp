//
//  ViewController.swift
//  SOSWApp
//
//  Created by Daniel Fuentes on 15-12-15.
//  Copyright (c) 2015 Salmon Software Chile. All rights reserved.
//

import UIKit

class EmergenciasEspecialesController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // Emergencias Especiales
    @IBAction func clickAereo(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nServicio de Busqueda y Salvamento Aereo FACH", message: "Servicio de Busqueda y Salvamento Aereo FACH", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://138")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickAndino(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nCuerpo de Socorro Andino", message: "Cuerpo de Socorro Andino", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56226994764")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickForestal(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nIncendios Forestales CONAF", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://130")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickMaritimo(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nUnidad de Rescate Costero DIRECTEMAR", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://137")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickMetro(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nEmergencias Metro de Santiago", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://1411")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickBip(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nTarjeta Bip!", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://800730073")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
}

