//
//  ViewController.swift
//  SOSWApp
//
//  Created by Daniel Fuentes on 15-12-15.
//  Copyright (c) 2015 Salmon Software Chile. All rights reserved.
//

import UIKit

class DenunciasCiudadanasController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func clickDenuncia(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nDenuncia Seguro de Subsecretaría de Prevención del Delito", message: "Denuncias anónimas para perseguir y condenar delitos, violencia intrafamiliar, tráfico de drogas, robos, receptación, tenencia ilegal de armas, profugos, homicidios, etc. Servicio del Plan Comunal de Seguridad Pública.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://6004000101")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickSernac(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nServicio Nacional del Consumidor", message: "Orientación y guía para entablar denuncias.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56226716762")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickAnimal(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nSociedad Protectora de Animales", message: "Denuncias por maltrato a animales y solicitud de donación de mascotas.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56226813015")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickAbuso(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nDenuncias de Abuso Sexual y Comercio Sexual Infantil SENAME", message: "Teléfono que recibe denuncias de comercio sexual y abuso infantil.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://800730800")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickFamilia(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nDelitos Sexuales y Atención a la Familia", message: "Consejos en violencia intrafamiliar y denuncias de antentados sexuales.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://+56226893070")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickAccion(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nEmergencia en Ruta FonoAcción", message: "Denuncias de tránsito por humos visibles, calidad de servicio de transporte público y plantas de revisión técnica.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://143")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func clickArmas(sender: UIButton) {
        let alertController = UIAlertController(title: "SOSWApp\nEntrega Voluntaria de Armas", message: "Entrega anónima y voluntaria de armas de fuego.", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Llamar", style: .Default, handler: { (action: UIAlertAction) in
            let url:NSURL = NSURL(string: "tel://800377707")!
            UIApplication.sharedApplication().openURL(url)
        }))
        alertController.addAction(UIAlertAction(title: "Cerrar", style: .Cancel, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
    }
    
}

