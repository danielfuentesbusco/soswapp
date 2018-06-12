//
//  ViewController.swift
//  SOSWApp
//
//  Created by Daniel Fuentes on 15-12-15.
//  Copyright (c) 2015 Salmon Software Chile. All rights reserved.
//

import UIKit

class InformacionesController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func clickPolicial(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nInformación Policial de Carabineros de Chile", message: "Información de teléfonos y ubicaciones de unidades policiales, tribunales, calles, estado de carreteras y pasos fronterizos. Recorrido de buses, restricción vehicular y temas policiales.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://139")!
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
    
    @IBAction func clickInfoDrogas(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nInfo Drogas", message: "Asesoría en drogadicción y alcoholismo.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56223340600")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickSaludResponde(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nSalud Responde MINSAL", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://6003607777")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickTransantiago(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nTransantiago", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://6007300073")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }

    
}

